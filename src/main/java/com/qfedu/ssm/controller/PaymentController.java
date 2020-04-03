package com.qfedu.ssm.controller;


import com.qfedu.ssm.entity.*;
import com.qfedu.ssm.service.*;
import com.qfedu.ssm.util.UUIDUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

@Controller
public class PaymentController {

    @Resource
    private FreshGoodsService freshGoodsService;

    @Resource
    private OrdersService ordersService;

    @Resource
    private OrderDetialService orderDetialService;

    @Resource
    private LogisticsService logisticsService;

    @Resource
    private CourierService courierService;


    private final String SUCCESS = "交易成功";
    private final String FAIL = "交易失败";

    @PostMapping("payment")
    public String payment(
            @RequestParam(value = "fdid", defaultValue = "") List<String> fdids,
            @RequestParam(value = "discount", defaultValue = "") List<Double> discounts,
            @RequestParam(value = "price", defaultValue = "") List<Double> prices,
            HttpSession session) {


        System.out.println(fdids.toString());
        System.out.println(discounts.toString());
        System.out.println(prices);

        Double totalPrice = 0.0;

        for (Double price : prices) {

            totalPrice += price;
        }
        System.out.println("sum=" + totalPrice);

        session.setAttribute("fdid", fdids);
        session.setAttribute("price", prices);
        session.setAttribute("totalPrice", totalPrice);


        return "payment";
    }


    @PostMapping("paystaus")
    public String paystaus(
            @RequestParam(value = "totalPrice", defaultValue = "") Double price,
            @RequestParam(value = "fdids", defaultValue = "") String fdid,
            @RequestParam(value = "payType", defaultValue = "") Integer payType,
            HttpSession session) {



        String[] split1 = fdid.split("\\[");

        String[] split2 = split1[1].split("]");

        String[] split = split2[0].split(",");

        List<String> fdids = (List<String>)session.getAttribute("fdid");
        for (String s : fdids) {
            System.out.println(s);
        }
        List<Double> price2 = (List<Double>)session.getAttribute("price");
        for (Double aDouble : price2) {
            System.out.println(aDouble);
        }

        Users user =(Users) session.getAttribute("user");

        try {
            Orders orders = new Orders();
            orders.setOid(UUIDUtil.getUUID());
            orders.setUserId(user.getUserId());
            orders.setTotalPrice(price);
            orders.setPayType(payType);
            ordersService.insertSelective(orders);


            for (int i = 0; i < fdids.size(); i++) {
                OrderDetial orderDetial = new OrderDetial();
                orderDetial.setOid(orders.getOid());
                orderDetial.setFdid(fdids.get(i));
                orderDetial.setCount(price2.get(i));
                orderDetialService.insertSelective(orderDetial);
            }


            List<String> accounts = courierService.selectAccount();

            int randomIndex=(int)(Math.random()*accounts.size());

            LocalDate date = LocalDate.now();
            Date today = Date.valueOf(date);
            Date endTime = Date.valueOf(date.plusDays((int) (Math.random() * 4)));

            Logistics logistics = new Logistics();
            logistics.setAccount(accounts.get(randomIndex));
            logistics.setUserId(orders.getUserId());
            logistics.setOid(orders.getOid());
            logistics.setPayTime(today);
            logistics.setPackageTime(today);
            logistics.setBeginTime(today);
            logistics.setEndTime(endTime);
            logisticsService.insertSelective(logistics);

            session.setAttribute("logistics",logistics);
            session.setAttribute("msg",SUCCESS);
            session.removeAttribute("cart");
        }catch (Exception e){
            System.out.println(e);
            session.setAttribute("msg",FAIL);
        }


        return "paystaus";

    }
}

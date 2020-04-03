package com.qfedu.ssm.controller;

import com.qfedu.ssm.dto.OrderFormDto;
import com.qfedu.ssm.entity.Cart;
import com.qfedu.ssm.entity.CartItem;
import com.qfedu.ssm.entity.FreshGoods;
import com.qfedu.ssm.entity.OrderDetial;
import com.qfedu.ssm.service.CartService;
import com.qfedu.ssm.service.FreshGoodsService;
import com.qfedu.ssm.service.OrderDetialService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (Cart)表控制层
 *
 * @author makejava
 * @since 2020-03-24 16:03:32
 */
@Controller
//@RequestMapping("cart")
public class CartController {
    /**
     * 服务对象
     */
    @Resource
    private CartService cartService;

    @Resource
    private FreshGoodsService goodsService;

    @Resource
    private OrderDetialService orderDetialService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    //@GetMapping("selectOne")
    public Cart selectOne(Integer id) {
        return this.cartService.queryById(id);
    }

    @PostMapping("mycart")
    public String myCart(@RequestParam(value = "item_fdid", defaultValue = "") List<String> item_fdid, @RequestParam(value = "quantity", defaultValue = "") int[] quantity, HttpSession session) {


            for (int s : quantity) {
            System.out.println(s);
        }
//        System.out.println(item_fdid);
//
//        System.out.println(item_fdid.size());

        Map<String, CartItem> cart = new HashMap<>();

        List<FreshGoods> freshGoods = goodsService.selectByfdids(item_fdid);



        for (int i = 0; i < freshGoods.size() ; i++) {
            CartItem cartItem = new CartItem();
            cartItem.setQuantity(quantity[i]);
            cartItem.setFreshGoods(freshGoods.get(i));
            cart.put(freshGoods.get(i).getFdid(), cartItem);
            System.out.println(cart.toString());
        }


        session.setAttribute("number",cart.size());
        session.setAttribute("cart",cart);
//                System.out.println(cart.toString());


        return "checkout";
    }


    @GetMapping("orderForm")
    public String orderForm(@RequestParam(value = "oid",defaultValue = "")String oid,HttpSession session){

        System.out.println(oid);

        List<OrderFormDto> freshGoods = orderDetialService.selectOrdeForm(oid);

        for (OrderFormDto freshGood : freshGoods) {
            System.out.println(freshGood);
        }


        session.setAttribute("orderFormSize",freshGoods.size());
        session.setAttribute("orderForm",freshGoods);
        return "orderform";
    }
}
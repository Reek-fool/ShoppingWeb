package com.qfedu.ssm.ServiceTest;

import com.qfedu.ssm.dto.OrderFormDto;
import com.qfedu.ssm.entity.FreshGoods;
import com.qfedu.ssm.service.FreshGoodsService;
import com.qfedu.ssm.service.OrderDetialService;
import org.jetbrains.annotations.NotNull;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.*;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-context.xml","classpath:spring-mybatis.xml"})
public class FreshGoodTest {

    @Resource
    FreshGoodsService freshGoodsService;

    @Resource
    OrderDetialService orderDetialService;

    @Test
    public void selectall(){
        List<FreshGoods> freshGoods = freshGoodsService.queryAllByLimit(1, 0, 100);

        for (FreshGoods fg : freshGoods) {
            System.out.println(fg);
        }
    }

    @Test
    public void selectByIn(){

        String s1="1d26d86f762611e9ba5954e1ade9802f,440c5ed9762a11e9ba5954e1ade9802f,4421da79762a11e9ba5954e1ade9802f,442bc9a6762a11e9ba5954e1ade9802f,44178c2c762a11e9ba5954e1ade9802f";
        String[] split = s1.split(",");

        List<String> strings=new ArrayList<>();

        System.out.println(split.length);

        for (int i = 0; i < split.length; i++) {
//            System.out.println(split[i]);
//            FreshGoods freshGoods = freshGoodsService.selectByPrimaryKey(split[i]);
//            System.out.println(freshGoods);
            strings.add(split[i]);
        }



        System.out.println(strings.toString());

        List<FreshGoods> freshGoods=freshGoodsService.selectByfdids(strings);

        freshGoods.size();

        for (FreshGoods freshGood : freshGoods) {

            System.out.println(freshGood);
        }
    }


    @Test
    public void TextTime(){
        LocalDate today = LocalDate.now();
        java.sql.Date date = Date.valueOf(today);
        System.out.println(date);

        LocalDate tomorrow = today.plusDays(1);
        Date date1 = Date.valueOf(tomorrow);
        System.out.println(date1);
    }

    @Test
    public void testOrderDTO(){
        List<OrderFormDto> orderFormDtos = orderDetialService.selectOrdeForm("58de178494884eb5bf0e60584e0a1927");

        System.out.println(orderFormDtos);


    }

    @Test
    public void TestDateToString(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        String format = sdf.format(new java.util.Date());
        System.out.println("111"+format);

        String replace = format.replace("-", "");
        String replace1 = replace.replace(" ", "");
        String replace2 = replace1.replace(":", "");
        System.out.println(replace2);

    }

    @Test
    public void testcount(){
        System.out.println((int)Math.ceil(185.0/6.0));
    }
}

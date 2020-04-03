package com.qfedu.ssm.controller;


import com.qfedu.ssm.entity.FreshGoods;

import com.qfedu.ssm.entity.PageBean;
import com.qfedu.ssm.service.FreshGoodsService;
import com.qfedu.ssm.service.GoodTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller("FreshGoodsController")
//@RequestMapping("FreshGoods")
public class FreshGoodsController {
    @Resource
    FreshGoodsService freshGoodsService;

    @Resource
    GoodTypeService goodTypeService;

    @GetMapping("getAllFreshJson")
    @ResponseBody
    public List<FreshGoods> queryAllByLimit(@RequestParam(value = "gtid", defaultValue = "1") int gtid,
                                            @RequestParam(value = "cp", defaultValue = "1") int currentPage,
                                            @RequestParam(value = "ps", defaultValue = "5") int pageSize) {
        currentPage = currentPage < 1 ? 1 : currentPage;
        pageSize = pageSize < 0 ? 5 : pageSize;

        int offset = (currentPage - 1) * pageSize;

        return freshGoodsService.queryAllByLimit(gtid, offset, pageSize);
    }




    @GetMapping("getAllFreshView")
    public String getFreshGoodsViewpublic(@RequestParam(value = "gtid", defaultValue = "1") int gtid, Model model,
                                          @RequestParam(value = "cp", defaultValue = "1") int currentPage, HttpSession session,
                                          @RequestParam(value = "ps", defaultValue = "6") int pageSize) {

        PageBean<FreshGoods> pageBean = new PageBean<>();


        int count = freshGoodsService.selectGtidCount(gtid);
        pageBean.setCount(count);
        currentPage = currentPage < 1 ? 1 : currentPage;
        pageBean.setIndex(currentPage);
        pageSize = pageSize < 0 ? 5 : pageSize;
        pageBean.setSize(pageSize);
        int offset = (currentPage - 1) * pageSize;
        List<FreshGoods> list = freshGoodsService.queryAllByLimit(gtid, offset, pageSize);
        pageBean.setList(list);
        pageBean.setPagecount(count/pageSize);
        model.addAttribute("freshPage", pageBean);
//        session.removeAttribute("search");
        model.addAttribute("goodType", goodTypeService.queryById(gtid));

        Map<String, String> imgs = new HashMap<>();

        for (FreshGoods freshGoods : list) {
            String img = freshGoods.getImg();

            String[] split = img.split("-");

            String is = split[0];
            imgs.put(freshGoods.getFdid(), is);
        }

        model.addAttribute("imgs", imgs);



        return "product";

    }


    @GetMapping("getGoodDetailsByFdid")
    public String getGoodDetailsByFdid(@RequestParam("fdid") String fdid, Model model) {

        FreshGoods freshGoods = freshGoodsService.selectByPrimaryKey(fdid);

        String[] imgs = freshGoods.getImg().split("-");

        model.addAttribute("imgs",imgs);

        model.addAttribute("freshGoods", freshGoods);
        return "single";
    }


    @GetMapping("getBigSouSuoGoods")
    public String getBigSouSuoGoods(@RequestParam(value = "goodName", defaultValue = "") String search, Model model,
                                    @RequestParam(value = "cp", defaultValue = "1") int currentPage, HttpSession session,
                                    @RequestParam(value = "ps", defaultValue = "6") int pageSize){


        PageBean<FreshGoods> pageBean = new PageBean<>();


        int count = freshGoodsService.selectSerchCount(search);
        pageBean.setCount(count);
        currentPage = currentPage < 1 ? 1 : currentPage;
        pageBean.setIndex(currentPage);
        pageSize = pageSize < 0 ? 5 : pageSize;
        pageBean.setSize(pageSize);
        int offset = (currentPage - 1) * pageSize;
        List<FreshGoods> list = freshGoodsService.querySearchByLimit(search, offset, pageSize);
        pageBean.setList(list);
        double pageCount=(double) count/pageSize;
        pageBean.setPagecount((int)(Math.ceil(pageCount)));
        model.addAttribute("freshPage", pageBean);
//        session.removeAttribute("goodType");
        model.addAttribute("search", search);
        Map<String, String> imgs = new HashMap<>();

        for (FreshGoods freshGoods : list) {
            String img = freshGoods.getImg();

            String[] split = img.split("-");

            String is = split[0];
            imgs.put(freshGoods.getFdid(), is);
        }

        model.addAttribute("imgs", imgs);



        return "product";
    }

}

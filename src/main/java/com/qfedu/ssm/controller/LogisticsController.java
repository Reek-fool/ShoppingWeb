package com.qfedu.ssm.controller;


import com.qfedu.ssm.entity.Logistics;
import com.qfedu.ssm.service.LogisticsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller("LogisticsController")
public class LogisticsController {

    @Resource
    private LogisticsService logisticsService;

    @GetMapping("logistics")
    public String trackOrder(@RequestParam(value = "userId", defaultValue = "") String userId, HttpSession session) {


        List<Logistics> logisticss = logisticsService.selectByPrimaryKey(userId);

        if (logisticss.size() > 0) {
            session.setAttribute("logisticss", logisticss);
        } else {
            session.setAttribute("logisticss", null);
        }

        return "logistics";
    }
}

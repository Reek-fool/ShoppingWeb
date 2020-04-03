package com.qfedu.ssm.controller;

import com.qfedu.ssm.entity.Admin;
import com.qfedu.ssm.service.AdminService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class AdminController {
    @Resource
    AdminService adminService;

    @GetMapping("/selectByAccName")
    public Admin selectByAccName(@PathVariable String accName){
        return adminService.selectByAccName(accName);
    }




}

package com.qfedu.ssm.service.Impl;

import com.qfedu.ssm.entity.Admin;
import com.qfedu.ssm.mapper.AdminMapper;
import com.qfedu.ssm.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import java.sql.Timestamp;
import java.util.Date;

@Service("AdminService")
public class AdminServiceImpl implements AdminService {

    @Resource
    private AdminMapper adminMapper;


    @Override
    public Admin selectByAccName(String accName) {
        return adminMapper.selectByAccName(accName);
    }

    @Override
    public Integer insert(Admin admin) {

        Timestamp timestamp = new Timestamp(new Date().getTime());
        admin.setCrttime(timestamp);
        return adminMapper.insert(admin);
    }
}

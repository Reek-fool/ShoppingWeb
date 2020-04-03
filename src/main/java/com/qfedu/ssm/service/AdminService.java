package com.qfedu.ssm.service;

import com.qfedu.ssm.entity.Admin;

import javax.annotation.Resource;

public interface AdminService {

    Admin selectByAccName(String accName);

    Integer insert(Admin admin);

}

package com.qfedu.ssm.service;

import com.qfedu.ssm.entity.Courier;
import com.qfedu.ssm.entity.Logistics;

import java.util.List;

public interface CourierService {
    int deleteByPrimaryKey(String account);

    int insert(Courier record);

    int insertSelective(Courier record);

    Courier selectByPrimaryKey(String account);

    int updateByPrimaryKeySelective(Courier record);

    int updateByPrimaryKey(Courier record);

    List<String> selectAccount();
}

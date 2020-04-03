package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.Courier;

import java.util.List;

public interface CourierMapper {
    int deleteByPrimaryKey(String account);

    int insert(Courier record);

    int insertSelective(Courier record);

    Courier selectByPrimaryKey(String account);

    int updateByPrimaryKeySelective(Courier record);

    int updateByPrimaryKey(Courier record);

    List<String> selectAccount();
}
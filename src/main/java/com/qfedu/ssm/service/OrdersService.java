package com.qfedu.ssm.service;

import com.qfedu.ssm.entity.Orders;

public interface OrdersService {
    int deleteByPrimaryKey(String oid);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(String oid);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);

    String selectByUserID(String userId);
}

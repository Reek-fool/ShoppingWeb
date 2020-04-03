package com.qfedu.ssm.service;

import com.qfedu.ssm.dto.OrderFormDto;
import com.qfedu.ssm.entity.OrderDetial;

import java.util.List;

public interface OrderDetialService {
    int deleteByPrimaryKey(Integer did);

    int insert(OrderDetial record);

    int insertSelective(OrderDetial record);

    OrderDetial selectByPrimaryKey(Integer did);

    int updateByPrimaryKeySelective(OrderDetial record);

    int updateByPrimaryKey(OrderDetial record);

    List<OrderFormDto> selectOrdeForm(String oid);
}

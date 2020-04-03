package com.qfedu.ssm.mapper;

import com.qfedu.ssm.dto.OrderFormDto;
import com.qfedu.ssm.entity.FreshGoods;
import com.qfedu.ssm.entity.OrderDetial;

import java.util.List;

public interface OrderDetialMapper {
    int deleteByPrimaryKey(Integer did);

    int insert(OrderDetial record);

    int insertSelective(OrderDetial record);

    OrderDetial selectByPrimaryKey(Integer did);

    int updateByPrimaryKeySelective(OrderDetial record);

    int updateByPrimaryKey(OrderDetial record);

    List<OrderFormDto> selectOrdeForm(String oid);
}
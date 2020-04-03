package com.qfedu.ssm.service.Impl;

import com.qfedu.ssm.entity.Orders;
import com.qfedu.ssm.mapper.OrdersMapper;
import com.qfedu.ssm.service.OrdersService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("OrdersService")
public class OrdersServiceImpl implements OrdersService {

    @Resource
    private OrdersMapper ordersMapper;

    @Override
    public int deleteByPrimaryKey(String oid) {
        return ordersMapper.deleteByPrimaryKey(oid);
    }

    @Override
    public int insert(Orders record) {
        return ordersMapper.insert(record);
    }

    @Override
    public int insertSelective(Orders record) {
        return ordersMapper.insertSelective(record);
    }

    @Override
    public Orders selectByPrimaryKey(String oid) {
        return ordersMapper.selectByPrimaryKey(oid);
    }

    @Override
    public int updateByPrimaryKeySelective(Orders record) {
        return ordersMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Orders record) {
        return ordersMapper.updateByPrimaryKey(record);
    }

    @Override
    public String selectByUserID(String userId) {
        return ordersMapper.selectByUserID(userId);
    }
}

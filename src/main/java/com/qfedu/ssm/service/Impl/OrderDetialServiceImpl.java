package com.qfedu.ssm.service.Impl;

import com.qfedu.ssm.dto.OrderFormDto;
import com.qfedu.ssm.entity.OrderDetial;
import com.qfedu.ssm.mapper.OrderDetialMapper;
import com.qfedu.ssm.service.OrderDetialService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("OrderDetialService")
public class OrderDetialServiceImpl implements OrderDetialService {

    @Resource
    private OrderDetialMapper orderDetialMapper;

    @Override
    public int deleteByPrimaryKey(Integer did) {
        return orderDetialMapper.deleteByPrimaryKey(did);
    }

    @Override
    public int insert(OrderDetial record) {
        return orderDetialMapper.insert(record);
    }

    @Override
    public int insertSelective(OrderDetial record) {
        return orderDetialMapper.insertSelective(record);
    }

    @Override
    public OrderDetial selectByPrimaryKey(Integer did) {
        return orderDetialMapper.selectByPrimaryKey(did);
    }

    @Override
    public int updateByPrimaryKeySelective(OrderDetial record) {
        return orderDetialMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(OrderDetial record) {
        return orderDetialMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<OrderFormDto> selectOrdeForm(String oid) {
        return orderDetialMapper.selectOrdeForm(oid);
    }
}

package com.qfedu.ssm.service.Impl;

import com.qfedu.ssm.entity.Courier;
import com.qfedu.ssm.mapper.CourierMapper;
import com.qfedu.ssm.service.CourierService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("CourierService")
public class CourierServiceImpl implements CourierService {

    @Resource
    private CourierMapper courierMapper;


    @Override
    public int deleteByPrimaryKey(String account) {
        return courierMapper.deleteByPrimaryKey(account);
    }

    @Override
    public int insert(Courier record) {
        return courierMapper.insert(record);
    }

    @Override
    public int insertSelective(Courier record) {
        return courierMapper.insertSelective(record);
    }

    @Override
    public Courier selectByPrimaryKey(String account) {
        return courierMapper.selectByPrimaryKey(account);
    }

    @Override
    public int updateByPrimaryKeySelective(Courier record) {
        return courierMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Courier record) {
        return courierMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<String> selectAccount() {
        return courierMapper.selectAccount();
    }


}

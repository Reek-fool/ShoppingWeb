package com.qfedu.ssm.service.Impl;

import com.qfedu.ssm.entity.Logistics;
import com.qfedu.ssm.mapper.LogisticsMapper;
import com.qfedu.ssm.service.LogisticsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("LogisticsService")
public class LogisticsServiceImpl implements LogisticsService {
    @Resource
    private LogisticsMapper logisticsMapper;
    @Override
    public int deleteByPrimaryKey(Integer lid) {
        return logisticsMapper.deleteByPrimaryKey(lid);
    }

    @Override
    public int insert(Logistics record) {
        return logisticsMapper.insert(record);
    }

    @Override
    public int insertSelective(Logistics record) {
        return logisticsMapper.insertSelective(record);
    }

    @Override
    public List<Logistics> selectByPrimaryKey(String userId) {
        return logisticsMapper.selectByPrimaryKey(userId);
    }

    @Override
    public int updateByPrimaryKeySelective(Logistics record) {
        return logisticsMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Logistics record) {
        return logisticsMapper.updateByPrimaryKey(record);
    }
}

package com.qfedu.ssm.service.Impl;

import com.qfedu.ssm.entity.GoodType;
import com.qfedu.ssm.mapper.GoodTypeMapper;
import com.qfedu.ssm.service.GoodTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("GoodTypeService")
public class GoodTypeServiceImpl implements GoodTypeService {

    @Resource
    GoodTypeMapper goodTypeMapper;

    @Override
    public List<GoodType> queryAllByLimit(int offset, int limit) {
        return this.goodTypeMapper.queryAllByLimit(offset, limit);
    }

    @Override
    public GoodType queryById(Integer gtid) {
        return this.goodTypeMapper.queryById(gtid);
    }

}

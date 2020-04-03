package com.qfedu.ssm.service;

import com.qfedu.ssm.entity.Logistics;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LogisticsService {
    int deleteByPrimaryKey(Integer lid);

    int insert(Logistics record);

    int insertSelective(Logistics record);

    List<Logistics> selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(Logistics record);

    int updateByPrimaryKey(Logistics record);
}

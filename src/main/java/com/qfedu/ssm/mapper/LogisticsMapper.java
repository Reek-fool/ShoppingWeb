package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.Logistics;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LogisticsMapper {
    int deleteByPrimaryKey(Integer lid);

    int insert(Logistics record);

    int insertSelective(Logistics record);

    List<Logistics> selectByPrimaryKey(@Param("userId") String userId);

    int updateByPrimaryKeySelective(Logistics record);

    int updateByPrimaryKey(Logistics record);
}
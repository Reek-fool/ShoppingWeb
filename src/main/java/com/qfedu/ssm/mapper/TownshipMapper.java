package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.Township;

public interface TownshipMapper {
    int deleteByPrimaryKey(Integer tid);

    int insert(Township record);

    int insertSelective(Township record);

    Township selectByPrimaryKey(Integer tid);

    int updateByPrimaryKeySelective(Township record);

    int updateByPrimaryKey(Township record);
}
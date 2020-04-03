package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.Citys;

public interface CitysMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(Citys record);

    int insertSelective(Citys record);

    Citys selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(Citys record);

    int updateByPrimaryKey(Citys record);
}
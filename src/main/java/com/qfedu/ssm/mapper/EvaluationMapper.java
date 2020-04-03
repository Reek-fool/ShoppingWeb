package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.Evaluation;

public interface EvaluationMapper {
    int deleteByPrimaryKey(Integer eid);

    int insert(Evaluation record);

    int insertSelective(Evaluation record);

    Evaluation selectByPrimaryKey(Integer eid);

    int updateByPrimaryKeySelective(Evaluation record);

    int updateByPrimaryKey(Evaluation record);
}
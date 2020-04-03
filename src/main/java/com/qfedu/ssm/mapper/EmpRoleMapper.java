package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.EmpRole;
import org.apache.ibatis.annotations.Param;

public interface EmpRoleMapper {
    int deleteByPrimaryKey(@Param("eid") Integer eid, @Param("rid") Integer rid);

    int insert(EmpRole record);

    int insertSelective(EmpRole record);
}
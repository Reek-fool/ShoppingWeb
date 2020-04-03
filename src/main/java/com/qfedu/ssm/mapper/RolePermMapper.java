package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.RolePerm;
import org.apache.ibatis.annotations.Param;

public interface RolePermMapper {
    int deleteByPrimaryKey(@Param("rid") Integer rid, @Param("pid") Integer pid);

    int insert(RolePerm record);

    int insertSelective(RolePerm record);
}
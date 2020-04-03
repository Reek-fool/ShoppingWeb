package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.GoodType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodTypeMapper {
    int deleteByPrimaryKey(Integer gtid);

    int insert(GoodType record);

    GoodType queryById(Integer gtid);

    List<GoodType> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);

    int insertSelective(GoodType record);

    GoodType selectByPrimaryKey(Integer gtid);

    int updateByPrimaryKeySelective(GoodType record);

    int updateByPrimaryKey(GoodType record);


}
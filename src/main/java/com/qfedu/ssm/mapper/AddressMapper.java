package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.Address;

public interface AddressMapper {
    int deleteByPrimaryKey(Integer did);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Integer did);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);
}
package com.qfedu.ssm.service;

import com.qfedu.ssm.entity.Users;

public interface UserService {
    int deleteByPrimaryKey(String userId);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);

    Users selectByName(String userName);
}

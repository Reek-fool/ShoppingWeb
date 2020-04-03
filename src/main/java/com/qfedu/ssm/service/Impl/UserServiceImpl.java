package com.qfedu.ssm.service.Impl;

import com.qfedu.ssm.entity.Users;
import com.qfedu.ssm.mapper.UsersMapper;
import com.qfedu.ssm.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("UserService")
public class UserServiceImpl implements UserService {

    @Resource
    private UsersMapper usersMapper;
    @Override
    public int deleteByPrimaryKey(String userId) {
        return usersMapper.deleteByPrimaryKey(userId);
    }

    @Override
    public int insert(Users record) {
        return usersMapper.insert(record);
    }

    @Override
    public int insertSelective(Users record) {
        return usersMapper.insertSelective(record);
    }

    @Override
    public Users selectByPrimaryKey(String userId) {
        return usersMapper.selectByPrimaryKey(userId);
    }

    @Override
    public int updateByPrimaryKeySelective(Users record) {
        return usersMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Users record) {
        return usersMapper.updateByPrimaryKey(record);
    }

    @Override
    public Users selectByName(String userName) {
        return usersMapper.selectByName(userName);
    }
}

package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.Cart;import org.apache.ibatis.annotations.Param;import java.util.List;

public interface CartMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(Cart record);

    int insertSelective(Cart record);

    Cart selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(Cart record);

    int updateByPrimaryKey(Cart record);

    List<Cart> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);
}
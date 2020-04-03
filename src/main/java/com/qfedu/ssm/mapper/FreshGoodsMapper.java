package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.Cart;
import com.qfedu.ssm.entity.FreshGoods;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface FreshGoodsMapper {
    int deleteByPrimaryKey(String fdid);

    int insert(FreshGoods record);

    int insertSelective(FreshGoods record);

    FreshGoods selectByPrimaryKey(@Param("fdid") String fdid);

    int updateByPrimaryKeySelective(FreshGoods record);

    int updateByPrimaryKey(FreshGoods record);

    List<FreshGoods> queryAllByLimit(@Param("gtid") int gtid, @Param("offset") int offset, @Param("limit") int limit);

    List<FreshGoods> selectByfdids(@Param("fdids") List<String> fdids);

    int selectGtidCount(int gtid);

    int selectSerchCount(@Param("search") String search);

    List<FreshGoods> querySearchByLimit(@Param("search") String search, @Param("offset") int offset, @Param("limit") int limit);
}
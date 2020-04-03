package com.qfedu.ssm.service;

import com.qfedu.ssm.entity.FreshGoods;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FreshGoodsService {

    List<FreshGoods> queryAllByLimit(int gtid, int offset, int limit);

    FreshGoods selectByPrimaryKey(String fdid);

    List<FreshGoods> selectByfdids(List<String> fdids);

    int selectGtidCount(int gtid);

    int selectSerchCount(String search);

    List<FreshGoods> querySearchByLimit(String search, int offset, int pageSize);
}

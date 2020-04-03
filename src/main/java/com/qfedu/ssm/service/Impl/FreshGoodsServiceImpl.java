package com.qfedu.ssm.service.Impl;

import com.qfedu.ssm.entity.FreshGoods;
import com.qfedu.ssm.mapper.FreshGoodsMapper;
import com.qfedu.ssm.service.FreshGoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("FreshGoodsService")
public class FreshGoodsServiceImpl implements FreshGoodsService {

    @Resource
    FreshGoodsMapper freshGoodsMapper;


    @Override
    public List<FreshGoods> queryAllByLimit(int gtid, int offset, int limit) {
        return freshGoodsMapper.queryAllByLimit(gtid, offset, limit);
    }

    @Override
    public FreshGoods selectByPrimaryKey(String fdid) {
        return freshGoodsMapper.selectByPrimaryKey(fdid);
    }

    @Override
    public List<FreshGoods> selectByfdids(List<String> fdids) {
        return freshGoodsMapper.selectByfdids(fdids);
    }

    @Override
    public int selectGtidCount(int gtid) {
        return freshGoodsMapper.selectGtidCount(gtid);
    }

    @Override
    public int selectSerchCount(String search) {
        return freshGoodsMapper.selectSerchCount(search);
    }

    @Override
    public List<FreshGoods> querySearchByLimit(String search, int offset, int pageSize) {
        return freshGoodsMapper.querySearchByLimit(search,offset,pageSize);
    }


}

package com.qfedu.ssm.service;

import com.qfedu.ssm.entity.GoodType;
import org.springframework.stereotype.Service;

import java.util.List;


public interface GoodTypeService {



    List<GoodType> queryAllByLimit(int offset, int limit);

    GoodType queryById(Integer gtid);


}

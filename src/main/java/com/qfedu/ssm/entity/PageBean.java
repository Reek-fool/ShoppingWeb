package com.qfedu.ssm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PageBean<T> {

    private int size;  //当前展示记录
    private int index;  //当前页号
    private int pagecount;   //总页数
    private int count;  //数据总总数
    private List<T> list;


}

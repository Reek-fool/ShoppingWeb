package com.qfedu.ssm.mapper;

import com.qfedu.ssm.entity.Book;

import java.util.List;

public interface BookMapper {
    int insert(Book record);

    int insertSelective(Book record);

    List<Book> selectAllBook();
}
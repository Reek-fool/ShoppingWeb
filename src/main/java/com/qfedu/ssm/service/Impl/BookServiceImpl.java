package com.qfedu.ssm.service.Impl;

import com.qfedu.ssm.entity.Book;
import com.qfedu.ssm.mapper.BookMapper;
import com.qfedu.ssm.service.BookService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Resource
    BookMapper bookMapper;


    @Override
    public List<Book> selectAllBook() {
        return bookMapper.selectAllBook();
    }
}

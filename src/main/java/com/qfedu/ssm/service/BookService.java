package com.qfedu.ssm.service;

import com.qfedu.ssm.entity.Book;

import java.util.List;

public interface BookService {

  List<Book> selectAllBook();
}

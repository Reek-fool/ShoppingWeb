package com.qfedu.ssm.controller;

import com.qfedu.ssm.entity.Book;
import com.qfedu.ssm.service.BookService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/book")
public class BookController {

    @Resource
    private BookService bookService;

    @GetMapping("/")
    public List<Book> selectAllBook(){
        return bookService.selectAllBook();
    }
}

package com.qfedu.ssm.entity;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Book {
    private Integer bid;

    private String name;

    private String author;

    private String publish;

    private Double price;

    private Date crttime;
}
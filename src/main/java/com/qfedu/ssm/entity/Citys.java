package com.qfedu.ssm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Citys {
    private Integer cid;

    private String cname;

    private Integer pid;
}
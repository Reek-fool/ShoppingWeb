package com.qfedu.ssm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cart {
    private Integer cid;

    private String userId;

    private String fdid;

    private Integer count;

    private Integer isDealfinish;
}
package com.qfedu.ssm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreshGoods {
    private String fdid;

    private String goodName;

    private Integer gtid;

    private String img;

    private Double price;

    private Integer discount;

    private Integer preference;

    private Integer ifPromotion;

    private Integer lastSales;

    private Integer currentSales;

    private Integer countSales;

    private String summery;

    private String attr1;

    private String attr2;
}
package com.qfedu.ssm.entity;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Orders {
    private String oid;

    private String userId;

    private Date orderTime;

    private Double totalPrice;

    private Integer orderStatus;

    private Integer payType;
}
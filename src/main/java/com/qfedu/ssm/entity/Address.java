package com.qfedu.ssm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Address {
    private Integer did;

    private String userId;

    private String province;

    private String city;

    private String township;

    private String detial;

    private Integer types;
}
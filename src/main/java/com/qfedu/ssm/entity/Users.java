package com.qfedu.ssm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Users {
    private String userId;

    private String userName;

    private String password;

    private String email;

    private String tel;

    private Integer level;

    private Integer integral;

    private Integer ifNew;
}
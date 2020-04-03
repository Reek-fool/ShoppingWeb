package com.qfedu.ssm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Township {
    private Integer tid;

    private String tname;

    private Integer cid;
}
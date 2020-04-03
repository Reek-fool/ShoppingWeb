package com.qfedu.ssm.entity;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Logistics {
    private Integer lid;

    private String account;

    private String userId;

    private String oid;

    private Date payTime;

    private Date packageTime;

    private Date beginTime;

    private Date endTime;

    private Integer status;
}
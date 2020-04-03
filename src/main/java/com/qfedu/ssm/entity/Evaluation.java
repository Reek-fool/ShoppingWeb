package com.qfedu.ssm.entity;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Evaluation {
    private Integer eid;

    private String userId;

    private String fdid;

    private String detial;

    private Integer grade;

    private Date evaDate;
}
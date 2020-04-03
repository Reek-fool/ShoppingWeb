package com.qfedu.ssm.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderFormDto {

        private String goodName;
        private Double count;
        private Double price;
        private Integer discount;
        private Integer preference;
        private String fdid;


}

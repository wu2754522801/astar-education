package com.astar.education.domain.dto;

import lombok.Data;

import java.math.BigDecimal;

/**
 * @author wuzhenyong
 * ClassName:BankOptionsDTO.java
 * date:2024-08-05 11:40
 * Description: 具体的选项
 */
@Data
public class BankOptionsDTO {
    private String id;

    /** 题库ID */
    private String questionsBankId;

    /** 排序字段 */
    private Integer sortField;

    /** 选项key */
    private String optionKey;

    /** 选项名 */
    private String optionName;

    /** 答案 */
    private String answer;

    private String userAnswer;

    /** 分数 */
    private BigDecimal score;
}

package com.astar.education.domain.dto;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

/**
 * @author wuzhenyong
 * ClassName:PaperQuestionsDTO.java
 * date:2024-08-05 09:42
 * Description: 试卷题目下的填空题等
 */
@Data
public class PaperQuestionsDTO {
    /** 主键 */
    private String id;

    /**
     * 题目ID
     */
    private String questionBankId;

    /** 年级ID */
    private String gradeClassId;

    /** 学科ID */
    private String disciplineId;

    /** 题目 */
    private String title;

    /**
     * 正确选项键
     */
    private String correctOptionKey;
    /**
     * 用户选项键
     */
    private String userCorrectOptionKey;

    /** 题目类型：1.单选、2.多选、3.判断、4.简答、5.填空 */
    private String questionsType;

    /** 题目解析 */
    private String questionsAnalyze;

    /** 分数 */
    private BigDecimal score;

    private BigDecimal markScore;

    /** 难度 */
    private String difficulty;
    /**
     * 状态：1.正确，2.错题，3.错题已修改
     */
    private String status;
    private String recordInfoId;
    /**
     * 题库
     */
    private List<BankOptionsDTO> bankOptionsList;
}

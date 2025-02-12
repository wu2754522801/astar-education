package com.astar.education.domain;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import com.baomidou.mybatisplus.annotation.*;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.astar.common.annotation.Excel;
import com.astar.common.core.domain.BaseEntity;

/**
 * 题库管理对象 tb_questions_bank
 * 
 * @author astar
 * @date 2024-07-30
 */
@Data
@TableName("tb_questions_bank")
public class QuestionsBank extends Model<QuestionsBank> {
    private static final long serialVersionUID = 1L;

    /** 主键 */
    @TableId(type = IdType.ASSIGN_ID)
    private String id;

    /** 创建人 */
    @TableField(fill = FieldFill.INSERT)
    private String createdBy;

    /** 创建时间 */
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createdTime;

    /** 更新人 */
    @TableField(fill = FieldFill.UPDATE)
    private String updatedBy;

    /** 更新时间 */
    @TableField(fill = FieldFill.UPDATE)
    private LocalDateTime updatedTime;

    /** 逻辑删除 */
    @TableLogic
    private Integer delFlag;

    /** 年级ID */
    private String gradeClassId;

    /** 学科ID */
    private String disciplineId;

    @TableField(exist = false)
    private String disciplineName;

    /** 题目 */
    private String title;

    /** 题目类型：1.单选、2.多选、3.判断、4.简答、5.填空 */
    private String questionsType;

    /**
     * 正确选项键
     */
    private String correctOptionKey;

    /** 题目解析 */
    private String questionsAnalyze;

    /** 分数 */
    private BigDecimal score;

    /** 难度 */
    private String difficulty;

    @TableField(exist = false)
    private List<QuestionsBankOptions> bankOptionsList;

    @TableField(exist = false)
    private List<String> excludeBankIds;
}

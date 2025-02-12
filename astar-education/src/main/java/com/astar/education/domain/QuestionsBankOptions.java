package com.astar.education.domain;

import java.math.BigDecimal;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.astar.common.annotation.Excel;
import com.astar.common.core.domain.BaseEntity;

/**
 * 题库选项管理对象 tb_questions_bank_options
 * 
 * @author astar
 * @date 2024-07-30
 */
@Data
@TableName("tb_questions_bank_options")
public class QuestionsBankOptions extends Model<QuestionsBankOptions> {
    private static final long serialVersionUID = 1L;

    /** 主键 */
    @TableId(type = IdType.ASSIGN_ID)
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

    /** 分数 */
    private BigDecimal score;

}

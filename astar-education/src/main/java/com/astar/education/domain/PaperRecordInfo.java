package com.astar.education.domain;

import com.astar.education.domain.dto.PaperQuestionsDTO;
import com.astar.education.domain.dto.PaperTopicDTO;
import com.baomidou.mybatisplus.annotation.*;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

/**
 * @author wuzhenyong
 * ClassName:PaperRecordInfo.java
 * date:2024-08-29 14:54
 * Description:
 */
@Data
@TableName("tb_paper_record_info")
public class PaperRecordInfo extends Model<PaperRecordInfo> {
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

    /**
     * 答题用户
     */
    private String userName;

    /**
     * 状态：1.正确，2.错题，3.错题已修改:批改
     */
    private String status;

    private String recordId;

    /** 试卷ID */
    private String examinationPaperId;

    /** 题库ID */
    private String questionBankId;

    /**
     * 题目分数
     */
    private BigDecimal score;

    /**
     * 用户得分
     */
    private BigDecimal finalScore;
    /**
     * 正确答案
     */
    private String answer;

    /**
     * 用户答案
     */
    private String userAnswer;

    /**
     * 扩展信息例如：填空题
     */
    private String extInfo;

    @TableField(exist = false)
    private String disciplineName;

    @TableField(exist = false)
    private String title;

    @TableField(exist = false)
    private PaperQuestionsDTO paperQuestions;
}

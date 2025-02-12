package com.astar.education.domain;

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
 * ClassName:PaperRecord.java
 * date:2024-08-29 14:52
 * Description:
 */
@Data
@TableName("tb_paper_record")
public class PaperRecord extends Model<PaperRecord> {
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

    /** 答卷用户 */
    private String userName;

    /** 年级ID */
    private String gradeClassId;

    @TableField(exist = false)
    private String gradeClassName;

    /** 学科ID */
    private String disciplineId;

    @TableField(exist = false)
    private String disciplineName;

    /** 试卷ID */
    private String examinationPaperId;

    /** 试卷名称 */
    private String examinationPaperName;

    /**
     * 试卷分数
     */
    private BigDecimal score;

    /**
     * 最终得分
     */
    private BigDecimal finalScore;

    /**
     * 元数据
     */
    private String metadataStr;

    /**
     * 试卷状态：1.完成，2.待批改
     */
    private String status;

    /**
     * 耗时（分钟）
     */
    private String timeConsuming;

    /**
     * 题目
     */
    @TableField(exist = false)
    @Valid
    @NotNull(message = "题名标题不能为空")
    private List<PaperTopicDTO> paperTopicList;

}

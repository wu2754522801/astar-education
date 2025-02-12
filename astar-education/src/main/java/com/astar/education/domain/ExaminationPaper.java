package com.astar.education.domain;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import com.astar.education.domain.dto.PaperTopicDTO;
import com.baomidou.mybatisplus.annotation.*;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.astar.common.annotation.Excel;
import com.astar.common.core.domain.BaseEntity;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

/**
 * 试卷管理对象 tb_examination_paper
 * 
 * @author astar
 * @date 2024-07-30
 */
@Data
@TableName("tb_examination_paper")
public class ExaminationPaper extends Model<ExaminationPaper> {
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
    @TableField(exist = false)
    private String gradeClassName;

    /** 学科ID */
    private String disciplineId;
    @TableField(exist = false)
    private String disciplineName;

    /** 试卷名称 */
    private String examinationPaperName;

    /** 试卷类型:1.固定试卷，2.时段试卷，3.任务试卷 */
    private String examinationPaperType;

    /** 试卷状态：1.未发布，2.已发布 */
    private String examinationPaperStatus;

    /** 建议时长，小时 */
    private String suggestionsHours;

    /** 建议时长，分钟 */
    private String suggestionsMinutes;

    /** 开始时间 */
    private LocalDateTime startTime;

    /** 结束时间 */
    private LocalDateTime endTime;

    /**
     * 题目
     */
    @TableField(exist = false)
    @Valid
    @NotNull(message = "题名标题不能为空")
    private List<PaperTopicDTO> paperTopicList;

    @TableField(exist = false)
    private List<String> excludeIds;

    @TableField(exist = false)
    private int paperQuestionsNum;

    @TableField(exist = false)
    private BigDecimal score;

}

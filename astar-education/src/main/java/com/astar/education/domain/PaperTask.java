package com.astar.education.domain;

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
 * 试卷任务管理对象 tb_paper_task
 * 
 * @author astar
 * @date 2024-07-30
 */
@Data
@TableName("tb_paper_task")
public class PaperTask extends Model<PaperTask> {
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
    /** 标题 */
    private String title;

    /** 关联试卷ID */
    private String associatedPaperIds;
    @TableField(exist = false)
    private String associatedPaperNames;

    @TableField(exist = false)
    private List<ExaminationPaper> examinationPaperList;
}

package com.astar.education.domain;

import java.time.LocalDateTime;

import com.baomidou.mybatisplus.annotation.*;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import com.astar.common.annotation.Excel;

/**
 * 学科管理对象 tb_discipline
 * 
 * @author astar
 * @date 2024-07-30
 */
@Data
@TableName("tb_discipline")
public class Discipline extends Model<Discipline> {
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

    /** 年级名称 */
    @TableField(exist = false)
    private String gradeClassName;

    /** 学科名称 */
    @Excel(name = "学科名称")
    private String disciplineName;
}

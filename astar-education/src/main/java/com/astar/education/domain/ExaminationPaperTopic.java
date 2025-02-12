package com.astar.education.domain;

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
 * 试卷题目管理对象 tb_examination_paper_topic
 * 
 * @author astar
 * @date 2024-07-30
 */
@Data
@TableName("tb_examination_paper_topic")
public class ExaminationPaperTopic extends Model<ExaminationPaperTopic> {
    private static final long serialVersionUID = 1L;

    /** 主键 */
    @TableId(type = IdType.ASSIGN_ID)
    private String id;

    /** 试卷ID */
    private String examinationPaperId;

    /** 标题 */
    private String title;

    /** 排序字段 */
    private Integer sortField;

}

package com.astar.education.domain.dto;

import lombok.Data;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * @author wuzhenyong
 * ClassName:PaperTopicDTO.java
 * date:2024-08-05 09:41
 * Description: 试卷题目
 */
@Data
public class PaperTopicDTO {
    /** 主键 */
    private String id;

    /** 试卷ID */
    private String examinationPaperId;

    /** 标题 */
    private String title;

    /** 排序字段 */
    private Integer sortField;

    @Valid
    @NotNull(message = "请选择试卷题目")
    private List<PaperQuestionsDTO> paperQuestionsList;
}

package com.astar.education.service;


import com.astar.education.domain.ExaminationPaper;
import com.astar.education.domain.dto.PaperQuestionsDTO;
import com.astar.education.domain.dto.StatisticsDTO;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 试卷管理Service接口
 * 
 * @author astar
 * @date 2024-07-30
 */
public interface ITbExaminationPaperService extends IService<ExaminationPaper> {

    ExaminationPaper getInfo(String id);

    int addEntity(ExaminationPaper examinationPaper);

    int editEntity(ExaminationPaper examinationPaper);

    int removeEntity(String[] ids);

    List<StatisticsDTO> getMonthTotal();

    PaperQuestionsDTO getQuestionsInfo(String questionBankId);
}

package com.astar.education.service;


import com.astar.education.domain.QuestionsBank;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 题库管理Service接口
 *
 * @author astar
 * @date 2024-07-30
 */
public interface ITbQuestionsBankService extends IService<QuestionsBank> {
    int addEntity(QuestionsBank questionsBank);

    int editEntity(QuestionsBank questionsBank);

    int removeEntity(String[] ids);
}

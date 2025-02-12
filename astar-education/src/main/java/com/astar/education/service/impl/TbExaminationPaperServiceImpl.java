package com.astar.education.service.impl;


import com.astar.common.utils.bean.BeanUtils;
import com.astar.education.domain.*;
import com.astar.education.domain.dto.BankOptionsDTO;
import com.astar.education.domain.dto.PaperQuestionsDTO;
import com.astar.education.domain.dto.PaperTopicDTO;
import com.astar.education.domain.dto.StatisticsDTO;
import com.astar.education.mapper.*;
import com.astar.education.service.ITbExaminationPaperService;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 试卷管理Service业务层处理
 *
 * @author astar
 * @date 2024-07-30
 */
@Service
@AllArgsConstructor
public class TbExaminationPaperServiceImpl extends ServiceImpl<TbExaminationPaperMapper, ExaminationPaper> implements ITbExaminationPaperService {
    private final TbExaminationPaperTopicMapper tbExaminationPaperTopicMapper;
    private final TbExaminationPaperQuestionsMapper tbExaminationPaperQuestionsMapper;
    private final TbQuestionsBankMapper tbQuestionsBankMapper;
    private final TbQuestionsBankOptionsMapper tbQuestionsBankOptionsMapper;

    /**
     * 获取信息
     *
     * @param id 主键
     * @return {@link ExaminationPaper }
     */
    @Override
    public ExaminationPaper getInfo(String id) {
        // 获取试卷信息
        ExaminationPaper entity = baseMapper.selectById(id);
        List<PaperTopicDTO> paperTopicDTOList = new ArrayList<>();
        // 获取试卷标题信息
        List<ExaminationPaperTopic> paperTopicList = tbExaminationPaperTopicMapper.selectList(Wrappers.<ExaminationPaperTopic>lambdaQuery()
                .eq(ExaminationPaperTopic::getExaminationPaperId, id)
                .orderByAsc(ExaminationPaperTopic::getSortField));
        for (ExaminationPaperTopic paperTopic : paperTopicList) {
            // 获取题名选项
            List<ExaminationPaperQuestions> paperQuestionsList = tbExaminationPaperQuestionsMapper.selectList(Wrappers.<ExaminationPaperQuestions>lambdaQuery()
                    .eq(ExaminationPaperQuestions::getExaminationPaperId, id)
                    .eq(ExaminationPaperQuestions::getExaminationPaperTopicId, paperTopic.getId())
                    .orderByAsc(ExaminationPaperQuestions::getSortField));
            PaperTopicDTO topicDTO = new PaperTopicDTO();
            BeanUtils.copyProperties(paperTopic, topicDTO);
            List<PaperQuestionsDTO> paperQuestionsDTOList = new ArrayList<>();
            for (ExaminationPaperQuestions examinationPaperQuestions : paperQuestionsList) {
                PaperQuestionsDTO paperQuestionsDTO = new PaperQuestionsDTO();
                BeanUtils.copyProperties(examinationPaperQuestions, paperQuestionsDTO);
                // 获取关联题目选项及答案
                QuestionsBank questionsBank = tbQuestionsBankMapper.selectById(examinationPaperQuestions.getQuestionBankId());
                List<BankOptionsDTO> bankOptionsList = new ArrayList<>();
                List<QuestionsBankOptions> questionsBankOptions = tbQuestionsBankOptionsMapper.selectList(Wrappers.<QuestionsBankOptions>lambdaQuery()
                        .eq(QuestionsBankOptions::getQuestionsBankId, examinationPaperQuestions.getQuestionBankId())
                        .orderByAsc(QuestionsBankOptions::getSortField));
                for (QuestionsBankOptions questionsBankOption : questionsBankOptions) {
                    BankOptionsDTO bankOptions = new BankOptionsDTO();
                    BeanUtils.copyProperties(questionsBankOption, bankOptions);
                    bankOptionsList.add(bankOptions);
                }
                paperQuestionsDTO.setBankOptionsList(bankOptionsList);
                BeanUtils.copyProperties(questionsBank, paperQuestionsDTO, "id");
                paperQuestionsDTOList.add(paperQuestionsDTO);
            }
            topicDTO.setPaperQuestionsList(paperQuestionsDTOList);
            paperTopicDTOList.add(topicDTO);
        }
        entity.setPaperTopicList(paperTopicDTOList);
        return entity;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int addEntity(ExaminationPaper examinationPaper) {
        int insert = baseMapper.insert(examinationPaper);
        List<PaperTopicDTO> topicList = examinationPaper.getPaperTopicList();
        AtomicInteger topicCount = new AtomicInteger(0);
        for (PaperTopicDTO paperTopicDTO : topicList) {
            // 试卷标题
            ExaminationPaperTopic examinationPaperTopic = new ExaminationPaperTopic();
            examinationPaperTopic.setTitle(paperTopicDTO.getTitle());
            examinationPaperTopic.setExaminationPaperId(examinationPaper.getId());
            examinationPaperTopic.setSortField(topicCount.incrementAndGet());
            tbExaminationPaperTopicMapper.insert(examinationPaperTopic);
            // 题目
            AtomicInteger questionsCount = new AtomicInteger(0);
            List<PaperQuestionsDTO> paperQuestionsList = paperTopicDTO.getPaperQuestionsList();
            for (PaperQuestionsDTO paperQuestionsDTO : paperQuestionsList) {
                ExaminationPaperQuestions examinationPaperQuestions = new ExaminationPaperQuestions();
                examinationPaperQuestions.setExaminationPaperId(examinationPaper.getId());
                examinationPaperQuestions.setExaminationPaperTopicId(examinationPaperTopic.getId());
                examinationPaperQuestions.setQuestionBankId(paperQuestionsDTO.getQuestionBankId());
                examinationPaperQuestions.setSortField(questionsCount.incrementAndGet());
                tbExaminationPaperQuestionsMapper.insert(examinationPaperQuestions);
            }
        }
        return insert;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int editEntity(ExaminationPaper examinationPaper) {
        int update = baseMapper.updateById(examinationPaper);
        // 删除
        tbExaminationPaperTopicMapper.delete(Wrappers.<ExaminationPaperTopic>lambdaQuery()
                .eq(ExaminationPaperTopic::getExaminationPaperId, examinationPaper.getId()));
        tbExaminationPaperQuestionsMapper.delete(Wrappers.<ExaminationPaperQuestions>lambdaQuery()
                .eq(ExaminationPaperQuestions::getExaminationPaperId, examinationPaper.getId()));
        List<PaperTopicDTO> topicList = examinationPaper.getPaperTopicList();
        AtomicInteger topicCount = new AtomicInteger(0);
        for (PaperTopicDTO paperTopicDTO : topicList) {
            // 试卷标题
            ExaminationPaperTopic examinationPaperTopic = new ExaminationPaperTopic();
            examinationPaperTopic.setTitle(paperTopicDTO.getTitle());
            examinationPaperTopic.setExaminationPaperId(examinationPaper.getId());
            examinationPaperTopic.setSortField(topicCount.incrementAndGet());
            tbExaminationPaperTopicMapper.insert(examinationPaperTopic);
            // 题目
            AtomicInteger questionsCount = new AtomicInteger(0);
            List<PaperQuestionsDTO> paperQuestionsList = paperTopicDTO.getPaperQuestionsList();
            for (PaperQuestionsDTO paperQuestionsDTO : paperQuestionsList) {
                ExaminationPaperQuestions examinationPaperQuestions = new ExaminationPaperQuestions();
                examinationPaperQuestions.setExaminationPaperId(examinationPaper.getId());
                examinationPaperQuestions.setExaminationPaperTopicId(examinationPaperTopic.getId());
                examinationPaperQuestions.setQuestionBankId(paperQuestionsDTO.getQuestionBankId());
                examinationPaperQuestions.setSortField(questionsCount.incrementAndGet());
                tbExaminationPaperQuestionsMapper.insert(examinationPaperQuestions);
            }
        }
        return update;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int removeEntity(String[] ids) {
        List<String> idList = Arrays.asList(ids);
        int delete = baseMapper.deleteBatchIds(idList);
        // 删除
        tbExaminationPaperTopicMapper.delete(Wrappers.<ExaminationPaperTopic>lambdaQuery()
                .in(ExaminationPaperTopic::getExaminationPaperId, idList));
        tbExaminationPaperQuestionsMapper.delete(Wrappers.<ExaminationPaperQuestions>lambdaQuery()
                .in(ExaminationPaperQuestions::getExaminationPaperId, idList));
        return delete;
    }

    @Override
    public List<StatisticsDTO> getMonthTotal() {
        return baseMapper.getMonthTotal();
    }

    @Override
    public PaperQuestionsDTO getQuestionsInfo(String questionBankId) {
        PaperQuestionsDTO paperQuestionsDTO = new PaperQuestionsDTO();
        // 获取关联题目选项及答案
        QuestionsBank questionsBank = tbQuestionsBankMapper.selectById(questionBankId);
        List<BankOptionsDTO> bankOptionsList = new ArrayList<>();
        List<QuestionsBankOptions> questionsBankOptions = tbQuestionsBankOptionsMapper.selectList(Wrappers.<QuestionsBankOptions>lambdaQuery()
                .eq(QuestionsBankOptions::getQuestionsBankId, questionBankId)
                .orderByAsc(QuestionsBankOptions::getSortField));
        for (QuestionsBankOptions questionsBankOption : questionsBankOptions) {
            BankOptionsDTO bankOptions = new BankOptionsDTO();
            BeanUtils.copyProperties(questionsBankOption, bankOptions);
            bankOptionsList.add(bankOptions);
        }
        paperQuestionsDTO.setBankOptionsList(bankOptionsList);
        BeanUtils.copyProperties(questionsBank, paperQuestionsDTO, "id");
        return paperQuestionsDTO;
    }
}

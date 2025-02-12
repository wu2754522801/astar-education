package com.astar.education.service.impl;

import com.alibaba.fastjson2.JSON;
import com.astar.common.utils.SecurityUtils;
import com.astar.education.constant.EducationConstant;
import com.astar.education.domain.PaperRecord;
import com.astar.education.domain.PaperRecordInfo;
import com.astar.education.domain.QuestionsBank;
import com.astar.education.domain.QuestionsBankOptions;
import com.astar.education.domain.dto.BankOptionsDTO;
import com.astar.education.domain.dto.PaperQuestionsDTO;
import com.astar.education.domain.dto.PaperTopicDTO;
import com.astar.education.mapper.TbPaperRecordInfoMapper;
import com.astar.education.mapper.TbPaperRecordMapper;
import com.astar.education.mapper.TbQuestionsBankMapper;
import com.astar.education.mapper.TbQuestionsBankOptionsMapper;
import com.astar.education.service.ITbExaminationPaperService;
import com.astar.education.service.ITbPaperRecordService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @author wuzhenyong
 * ClassName:ITbPaperRecordServiceImpl.java
 * date:2024-08-29 15:03
 * Description:
 */
@Service
@AllArgsConstructor
public class ITbPaperRecordServiceImpl extends ServiceImpl<TbPaperRecordMapper, PaperRecord> implements ITbPaperRecordService {
    private final ITbExaminationPaperService examinationPaperService;
    private final TbQuestionsBankMapper questionsBankMapper;
    private final TbQuestionsBankOptionsMapper questionsBankOptionsMapper;
    private final TbPaperRecordInfoMapper paperRecordInfoMapper;

    @Override
    public int addEntity(PaperRecord paperRecord) {
        paperRecord.setExaminationPaperId(paperRecord.getId());
        paperRecord.setCreatedTime(null);
        paperRecord.setCreatedBy(null);
        paperRecord.setUpdatedBy(null);
        paperRecord.setUpdatedTime(null);
        String jsonString = JSON.toJSONString(paperRecord);
        paperRecord.setMetadataStr(jsonString);
        paperRecord.setId(null);
        // 获取解题
        List<PaperTopicDTO> paperTopicList = paperRecord.getPaperTopicList();
        // 总分
        BigDecimal scoreTotal = BigDecimal.ZERO;
        // 试卷总分
        BigDecimal paperScoreTotal = BigDecimal.ZERO;
        List<PaperRecordInfo> paperRecordInfoList = new ArrayList<>();
        // 是否存在简答题
        Boolean answerFlag = Boolean.FALSE;
        for (PaperTopicDTO paperTopicDTO : paperTopicList) {
            List<PaperQuestionsDTO> paperQuestionsList = paperTopicDTO.getPaperQuestionsList();
            for (PaperQuestionsDTO paperQuestionsDTO : paperQuestionsList) {
                String questionsType = paperQuestionsDTO.getQuestionsType();
                // 查看对应题目
                QuestionsBank questionsBank = questionsBankMapper.selectById(paperQuestionsDTO.getQuestionBankId());
                // 用户答案
                String userCorrectOptionKey = paperQuestionsDTO.getCorrectOptionKey();
                if (StringUtils.isEmpty(userCorrectOptionKey)) {
                    userCorrectOptionKey = "";
                }
                // 正确答案
                String correctOptionKey = questionsBank.getCorrectOptionKey();
                // 答题记录组装
                PaperRecordInfo paperRecordInfo = new PaperRecordInfo();
                paperRecordInfo.setQuestionBankId(paperQuestionsDTO.getQuestionBankId());
                paperRecordInfo.setExaminationPaperId(paperRecord.getExaminationPaperId());
                paperRecordInfo.setScore(questionsBank.getScore());
                paperRecordInfo.setExtInfo(JSON.toJSONString(paperQuestionsDTO));
                paperRecordInfo.setUserAnswer(userCorrectOptionKey);
                paperRecordInfo.setAnswer(correctOptionKey);
                paperRecordInfo.setStatus(EducationConstant.BANK_STATUS_ERROR);
                paperRecordInfo.setFinalScore(BigDecimal.ZERO);
                // 题目类型判断
                if (EducationConstant.QUESTIONS_TYPE_RADIO.equals(questionsType)) {
                    // 单选题
                    boolean flag = userCorrectOptionKey.equals(correctOptionKey);
                    if (flag) {
                        scoreTotal = scoreTotal.add(questionsBank.getScore());
                        paperRecordInfo.setStatus(EducationConstant.BANK_STATUS_SUCCESS);
                        paperRecordInfo.setFinalScore(questionsBank.getScore());
                    }
                    paperScoreTotal = paperScoreTotal.add(questionsBank.getScore());
                } else if (EducationConstant.QUESTIONS_TYPE_MULTIPLE.equals(questionsType)) {
                    // 多选题
                    List<String> userAnswerList = Arrays.stream(userCorrectOptionKey.split(StringPool.COMMA)).collect(Collectors.toList());
                    List<String> answerList = Arrays.stream(correctOptionKey.split(StringPool.COMMA)).collect(Collectors.toList());
                    // 用户选择正确数量
                    int successIndex = 0;
                    // 正确答案数量
                    int size = answerList.size();
                    for (String answer : answerList) {
                        // 检查是否正确
                        if (userAnswerList.contains(answer)) {
                            // 正确
                            successIndex += 1;
                        }
                    }
                    if (successIndex == size) {
                        // 正确
                        scoreTotal = scoreTotal.add(questionsBank.getScore());
                        paperRecordInfo.setStatus(EducationConstant.BANK_STATUS_SUCCESS);
                        paperRecordInfo.setFinalScore(questionsBank.getScore());
                    }
                    paperScoreTotal = paperScoreTotal.add(questionsBank.getScore());
                } else if (EducationConstant.QUESTIONS_TYPE_JUDGMENT.equals(questionsType)) {
                    // 判断题
                    boolean flag = userCorrectOptionKey.equals(correctOptionKey);
                    if (flag) {
                        scoreTotal = scoreTotal.add(questionsBank.getScore());
                        paperRecordInfo.setStatus(EducationConstant.BANK_STATUS_SUCCESS);
                        paperRecordInfo.setFinalScore(questionsBank.getScore());
                    }
                    paperScoreTotal = paperScoreTotal.add(questionsBank.getScore());
                } else if (EducationConstant.QUESTIONS_TYPE_ANSWER.equals(questionsType)) {
                    answerFlag = Boolean.TRUE;
                    // 简答题
                    boolean flag = userCorrectOptionKey.equals(correctOptionKey);
                    if (flag) {
                        scoreTotal = scoreTotal.add(questionsBank.getScore());
                        paperRecordInfo.setStatus(EducationConstant.BANK_STATUS_SUCCESS);
                        paperRecordInfo.setFinalScore(questionsBank.getScore());
                    }
                    paperScoreTotal = paperScoreTotal.add(questionsBank.getScore());
                } else if (EducationConstant.QUESTIONS_TYPE_FULLING.equals(questionsType)) {
                    // 填空题
                    List<QuestionsBankOptions> questionsBankOptions = questionsBankOptionsMapper.selectList(Wrappers.<QuestionsBankOptions>lambdaQuery()
                            .eq(QuestionsBankOptions::getQuestionsBankId, paperQuestionsDTO.getQuestionBankId()));
                    List<BankOptionsDTO> bankOptionsList = paperQuestionsDTO.getBankOptionsList();
                    paperRecordInfo.setUserAnswer(JSON.toJSONString(bankOptionsList));
                    paperRecordInfo.setAnswer(JSON.toJSONString(questionsBankOptions));
                    // 用户选择正确数量
                    int successIndex = 0;
                    // 正确答案数量
                    int size = questionsBankOptions.size();
                    for (BankOptionsDTO bankOptionsDTO : bankOptionsList) {
                        // 查找当前填空项
                        Optional<QuestionsBankOptions> first = questionsBankOptions.stream()
                                .filter(data -> data.getId().equals(bankOptionsDTO.getQuestionsBankId()))
                                .findFirst();
                        if (first.isPresent()) {
                            QuestionsBankOptions bankOptions = first.get();
                            boolean flag = bankOptionsDTO.getAnswer().equals(bankOptions.getAnswer());
                            if (flag) {
                                scoreTotal = scoreTotal.add(bankOptions.getScore());
                                successIndex += 1;
                            }
                        }
                    }
                    if (successIndex == size) {
                        // 正确
                        paperRecordInfo.setStatus(EducationConstant.BANK_STATUS_SUCCESS);
                        paperRecordInfo.setFinalScore(questionsBank.getScore());
                    }
                    for (QuestionsBankOptions questionsBankOption : questionsBankOptions) {
                        paperScoreTotal = paperScoreTotal.add(questionsBankOption.getScore());
                    }
                }
                paperRecordInfoList.add(paperRecordInfo);
            }
        }
        String username = SecurityUtils.getUsername();
        paperRecord.setUserName(username);
        paperRecord.setScore(paperScoreTotal);
        paperRecord.setFinalScore(scoreTotal);
        if (Boolean.TRUE.equals(answerFlag)) {
            // 存在简答题，待批改
            paperRecord.setStatus("2");
        } else {
            // 已完成
            paperRecord.setStatus("1");
        }
        // 添加
        int insert = baseMapper.insert(paperRecord);
        for (PaperRecordInfo paperRecordInfo : paperRecordInfoList) {
            paperRecordInfo.setRecordId(paperRecord.getId());
            paperRecordInfo.setUserName(username);
            paperRecordInfoMapper.insert(paperRecordInfo);
        }
        return insert;
    }

    @Override
    public int edit(PaperRecord paperRecord) {
        PaperRecord record = baseMapper.selectById(paperRecord.getId());
        BigDecimal finalScore = record.getFinalScore();
        // 获取解题
        List<PaperTopicDTO> paperTopicList = paperRecord.getPaperTopicList();
        // 是否存在简答题
        for (PaperTopicDTO paperTopicDTO : paperTopicList) {
            List<PaperQuestionsDTO> paperQuestionsList = paperTopicDTO.getPaperQuestionsList();
            for (PaperQuestionsDTO paperQuestionsDTO : paperQuestionsList) {
                String questionsType = paperQuestionsDTO.getQuestionsType();
                // 题目类型判断
                if (EducationConstant.QUESTIONS_TYPE_ANSWER.equals(questionsType)) {
                    BigDecimal markScore = paperQuestionsDTO.getMarkScore();
                    if (markScore != null) {
                        String recordInfoId = paperQuestionsDTO.getRecordInfoId();
                        PaperRecordInfo paperRecordInfo = paperRecordInfoMapper.selectById(recordInfoId);
                        paperRecordInfo.setFinalScore(markScore);
                        paperRecordInfo.setStatus("3");
                        paperRecordInfoMapper.updateById(paperRecordInfo);
                        finalScore = finalScore.add(markScore);
                    }
                }
            }
        }
        // 已完成
        record.setStatus("1");
        record.setFinalScore(finalScore);
        int updateById = baseMapper.updateById(record);
        return updateById;
    }
}

package com.astar.education.service.impl;

import com.astar.education.constant.EducationConstant;
import com.astar.education.domain.QuestionsBank;
import com.astar.education.domain.QuestionsBankOptions;
import com.astar.education.mapper.TbQuestionsBankMapper;
import com.astar.education.mapper.TbQuestionsBankOptionsMapper;
import com.astar.education.service.ITbQuestionsBankService;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 题库管理Service业务层处理
 *
 * @author astar
 * @date 2024-07-30
 */
@Service
@AllArgsConstructor
public class TbQuestionsBankServiceImpl extends ServiceImpl<TbQuestionsBankMapper, QuestionsBank> implements ITbQuestionsBankService {
    private final TbQuestionsBankOptionsMapper tbQuestionsBankOptionsMapper;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int addEntity(QuestionsBank questionsBank) {
        AtomicInteger bankCount = new AtomicInteger(0);
        int insert = baseMapper.insert(questionsBank);
        List<QuestionsBankOptions> bankOptionsList = questionsBank.getBankOptionsList();
        for (QuestionsBankOptions bankOptions : bankOptionsList) {
            bankOptions.setQuestionsBankId(questionsBank.getId());
            bankOptions.setSortField(bankCount.incrementAndGet());
            if (EducationConstant.QUESTIONS_TYPE_RADIO.equals(questionsBank.getQuestionsType()) && questionsBank.getCorrectOptionKey().equals(bankOptions.getOptionKey())) {
                bankOptions.setAnswer(bankOptions.getOptionKey());
            }
            tbQuestionsBankOptionsMapper.insert(bankOptions);
        }
        return insert;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int editEntity(QuestionsBank questionsBank) {
        AtomicInteger bankCount = new AtomicInteger(0);
        int update = baseMapper.updateById(questionsBank);
        // 删除
        tbQuestionsBankOptionsMapper.delete(Wrappers.<QuestionsBankOptions>lambdaQuery()
                .eq(QuestionsBankOptions::getQuestionsBankId, questionsBank.getId()));
        List<QuestionsBankOptions> bankOptionsList = questionsBank.getBankOptionsList();
        for (QuestionsBankOptions bankOptions : bankOptionsList) {
            bankOptions.setQuestionsBankId(questionsBank.getId());
            bankOptions.setSortField(bankCount.incrementAndGet());
            tbQuestionsBankOptionsMapper.insert(bankOptions);
        }
        return update;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int removeEntity(String[] ids) {
        List<String> idList = Arrays.asList(ids);
        int delete = baseMapper.deleteBatchIds(idList);
        // 删除
        tbQuestionsBankOptionsMapper.delete(Wrappers.<QuestionsBankOptions>lambdaQuery()
                .in(QuestionsBankOptions::getQuestionsBankId, idList));
        return delete;
    }
}

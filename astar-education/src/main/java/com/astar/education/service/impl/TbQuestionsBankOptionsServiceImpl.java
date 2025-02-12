package com.astar.education.service.impl;

import com.astar.education.domain.QuestionsBankOptions;
import com.astar.education.mapper.TbQuestionsBankOptionsMapper;
import com.astar.education.service.ITbQuestionsBankOptionsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * 题库选项管理Service业务层处理
 *
 * @author astar
 * @date 2024-07-30
 */
@Service
public class TbQuestionsBankOptionsServiceImpl extends ServiceImpl<TbQuestionsBankOptionsMapper, QuestionsBankOptions> implements ITbQuestionsBankOptionsService {
}

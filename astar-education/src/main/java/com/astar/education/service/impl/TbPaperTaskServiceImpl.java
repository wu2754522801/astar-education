package com.astar.education.service.impl;

import com.astar.education.domain.PaperTask;
import com.astar.education.mapper.TbPaperTaskMapper;
import com.astar.education.service.ITbPaperTaskService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * 试卷任务管理Service业务层处理
 *
 * @author astar
 * @date 2024-07-30
 */
@Service
public class TbPaperTaskServiceImpl extends ServiceImpl<TbPaperTaskMapper, PaperTask> implements ITbPaperTaskService {
}

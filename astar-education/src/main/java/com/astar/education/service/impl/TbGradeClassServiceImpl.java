package com.astar.education.service.impl;

import com.astar.education.domain.GradeClass;
import com.astar.education.mapper.TbGradeClassMapper;
import com.astar.education.service.ITbGradeClassService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * 年级管理Service业务层处理
 * 
 * @author astar
 * @date 2024-07-30
 */
@Service
public class TbGradeClassServiceImpl extends ServiceImpl<TbGradeClassMapper, GradeClass> implements ITbGradeClassService {
}

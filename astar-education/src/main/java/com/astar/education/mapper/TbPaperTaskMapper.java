package com.astar.education.mapper;

import java.util.List;

import com.astar.education.domain.PaperTask;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 试卷任务管理Mapper接口
 * 
 * @author astar
 * @date 2024-07-30
 */
@Mapper
public interface TbPaperTaskMapper extends BaseMapper<PaperTask> {

}

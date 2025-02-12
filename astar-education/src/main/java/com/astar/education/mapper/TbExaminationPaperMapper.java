package com.astar.education.mapper;


import com.astar.education.domain.ExaminationPaper;
import com.astar.education.domain.dto.StatisticsDTO;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 试卷管理Mapper接口
 * 
 * @author astar
 * @date 2024-07-30
 */
@Mapper
public interface TbExaminationPaperMapper extends BaseMapper<ExaminationPaper> {

    List<StatisticsDTO> getMonthTotal();
}

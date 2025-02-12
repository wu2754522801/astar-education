package com.astar.education.service;

import com.astar.education.domain.PaperRecord;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * @author wuzhenyong
 * ClassName:ITbPaperRecordService.java
 * date:2024-08-29 15:01
 * Description:
 */
public interface ITbPaperRecordService extends IService<PaperRecord> {
    int addEntity(PaperRecord paperRecord);

    int edit(PaperRecord paperRecord);
}

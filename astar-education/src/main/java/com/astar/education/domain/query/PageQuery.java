package com.astar.education.domain.query;

import lombok.Data;

/**
 * @author wuzhenyong
 * ClassName:PageQuery.java
 * date:2024-07-31 20:43
 * Description:
 */
@Data
public class PageQuery {
    private int pageNum = 1;
    private int pageSize = 10;
}

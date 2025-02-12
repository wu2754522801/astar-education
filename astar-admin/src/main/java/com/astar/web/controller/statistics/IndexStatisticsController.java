package com.astar.web.controller.statistics;

import com.astar.common.core.domain.R;
import com.astar.education.domain.dto.StatisticsDTO;
import com.astar.education.service.ITbExaminationPaperService;
import com.astar.education.service.ITbQuestionsBankService;
import com.astar.system.service.ISysLogininforService;
import com.astar.system.service.ISysUserService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.*;

/**
 * @author wuzhenyong
 * ClassName:IndexStatisticsController.java
 * date:2024-08-11 11:45
 * Description:
 */
@RestController
@RequestMapping("/index/statistics")
@AllArgsConstructor
public class IndexStatisticsController {
    private final ISysUserService iSysUserService;
    private final ISysLogininforService iSysLogininforService;
    private final ITbExaminationPaperService tbExaminationPaperService;
    private final ITbQuestionsBankService tbQuestionsBankService;

    @GetMapping("/data")
    public R data() {
        Map<String, Object> resultMap = new HashMap<>();
        LocalDate today = LocalDate.now();
        int year = today.getYear();
        int monthValue = today.getMonthValue();
        // 获取当月日期
        List<Integer> datesInMonth = getNowDayOfMonth();
        // 获取试卷总数量
        long paperTotal = tbExaminationPaperService.count();
        // 获取题目数量
        long bankTotal = tbQuestionsBankService.count();
        // 获取用户数量信息
        int teacherTotal = 0;
        int studentTotal = 0;
        List<Map<String, String>> userTotal = iSysUserService.getTotal();
        for (Map<String, String> stringIntegerMap : userTotal) {
            String type = stringIntegerMap.get("type");
            if (type != null && type.equals("00")) {
                teacherTotal = Integer.parseInt(stringIntegerMap.get("count"));
            } else if (type != null && type.equals("01")) {
                studentTotal = Integer.parseInt(stringIntegerMap.get("count"));
            }
        }

        // 获取当月试卷
        List<StatisticsDTO> paperMonthTotal = tbExaminationPaperService.getMonthTotal();
        List<Integer> paperDayMonthValue = new ArrayList<>(paperMonthTotal.size());
        for (Integer day : datesInMonth) {
            Optional<StatisticsDTO> first = paperMonthTotal.stream().filter(n -> day.equals(n.getDay())).findFirst();
            if (first.isPresent()) {
                paperDayMonthValue.add(first.get().getCount());
            } else {
                paperDayMonthValue.add(0);
            }
        }
        // 获取用户活跃度
        List<Map<String, Integer>> userLoginMonthTotal = iSysLogininforService.getMonthTotal();
        List<Integer> userLoginDayMonthValue = new ArrayList<>(userLoginMonthTotal.size());
        for (Integer day : datesInMonth) {
            Optional<Map<String, Integer>> first = userLoginMonthTotal.stream().filter(n -> day.equals(n.get("day"))).findFirst();
            if (first.isPresent()) {
                userLoginDayMonthValue.add(first.get().get("count"));
            } else {
                userLoginDayMonthValue.add(0);
            }
        }
        resultMap.put("nowDate", String.format("%s年%s月", year, monthValue));
        resultMap.put("paperMonthTotal", paperTotal);
        resultMap.put("paperDayMonthTitle", datesInMonth);
        resultMap.put("paperDayMonthValue", paperDayMonthValue);
        resultMap.put("userLoginDayMonthTitle", datesInMonth);
        resultMap.put("userLoginDayMonthValue", userLoginDayMonthValue);
        resultMap.put("teacherTotal", teacherTotal);
        resultMap.put("studentTotal", studentTotal);
        resultMap.put("bankTotal", bankTotal);
        return R.ok(resultMap);
    }

    private List<Integer> getNowDayOfMonth() {
        // 获取当前日期
        LocalDate today = LocalDate.now();

        // 获取当月的第一天和最后一天
        LocalDate firstDayOfMonth = today.with(java.time.temporal.TemporalAdjusters.firstDayOfMonth());
        LocalDate lastDayOfMonth = today.with(java.time.temporal.TemporalAdjusters.lastDayOfMonth());

        // 创建一个列表来存储当月的所有日期
        List<Integer> datesInMonth = new ArrayList<>();

        // 从第一天开始，逐天添加到列表中
        LocalDate currentDate = firstDayOfMonth;
        while (!currentDate.isAfter(lastDayOfMonth)) {
            datesInMonth.add(currentDate.getDayOfMonth());
            currentDate = currentDate.plusDays(1);
        }
        return datesInMonth;
    }
}

package com.astar.web.controller.education;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import com.astar.common.utils.StringUtils;
import com.astar.education.domain.*;
import com.astar.education.domain.query.PageQuery;
import com.astar.education.service.ITbDisciplineService;
import com.astar.education.service.ITbExaminationPaperService;
import com.astar.education.service.ITbGradeClassService;
import com.astar.education.service.ITbPaperTaskService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.astar.common.annotation.Log;
import com.astar.common.core.controller.BaseController;
import com.astar.common.core.domain.AjaxResult;
import com.astar.common.enums.BusinessType;
import com.astar.common.core.page.TableDataInfo;

/**
 * 试卷任务管理Controller
 *
 * @author astar
 * @date 2024-07-30
 */
@RestController
@RequestMapping("/education/task")
@AllArgsConstructor
public class TbPaperTaskController extends BaseController {
    private final ITbPaperTaskService tbPaperTaskService;
    private final ITbGradeClassService tbGradeClassService;
    private final ITbDisciplineService tbDisciplineService;
    private final ITbExaminationPaperService tbExaminationPaperService;

    /**
     * 查询试卷任务管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:task:list')")
    @GetMapping("/list")
    public TableDataInfo list(PaperTask paperTask, PageQuery pageQuery) {
        Page<PaperTask> page = tbPaperTaskService.page(new Page<>(pageQuery.getPageNum(),pageQuery.getPageSize()), Wrappers.<PaperTask>lambdaQuery()
                .eq(StringUtils.isNotBlank(paperTask.getGradeClassId()), PaperTask::getGradeClassId, paperTask.getGradeClassId())
                .like(StringUtils.isNotBlank(paperTask.getTitle()), PaperTask::getTitle, paperTask.getTitle()));
        List<PaperTask> list = page.getRecords();
        for (PaperTask entity : list) {
            GradeClass gradeClass = tbGradeClassService.getById(entity.getGradeClassId());
            gradeClass = Optional.ofNullable(gradeClass).orElse(new GradeClass());
            entity.setGradeClassName(gradeClass.getGradeClassName());
            if (StringUtils.isNotBlank(entity.getAssociatedPaperIds())) {
                String[] array = entity.getAssociatedPaperIds().split(StringPool.COMMA);
                List<String> idList = Arrays.asList(array);
                List<ExaminationPaper> examinationPaperList = tbExaminationPaperService.listByIds(idList);
                String names = examinationPaperList.stream().map(ExaminationPaper::getExaminationPaperName).collect(Collectors.joining(StringPool.COMMA));
                entity.setAssociatedPaperNames(names);
            }
        }
        return getDataPageTable(page);
    }

    @GetMapping("/selectList")
    public AjaxResult selectList() {
        List<PaperTask> list = tbPaperTaskService.list();
        for (PaperTask entity : list) {
            if (StringUtils.isNotBlank(entity.getAssociatedPaperIds())) {
                String[] array = entity.getAssociatedPaperIds().split(StringPool.COMMA);
                List<String> idList = Arrays.asList(array);
                List<ExaminationPaper> examinationPaperList = tbExaminationPaperService.listByIds(idList);
                String names = examinationPaperList.stream().map(ExaminationPaper::getExaminationPaperName).collect(Collectors.joining(StringPool.COMMA));
                entity.setAssociatedPaperNames(names);
                entity.setExaminationPaperList(examinationPaperList);
            }
        }
        return AjaxResult.success(list);
    }

    /**
     * 获取试卷任务管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:task:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        PaperTask entity = tbPaperTaskService.getById(id);
        if (StringUtils.isNotBlank(entity.getAssociatedPaperIds())) {
            String[] array = entity.getAssociatedPaperIds().split(StringPool.COMMA);
            List<String> idList = Arrays.asList(array);
            List<ExaminationPaper> examinationPaperList = tbExaminationPaperService.listByIds(idList);
            for (ExaminationPaper paper : examinationPaperList) {
                GradeClass gradeClass = tbGradeClassService.getById(paper.getGradeClassId());
                gradeClass = Optional.ofNullable(gradeClass).orElse(new GradeClass());
                Discipline discipline = tbDisciplineService.getById(paper.getDisciplineId());
                discipline = Optional.ofNullable(discipline).orElse(new Discipline());
                paper.setDisciplineName(String.format("%s(%s)", discipline.getDisciplineName(), gradeClass.getGradeClassName()));
            }
            entity.setExaminationPaperList(examinationPaperList);
            String names = examinationPaperList.stream().map(ExaminationPaper::getExaminationPaperName).collect(Collectors.joining(StringPool.COMMA));
            entity.setAssociatedPaperNames(names);
        }
        return success(entity);
    }

    /**
     * 新增试卷任务管理
     */
    @PreAuthorize("@ss.hasPermi('system:task:add')")
    @Log(title = "试卷任务管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PaperTask paperTask) {
        return toAjax(tbPaperTaskService.save(paperTask));
    }

    /**
     * 修改试卷任务管理
     */
    @PreAuthorize("@ss.hasPermi('system:task:edit')")
    @Log(title = "试卷任务管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PaperTask paperTask) {
        return toAjax(tbPaperTaskService.updateById(paperTask));
    }

    /**
     * 删除试卷任务管理
     */
    @PreAuthorize("@ss.hasPermi('system:task:remove')")
    @Log(title = "试卷任务管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(tbPaperTaskService.removeBatchByIds(Arrays.asList(ids)));
    }
}

package com.astar.web.controller.education;


import com.astar.common.utils.SecurityUtils;
import com.astar.common.utils.StringUtils;
import com.astar.education.domain.Discipline;
import com.astar.education.domain.GradeClass;
import com.astar.education.domain.query.PageQuery;
import com.astar.education.service.ITbDisciplineService;
import com.astar.education.service.ITbGradeClassService;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
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

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

/**
 * 学科管理Controller
 *
 * @author astar
 * @date 2024-07-30
 */
@RestController
@RequestMapping("/education/discipline")
@AllArgsConstructor
public class TbDisciplineController extends BaseController {
    private final ITbDisciplineService tbDisciplineService;
    private final ITbGradeClassService tbGradeClassService;

    /**
     * 查询学科管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:discipline:list')")
    @GetMapping("/list")
    public TableDataInfo list(Discipline discipline, PageQuery pageQuery) {
        Page<Discipline> page = tbDisciplineService.page(new Page<>(pageQuery.getPageNum(),pageQuery.getPageSize()), Wrappers.<Discipline>lambdaQuery()
                .eq(StringUtils.isNotBlank(discipline.getGradeClassId()), Discipline::getGradeClassId, discipline.getGradeClassId()));
        List<Discipline> list = page.getRecords();
        for (Discipline entity : list) {
            GradeClass gradeClass = tbGradeClassService.getById(entity.getGradeClassId());
            gradeClass = Optional.ofNullable(gradeClass).orElse(new GradeClass());
            entity.setGradeClassName(gradeClass.getGradeClassName());

        }
        return getDataPageTable(page);
    }

    /**
     * 查询年级管理列表
     */
    @GetMapping("/selectList")
    public AjaxResult selectList(Discipline discipline) {
        List<Discipline> list = tbDisciplineService.list(Wrappers.<Discipline>lambdaQuery()
                .eq(StringUtils.isNotBlank(discipline.getGradeClassId()), Discipline::getGradeClassId, discipline.getGradeClassId()));
        return success(list);
    }

    /**
     * 获取学科管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:discipline:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return success(tbDisciplineService.getById(id));
    }

    /**
     * 新增学科管理
     */
    @PreAuthorize("@ss.hasPermi('system:discipline:add')")
    @Log(title = "学科管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Discipline discipline) {
        return toAjax(tbDisciplineService.save(discipline));
    }

    /**
     * 修改学科管理
     */
    @PreAuthorize("@ss.hasPermi('system:discipline:edit')")
    @Log(title = "学科管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Discipline discipline) {
        return toAjax(tbDisciplineService.updateById(discipline));
    }

    /**
     * 删除学科管理
     */
    @PreAuthorize("@ss.hasPermi('system:discipline:remove')")
    @Log(title = "学科管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(tbDisciplineService.removeBatchByIds(Arrays.asList(ids)));
    }

    /**
     * 获取当前学生所在班级学科
     *
     * @return {@link AjaxResult }
     */
    @GetMapping("/studentDisciplineList")
    public AjaxResult studentDisciplineList() {
        String gradeClassId = SecurityUtils.getLoginUser().getUser().getGradeClassId();
        if (StringUtils.isEmpty(gradeClassId)) {
            throw new RuntimeException("请联系老师分配所在班级!");
        }
        List<Discipline> list = tbDisciplineService.list(Wrappers.<Discipline>lambdaQuery()
                .eq(Discipline::getGradeClassId, gradeClassId));
        return success(list);
    }
}

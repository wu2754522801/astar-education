package com.astar.web.controller.education;

import javax.servlet.http.HttpServletResponse;

import com.astar.common.utils.SecurityUtils;
import com.astar.common.utils.StringUtils;
import com.astar.education.domain.*;
import com.astar.education.domain.dto.BankOptionsDTO;
import com.astar.education.domain.dto.PaperQuestionsDTO;
import com.astar.education.domain.dto.PaperTopicDTO;
import com.astar.education.domain.query.PageQuery;
import com.astar.education.service.*;
import com.baomidou.mybatisplus.core.toolkit.CollectionUtils;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.astar.common.annotation.Log;
import com.astar.common.core.controller.BaseController;
import com.astar.common.core.domain.AjaxResult;
import com.astar.common.enums.BusinessType;
import com.astar.common.core.page.TableDataInfo;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * 试卷管理Controller
 *
 * @author astar
 * @date 2024-07-30
 */
@RestController
@RequestMapping("/education/paper")
@AllArgsConstructor
public class TbExaminationPaperController extends BaseController {
    private final ITbExaminationPaperService tbExaminationPaperService;
    private final ITbGradeClassService tbGradeClassService;
    private final ITbDisciplineService tbDisciplineService;
    private final ITbExaminationPaperQuestionsService tbExaminationPaperQuestionsService;
    private final ITbQuestionsBankService tbQuestionsBankService;

    /**
     * 查询试卷管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:paper:list')")
    @GetMapping("/list")
    public TableDataInfo list(ExaminationPaper examinationPaper, PageQuery pageQuery) {
        Page<ExaminationPaper> page = tbExaminationPaperService.page(new Page<>(pageQuery.getPageNum(), pageQuery.getPageSize()), Wrappers.<ExaminationPaper>lambdaQuery()
                .eq(StringUtils.isNotBlank(examinationPaper.getGradeClassId()), ExaminationPaper::getGradeClassId, examinationPaper.getGradeClassId())
                .like(StringUtils.isNotBlank(examinationPaper.getExaminationPaperName()), ExaminationPaper::getExaminationPaperName, examinationPaper.getExaminationPaperName())
                .eq(StringUtils.isNotBlank(examinationPaper.getDisciplineId()), ExaminationPaper::getDisciplineId, examinationPaper.getDisciplineId())
                .notIn(CollectionUtils.isNotEmpty(examinationPaper.getExcludeIds()), ExaminationPaper::getId, examinationPaper.getExcludeIds())
                .eq(StringUtils.isNotBlank(examinationPaper.getExaminationPaperType()), ExaminationPaper::getExaminationPaperType, examinationPaper.getExaminationPaperType()));
        List<ExaminationPaper> list = page.getRecords();
        for (ExaminationPaper entity : list) {
            GradeClass gradeClass = tbGradeClassService.getById(entity.getGradeClassId());
            gradeClass = Optional.ofNullable(gradeClass).orElse(new GradeClass());
            Discipline discipline = tbDisciplineService.getById(entity.getDisciplineId());
            discipline = Optional.ofNullable(discipline).orElse(new Discipline());
            entity.setDisciplineName(String.format("%s(%s)", discipline.getDisciplineName(), gradeClass.getGradeClassName()));
        }
        return getDataPageTable(page);
    }

    /**
     * 获取试卷管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:paper:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return success(tbExaminationPaperService.getInfo(id));
    }

    /**
     * 新增试卷管理
     */
    @PreAuthorize("@ss.hasPermi('system:paper:add')")
    @Log(title = "试卷管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody ExaminationPaper examinationPaper) {
        return toAjax(tbExaminationPaperService.addEntity(examinationPaper));
    }

    /**
     * 修改试卷管理
     */
    @PreAuthorize("@ss.hasPermi('system:paper:edit')")
    @Log(title = "试卷管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody ExaminationPaper examinationPaper) {
        return toAjax(tbExaminationPaperService.editEntity(examinationPaper));
    }

    /**
     * 删除试卷管理
     */
    @PreAuthorize("@ss.hasPermi('system:paper:remove')")
    @Log(title = "试卷管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(tbExaminationPaperService.removeEntity(ids));
    }

    @PutMapping("/updateStatus")
    public AjaxResult updateStatus(@RequestParam String id, @RequestParam String examinationPaperStatus) {
        boolean update = tbExaminationPaperService.update(Wrappers.<ExaminationPaper>lambdaUpdate()
                .eq(ExaminationPaper::getId, id)
                .set(ExaminationPaper::getExaminationPaperStatus, examinationPaperStatus));
        return toAjax(update);
    }

    /**
     * 获取学生试卷
     *
     * @param examinationPaper 试卷
     * @param pageQuery        页面查询
     * @return {@link TableDataInfo }
     */
    @GetMapping("/studentPaperPage")
    public TableDataInfo studentPaperPage(ExaminationPaper examinationPaper, PageQuery pageQuery) {
        String gradeClassId = SecurityUtils.getLoginUser().getUser().getGradeClassId();
        if (StringUtils.isEmpty(gradeClassId)) {
            throw new RuntimeException("请联系老师分配所在班级!");
        }
        Page<ExaminationPaper> page = tbExaminationPaperService.page(new Page<>(pageQuery.getPageNum(), pageQuery.getPageSize()), Wrappers.<ExaminationPaper>lambdaQuery()
                .eq(ExaminationPaper::getGradeClassId, gradeClassId)
                .like(StringUtils.isNotBlank(examinationPaper.getExaminationPaperName()), ExaminationPaper::getExaminationPaperName, examinationPaper.getExaminationPaperName())
                .eq(StringUtils.isNotBlank(examinationPaper.getDisciplineId()), ExaminationPaper::getDisciplineId, examinationPaper.getDisciplineId())
                .notIn(CollectionUtils.isNotEmpty(examinationPaper.getExcludeIds()), ExaminationPaper::getId, examinationPaper.getExcludeIds())
                .eq(StringUtils.isNotBlank(examinationPaper.getExaminationPaperType()), ExaminationPaper::getExaminationPaperType, examinationPaper.getExaminationPaperType()));
        List<ExaminationPaper> list = page.getRecords();
        for (ExaminationPaper entity : list) {
            GradeClass gradeClass = tbGradeClassService.getById(entity.getGradeClassId());
            gradeClass = Optional.ofNullable(gradeClass).orElse(new GradeClass());
            Discipline discipline = tbDisciplineService.getById(entity.getDisciplineId());
            discipline = Optional.ofNullable(discipline).orElse(new Discipline());
            entity.setDisciplineName(String.format("%s(%s)", discipline.getDisciplineName(), gradeClass.getGradeClassName()));
            // 获取题目数量
            List<ExaminationPaperQuestions> paperQuestionsList = tbExaminationPaperQuestionsService.list(Wrappers.<ExaminationPaperQuestions>lambdaQuery()
                    .eq(ExaminationPaperQuestions::getExaminationPaperId, entity.getId()));
            entity.setPaperQuestionsNum(paperQuestionsList.size());
            // 获取总分
            List<String> bankIdList = paperQuestionsList.stream().map(ExaminationPaperQuestions::getQuestionBankId).collect(Collectors.toList());
            if (CollectionUtils.isNotEmpty(bankIdList)) {
                List<QuestionsBank> questionsBanks = tbQuestionsBankService.listByIds(bankIdList);
                BigDecimal score = questionsBanks.stream().map(QuestionsBank::getScore).reduce(BigDecimal.ZERO, BigDecimal::add);
                entity.setScore(score);
            }
        }
        return getDataPageTable(page);
    }

    @GetMapping("/studentPaperInfo")
    public AjaxResult studentPaperInfo(@RequestParam("id") String id) {
        ExaminationPaper entity = tbExaminationPaperService.getInfo(id);
        // 答案置空
        List<PaperTopicDTO> topicList = entity.getPaperTopicList();
        for (PaperTopicDTO paperTopicDTO : topicList) {
            List<PaperQuestionsDTO> paperQuestionsList = paperTopicDTO.getPaperQuestionsList();
            for (PaperQuestionsDTO paperQuestionsDTO : paperQuestionsList) {
                paperQuestionsDTO.setCorrectOptionKey("");
                paperQuestionsDTO.setQuestionsAnalyze("");
                List<BankOptionsDTO> bankOptionsList = paperQuestionsDTO.getBankOptionsList();
                for (BankOptionsDTO bankOptionsDTO : bankOptionsList) {
                    bankOptionsDTO.setAnswer("");
                }
            }
        }
        // 获取题目数量
        List<ExaminationPaperQuestions> paperQuestionsList = tbExaminationPaperQuestionsService.list(Wrappers.<ExaminationPaperQuestions>lambdaQuery()
                .eq(ExaminationPaperQuestions::getExaminationPaperId, entity.getId()));
        entity.setPaperQuestionsNum(paperQuestionsList.size());
        // 获取总分
        List<String> bankIdList = paperQuestionsList.stream().map(ExaminationPaperQuestions::getQuestionBankId).collect(Collectors.toList());
        if (CollectionUtils.isNotEmpty(bankIdList)) {
            List<QuestionsBank> questionsBanks = tbQuestionsBankService.listByIds(bankIdList);
            BigDecimal score = questionsBanks.stream().map(QuestionsBank::getScore).reduce(BigDecimal.ZERO, BigDecimal::add);
            entity.setScore(score);
        }
        return success(entity);
    }
}

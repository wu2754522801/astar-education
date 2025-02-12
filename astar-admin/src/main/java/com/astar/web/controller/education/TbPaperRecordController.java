package com.astar.web.controller.education;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import com.astar.common.annotation.Log;
import com.astar.common.core.controller.BaseController;
import com.astar.common.core.domain.AjaxResult;
import com.astar.common.core.page.TableDataInfo;
import com.astar.common.enums.BusinessType;
import com.astar.common.utils.SecurityUtils;
import com.astar.common.utils.StringUtils;
import com.astar.education.constant.EducationConstant;
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
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @author wuzhenyong
 * ClassName:TbPaperRecordController.java
 * date:2024-08-29 15:04
 * Description:
 */
@RestController
@RequestMapping("/education/paperRecord")
@AllArgsConstructor
public class TbPaperRecordController extends BaseController {
    private final ITbPaperRecordService tbPaperRecordService;
    private final ITbDisciplineService tbDisciplineService;
    private final ITbExaminationPaperService tbExaminationPaperService;
    private final ITbPaperRecordInfoService tbPaperRecordInfoService;
    private final ITbExaminationPaperQuestionsService tbExaminationPaperQuestionsService;
    private final ITbExaminationPaperTopicService tbExaminationPaperTopicService;

    /**
     * 学生答卷
     */
    @Log(title = "答卷管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PaperRecord paperRecord) {
        return toAjax(tbPaperRecordService.addEntity(paperRecord));
    }

    /**
     * 列表
     *
     * @param paperRecord 纸质记录
     * @param pageQuery   页面查询
     * @return {@link TableDataInfo }
     */
    @GetMapping("/list")
    public TableDataInfo list(PaperRecord paperRecord, PageQuery pageQuery) {
        String username = SecurityUtils.getUsername();
        Page<PaperRecord> page = tbPaperRecordService.page(new Page<>(pageQuery.getPageNum(),pageQuery.getPageSize()), Wrappers.<PaperRecord>lambdaQuery()
                .eq(StringUtils.isNotBlank(paperRecord.getDisciplineId()), PaperRecord::getDisciplineId, paperRecord.getDisciplineId())
                .eq(PaperRecord::getUserName, username)
                .orderByDesc(PaperRecord::getCreatedTime));
        List<PaperRecord> list = page.getRecords();
        for (PaperRecord entity : list) {
            Discipline discipline = tbDisciplineService.getById(entity.getDisciplineId());
            discipline = Optional.ofNullable(discipline).orElse(new Discipline());
            entity.setDisciplineName(String.format("%s", discipline.getDisciplineName()));
        }
        return getDataPageTable(page);
    }

    @GetMapping(value = "/getById/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        PaperRecord paperRecord = tbPaperRecordService.getById(id);
        ExaminationPaper entity = tbExaminationPaperService.getInfo(paperRecord.getExaminationPaperId());
        List<PaperTopicDTO> topicList = entity.getPaperTopicList();
        for (PaperTopicDTO paperTopicDTO : topicList) {
            List<PaperQuestionsDTO> paperQuestionsList = paperTopicDTO.getPaperQuestionsList();
            for (PaperQuestionsDTO paperQuestionsDTO : paperQuestionsList) {
                PaperRecordInfo recordInfo = tbPaperRecordInfoService.getOne(Wrappers.<PaperRecordInfo>lambdaQuery()
                        .eq(PaperRecordInfo::getExaminationPaperId, paperRecord.getExaminationPaperId())
                        .eq(PaperRecordInfo::getQuestionBankId, paperQuestionsDTO.getQuestionBankId())
                        .last("limit 1"));
                if (paperQuestionsDTO.getQuestionsType().equals(EducationConstant.QUESTIONS_TYPE_FULLING)) {
                    String extInfo = recordInfo.getExtInfo();
                    JSONObject extInfoObj = JSON.parseObject(extInfo);
                    List<BankOptionsDTO> userBankOptionsList = JSON.parseArray(extInfoObj.getString("bankOptionsList"), BankOptionsDTO.class);
                    List<BankOptionsDTO> bankOptionsList = paperQuestionsDTO.getBankOptionsList();
                    for (BankOptionsDTO bankOptionsDTO : bankOptionsList) {
                        // 寻找用户答案
                        Optional<BankOptionsDTO> first = userBankOptionsList.stream()
                                .filter(data -> data.getId().equals(bankOptionsDTO.getId()))
                                .findFirst();
                        if (first.isPresent()) {
                            BankOptionsDTO userOptionsDTO = first.get();
                            String answer = userOptionsDTO.getAnswer();
                            bankOptionsDTO.setUserAnswer(answer);
                        }
                    }
                }
                paperQuestionsDTO.setRecordInfoId(recordInfo.getId());
                paperQuestionsDTO.setUserCorrectOptionKey(recordInfo.getUserAnswer());
                paperQuestionsDTO.setStatus(recordInfo.getStatus());
                paperQuestionsDTO.setMarkScore(recordInfo.getFinalScore());
            }
        }
        paperRecord.setPaperTopicList(topicList);
        return success(paperRecord);
    }

    /**
     * 批改
     *
     * @param paperRecord
     * @return {@link AjaxResult }
     */
    @Log(title = "答卷管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    public AjaxResult edit(@RequestBody PaperRecord paperRecord) {
        return toAjax(tbPaperRecordService.edit(paperRecord));
    }

    @GetMapping("/errorList")
    public TableDataInfo errorList(PaperRecord paperRecord, PageQuery pageQuery) {
        String username = SecurityUtils.getUsername();
        Page<PaperRecordInfo> page = tbPaperRecordInfoService.page(new Page<>(pageQuery.getPageNum(),pageQuery.getPageSize()), Wrappers.<PaperRecordInfo>lambdaQuery()
                .eq(PaperRecordInfo::getUserName, username)
                .eq(PaperRecordInfo::getStatus, "2")
                .orderByDesc(PaperRecordInfo::getCreatedTime));
        List<PaperRecordInfo> list = page.getRecords();
        for (PaperRecordInfo entity : list) {
            PaperRecord record = tbPaperRecordService.getById(entity.getRecordId());
            Discipline discipline = tbDisciplineService.getById(record.getDisciplineId());
            discipline = Optional.ofNullable(discipline).orElse(new Discipline());
            entity.setDisciplineName(String.format("%s", discipline.getDisciplineName()));
            PaperQuestionsDTO paperQuestionsDTO = tbExaminationPaperService.getQuestionsInfo(entity.getQuestionBankId());
            paperQuestionsDTO.setUserCorrectOptionKey(entity.getUserAnswer());
            if (paperQuestionsDTO.getQuestionsType().equals(EducationConstant.QUESTIONS_TYPE_FULLING)) {
                String extInfo = entity.getExtInfo();
                JSONObject extInfoObj = JSON.parseObject(extInfo);
                List<BankOptionsDTO> userBankOptionsList = JSON.parseArray(extInfoObj.getString("bankOptionsList"), BankOptionsDTO.class);
                List<BankOptionsDTO> bankOptionsList = paperQuestionsDTO.getBankOptionsList();
                for (BankOptionsDTO bankOptionsDTO : bankOptionsList) {
                    // 寻找用户答案
                    Optional<BankOptionsDTO> first = userBankOptionsList.stream()
                            .filter(data -> data.getId().equals(bankOptionsDTO.getId()))
                            .findFirst();
                    if (first.isPresent()) {
                        BankOptionsDTO userOptionsDTO = first.get();
                        String answer = userOptionsDTO.getAnswer();
                        bankOptionsDTO.setUserAnswer(answer);
                    }
                }
            }
            entity.setPaperQuestions(paperQuestionsDTO);
        }
        return getDataPageTable(page);
    }
}

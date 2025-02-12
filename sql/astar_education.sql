-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (arm64)
--
-- Host: 127.0.0.1    Database: astar_education
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
create database `astar_education` default character set utf8mb4 collate utf8mb4_general_ci;
--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `tpl_web_type`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3,'tb_questionnaire_user','填写问卷管理',NULL,NULL,'TbQuestionnaireUser','crud','','com.astar.system','system','user','填写问卷管理','astar','0','/',NULL,'admin','2024-03-02 20:57:25','',NULL,NULL),(4,'tb_discipline','学科管理',NULL,NULL,'TbDiscipline','crud','','com.astar.system','system','discipline','学科管理','astar','0','/',NULL,'admin','2024-07-30 20:25:43','',NULL,NULL),(5,'tb_examination_paper','试卷管理',NULL,NULL,'TbExaminationPaper','crud','','com.astar.system','system','paper','试卷管理','astar','0','/',NULL,'admin','2024-07-30 20:25:43','',NULL,NULL),(6,'tb_examination_paper_questions','试卷题目试题管理',NULL,NULL,'TbExaminationPaperQuestions','crud','','com.astar.system','system','questions','试卷题目试题管理','astar','0','/',NULL,'admin','2024-07-30 20:25:43','',NULL,NULL),(7,'tb_examination_paper_topic','试卷题目管理',NULL,NULL,'TbExaminationPaperTopic','crud','','com.astar.system','system','topic','试卷题目管理','astar','0','/',NULL,'admin','2024-07-30 20:25:43','',NULL,NULL),(8,'tb_grade_class','年级管理',NULL,NULL,'TbGradeClass','crud','','com.astar.system','system','class','年级管理','astar','0','/',NULL,'admin','2024-07-30 20:25:43','',NULL,NULL),(9,'tb_paper_task','试卷任务管理',NULL,NULL,'TbPaperTask','crud','','com.astar.system','system','task','试卷任务管理','astar','0','/',NULL,'admin','2024-07-30 20:25:43','',NULL,NULL),(10,'tb_questions_bank','题库管理',NULL,NULL,'TbQuestionsBank','crud','','com.astar.system','system','bank','题库管理','astar','0','/',NULL,'admin','2024-07-30 20:25:43','',NULL,NULL),(11,'tb_questions_bank_options','题库选项管理',NULL,NULL,'TbQuestionsBankOptions','crud','','com.astar.system','system','options','题库选项管理','astar','0','/',NULL,'admin','2024-07-30 20:25:43','',NULL,NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1,1,'id','主键','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-03-01 23:13:01','',NULL),(2,1,'created_time','创建时间','datetime','Date','createdTime','0','0','0','1','1','1','1','EQ','datetime','',2,'admin','2024-03-01 23:13:01','',NULL),(3,1,'created_by','创建人','varchar(64)','String','createdBy','0','0','0','1','1','1','1','EQ','input','',3,'admin','2024-03-01 23:13:01','',NULL),(4,1,'updated_time','更新时间','datetime','Date','updatedTime','0','0','0','1','1','1','1','EQ','datetime','',4,'admin','2024-03-01 23:13:01','',NULL),(5,1,'updated_by','更新人','varchar(64)','String','updatedBy','0','0','0','1','1','1','1','EQ','input','',5,'admin','2024-03-01 23:13:01','',NULL),(6,1,'title','标题','varchar(255)','String','title','0','0','0','1','1','1','1','EQ','input','',6,'admin','2024-03-01 23:13:01','',NULL),(7,1,'form_json','表单配置','json','String','formJson','0','0','0','1','1','1','1','EQ',NULL,'',7,'admin','2024-03-01 23:13:01','',NULL),(8,1,'form_url','表单地址','varchar(255)','String','formUrl','0','0','0','1','1','1','1','EQ','input','',8,'admin','2024-03-01 23:13:01','',NULL),(9,1,'status','表单状态：false未发布，true已发布','tinyint','Long','status','0','0','0','1','1','1','1','EQ','radio','',9,'admin','2024-03-01 23:13:01','',NULL),(10,2,'id','主键','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-03-01 23:13:01','',NULL),(11,2,'created_time','创建时间','datetime','Date','createdTime','0','0','0','1','1','1','1','EQ','datetime','',2,'admin','2024-03-01 23:13:01','',NULL),(12,2,'data_json','表单配置','json','String','dataJson','0','0','0','1','1','1','1','EQ',NULL,'',3,'admin','2024-03-01 23:13:01','',NULL),(13,3,'id','主键','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-03-02 20:57:25','',NULL),(14,3,'created_time','创建时间','datetime','Date','createdTime','0','0','0','1','1','1','1','EQ','datetime','',2,'admin','2024-03-02 20:57:25','',NULL),(15,3,'qs_id','问卷ID','int','Long','qsId','0','0','0','1','1','1','1','EQ','input','',3,'admin','2024-03-02 20:57:25','',NULL),(16,3,'data_json','表单配置','json','String','dataJson','0','0','0','1','1','1','1','EQ',NULL,'',4,'admin','2024-03-02 20:57:25','',NULL),(17,3,'ip_addr','ip','varchar(255)','String','ipAddr','0','0','0','1','1','1','1','EQ','input','',5,'admin','2024-03-02 20:57:25','',NULL),(18,4,'id','主键','bigint','Long','id','1','0','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-07-30 20:25:43','',NULL),(19,4,'created_by','创建人','varchar(32)','String','createdBy','0','0','0','1','1','1','1','EQ','input','',2,'admin','2024-07-30 20:25:43','',NULL),(20,4,'created_time','创建时间','datetime','Date','createdTime','0','0','0','1','1','1','1','EQ','datetime','',3,'admin','2024-07-30 20:25:43','',NULL),(21,4,'updated_by','更新人','varchar(32)','String','updatedBy','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-07-30 20:25:43','',NULL),(22,4,'updated_time','更新时间','datetime','Date','updatedTime','0','0','0','1','1','1','1','EQ','datetime','',5,'admin','2024-07-30 20:25:43','',NULL),(23,4,'del_flag','逻辑删除','int','Long','delFlag','0','0','0','1',NULL,NULL,NULL,'EQ','input','',6,'admin','2024-07-30 20:25:43','',NULL),(24,4,'grade_class_id','年级ID','bigint','Long','gradeClassId','0','0','0','1','1','1','1','EQ','input','',7,'admin','2024-07-30 20:25:43','',NULL),(25,4,'discipline_name','学科名称','varchar(255)','String','disciplineName','0','0','0','1','1','1','1','LIKE','input','',8,'admin','2024-07-30 20:25:43','',NULL),(26,5,'id','主键','bigint','Long','id','1','0','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-07-30 20:25:43','',NULL),(27,5,'created_by','创建人','varchar(32)','String','createdBy','0','0','0','1','1','1','1','EQ','input','',2,'admin','2024-07-30 20:25:43','',NULL),(28,5,'created_time','创建时间','datetime','Date','createdTime','0','0','0','1','1','1','1','EQ','datetime','',3,'admin','2024-07-30 20:25:43','',NULL),(29,5,'updated_by','更新人','varchar(32)','String','updatedBy','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-07-30 20:25:43','',NULL),(30,5,'updated_time','更新时间','datetime','Date','updatedTime','0','0','0','1','1','1','1','EQ','datetime','',5,'admin','2024-07-30 20:25:43','',NULL),(31,5,'del_flag','逻辑删除','int','Long','delFlag','0','0','0','1',NULL,NULL,NULL,'EQ','input','',6,'admin','2024-07-30 20:25:43','',NULL),(32,5,'grade_class_id','年级ID','bigint','Long','gradeClassId','0','0','0','1','1','1','1','EQ','input','',7,'admin','2024-07-30 20:25:43','',NULL),(33,5,'discipline_id','学科ID','bigint','Long','disciplineId','0','0','0','1','1','1','1','EQ','input','',8,'admin','2024-07-30 20:25:43','',NULL),(34,5,'examination_paper_name','试卷名称','varchar(255)','String','examinationPaperName','0','0','0','1','1','1','1','LIKE','input','',9,'admin','2024-07-30 20:25:43','',NULL),(35,5,'examination_paper_type','试卷类型:1.固定试卷，2.时段试卷，3.任务试卷','char(1)','String','examinationPaperType','0','0','0','1','1','1','1','EQ','select','',10,'admin','2024-07-30 20:25:43','',NULL),(36,5,'examination_paper_status','试卷状态：1.未发布，2.已发布','char(1)','String','examinationPaperStatus','0','0','0','1','1','1','1','EQ','radio','',11,'admin','2024-07-30 20:25:43','',NULL),(37,5,'suggestions_hours','建议时长，小时','int','Long','suggestionsHours','0','0','0','1','1','1','1','EQ','input','',12,'admin','2024-07-30 20:25:43','',NULL),(38,5,'suggestions_minutes','建议时长，分钟','int','Long','suggestionsMinutes','0','0','0','1','1','1','1','EQ','input','',13,'admin','2024-07-30 20:25:43','',NULL),(39,5,'start_time','开始时间','datetime','Date','startTime','0','0','0','1','1','1','1','EQ','datetime','',14,'admin','2024-07-30 20:25:43','',NULL),(40,5,'end_time','结束时间','datetime','Date','endTime','0','0','0','1','1','1','1','EQ','datetime','',15,'admin','2024-07-30 20:25:43','',NULL),(41,6,'id','主键','bigint','Long','id','1','0','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-07-30 20:25:43','',NULL),(42,6,'examination_paper_id','试卷ID','bigint','Long','examinationPaperId','0','0','0','1','1','1','1','EQ','input','',2,'admin','2024-07-30 20:25:43','',NULL),(43,6,'examination_paper_topic_id','试卷题目ID','bigint','Long','examinationPaperTopicId','0','0','0','1','1','1','1','EQ','input','',3,'admin','2024-07-30 20:25:43','',NULL),(44,6,'sort_field','排序','int','Long','sortField','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-07-30 20:25:43','',NULL),(45,6,'question_bank_id','题库ID','bigint','Long','questionBankId','0','0','0','1','1','1','1','EQ','input','',5,'admin','2024-07-30 20:25:43','',NULL),(46,7,'id','主键','bigint','Long','id','1','0','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-07-30 20:25:43','',NULL),(47,7,'examination_paper_id','试卷ID','bigint','Long','examinationPaperId','0','0','0','1','1','1','1','EQ','input','',2,'admin','2024-07-30 20:25:43','',NULL),(48,7,'title','标题','varchar(255)','String','title','0','0','0','1','1','1','1','EQ','input','',3,'admin','2024-07-30 20:25:43','',NULL),(49,7,'sort_field','排序字段','int','Long','sortField','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-07-30 20:25:43','',NULL),(50,8,'id','主键','bigint','Long','id','1','0','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-07-30 20:25:43','',NULL),(51,8,'created_by','创建人','varchar(32)','String','createdBy','0','0','0','1','1','1','1','EQ','input','',2,'admin','2024-07-30 20:25:43','',NULL),(52,8,'created_time','创建时间','datetime','Date','createdTime','0','0','0','1','1','1','1','EQ','datetime','',3,'admin','2024-07-30 20:25:43','',NULL),(53,8,'updated_by','更新人','varchar(32)','String','updatedBy','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-07-30 20:25:43','',NULL),(54,8,'updated_time','更新时间','datetime','Date','updatedTime','0','0','0','1','1','1','1','EQ','datetime','',5,'admin','2024-07-30 20:25:43','',NULL),(55,8,'del_flag','逻辑删除','int','Long','delFlag','0','0','0','1',NULL,NULL,NULL,'EQ','input','',6,'admin','2024-07-30 20:25:43','',NULL),(56,8,'grade_class_name','年级名称','varchar(255)','String','gradeClassName','0','0','0','1','1','1','1','LIKE','input','',7,'admin','2024-07-30 20:25:43','',NULL),(57,9,'id','主键','bigint','Long','id','1','0','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-07-30 20:25:43','',NULL),(58,9,'created_by','创建人','varchar(32)','String','createdBy','0','0','0','1','1','1','1','EQ','input','',2,'admin','2024-07-30 20:25:43','',NULL),(59,9,'created_time','创建时间','datetime','Date','createdTime','0','0','0','1','1','1','1','EQ','datetime','',3,'admin','2024-07-30 20:25:43','',NULL),(60,9,'updated_by','更新人','varchar(32)','String','updatedBy','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-07-30 20:25:43','',NULL),(61,9,'updated_time','更新时间','datetime','Date','updatedTime','0','0','0','1','1','1','1','EQ','datetime','',5,'admin','2024-07-30 20:25:43','',NULL),(62,9,'del_flag','逻辑删除','int','Long','delFlag','0','0','0','1',NULL,NULL,NULL,'EQ','input','',6,'admin','2024-07-30 20:25:43','',NULL),(63,9,'grade_class_id','年级ID','bigint','Long','gradeClassId','0','0','0','1','1','1','1','EQ','input','',7,'admin','2024-07-30 20:25:43','',NULL),(64,9,'title','标题','varchar(255)','String','title','0','0','0','1','1','1','1','EQ','input','',8,'admin','2024-07-30 20:25:43','',NULL),(65,9,'associated_paper_ids','关联试卷ID','longtext','String','associatedPaperIds','0','0','0','1','1','1','1','EQ','textarea','',9,'admin','2024-07-30 20:25:43','',NULL),(66,10,'id','主键','bigint','Long','id','1','0','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-07-30 20:25:43','',NULL),(67,10,'created_by','创建人','varchar(32)','String','createdBy','0','0','0','1','1','1','1','EQ','input','',2,'admin','2024-07-30 20:25:43','',NULL),(68,10,'created_time','创建时间','datetime','Date','createdTime','0','0','0','1','1','1','1','EQ','datetime','',3,'admin','2024-07-30 20:25:43','',NULL),(69,10,'updated_by','更新人','varchar(32)','String','updatedBy','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-07-30 20:25:43','',NULL),(70,10,'updated_time','更新时间','datetime','Date','updatedTime','0','0','0','1','1','1','1','EQ','datetime','',5,'admin','2024-07-30 20:25:43','',NULL),(71,10,'del_flag','逻辑删除','int','Long','delFlag','0','0','0','1',NULL,NULL,NULL,'EQ','input','',6,'admin','2024-07-30 20:25:43','',NULL),(72,10,'grade_class_id','年级ID','bigint','Long','gradeClassId','0','0','0','1','1','1','1','EQ','input','',7,'admin','2024-07-30 20:25:43','',NULL),(73,10,'discipline_id','学科ID','bigint','Long','disciplineId','0','0','0','1','1','1','1','EQ','input','',8,'admin','2024-07-30 20:25:43','',NULL),(74,10,'title','题目','longtext','String','title','0','0','0','1','1','1','1','EQ','textarea','',9,'admin','2024-07-30 20:25:43','',NULL),(75,10,'questions_type','题目类型：1.单选、2.多选、3.判断、4.简答、5.填空','char(1)','String','questionsType','0','0','0','1','1','1','1','EQ','select','',10,'admin','2024-07-30 20:25:43','',NULL),(76,10,'questions_analyze','题目解析','longtext','String','questionsAnalyze','0','0','0','1','1','1','1','EQ','textarea','',11,'admin','2024-07-30 20:25:43','',NULL),(77,10,'score','分数','decimal(10,1)','BigDecimal','score','0','0','0','1','1','1','1','EQ','input','',12,'admin','2024-07-30 20:25:43','',NULL),(78,10,'difficulty','难度','varchar(12)','String','difficulty','0','0','0','1','1','1','1','EQ','input','',13,'admin','2024-07-30 20:25:43','',NULL),(79,11,'id','主键','bigint','Long','id','1','0','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-07-30 20:25:43','',NULL),(80,11,'questions_bank_id','题库ID','bigint','Long','questionsBankId','0','0','0','1','1','1','1','EQ','input','',2,'admin','2024-07-30 20:25:43','',NULL),(81,11,'sort_field','排序字段','int','Long','sortField','0','0','0','1','1','1','1','EQ','input','',3,'admin','2024-07-30 20:25:43','',NULL),(82,11,'option_key','选项key','varchar(12)','String','optionKey','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-07-30 20:25:43','',NULL),(83,11,'option_name','选项名','longtext','String','optionName','0','0','0','1','1','1','1','LIKE','textarea','',5,'admin','2024-07-30 20:25:43','',NULL),(84,11,'answer','答案','longtext','String','answer','0','0','0','1','1','1','1','EQ','textarea','',6,'admin','2024-07-30 20:25:43','',NULL),(85,11,'score','分数','decimal(10,1)','BigDecimal','score','0','0','0','1','1','1','1','EQ','input','',7,'admin','2024-07-30 20:25:43','',NULL);
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='已触发的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='任务详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='简单触发器的信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='同步机制的行锁表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='触发器详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2024-03-01 19:39:39','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2024-03-01 19:39:39','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2024-03-01 19:39:39','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2024-03-01 19:39:39','',NULL,'是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','N','admin','2024-03-01 19:39:39','admin','2024-07-29 11:42:42','是否开启注册用户功能（true开启，false关闭）'),(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2024-03-01 19:39:40','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (100,0,'0','一颗星',0,'一颗星','15555555555','','0','0','admin','2024-03-01 19:39:37','admin','2024-03-02 19:00:12'),(101,100,'0,100','北京总部',1,'一颗星','15888888888','astar@qq.com','0','0','admin','2024-03-01 19:39:37','admin','2024-03-02 19:00:33'),(102,100,'0,100','长沙分公司',2,'一颗星','15888888888','ry@qq.com','0','2','admin','2024-03-01 19:39:37','',NULL),(103,101,'0,100,101','研发部门',1,'一颗星','15888888888','astar@qq.com','0','0','admin','2024-03-01 19:39:37','admin','2024-03-02 19:00:42'),(104,101,'0,100,101','市场部门',2,'一颗星','15888888888','ry@qq.com','0','2','admin','2024-03-01 19:39:37','',NULL),(105,101,'0,100,101','测试部门',3,'一颗星','15888888888','ry@qq.com','0','2','admin','2024-03-01 19:39:37','',NULL),(106,101,'0,100,101','财务部门',4,'一颗星','15888888888','ry@qq.com','0','2','admin','2024-03-01 19:39:37','',NULL),(107,101,'0,100,101','运维部门',5,'一颗星','15888888888','ry@qq.com','0','2','admin','2024-03-01 19:39:37','',NULL),(108,102,'0,100,102','市场部门',1,'一颗星','15888888888','ry@qq.com','0','2','admin','2024-03-01 19:39:37','',NULL),(109,102,'0,100,102','财务部门',2,'一颗星','15888888888','ry@qq.com','0','2','admin','2024-03-01 19:39:37','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2024-03-01 19:39:39','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2024-03-01 19:39:39','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2024-03-01 19:39:39','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2024-03-01 19:39:39','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2024-03-01 19:39:39','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2024-03-01 19:39:39','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2024-03-01 19:39:39','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2024-03-01 19:39:39','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2024-03-01 19:39:39','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2024-03-01 19:39:39','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2024-03-01 19:39:39','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2024-03-01 19:39:39','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2024-03-01 19:39:39','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2024-03-01 19:39:39','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2024-03-01 19:39:39','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2024-03-01 19:39:39','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2024-03-01 19:39:39','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2024-03-01 19:39:39','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2024-03-01 19:39:39','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2024-03-01 19:39:39','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2024-03-01 19:39:39','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2024-03-01 19:39:39','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2024-03-01 19:39:39','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2024-03-01 19:39:39','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2024-03-01 19:39:39','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2024-03-01 19:39:39','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2024-03-01 19:39:39','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2024-03-01 19:39:39','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2024-03-01 19:39:39','',NULL,'停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1,'用户性别','sys_user_sex','0','admin','2024-03-01 19:39:39','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2024-03-01 19:39:39','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2024-03-01 19:39:39','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2024-03-01 19:39:39','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2024-03-01 19:39:39','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2024-03-01 19:39:39','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2024-03-01 19:39:39','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2024-03-01 19:39:39','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2024-03-01 19:39:39','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2024-03-01 19:39:39','',NULL,'登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2024-03-01 19:39:40','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2024-03-01 19:39:40','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2024-03-01 19:39:40','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由参数',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2072 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1,'系统管理',0,6,'system',NULL,'',1,0,'M','0','0','','system','admin','2024-03-01 19:39:37','admin','2024-08-01 20:35:57','系统管理目录'),(2,'系统监控',0,8,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2024-03-01 19:39:37','admin','2024-08-01 20:36:04','系统监控目录'),(3,'系统工具',0,7,'tool',NULL,'',1,0,'M','0','0','','tool','admin','2024-03-01 19:39:37','admin','2024-08-01 20:36:00','系统工具目录'),(4,'一颗星官网',0,99,'https://gitee.com/wy521a',NULL,'',0,0,'M','0','0','','guide','admin','2024-03-01 19:39:37','admin','2024-08-01 20:36:11','一颗星官网地址'),(100,'用户管理',1,1,'user','system/user/index','',1,0,'C','0','0','system:user:list','user','admin','2024-03-01 19:39:37','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2024-03-01 19:39:37','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2024-03-01 19:39:37','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index','',1,0,'C','0','0','system:dept:list','tree','admin','2024-03-01 19:39:37','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index','',1,0,'C','0','0','system:post:list','post','admin','2024-03-01 19:39:37','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index','',1,0,'C','0','0','system:dict:list','dict','admin','2024-03-01 19:39:37','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index','',1,0,'C','0','0','system:config:list','edit','admin','2024-03-01 19:39:37','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index','',1,0,'C','0','0','system:notice:list','message','admin','2024-03-01 19:39:37','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'log','','',1,0,'M','0','0','','log','admin','2024-03-01 19:39:37','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index','',1,0,'C','0','0','monitor:online:list','online','admin','2024-03-01 19:39:37','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index','',1,0,'C','0','0','monitor:job:list','job','admin','2024-03-01 19:39:37','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'druid','monitor/druid/index','',1,0,'C','0','0','monitor:druid:list','druid','admin','2024-03-01 19:39:37','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'server','monitor/server/index','',1,0,'C','0','0','monitor:server:list','server','admin','2024-03-01 19:39:37','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'cache','monitor/cache/index','',1,0,'C','0','0','monitor:cache:list','redis','admin','2024-03-01 19:39:37','',NULL,'缓存监控菜单'),(114,'缓存列表',2,6,'cacheList','monitor/cache/list','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2024-03-01 19:39:37','',NULL,'缓存列表菜单'),(115,'表单构建22',3,1,'build','tool/build/index2222','',1,0,'C','0','1','tool:build:list','build','admin','2024-03-01 19:39:37','admin','2024-03-02 09:58:49','表单构建菜单'),(116,'代码生成',3,2,'gen','tool/gen/index','',1,0,'C','0','0','tool:gen:list','code','admin','2024-03-01 19:39:37','',NULL,'代码生成菜单'),(117,'系统接口',3,3,'swagger','tool/swagger/index','',1,0,'C','1','0','tool:swagger:list','swagger','admin','2024-03-01 19:39:37','admin','2025-02-06 10:01:14','系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index','',1,0,'C','0','0','monitor:operlog:list','form','admin','2024-03-01 19:39:37','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2024-03-01 19:39:37','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'','','',1,0,'F','0','0','system:user:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1001,'用户新增',100,2,'','','',1,0,'F','0','0','system:user:add','#','admin','2024-03-01 19:39:38','',NULL,''),(1002,'用户修改',100,3,'','','',1,0,'F','0','0','system:user:edit','#','admin','2024-03-01 19:39:38','',NULL,''),(1003,'用户删除',100,4,'','','',1,0,'F','0','0','system:user:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1004,'用户导出',100,5,'','','',1,0,'F','0','0','system:user:export','#','admin','2024-03-01 19:39:38','',NULL,''),(1005,'用户导入',100,6,'','','',1,0,'F','0','0','system:user:import','#','admin','2024-03-01 19:39:38','',NULL,''),(1006,'重置密码',100,7,'','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2024-03-01 19:39:38','',NULL,''),(1007,'角色查询',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1008,'角色新增',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2024-03-01 19:39:38','',NULL,''),(1009,'角色修改',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2024-03-01 19:39:38','',NULL,''),(1010,'角色删除',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1011,'角色导出',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2024-03-01 19:39:38','',NULL,''),(1012,'菜单查询',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1013,'菜单新增',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2024-03-01 19:39:38','',NULL,''),(1014,'菜单修改',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2024-03-01 19:39:38','',NULL,''),(1015,'菜单删除',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1016,'部门查询',103,1,'','','',1,0,'F','0','0','system:dept:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1017,'部门新增',103,2,'','','',1,0,'F','0','0','system:dept:add','#','admin','2024-03-01 19:39:38','',NULL,''),(1018,'部门修改',103,3,'','','',1,0,'F','0','0','system:dept:edit','#','admin','2024-03-01 19:39:38','',NULL,''),(1019,'部门删除',103,4,'','','',1,0,'F','0','0','system:dept:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1020,'岗位查询',104,1,'','','',1,0,'F','0','0','system:post:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1021,'岗位新增',104,2,'','','',1,0,'F','0','0','system:post:add','#','admin','2024-03-01 19:39:38','',NULL,''),(1022,'岗位修改',104,3,'','','',1,0,'F','0','0','system:post:edit','#','admin','2024-03-01 19:39:38','',NULL,''),(1023,'岗位删除',104,4,'','','',1,0,'F','0','0','system:post:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1024,'岗位导出',104,5,'','','',1,0,'F','0','0','system:post:export','#','admin','2024-03-01 19:39:38','',NULL,''),(1025,'字典查询',105,1,'#','','',1,0,'F','0','0','system:dict:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1026,'字典新增',105,2,'#','','',1,0,'F','0','0','system:dict:add','#','admin','2024-03-01 19:39:38','',NULL,''),(1027,'字典修改',105,3,'#','','',1,0,'F','0','0','system:dict:edit','#','admin','2024-03-01 19:39:38','',NULL,''),(1028,'字典删除',105,4,'#','','',1,0,'F','0','0','system:dict:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1029,'字典导出',105,5,'#','','',1,0,'F','0','0','system:dict:export','#','admin','2024-03-01 19:39:38','',NULL,''),(1030,'参数查询',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1031,'参数新增',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2024-03-01 19:39:38','',NULL,''),(1032,'参数修改',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2024-03-01 19:39:38','',NULL,''),(1033,'参数删除',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1034,'参数导出',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2024-03-01 19:39:38','',NULL,''),(1035,'公告查询',107,1,'#','','',1,0,'F','0','0','system:notice:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1036,'公告新增',107,2,'#','','',1,0,'F','0','0','system:notice:add','#','admin','2024-03-01 19:39:38','',NULL,''),(1037,'公告修改',107,3,'#','','',1,0,'F','0','0','system:notice:edit','#','admin','2024-03-01 19:39:38','',NULL,''),(1038,'公告删除',107,4,'#','','',1,0,'F','0','0','system:notice:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1039,'操作查询',500,1,'#','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1040,'操作删除',500,2,'#','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1041,'日志导出',500,3,'#','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2024-03-01 19:39:38','',NULL,''),(1042,'登录查询',501,1,'#','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1043,'登录删除',501,2,'#','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1044,'日志导出',501,3,'#','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2024-03-01 19:39:38','',NULL,''),(1045,'账户解锁',501,4,'#','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2024-03-01 19:39:38','',NULL,''),(1046,'在线查询',109,1,'#','','',1,0,'F','0','0','monitor:online:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1047,'批量强退',109,2,'#','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2024-03-01 19:39:38','',NULL,''),(1048,'单条强退',109,3,'#','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2024-03-01 19:39:38','',NULL,''),(1049,'任务查询',110,1,'#','','',1,0,'F','0','0','monitor:job:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1050,'任务新增',110,2,'#','','',1,0,'F','0','0','monitor:job:add','#','admin','2024-03-01 19:39:38','',NULL,''),(1051,'任务修改',110,3,'#','','',1,0,'F','0','0','monitor:job:edit','#','admin','2024-03-01 19:39:38','',NULL,''),(1052,'任务删除',110,4,'#','','',1,0,'F','0','0','monitor:job:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1053,'状态修改',110,5,'#','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2024-03-01 19:39:38','',NULL,''),(1054,'任务导出',110,6,'#','','',1,0,'F','0','0','monitor:job:export','#','admin','2024-03-01 19:39:38','',NULL,''),(1055,'生成查询',116,1,'#','','',1,0,'F','0','0','tool:gen:query','#','admin','2024-03-01 19:39:38','',NULL,''),(1056,'生成修改',116,2,'#','','',1,0,'F','0','0','tool:gen:edit','#','admin','2024-03-01 19:39:38','',NULL,''),(1057,'生成删除',116,3,'#','','',1,0,'F','0','0','tool:gen:remove','#','admin','2024-03-01 19:39:38','',NULL,''),(1058,'导入代码',116,4,'#','','',1,0,'F','0','0','tool:gen:import','#','admin','2024-03-01 19:39:38','',NULL,''),(1059,'预览代码',116,5,'#','','',1,0,'F','0','0','tool:gen:preview','#','admin','2024-03-01 19:39:38','',NULL,''),(1060,'生成代码',116,6,'#','','',1,0,'F','0','0','tool:gen:code','#','admin','2024-03-01 19:39:38','',NULL,''),(2011,'用户管理',0,1,'/educationuser',NULL,NULL,1,0,'M','0','0','','peoples','admin','2024-07-29 20:41:12','admin','2024-07-31 20:39:47',''),(2012,'学生管理',2011,1,'student','system/education/student/index',NULL,1,1,'C','0','0','','people','admin','2024-07-29 20:43:02','admin','2024-08-07 19:50:53',''),(2013,'教师管理',2011,2,'teacher','system/education/teacher/index',NULL,1,1,'C','0','0','','user','admin','2024-07-29 20:44:19','admin','2024-08-07 19:50:56',''),(2014,'题库管理',2065,1,'bank','education/bank/index',NULL,1,1,'C','0','0','system:bank:list','log','admin','2024-07-30 20:27:52','admin','2024-08-07 19:51:13','题库管理菜单'),(2015,'题库管理查询',2014,1,'#','',NULL,1,0,'F','0','0','system:bank:query','#','admin','2024-07-30 20:27:53','',NULL,''),(2016,'题库管理新增',2014,2,'#','',NULL,1,0,'F','0','0','system:bank:add','#','admin','2024-07-30 20:27:53','',NULL,''),(2017,'题库管理修改',2014,3,'#','',NULL,1,0,'F','0','0','system:bank:edit','#','admin','2024-07-30 20:27:53','',NULL,''),(2018,'题库管理删除',2014,4,'#','',NULL,1,0,'F','0','0','system:bank:remove','#','admin','2024-07-30 20:27:53','',NULL,''),(2019,'题库管理导出',2014,5,'#','',NULL,1,0,'F','0','0','system:bank:export','#','admin','2024-07-30 20:27:53','',NULL,''),(2020,'年级管理',2063,2,'class','education/class/index',NULL,1,1,'C','0','0','system:class:list','cascader','admin','2024-07-30 20:29:19','admin','2024-08-07 19:51:00','年级管理菜单'),(2021,'年级管理查询',2020,1,'#','',NULL,1,0,'F','0','0','system:class:query','#','admin','2024-07-30 20:29:19','',NULL,''),(2022,'年级管理新增',2020,2,'#','',NULL,1,0,'F','0','0','system:class:add','#','admin','2024-07-30 20:29:19','',NULL,''),(2023,'年级管理修改',2020,3,'#','',NULL,1,0,'F','0','0','system:class:edit','#','admin','2024-07-30 20:29:19','',NULL,''),(2024,'年级管理删除',2020,4,'#','',NULL,1,0,'F','0','0','system:class:remove','#','admin','2024-07-30 20:29:19','',NULL,''),(2025,'年级管理导出',2020,5,'#','',NULL,1,0,'F','0','0','system:class:export','#','admin','2024-07-30 20:29:19','',NULL,''),(2026,'学科管理',2063,3,'discipline','education/discipline/index',NULL,1,1,'C','0','0','system:discipline:list','education','admin','2024-07-30 20:29:30','admin','2024-08-07 19:51:02','学科管理菜单'),(2027,'学科管理查询',2026,1,'#','',NULL,1,0,'F','0','0','system:discipline:query','#','admin','2024-07-30 20:29:30','',NULL,''),(2028,'学科管理新增',2026,2,'#','',NULL,1,0,'F','0','0','system:discipline:add','#','admin','2024-07-30 20:29:30','',NULL,''),(2029,'学科管理修改',2026,3,'#','',NULL,1,0,'F','0','0','system:discipline:edit','#','admin','2024-07-30 20:29:30','',NULL,''),(2030,'学科管理删除',2026,4,'#','',NULL,1,0,'F','0','0','system:discipline:remove','#','admin','2024-07-30 20:29:30','',NULL,''),(2031,'学科管理导出',2026,5,'#','',NULL,1,0,'F','0','0','system:discipline:export','#','admin','2024-07-30 20:29:30','',NULL,''),(2033,'题库选项管理查询',2067,1,'#','',NULL,1,0,'F','0','0','system:options:query','#','admin','2024-07-30 20:29:37','admin','2024-08-01 20:44:01',''),(2034,'题库选项管理新增',2067,2,'#','',NULL,1,0,'F','0','0','system:options:add','#','admin','2024-07-30 20:29:37','admin','2024-08-01 20:44:05',''),(2035,'题库选项管理修改',2067,3,'#','',NULL,1,0,'F','0','0','system:options:edit','#','admin','2024-07-30 20:29:37','admin','2024-08-01 20:44:09',''),(2036,'题库选项管理删除',2067,4,'#','',NULL,1,0,'F','0','0','system:options:remove','#','admin','2024-07-30 20:29:37','admin','2024-08-01 20:44:13',''),(2037,'题库选项管理导出',2067,5,'#','',NULL,1,0,'F','0','0','system:options:export','#','admin','2024-07-30 20:29:37','admin','2024-08-01 20:44:17',''),(2038,'试卷管理',2064,5,'paper','education/paper/index',NULL,1,1,'C','0','0','system:paper:list','edit','admin','2024-07-30 20:29:47','admin','2024-08-07 19:51:07','试卷管理菜单'),(2039,'试卷管理查询',2038,1,'#','',NULL,1,0,'F','0','0','system:paper:query','#','admin','2024-07-30 20:29:47','',NULL,''),(2040,'试卷管理新增',2038,2,'#','',NULL,1,0,'F','0','0','system:paper:add','#','admin','2024-07-30 20:29:47','',NULL,''),(2041,'试卷管理修改',2038,3,'#','',NULL,1,0,'F','0','0','system:paper:edit','#','admin','2024-07-30 20:29:47','',NULL,''),(2042,'试卷管理删除',2038,4,'#','',NULL,1,0,'F','0','0','system:paper:remove','#','admin','2024-07-30 20:29:47','',NULL,''),(2043,'试卷管理导出',2038,5,'#','',NULL,1,0,'F','0','0','system:paper:export','#','admin','2024-07-30 20:29:47','',NULL,''),(2050,'试卷任务管理',2066,7,'task','education/task/index',NULL,1,1,'C','0','0','system:task:list','date','admin','2024-07-30 20:30:24','admin','2024-08-07 19:51:37','试卷任务管理菜单'),(2051,'试卷任务管理查询',2050,1,'#','',NULL,1,0,'F','0','0','system:task:query','#','admin','2024-07-30 20:30:24','',NULL,''),(2052,'试卷任务管理新增',2050,2,'#','',NULL,1,0,'F','0','0','system:task:add','#','admin','2024-07-30 20:30:24','',NULL,''),(2053,'试卷任务管理修改',2050,3,'#','',NULL,1,0,'F','0','0','system:task:edit','#','admin','2024-07-30 20:30:24','',NULL,''),(2054,'试卷任务管理删除',2050,4,'#','',NULL,1,0,'F','0','0','system:task:remove','#','admin','2024-07-30 20:30:24','',NULL,''),(2055,'试卷任务管理导出',2050,5,'#','',NULL,1,0,'F','0','0','system:task:export','#','admin','2024-07-30 20:30:24','',NULL,''),(2063,'班级管理',0,2,'class',NULL,NULL,1,0,'M','0','0',NULL,'dict','admin','2024-08-01 20:27:00','',NULL,''),(2064,'试卷管理',0,3,'paper',NULL,NULL,1,0,'M','0','0',NULL,'log','admin','2024-08-01 20:29:28','',NULL,''),(2065,'题库管理',0,4,'bank',NULL,NULL,1,0,'M','0','0','','education','admin','2024-08-01 20:30:43','admin','2024-08-01 20:35:44',''),(2066,'学生任务管理',0,5,'studenttask',NULL,NULL,1,0,'M','0','0','','job','admin','2024-08-01 20:33:03','admin','2024-08-01 20:35:49',''),(2067,'单选题创建',2065,2,'radio','education/bank/options/radio.vue',NULL,1,1,'C','0','0','','radio','admin','2024-08-01 20:43:01','admin','2024-08-07 19:51:18',''),(2068,'多选题创建',2065,3,'multiple','education/bank/options/multiple.vue',NULL,1,1,'C','0','0','','select','admin','2024-08-01 20:49:36','admin','2024-08-07 19:51:20',''),(2069,'判断题创建',2065,4,'judgment','education/bank/options/judgment.vue','',1,1,'C','0','0','','validCode','admin','2024-08-01 20:50:36','admin','2024-08-07 19:51:27',''),(2070,'填空题创建',2065,5,'filling','education/bank/options/filling.vue',NULL,1,1,'C','0','0','','edit','admin','2024-08-01 20:51:13','admin','2024-08-07 19:51:30',''),(2071,'简答题创建',2065,6,'answer','education/bank/options/answer.vue',NULL,1,1,'C','0','0','','form','admin','2024-08-01 20:51:37','admin','2024-08-07 19:51:32','');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1,'温馨提醒：2018-07-01 一颗星新版本发布啦','2',_binary '新版本内容','0','admin','2024-03-01 19:39:40','',NULL,'管理员'),(2,'维护通知：2018-07-01 一颗星系统凌晨维护','1',_binary '维护内容','0','admin','2024-03-01 19:39:40','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1,'ceo','董事长',1,'0','admin','2024-03-01 19:39:37','',NULL,''),(2,'se','项目经理',2,'0','admin','2024-03-01 19:39:37','',NULL,''),(3,'hr','人力资源',3,'0','admin','2024-03-01 19:39:37','',NULL,''),(4,'user','普通员工',4,'0','admin','2024-03-01 19:39:37','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2024-03-01 19:39:37','',NULL,'超级管理员'),(101,'教师','teacher',0,'1',1,1,'0','0','admin','2024-08-17 13:28:41','',NULL,NULL),(102,'学生','student',0,'1',1,1,'0','0','admin','2024-08-17 13:29:32','admin','2024-08-17 13:45:05',NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (101,2011),(101,2012),(101,2013),(101,2014),(101,2015),(101,2016),(101,2017),(101,2018),(101,2019),(101,2020),(101,2021),(101,2022),(101,2023),(101,2024),(101,2025),(101,2026),(101,2027),(101,2028),(101,2029),(101,2030),(101,2031),(101,2033),(101,2034),(101,2035),(101,2036),(101,2037),(101,2038),(101,2039),(101,2040),(101,2041),(101,2042),(101,2043),(101,2050),(101,2051),(101,2052),(101,2053),(101,2054),(101,2055),(101,2063),(101,2064),(101,2065),(101,2066),(101,2067),(101,2068),(101,2069),(101,2070),(101,2071),(102,2020),(102,2021),(102,2026),(102,2027),(102,2038),(102,2039),(102,2040),(102,2041),(102,2063),(102,2064);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) COLLATE utf8mb4_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户）（01学生端）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `grade_class_id` bigint DEFAULT NULL COMMENT '年级ID',
  `age` int DEFAULT NULL COMMENT '年龄',
  `birth_date` date DEFAULT NULL COMMENT '出生日期',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `grade_class_id`, `age`, `birth_date`) VALUES (1,103,'admin','一颗星','00','astar@qq.com','15888888888','0','','$2a$10$5dAxQN9G5vZwO.quaUISdeDxs73NOi6T/0W0NeaJELRcPpBZU.JTO','0','0','127.0.0.1','2025-02-10 14:53:58','admin','2024-03-01 19:39:37','','2025-02-10 14:53:57','管理员',NULL,0,NULL),(109,NULL,'student','学生用户','01','','','0',NULL,'$2a$10$5dAxQN9G5vZwO.quaUISdeDxs73NOi6T/0W0NeaJELRcPpBZU.JTO','0','0','127.0.0.1','2025-02-10 15:15:35','admin','2024-08-17 13:30:13','','2025-02-10 15:15:35',NULL,1818643685466750978,0,NULL),(110,NULL,'teacher','教师','00','2754522801@qq.com','15933333333','2','','$2a$10$CAacgYu31mf2KHCzO0ToVevqAlPrdh9QbUglRhTgu.A8YyZfYw/i.','0','0','127.0.0.1','2025-02-10 15:09:05','admin','2025-02-07 09:03:47','admin','2025-02-10 15:09:04',NULL,1818643685466750978,0,'2025-02-03');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (1,1);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (1,1),(109,102),(110,101);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_discipline`
--

DROP TABLE IF EXISTS `tb_discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_discipline` (
  `id` bigint NOT NULL COMMENT '主键',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int DEFAULT '0' COMMENT '逻辑删除',
  `grade_class_id` bigint DEFAULT NULL COMMENT '年级ID',
  `discipline_name` varchar(255) DEFAULT NULL COMMENT '学科名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学科管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_discipline`
--

LOCK TABLES `tb_discipline` WRITE;
/*!40000 ALTER TABLE `tb_discipline` DISABLE KEYS */;
INSERT INTO `tb_discipline` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `del_flag`, `grade_class_id`, `discipline_name`) VALUES (1818982717235449858,'admin','2024-08-01 20:10:50',NULL,'2024-08-01 20:11:05',0,1818643685466750978,'语文'),(1818982735287734273,'admin','2024-08-01 20:10:54',NULL,NULL,0,1818643685466750978,'数学'),(1818982947838283777,'admin','2024-08-01 20:11:44',NULL,NULL,0,1818982864833007618,'英语');
/*!40000 ALTER TABLE `tb_discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_examination_paper`
--

DROP TABLE IF EXISTS `tb_examination_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_examination_paper` (
  `id` bigint NOT NULL COMMENT '主键',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int DEFAULT '0' COMMENT '逻辑删除',
  `grade_class_id` bigint DEFAULT NULL COMMENT '年级ID',
  `discipline_id` bigint DEFAULT NULL COMMENT '学科ID',
  `examination_paper_name` varchar(255) DEFAULT NULL COMMENT '试卷名称',
  `examination_paper_type` char(1) DEFAULT NULL COMMENT '试卷类型:1.固定试卷，2.时段试卷，3.任务试卷',
  `examination_paper_status` char(1) DEFAULT '1' COMMENT '试卷状态：1.未发布，2.已发布',
  `suggestions_hours` int DEFAULT NULL COMMENT '建议时长，小时',
  `suggestions_minutes` int DEFAULT NULL COMMENT '建议时长，分钟',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='试卷管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_examination_paper`
--

LOCK TABLES `tb_examination_paper` WRITE;
/*!40000 ALTER TABLE `tb_examination_paper` DISABLE KEYS */;
INSERT INTO `tb_examination_paper` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `del_flag`, `grade_class_id`, `discipline_id`, `examination_paper_name`, `examination_paper_type`, `examination_paper_status`, `suggestions_hours`, `suggestions_minutes`, `start_time`, `end_time`) VALUES (1822149860250386433,'admin','2024-08-10 13:55:55',NULL,NULL,1,1818982864833007618,1818982947838283777,'一年级英语测试','1','2',NULL,120,NULL,NULL),(1822151655525736449,'admin','2024-08-10 14:03:03',NULL,'2024-08-10 14:36:34',0,1818982864833007618,1818982947838283777,'一年级数学','1','2',NULL,21,NULL,NULL),(1822162565766074370,'admin','2024-08-10 14:46:24',NULL,NULL,0,1818643685466750978,1818982717235449858,'一年级语文卷','2','2',NULL,22,'2024-08-10 00:00:00','2024-09-09 00:00:00'),(1822966587838205953,'admin','2024-08-12 20:01:18',NULL,NULL,0,1818643685466750978,1818982717235449858,'期中考试','3','2',NULL,4,NULL,NULL),(1825130954176376834,'admin','2024-08-18 19:21:43',NULL,NULL,0,1818643685466750978,1818982717235449858,'测试答题','1','2',NULL,120,NULL,NULL);
/*!40000 ALTER TABLE `tb_examination_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_examination_paper_questions`
--

DROP TABLE IF EXISTS `tb_examination_paper_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_examination_paper_questions` (
  `id` bigint NOT NULL COMMENT '主键',
  `examination_paper_id` bigint DEFAULT NULL COMMENT '试卷ID',
  `examination_paper_topic_id` bigint DEFAULT NULL COMMENT '试卷题目ID',
  `sort_field` int DEFAULT NULL COMMENT '排序',
  `question_bank_id` bigint DEFAULT NULL COMMENT '题库ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='试卷题目试题管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_examination_paper_questions`
--

LOCK TABLES `tb_examination_paper_questions` WRITE;
/*!40000 ALTER TABLE `tb_examination_paper_questions` DISABLE KEYS */;
INSERT INTO `tb_examination_paper_questions` (`id`, `examination_paper_id`, `examination_paper_topic_id`, `sort_field`, `question_bank_id`) VALUES (1822160089327357954,1822151655525736449,1822160089302192130,1,1820802813756702722),(1822160089335746561,1822151655525736449,1822160089331552258,1,1821535105867620354),(1822160089344135170,1822151655525736449,1822160089331552258,2,1821539108718419969),(1822160089348329474,1822151655525736449,1822160089331552258,3,1821892454463324161),(1822160089356718081,1822151655525736449,1822160089331552258,4,1821898732937953282),(1822162565808017410,1822162565766074370,1822162565791240194,1,1821898732937953282),(1822162565824794626,1822162565766074370,1822162565791240194,2,1822144719543631874),(1822162565849960450,1822162565766074370,1822162565841571842,1,1820802813756702722),(1822162565862543362,1822162565766074370,1822162565841571842,2,1821535105867620354),(1822162565870931970,1822162565766074370,1822162565841571842,3,1821539108718419969),(1822162565879320577,1822162565766074370,1822162565841571842,4,1821892454463324161),(1822966587871760386,1822966587838205953,1822966587863371777,1,1820802813756702722),(1825130954197348354,1825130954176376834,1825130954193154050,1,1820802813756702722),(1825130954205736961,1825130954176376834,1825130954201542657,1,1821535105867620354),(1825130954218319874,1825130954176376834,1825130954214125570,1,1821539108718419969),(1825130954226708481,1825130954176376834,1825130954222514177,1,1821892454463324161),(1825130954235097089,1825130954176376834,1825130954230902786,1,1821898732937953282);
/*!40000 ALTER TABLE `tb_examination_paper_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_examination_paper_topic`
--

DROP TABLE IF EXISTS `tb_examination_paper_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_examination_paper_topic` (
  `id` bigint NOT NULL COMMENT '主键',
  `examination_paper_id` bigint DEFAULT NULL COMMENT '试卷ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `sort_field` int DEFAULT NULL COMMENT '排序字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='试卷题目管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_examination_paper_topic`
--

LOCK TABLES `tb_examination_paper_topic` WRITE;
/*!40000 ALTER TABLE `tb_examination_paper_topic` DISABLE KEYS */;
INSERT INTO `tb_examination_paper_topic` (`id`, `examination_paper_id`, `title`, `sort_field`) VALUES (1822160089302192130,1822151655525736449,'单选题',1),(1822160089331552258,1822151655525736449,'随机题目',2),(1822162565791240194,1822162565766074370,'测试题',1),(1822162565841571842,1822162565766074370,'随机题目',2),(1822966587863371777,1822966587838205953,'啊实打实',1),(1825130954193154050,1825130954176376834,'单选题',1),(1825130954201542657,1825130954176376834,'多选题',2),(1825130954214125570,1825130954176376834,'判断题',3),(1825130954222514177,1825130954176376834,'简答题',4),(1825130954230902786,1825130954176376834,'填空题',5);
/*!40000 ALTER TABLE `tb_examination_paper_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_grade_class`
--

DROP TABLE IF EXISTS `tb_grade_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_grade_class` (
  `id` bigint NOT NULL COMMENT '主键',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int DEFAULT '0' COMMENT '逻辑删除',
  `grade_class_name` varchar(255) DEFAULT NULL COMMENT '年级名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='年级管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_grade_class`
--

LOCK TABLES `tb_grade_class` WRITE;
/*!40000 ALTER TABLE `tb_grade_class` DISABLE KEYS */;
INSERT INTO `tb_grade_class` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `del_flag`, `grade_class_name`) VALUES (1818643685466750978,'admin','2024-07-31 21:43:38',NULL,'2024-08-29 14:20:37',0,'一年级'),(1818982864833007618,'admin','2024-08-01 20:11:25',NULL,NULL,0,'二年级');
/*!40000 ALTER TABLE `tb_grade_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_paper_record`
--

DROP TABLE IF EXISTS `tb_paper_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_paper_record` (
  `id` bigint NOT NULL COMMENT '主键',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int DEFAULT '0' COMMENT '逻辑删除',
  `user_name` varchar(255) DEFAULT NULL COMMENT '答题用户',
  `grade_class_id` bigint DEFAULT NULL COMMENT '年纪ID',
  `discipline_id` bigint DEFAULT NULL COMMENT '学科ID',
  `examination_paper_id` bigint DEFAULT NULL COMMENT '试卷ID',
  `examination_paper_name` varchar(255) DEFAULT NULL COMMENT '试卷名称',
  `score` decimal(10,1) DEFAULT NULL COMMENT '试卷分数',
  `final_score` decimal(10,1) DEFAULT NULL COMMENT '最终分数',
  `metadata_str` longtext COMMENT '提交元数据',
  `status` char(1) DEFAULT NULL COMMENT '试卷状态：1.完成，2.待批改',
  `time_consuming` varchar(255) DEFAULT NULL COMMENT '耗时（分钟）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='答题记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_paper_record`
--

LOCK TABLES `tb_paper_record` WRITE;
/*!40000 ALTER TABLE `tb_paper_record` DISABLE KEYS */;
INSERT INTO `tb_paper_record` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `del_flag`, `user_name`, `grade_class_id`, `discipline_id`, `examination_paper_id`, `examination_paper_name`, `score`, `final_score`, `metadata_str`, `status`, `time_consuming`) VALUES (1887681599877677058,'student','2025-02-07 09:55:39',NULL,NULL,0,'student',1818643685466750978,1818982717235449858,1822162565766074370,'一年级语文卷',26.0,0.0,'{\"delFlag\":0,\"disciplineId\":\"1818982717235449858\",\"examinationPaperId\":\"1822162565766074370\",\"examinationPaperName\":\"一年级语文卷\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565766074370\",\"paperTopicList\":[{\"examinationPaperId\":\"1822162565766074370\",\"id\":\"1822162565791240194\",\"paperQuestionsList\":[{\"bankOptionsList\":[],\"correctOptionKey\":\"\",\"difficulty\":\"5\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565808017410\",\"questionBankId\":\"1821898732937953282\",\"questionsAnalyze\":\"\",\"questionsType\":\"4\",\"score\":5,\"title\":\"<p>简答题题目</p>\"},{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1822144719614935041\",\"optionKey\":\"AA\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1822144719623323649\",\"optionKey\":\"BB\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1822144719627517954\",\"optionKey\":\"CC\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1822144719631712258\",\"optionKey\":\"DD\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":4}],\"correctOptionKey\":\"\",\"difficulty\":\"4\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565824794626\",\"questionBankId\":\"1822144719543631874\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":2,\"title\":\"<p>test</p>\"}],\"sortField\":1,\"title\":\"测试题\"},{\"examinationPaperId\":\"1822162565766074370\",\"id\":\"1822162565841571842\",\"paperQuestionsList\":[{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1820802813807034369\",\"optionKey\":\"A\",\"optionName\":\"<p>测试</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1820802813815422977\",\"optionKey\":\"B\",\"optionName\":\"<p>1</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1820802813828005889\",\"optionKey\":\"C\",\"optionName\":\"<p>aa</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1820802813832200194\",\"optionKey\":\"D\",\"optionName\":\"<p>cc</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821531169358127105\",\"optionKey\":\"E\",\"optionName\":\"<p>你好</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821531169370710017\",\"optionKey\":\"F\",\"optionName\":\"<p>俄式</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":6}],\"correctOptionKey\":\"\",\"difficulty\":\"5\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565849960450\",\"questionBankId\":\"1820802813756702722\",\"questionsAnalyze\":\"\",\"questionsType\":\"1\",\"score\":5,\"title\":\"<p>测试</p>\"},{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821535105913757698\",\"optionKey\":\"A\",\"optionName\":\"<p>A</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821535105922146306\",\"optionKey\":\"B\",\"optionName\":\"<p>B</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1821535105930534914\",\"optionKey\":\"C\",\"optionName\":\"<p>C</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1821535105938923522\",\"optionKey\":\"D\",\"optionName\":\"<p>D</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821537212712656897\",\"optionKey\":\"E\",\"optionName\":\"<p>asda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821538325155323906\",\"optionKey\":\"F\",\"optionName\":\"<p>asdasd</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":6},{\"answer\":\"\",\"id\":\"1821538325159518210\",\"optionKey\":\"G\",\"optionName\":\"<p>asdasda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":7}],\"correctOptionKey\":\"\",\"difficulty\":\"4\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565862543362\",\"questionBankId\":\"1821535105867620354\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":4,\"title\":\"<p>我是题目</p>\"},{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821539108869414914\",\"optionKey\":\"A\",\"optionName\":\"<p>对</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821539108886192129\",\"optionKey\":\"B\",\"optionName\":\"<p>错</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":2}],\"correctOptionKey\":\"\",\"difficulty\":\"2\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565870931970\",\"questionBankId\":\"1821539108718419969\",\"questionsAnalyze\":\"\",\"questionsType\":\"3\",\"score\":2,\"title\":\"<p>我是判断题</p>\"},{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2,\"sortField\":1},{\"answer\":\"\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":2},{\"answer\":\"\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":3}],\"correctOptionKey\":\"\",\"difficulty\":\"3\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565879320577\",\"questionBankId\":\"1821892454463324161\",\"questionsAnalyze\":\"\",\"questionsType\":\"5\",\"score\":2,\"title\":\"<p>asd<span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"1\\\"><span class=\\\"fillintheblank-inner\\\">(__1__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"2\\\"><span class=\\\"fillintheblank-inner\\\">(__2__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"3\\\"><span class=\\\"fillintheblank-inner\\\">(__3__)</span></span></p>\"}],\"sortField\":2,\"title\":\"随机题目\"}],\"score\":20,\"timeConsuming\":\"0 分钟 7 秒\"}','2','0 分钟 7 秒');
/*!40000 ALTER TABLE `tb_paper_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_paper_record_info`
--

DROP TABLE IF EXISTS `tb_paper_record_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_paper_record_info` (
  `id` bigint NOT NULL COMMENT '主键',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int DEFAULT '0' COMMENT '逻辑删除',
  `user_name` varchar(255) DEFAULT NULL COMMENT '答题用户',
  `status` char(1) DEFAULT '1' COMMENT '状态：1.正确，2.错题，3.错题已修改',
  `record_id` bigint DEFAULT NULL COMMENT '答题记录表ID',
  `examination_paper_id` bigint DEFAULT NULL COMMENT '试卷ID',
  `question_bank_id` bigint DEFAULT NULL COMMENT '题库ID',
  `score` decimal(10,1) DEFAULT NULL COMMENT '题目分数',
  `final_score` decimal(10,1) DEFAULT NULL COMMENT '得分',
  `answer` longtext COMMENT '正确答案',
  `user_answer` longtext COMMENT '用户答案',
  `ext_info` longtext COMMENT '扩展信息例如：填空题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='答题记录详细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_paper_record_info`
--

LOCK TABLES `tb_paper_record_info` WRITE;
/*!40000 ALTER TABLE `tb_paper_record_info` DISABLE KEYS */;
INSERT INTO `tb_paper_record_info` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `del_flag`, `user_name`, `status`, `record_id`, `examination_paper_id`, `question_bank_id`, `score`, `final_score`, `answer`, `user_answer`, `ext_info`) VALUES (1887673248234078209,'student','2025-02-07 09:22:28',NULL,'2025-02-07 09:33:08',0,'student','3',1887673248183746561,1822162565766074370,1821898732937953282,5.0,0.0,'<p>我是大</p>','<p>1</p>','{\"bankOptionsList\":[],\"correctOptionKey\":\"<p>1</p>\",\"difficulty\":\"5\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565808017410\",\"questionBankId\":\"1821898732937953282\",\"questionsAnalyze\":\"\",\"questionsType\":\"4\",\"score\":5,\"title\":\"<p>简答题题目</p>\"}'),(1887673248317964290,'student','2025-02-07 09:22:28',NULL,NULL,0,'student','2',1887673248183746561,1822162565766074370,1822144719543631874,2.0,0.0,'CC,AA','AA','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1822144719614935041\",\"optionKey\":\"AA\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1822144719623323649\",\"optionKey\":\"BB\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1822144719627517954\",\"optionKey\":\"CC\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1822144719631712258\",\"optionKey\":\"DD\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":4}],\"correctOptionKey\":\"AA\",\"difficulty\":\"4\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565824794626\",\"questionBankId\":\"1822144719543631874\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":2,\"title\":\"<p>test</p>\"}'),(1887673248330547202,'student','2025-02-07 09:22:28',NULL,NULL,0,'student','2',1887673248183746561,1822162565766074370,1820802813756702722,5.0,0.0,'B','A','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1820802813807034369\",\"optionKey\":\"A\",\"optionName\":\"<p>测试</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1820802813815422977\",\"optionKey\":\"B\",\"optionName\":\"<p>1</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1820802813828005889\",\"optionKey\":\"C\",\"optionName\":\"<p>aa</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1820802813832200194\",\"optionKey\":\"D\",\"optionName\":\"<p>cc</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821531169358127105\",\"optionKey\":\"E\",\"optionName\":\"<p>你好</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821531169370710017\",\"optionKey\":\"F\",\"optionName\":\"<p>俄式</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":6}],\"correctOptionKey\":\"A\",\"difficulty\":\"5\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565849960450\",\"questionBankId\":\"1820802813756702722\",\"questionsAnalyze\":\"\",\"questionsType\":\"1\",\"score\":5,\"title\":\"<p>测试</p>\"}'),(1887673248338935810,'student','2025-02-07 09:22:28',NULL,NULL,0,'student','2',1887673248183746561,1822162565766074370,1821535105867620354,4.0,0.0,'B,D,E','A','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821535105913757698\",\"optionKey\":\"A\",\"optionName\":\"<p>A</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821535105922146306\",\"optionKey\":\"B\",\"optionName\":\"<p>B</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1821535105930534914\",\"optionKey\":\"C\",\"optionName\":\"<p>C</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1821535105938923522\",\"optionKey\":\"D\",\"optionName\":\"<p>D</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821537212712656897\",\"optionKey\":\"E\",\"optionName\":\"<p>asda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821538325155323906\",\"optionKey\":\"F\",\"optionName\":\"<p>asdasd</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":6},{\"answer\":\"\",\"id\":\"1821538325159518210\",\"optionKey\":\"G\",\"optionName\":\"<p>asdasda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":7}],\"correctOptionKey\":\"A\",\"difficulty\":\"4\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565862543362\",\"questionBankId\":\"1821535105867620354\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":4,\"title\":\"<p>我是题目</p>\"}'),(1887673248347324418,'student','2025-02-07 09:22:28',NULL,NULL,0,'student','2',1887673248183746561,1822162565766074370,1821539108718419969,2.0,0.0,'B','A','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821539108869414914\",\"optionKey\":\"A\",\"optionName\":\"<p>对</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821539108886192129\",\"optionKey\":\"B\",\"optionName\":\"<p>错</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":2}],\"correctOptionKey\":\"A\",\"difficulty\":\"2\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565870931970\",\"questionBankId\":\"1821539108718419969\",\"questionsAnalyze\":\"\",\"questionsType\":\"3\",\"score\":2,\"title\":\"<p>我是判断题</p>\"}'),(1887673248364101633,'student','2025-02-07 09:22:28',NULL,NULL,0,'student','2',1887673248183746561,1822162565766074370,1821892454463324161,2.0,0.0,'[{\"answer\":\"<p>1</p>\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2.0,\"sortField\":1},{\"answer\":\"<p>222</p>\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3.0,\"sortField\":2},{\"answer\":\"<p>333</p>\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3.0,\"sortField\":3}]','[{\"answer\":\"<p>1</p>\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2,\"sortField\":1},{\"answer\":\"<p>2</p>\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":2},{\"answer\":\"<p>3</p>\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":3}]','{\"bankOptionsList\":[{\"answer\":\"<p>1</p>\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2,\"sortField\":1},{\"answer\":\"<p>2</p>\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":2},{\"answer\":\"<p>3</p>\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":3}],\"correctOptionKey\":\"\",\"difficulty\":\"3\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565879320577\",\"questionBankId\":\"1821892454463324161\",\"questionsAnalyze\":\"\",\"questionsType\":\"5\",\"score\":2,\"title\":\"<p>asd<span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"1\\\"><span class=\\\"fillintheblank-inner\\\">(__1__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"2\\\"><span class=\\\"fillintheblank-inner\\\">(__2__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"3\\\"><span class=\\\"fillintheblank-inner\\\">(__3__)</span></span></p>\"}'),(1887675885272694786,'student','2025-02-07 09:32:57',NULL,NULL,0,'student','2',1887675885243334657,1822162565766074370,1821898732937953282,5.0,0.0,'<p>我是大</p>','<p>123</p>','{\"bankOptionsList\":[],\"correctOptionKey\":\"<p>123</p>\",\"difficulty\":\"5\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565808017410\",\"questionBankId\":\"1821898732937953282\",\"questionsAnalyze\":\"\",\"questionsType\":\"4\",\"score\":5,\"title\":\"<p>简答题题目</p>\"}'),(1887675885289472002,'student','2025-02-07 09:32:57',NULL,NULL,0,'student','2',1887675885243334657,1822162565766074370,1822144719543631874,2.0,0.0,'CC,AA','AA,BB','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1822144719614935041\",\"optionKey\":\"AA\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1822144719623323649\",\"optionKey\":\"BB\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1822144719627517954\",\"optionKey\":\"CC\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1822144719631712258\",\"optionKey\":\"DD\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":4}],\"correctOptionKey\":\"AA,BB\",\"difficulty\":\"4\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565824794626\",\"questionBankId\":\"1822144719543631874\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":2,\"title\":\"<p>test</p>\"}'),(1887675885310443521,'student','2025-02-07 09:32:57',NULL,NULL,0,'student','2',1887675885243334657,1822162565766074370,1820802813756702722,5.0,0.0,'B','A','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1820802813807034369\",\"optionKey\":\"A\",\"optionName\":\"<p>测试</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1820802813815422977\",\"optionKey\":\"B\",\"optionName\":\"<p>1</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1820802813828005889\",\"optionKey\":\"C\",\"optionName\":\"<p>aa</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1820802813832200194\",\"optionKey\":\"D\",\"optionName\":\"<p>cc</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821531169358127105\",\"optionKey\":\"E\",\"optionName\":\"<p>你好</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821531169370710017\",\"optionKey\":\"F\",\"optionName\":\"<p>俄式</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":6}],\"correctOptionKey\":\"A\",\"difficulty\":\"5\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565849960450\",\"questionBankId\":\"1820802813756702722\",\"questionsAnalyze\":\"\",\"questionsType\":\"1\",\"score\":5,\"title\":\"<p>测试</p>\"}'),(1887675885331415041,'student','2025-02-07 09:32:57',NULL,NULL,0,'student','2',1887675885243334657,1822162565766074370,1821535105867620354,4.0,0.0,'B,D,E','A','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821535105913757698\",\"optionKey\":\"A\",\"optionName\":\"<p>A</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821535105922146306\",\"optionKey\":\"B\",\"optionName\":\"<p>B</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1821535105930534914\",\"optionKey\":\"C\",\"optionName\":\"<p>C</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1821535105938923522\",\"optionKey\":\"D\",\"optionName\":\"<p>D</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821537212712656897\",\"optionKey\":\"E\",\"optionName\":\"<p>asda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821538325155323906\",\"optionKey\":\"F\",\"optionName\":\"<p>asdasd</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":6},{\"answer\":\"\",\"id\":\"1821538325159518210\",\"optionKey\":\"G\",\"optionName\":\"<p>asdasda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":7}],\"correctOptionKey\":\"A\",\"difficulty\":\"4\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565862543362\",\"questionBankId\":\"1821535105867620354\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":4,\"title\":\"<p>我是题目</p>\"}'),(1887675885339803650,'student','2025-02-07 09:32:57',NULL,NULL,0,'student','2',1887675885243334657,1822162565766074370,1821539108718419969,2.0,0.0,'B','A','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821539108869414914\",\"optionKey\":\"A\",\"optionName\":\"<p>对</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821539108886192129\",\"optionKey\":\"B\",\"optionName\":\"<p>错</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":2}],\"correctOptionKey\":\"A\",\"difficulty\":\"2\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565870931970\",\"questionBankId\":\"1821539108718419969\",\"questionsAnalyze\":\"\",\"questionsType\":\"3\",\"score\":2,\"title\":\"<p>我是判断题</p>\"}'),(1887675885348192258,'student','2025-02-07 09:32:57',NULL,NULL,0,'student','2',1887675885243334657,1822162565766074370,1821892454463324161,2.0,0.0,'[{\"answer\":\"<p>1</p>\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2.0,\"sortField\":1},{\"answer\":\"<p>222</p>\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3.0,\"sortField\":2},{\"answer\":\"<p>333</p>\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3.0,\"sortField\":3}]','[{\"answer\":\"\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2,\"sortField\":1},{\"answer\":\"\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":2},{\"answer\":\"\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":3}]','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2,\"sortField\":1},{\"answer\":\"\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":2},{\"answer\":\"\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":3}],\"correctOptionKey\":\"\",\"difficulty\":\"3\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565879320577\",\"questionBankId\":\"1821892454463324161\",\"questionsAnalyze\":\"\",\"questionsType\":\"5\",\"score\":2,\"title\":\"<p>asd<span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"1\\\"><span class=\\\"fillintheblank-inner\\\">(__1__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"2\\\"><span class=\\\"fillintheblank-inner\\\">(__2__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"3\\\"><span class=\\\"fillintheblank-inner\\\">(__3__)</span></span></p>\"}'),(1887680556322258946,'student','2025-02-07 09:51:31',NULL,NULL,0,'student','2',1887680556301287426,1822162565766074370,1821898732937953282,5.0,0.0,'<p>我是大</p>','','{\"bankOptionsList\":[],\"correctOptionKey\":\"\",\"difficulty\":\"5\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565808017410\",\"questionBankId\":\"1821898732937953282\",\"questionsAnalyze\":\"\",\"questionsType\":\"4\",\"score\":5,\"title\":\"<p>简答题题目</p>\"}'),(1887680556330647553,'student','2025-02-07 09:51:31',NULL,NULL,0,'student','2',1887680556301287426,1822162565766074370,1822144719543631874,2.0,0.0,'CC,AA','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1822144719614935041\",\"optionKey\":\"AA\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1822144719623323649\",\"optionKey\":\"BB\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1822144719627517954\",\"optionKey\":\"CC\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1822144719631712258\",\"optionKey\":\"DD\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":4}],\"correctOptionKey\":\"\",\"difficulty\":\"4\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565824794626\",\"questionBankId\":\"1822144719543631874\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":2,\"title\":\"<p>test</p>\"}'),(1887680556339036161,'student','2025-02-07 09:51:31',NULL,NULL,0,'student','2',1887680556301287426,1822162565766074370,1820802813756702722,5.0,0.0,'B','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1820802813807034369\",\"optionKey\":\"A\",\"optionName\":\"<p>测试</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1820802813815422977\",\"optionKey\":\"B\",\"optionName\":\"<p>1</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1820802813828005889\",\"optionKey\":\"C\",\"optionName\":\"<p>aa</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1820802813832200194\",\"optionKey\":\"D\",\"optionName\":\"<p>cc</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821531169358127105\",\"optionKey\":\"E\",\"optionName\":\"<p>你好</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821531169370710017\",\"optionKey\":\"F\",\"optionName\":\"<p>俄式</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":6}],\"correctOptionKey\":\"\",\"difficulty\":\"5\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565849960450\",\"questionBankId\":\"1820802813756702722\",\"questionsAnalyze\":\"\",\"questionsType\":\"1\",\"score\":5,\"title\":\"<p>测试</p>\"}'),(1887680556351619073,'student','2025-02-07 09:51:31',NULL,NULL,0,'student','2',1887680556301287426,1822162565766074370,1821535105867620354,4.0,0.0,'B,D,E','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821535105913757698\",\"optionKey\":\"A\",\"optionName\":\"<p>A</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821535105922146306\",\"optionKey\":\"B\",\"optionName\":\"<p>B</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1821535105930534914\",\"optionKey\":\"C\",\"optionName\":\"<p>C</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1821535105938923522\",\"optionKey\":\"D\",\"optionName\":\"<p>D</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821537212712656897\",\"optionKey\":\"E\",\"optionName\":\"<p>asda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821538325155323906\",\"optionKey\":\"F\",\"optionName\":\"<p>asdasd</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":6},{\"answer\":\"\",\"id\":\"1821538325159518210\",\"optionKey\":\"G\",\"optionName\":\"<p>asdasda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":7}],\"correctOptionKey\":\"\",\"difficulty\":\"4\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565862543362\",\"questionBankId\":\"1821535105867620354\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":4,\"title\":\"<p>我是题目</p>\"}'),(1887680556364201985,'student','2025-02-07 09:51:31',NULL,NULL,0,'student','2',1887680556301287426,1822162565766074370,1821539108718419969,2.0,0.0,'B','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821539108869414914\",\"optionKey\":\"A\",\"optionName\":\"<p>对</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821539108886192129\",\"optionKey\":\"B\",\"optionName\":\"<p>错</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":2}],\"correctOptionKey\":\"\",\"difficulty\":\"2\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565870931970\",\"questionBankId\":\"1821539108718419969\",\"questionsAnalyze\":\"\",\"questionsType\":\"3\",\"score\":2,\"title\":\"<p>我是判断题</p>\"}'),(1887680556376784897,'student','2025-02-07 09:51:31',NULL,NULL,0,'student','2',1887680556301287426,1822162565766074370,1821892454463324161,2.0,0.0,'[{\"answer\":\"<p>1</p>\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2.0,\"sortField\":1},{\"answer\":\"<p>222</p>\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3.0,\"sortField\":2},{\"answer\":\"<p>333</p>\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3.0,\"sortField\":3}]','[{\"answer\":\"\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2,\"sortField\":1},{\"answer\":\"\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":2},{\"answer\":\"\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":3}]','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2,\"sortField\":1},{\"answer\":\"\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":2},{\"answer\":\"\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":3}],\"correctOptionKey\":\"\",\"difficulty\":\"3\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565879320577\",\"questionBankId\":\"1821892454463324161\",\"questionsAnalyze\":\"\",\"questionsType\":\"5\",\"score\":2,\"title\":\"<p>asd<span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"1\\\"><span class=\\\"fillintheblank-inner\\\">(__1__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"2\\\"><span class=\\\"fillintheblank-inner\\\">(__2__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"3\\\"><span class=\\\"fillintheblank-inner\\\">(__3__)</span></span></p>\"}'),(1887680722806767618,'student','2025-02-07 09:52:10',NULL,NULL,0,'student','2',1887680722785796097,1822162565766074370,1821898732937953282,5.0,0.0,'<p>我是大</p>','','{\"bankOptionsList\":[],\"correctOptionKey\":\"\",\"difficulty\":\"5\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565808017410\",\"questionBankId\":\"1821898732937953282\",\"questionsAnalyze\":\"\",\"questionsType\":\"4\",\"score\":5,\"title\":\"<p>简答题题目</p>\"}'),(1887680722815156226,'student','2025-02-07 09:52:10',NULL,NULL,0,'student','2',1887680722785796097,1822162565766074370,1822144719543631874,2.0,0.0,'CC,AA','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1822144719614935041\",\"optionKey\":\"AA\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1822144719623323649\",\"optionKey\":\"BB\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1822144719627517954\",\"optionKey\":\"CC\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1822144719631712258\",\"optionKey\":\"DD\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":4}],\"correctOptionKey\":\"\",\"difficulty\":\"4\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565824794626\",\"questionBankId\":\"1822144719543631874\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":2,\"title\":\"<p>test</p>\"}'),(1887680722823544833,'student','2025-02-07 09:52:10',NULL,NULL,0,'student','2',1887680722785796097,1822162565766074370,1820802813756702722,5.0,0.0,'B','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1820802813807034369\",\"optionKey\":\"A\",\"optionName\":\"<p>测试</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1820802813815422977\",\"optionKey\":\"B\",\"optionName\":\"<p>1</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1820802813828005889\",\"optionKey\":\"C\",\"optionName\":\"<p>aa</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1820802813832200194\",\"optionKey\":\"D\",\"optionName\":\"<p>cc</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821531169358127105\",\"optionKey\":\"E\",\"optionName\":\"<p>你好</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821531169370710017\",\"optionKey\":\"F\",\"optionName\":\"<p>俄式</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":6}],\"correctOptionKey\":\"\",\"difficulty\":\"5\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565849960450\",\"questionBankId\":\"1820802813756702722\",\"questionsAnalyze\":\"\",\"questionsType\":\"1\",\"score\":5,\"title\":\"<p>测试</p>\"}'),(1887680722831933441,'student','2025-02-07 09:52:10',NULL,NULL,0,'student','2',1887680722785796097,1822162565766074370,1821535105867620354,4.0,0.0,'B,D,E','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821535105913757698\",\"optionKey\":\"A\",\"optionName\":\"<p>A</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821535105922146306\",\"optionKey\":\"B\",\"optionName\":\"<p>B</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1821535105930534914\",\"optionKey\":\"C\",\"optionName\":\"<p>C</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1821535105938923522\",\"optionKey\":\"D\",\"optionName\":\"<p>D</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821537212712656897\",\"optionKey\":\"E\",\"optionName\":\"<p>asda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821538325155323906\",\"optionKey\":\"F\",\"optionName\":\"<p>asdasd</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":6},{\"answer\":\"\",\"id\":\"1821538325159518210\",\"optionKey\":\"G\",\"optionName\":\"<p>asdasda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":7}],\"correctOptionKey\":\"\",\"difficulty\":\"4\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565862543362\",\"questionBankId\":\"1821535105867620354\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":4,\"title\":\"<p>我是题目</p>\"}'),(1887680722857099265,'student','2025-02-07 09:52:10',NULL,NULL,0,'student','2',1887680722785796097,1822162565766074370,1821539108718419969,2.0,0.0,'B','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821539108869414914\",\"optionKey\":\"A\",\"optionName\":\"<p>对</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821539108886192129\",\"optionKey\":\"B\",\"optionName\":\"<p>错</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":2}],\"correctOptionKey\":\"\",\"difficulty\":\"2\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565870931970\",\"questionBankId\":\"1821539108718419969\",\"questionsAnalyze\":\"\",\"questionsType\":\"3\",\"score\":2,\"title\":\"<p>我是判断题</p>\"}'),(1887680722869682177,'student','2025-02-07 09:52:10',NULL,NULL,0,'student','2',1887680722785796097,1822162565766074370,1821892454463324161,2.0,0.0,'[{\"answer\":\"<p>1</p>\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2.0,\"sortField\":1},{\"answer\":\"<p>222</p>\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3.0,\"sortField\":2},{\"answer\":\"<p>333</p>\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3.0,\"sortField\":3}]','[{\"answer\":\"\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2,\"sortField\":1},{\"answer\":\"\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":2},{\"answer\":\"\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":3}]','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2,\"sortField\":1},{\"answer\":\"\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":2},{\"answer\":\"\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":3}],\"correctOptionKey\":\"\",\"difficulty\":\"3\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565879320577\",\"questionBankId\":\"1821892454463324161\",\"questionsAnalyze\":\"\",\"questionsType\":\"5\",\"score\":2,\"title\":\"<p>asd<span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"1\\\"><span class=\\\"fillintheblank-inner\\\">(__1__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"2\\\"><span class=\\\"fillintheblank-inner\\\">(__2__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"3\\\"><span class=\\\"fillintheblank-inner\\\">(__3__)</span></span></p>\"}'),(1887681599898648578,'student','2025-02-07 09:55:40',NULL,NULL,0,'student','2',1887681599877677058,1822162565766074370,1821898732937953282,5.0,0.0,'<p>我是大</p>','','{\"bankOptionsList\":[],\"correctOptionKey\":\"\",\"difficulty\":\"5\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565808017410\",\"questionBankId\":\"1821898732937953282\",\"questionsAnalyze\":\"\",\"questionsType\":\"4\",\"score\":5,\"title\":\"<p>简答题题目</p>\"}'),(1887681599915425794,'student','2025-02-07 09:55:40',NULL,NULL,0,'student','2',1887681599877677058,1822162565766074370,1822144719543631874,2.0,0.0,'CC,AA','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1822144719614935041\",\"optionKey\":\"AA\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1822144719623323649\",\"optionKey\":\"BB\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1822144719627517954\",\"optionKey\":\"CC\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1822144719631712258\",\"optionKey\":\"DD\",\"questionsBankId\":\"1822144719543631874\",\"sortField\":4}],\"correctOptionKey\":\"\",\"difficulty\":\"4\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565824794626\",\"questionBankId\":\"1822144719543631874\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":2,\"title\":\"<p>test</p>\"}'),(1887681599928008706,'student','2025-02-07 09:55:40',NULL,NULL,0,'student','2',1887681599877677058,1822162565766074370,1820802813756702722,5.0,0.0,'B','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1820802813807034369\",\"optionKey\":\"A\",\"optionName\":\"<p>测试</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1820802813815422977\",\"optionKey\":\"B\",\"optionName\":\"<p>1</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1820802813828005889\",\"optionKey\":\"C\",\"optionName\":\"<p>aa</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1820802813832200194\",\"optionKey\":\"D\",\"optionName\":\"<p>cc</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821531169358127105\",\"optionKey\":\"E\",\"optionName\":\"<p>你好</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821531169370710017\",\"optionKey\":\"F\",\"optionName\":\"<p>俄式</p>\",\"questionsBankId\":\"1820802813756702722\",\"sortField\":6}],\"correctOptionKey\":\"\",\"difficulty\":\"5\",\"disciplineId\":\"1818982717235449858\",\"gradeClassId\":\"1818643685466750978\",\"id\":\"1822162565849960450\",\"questionBankId\":\"1820802813756702722\",\"questionsAnalyze\":\"\",\"questionsType\":\"1\",\"score\":5,\"title\":\"<p>测试</p>\"}'),(1887681599940591617,'student','2025-02-07 09:55:40',NULL,NULL,0,'student','2',1887681599877677058,1822162565766074370,1821535105867620354,4.0,0.0,'B,D,E','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821535105913757698\",\"optionKey\":\"A\",\"optionName\":\"<p>A</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821535105922146306\",\"optionKey\":\"B\",\"optionName\":\"<p>B</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":2},{\"answer\":\"\",\"id\":\"1821535105930534914\",\"optionKey\":\"C\",\"optionName\":\"<p>C</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":3},{\"answer\":\"\",\"id\":\"1821535105938923522\",\"optionKey\":\"D\",\"optionName\":\"<p>D</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":4},{\"answer\":\"\",\"id\":\"1821537212712656897\",\"optionKey\":\"E\",\"optionName\":\"<p>asda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":5},{\"answer\":\"\",\"id\":\"1821538325155323906\",\"optionKey\":\"F\",\"optionName\":\"<p>asdasd</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":6},{\"answer\":\"\",\"id\":\"1821538325159518210\",\"optionKey\":\"G\",\"optionName\":\"<p>asdasda</p>\",\"questionsBankId\":\"1821535105867620354\",\"sortField\":7}],\"correctOptionKey\":\"\",\"difficulty\":\"4\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565862543362\",\"questionBankId\":\"1821535105867620354\",\"questionsAnalyze\":\"\",\"questionsType\":\"2\",\"score\":4,\"title\":\"<p>我是题目</p>\"}'),(1887681599953174530,'student','2025-02-07 09:55:40',NULL,NULL,0,'student','2',1887681599877677058,1822162565766074370,1821539108718419969,2.0,0.0,'B','','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821539108869414914\",\"optionKey\":\"A\",\"optionName\":\"<p>对</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":1},{\"answer\":\"\",\"id\":\"1821539108886192129\",\"optionKey\":\"B\",\"optionName\":\"<p>错</p>\",\"questionsBankId\":\"1821539108718419969\",\"sortField\":2}],\"correctOptionKey\":\"\",\"difficulty\":\"2\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565870931970\",\"questionBankId\":\"1821539108718419969\",\"questionsAnalyze\":\"\",\"questionsType\":\"3\",\"score\":2,\"title\":\"<p>我是判断题</p>\"}'),(1887681599965757441,'student','2025-02-07 09:55:40',NULL,NULL,0,'student','2',1887681599877677058,1822162565766074370,1821892454463324161,2.0,0.0,'[{\"answer\":\"<p>1</p>\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2.0,\"sortField\":1},{\"answer\":\"<p>222</p>\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3.0,\"sortField\":2},{\"answer\":\"<p>333</p>\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3.0,\"sortField\":3}]','[{\"answer\":\"\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2,\"sortField\":1},{\"answer\":\"\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":2},{\"answer\":\"\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":3}]','{\"bankOptionsList\":[{\"answer\":\"\",\"id\":\"1821892454492684290\",\"optionKey\":\"1\",\"questionsBankId\":\"1821892454463324161\",\"score\":2,\"sortField\":1},{\"answer\":\"\",\"id\":\"1821892454509461505\",\"optionKey\":\"2\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":2},{\"answer\":\"\",\"id\":\"1821892454522044418\",\"optionKey\":\"3\",\"questionsBankId\":\"1821892454463324161\",\"score\":3,\"sortField\":3}],\"correctOptionKey\":\"\",\"difficulty\":\"3\",\"disciplineId\":\"1818982947838283777\",\"gradeClassId\":\"1818982864833007618\",\"id\":\"1822162565879320577\",\"questionBankId\":\"1821892454463324161\",\"questionsAnalyze\":\"\",\"questionsType\":\"5\",\"score\":2,\"title\":\"<p>asd<span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"1\\\"><span class=\\\"fillintheblank-inner\\\">(__1__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"2\\\"><span class=\\\"fillintheblank-inner\\\">(__2__)</span></span><span class=\\\"mceNonEditable fillintheblank-placeholder\\\" data-mce-bogus=\\\"1\\\" data-id=\\\"3\\\"><span class=\\\"fillintheblank-inner\\\">(__3__)</span></span></p>\"}');
/*!40000 ALTER TABLE `tb_paper_record_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_paper_task`
--

DROP TABLE IF EXISTS `tb_paper_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_paper_task` (
  `id` bigint NOT NULL COMMENT '主键',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int DEFAULT '0' COMMENT '逻辑删除',
  `grade_class_id` bigint DEFAULT NULL COMMENT '年级ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `associated_paper_ids` longtext COMMENT '关联试卷ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='试卷任务管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_paper_task`
--

LOCK TABLES `tb_paper_task` WRITE;
/*!40000 ALTER TABLE `tb_paper_task` DISABLE KEYS */;
INSERT INTO `tb_paper_task` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `del_flag`, `grade_class_id`, `title`, `associated_paper_ids`) VALUES (1822977269166055426,'admin','2024-08-12 20:43:45',NULL,'2024-08-12 20:49:06',1,1818643685466750978,'期中考试','1822966587838205953'),(1824012141682794498,'admin','2024-08-15 17:15:58',NULL,NULL,0,1818643685466750978,'期中考试','1822966587838205953');
/*!40000 ALTER TABLE `tb_paper_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_questions_bank`
--

DROP TABLE IF EXISTS `tb_questions_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_questions_bank` (
  `id` bigint NOT NULL COMMENT '主键',
  `created_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int DEFAULT '0' COMMENT '逻辑删除',
  `grade_class_id` bigint DEFAULT NULL COMMENT '年级ID',
  `discipline_id` bigint DEFAULT NULL COMMENT '学科ID',
  `title` longtext COMMENT '题目',
  `questions_type` char(1) DEFAULT NULL COMMENT '题目类型：1.单选、2.多选、3.判断、4.简答、5.填空',
  `correct_option_key` longtext COMMENT '正确选项',
  `questions_analyze` longtext COMMENT '题目解析',
  `score` decimal(10,1) DEFAULT NULL COMMENT '分数',
  `difficulty` varchar(12) DEFAULT NULL COMMENT '难度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='题库管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_questions_bank`
--

LOCK TABLES `tb_questions_bank` WRITE;
/*!40000 ALTER TABLE `tb_questions_bank` DISABLE KEYS */;
INSERT INTO `tb_questions_bank` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `del_flag`, `grade_class_id`, `discipline_id`, `title`, `questions_type`, `correct_option_key`, `questions_analyze`, `score`, `difficulty`) VALUES (1820802813756702722,'admin','2024-07-06 20:43:14',NULL,'2024-08-07 19:43:32',0,1818643685466750978,1818982717235449858,'<p>测试</p>','1','B','<p>asdasdad</p>',5.0,'5'),(1821535105867620354,'admin','2024-08-08 21:13:06',NULL,'2024-08-08 21:21:16',0,1818982864833007618,1818982947838283777,'<p>我是题目</p>','2','B,D,E','<p>答对啦！</p>',4.0,'4'),(1821539108718419969,'admin','2024-08-08 21:29:01',NULL,'2024-08-08 21:29:07',0,1818982864833007618,1818982947838283777,'<p>我是判断题</p>','3','B','<p>对啦</p>',2.0,'2'),(1821892454463324161,'admin','2024-08-09 20:53:05',NULL,'2024-08-09 20:53:29',0,1818982864833007618,1818982947838283777,'<p>asd<span class=\"mceNonEditable fillintheblank-placeholder\" data-mce-bogus=\"1\" data-id=\"1\"><span class=\"fillintheblank-inner\">(__1__)</span></span><span class=\"mceNonEditable fillintheblank-placeholder\" data-mce-bogus=\"1\" data-id=\"2\"><span class=\"fillintheblank-inner\">(__2__)</span></span><span class=\"mceNonEditable fillintheblank-placeholder\" data-mce-bogus=\"1\" data-id=\"3\"><span class=\"fillintheblank-inner\">(__3__)</span></span></p>','5',NULL,'<p>asdad</p>',2.0,'3'),(1821898732937953282,'admin','2024-08-09 21:18:02',NULL,'2024-08-09 21:18:08',0,1818982864833007618,1818982947838283777,'<p>简答题题目</p>','4','<p>我是大</p>','<p>解析</p>',5.0,'5'),(1822144719543631874,'admin','2024-09-10 13:35:30',NULL,NULL,0,1818643685466750978,1818982717235449858,'<p>test</p>','2','CC,AA','<p>asd</p>',2.0,'4');
/*!40000 ALTER TABLE `tb_questions_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_questions_bank_options`
--

DROP TABLE IF EXISTS `tb_questions_bank_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_questions_bank_options` (
  `id` bigint NOT NULL COMMENT '主键',
  `questions_bank_id` bigint DEFAULT NULL COMMENT '题库ID',
  `sort_field` int DEFAULT NULL COMMENT '排序字段',
  `option_key` varchar(12) DEFAULT NULL COMMENT '选项key',
  `option_name` longtext COMMENT '选项名',
  `answer` longtext COMMENT '答案',
  `score` decimal(10,1) DEFAULT NULL COMMENT '分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='题库选项管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_questions_bank_options`
--

LOCK TABLES `tb_questions_bank_options` WRITE;
/*!40000 ALTER TABLE `tb_questions_bank_options` DISABLE KEYS */;
INSERT INTO `tb_questions_bank_options` (`id`, `questions_bank_id`, `sort_field`, `option_key`, `option_name`, `answer`, `score`) VALUES (1820802813807034369,1820802813756702722,1,'A','<p>测试</p>',NULL,NULL),(1820802813815422977,1820802813756702722,2,'B','<p>1</p>',NULL,NULL),(1820802813828005889,1820802813756702722,3,'C','<p>aa</p>',NULL,NULL),(1820802813832200194,1820802813756702722,4,'D','<p>cc</p>',NULL,NULL),(1821531169358127105,1820802813756702722,5,'E','<p>你好</p>',NULL,NULL),(1821531169370710017,1820802813756702722,6,'F','<p>俄式</p>',NULL,NULL),(1821535105913757698,1821535105867620354,1,'A','<p>A</p>',NULL,NULL),(1821535105922146306,1821535105867620354,2,'B','<p>B</p>',NULL,NULL),(1821535105930534914,1821535105867620354,3,'C','<p>C</p>',NULL,NULL),(1821535105938923522,1821535105867620354,4,'D','<p>D</p>',NULL,NULL),(1821537212712656897,1821535105867620354,5,'E','<p>asda</p>',NULL,NULL),(1821538325155323906,1821535105867620354,6,'F','<p>asdasd</p>',NULL,NULL),(1821538325159518210,1821535105867620354,7,'G','<p>asdasda</p>',NULL,NULL),(1821539108869414914,1821539108718419969,1,'A','<p>对</p>',NULL,NULL),(1821539108886192129,1821539108718419969,2,'B','<p>错</p>',NULL,NULL),(1821892454492684290,1821892454463324161,1,'1',NULL,'<p>1</p>',2.0),(1821892454509461505,1821892454463324161,2,'2',NULL,'<p>222</p>',3.0),(1821892454522044418,1821892454463324161,3,'3',NULL,'<p>333</p>',3.0),(1822144719614935041,1822144719543631874,1,'AA',NULL,NULL,NULL),(1822144719623323649,1822144719543631874,2,'BB',NULL,NULL,NULL),(1822144719627517954,1822144719543631874,3,'CC',NULL,NULL,NULL),(1822144719631712258,1822144719543631874,4,'DD',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tb_questions_bank_options` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-12 13:42:30

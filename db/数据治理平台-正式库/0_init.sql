-- 创建数据库
CREATE DATABASE IF NOT EXISTS zj_itsm DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
-- 使用zj_itsm数据库
USE zj_itsm;

-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 10.24.207.80    Database: zj_itsm
-- ------------------------------------------------------
-- Server version	5.5.5-10.7.1-MariaDB-1:10.7.1+maria~focal

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

--
-- Table structure for table `ci_type`
--

DROP TABLE IF EXISTS `ci_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ci_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统自增ID',
  `type_name` varchar(1000) DEFAULT NULL COMMENT '配置项类型名',
  `task_create_time` datetime DEFAULT current_timestamp() COMMENT '定时任务执行时间',
  `type_id` int(6) DEFAULT NULL COMMENT '配置项属性ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36823 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ci_type_detail`
--

DROP TABLE IF EXISTS `ci_type_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ci_type_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统自增ID',
  `type_name` varchar(255) DEFAULT NULL COMMENT '配置项类型名',
  `common_name` varchar(255) DEFAULT NULL COMMENT '配置项名',
  `update_date` datetime DEFAULT current_timestamp() COMMENT '更新日期',
  `create_date` datetime DEFAULT current_timestamp() COMMENT '创建日期',
  `task_create_time` datetime DEFAULT current_timestamp() COMMENT '任务执行时间',
  `common_id` int(11) DEFAULT NULL COMMENT '配置项ID',
  `common_number` int(11) DEFAULT NULL COMMENT '配置项编号',
  `common_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2717415 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_add_knowledge`
--

DROP TABLE IF EXISTS `dm_add_knowledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_add_knowledge` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='新增知识条目数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_affair_time_length`
--

DROP TABLE IF EXISTS `dm_affair_time_length`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_affair_time_length` (
  `ftitle` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '后台事务名称',
  `fstartedtime` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '开始时间',
  `time_length` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '处理时长',
  `standard_time_length` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '处理标准时长',
  `currenttime` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '当前时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='后台事务处理时长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_change_count`
--

DROP TABLE IF EXISTS `dm_change_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_change_count` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `sys_name` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '系统名称',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='5大A类系统系统变更数量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_change_detail`
--

DROP TABLE IF EXISTS `dm_change_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_change_detail` (
  `yyyy` longtext COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` longtext COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `sys_name` longtext COLLATE utf8mb3_bin DEFAULT NULL COMMENT '系统',
  `applytime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '申请时间',
  `title` longtext COLLATE utf8mb3_bin DEFAULT NULL COMMENT '标题',
  `person` longtext COLLATE utf8mb3_bin DEFAULT NULL COMMENT '负责人',
  `result` longtext COLLATE utf8mb3_bin DEFAULT NULL COMMENT '变更发布结果',
  `change_type` varchar(256) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '变更类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='变更明细_系统变更清单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_change_detail_sys`
--

DROP TABLE IF EXISTS `dm_change_detail_sys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_change_detail_sys` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `sys_name` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '系统',
  `qty` int(11) DEFAULT NULL COMMENT '变更数量',
  `lv` double(100,2) DEFAULT NULL COMMENT '变更失败率',
  `content` longtext COLLATE utf8mb3_bin DEFAULT NULL,
  `person` longtext COLLATE utf8mb3_bin DEFAULT NULL,
  `jjqty` int(11) DEFAULT NULL COMMENT '紧急变更数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='系统变更清单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_change_fail_lv`
--

DROP TABLE IF EXISTS `dm_change_fail_lv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_change_fail_lv` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `sum` int(11) DEFAULT NULL COMMENT '总数',
  `lv` double(100,2) DEFAULT NULL COMMENT '失败率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='变更失败率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_close_qty`
--

DROP TABLE IF EXISTS `dm_close_qty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_close_qty` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `isclose` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '是否关闭',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='关闭未关闭数量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_event_change_lv`
--

DROP TABLE IF EXISTS `dm_event_change_lv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_event_change_lv` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `sum` int(11) DEFAULT NULL COMMENT '总数量',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `lv` double(100,2) DEFAULT NULL COMMENT '转变更率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='事件转变更率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_event_count`
--

DROP TABLE IF EXISTS `dm_event_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_event_count` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `event_type` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '事件类型',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='事件统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_event_problem_lv`
--

DROP TABLE IF EXISTS `dm_event_problem_lv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_event_problem_lv` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `sum` int(11) DEFAULT NULL COMMENT '总数量',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `lv` double(100,2) DEFAULT NULL COMMENT '转变更率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='事件转问题率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_host_status`
--

DROP TABLE IF EXISTS `dm_host_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_host_status` (
  `status_en_name` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '状态',
  `status_name` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '状态名',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='服务器运行状态';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_knowledge_source`
--

DROP TABLE IF EXISTS `dm_knowledge_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_knowledge_source` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `source` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '来源',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='按照知识来源统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_knowledge_top`
--

DROP TABLE IF EXISTS `dm_knowledge_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_knowledge_top` (
  `knowledge_name` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '知识名称',
  `qty` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '浏览数量',
  `yyyymmdd` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='知识浏览量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_knowledge_type`
--

DROP TABLE IF EXISTS `dm_knowledge_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_knowledge_type` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `knowledge_type` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '知识类型',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='按照知识类别统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_nine_type_envent`
--

DROP TABLE IF EXISTS `dm_nine_type_envent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_nine_type_envent` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `sys_name` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '系统名称',
  `qty` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='9大类别事件数量统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_problem_change_lv`
--

DROP TABLE IF EXISTS `dm_problem_change_lv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_problem_change_lv` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `sum` int(11) DEFAULT NULL COMMENT '总数',
  `lv` double(100,2) DEFAULT NULL COMMENT '解决率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='问题转变更率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_problem_detail`
--

DROP TABLE IF EXISTS `dm_problem_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_problem_detail` (
  `problem_content` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '问题内容',
  `f_submitdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '创建日期',
  `f_completedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '完成日期',
  `handle_time` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '处理时长',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `person` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '处理人',
  `isclose` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '是否关闭',
  `isJiejue` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '是否解决',
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='问题清单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_problem_knowledge_lv`
--

DROP TABLE IF EXISTS `dm_problem_knowledge_lv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_problem_knowledge_lv` (
  `yyyymm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年月',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `sum` int(11) DEFAULT NULL COMMENT '总数',
  `lv` double(100,2) DEFAULT NULL COMMENT '解决率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='问题转变知识率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_problem_lv`
--

DROP TABLE IF EXISTS `dm_problem_lv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_problem_lv` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `sum` int(11) DEFAULT NULL COMMENT '总数',
  `lv` double(16,2) DEFAULT NULL COMMENT '解决率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='问题解决率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_problem_qty`
--

DROP TABLE IF EXISTS `dm_problem_qty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_problem_qty` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='问题数量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_satisfaction_count`
--

DROP TABLE IF EXISTS `dm_satisfaction_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_satisfaction_count` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `sum` int(11) DEFAULT NULL COMMENT '总数量',
  `qty` int(11) DEFAULT NULL COMMENT '满意数量',
  `lv` double(100,2) DEFAULT NULL COMMENT '满意率',
  `event_type` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '事件类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='满意度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_service_status`
--

DROP TABLE IF EXISTS `dm_service_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_service_status` (
  `status_en_name` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '状态',
  `status_name` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '状态名',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='服务运行状态';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_sfrlsj_lv`
--

DROP TABLE IF EXISTS `dm_sfrlsj_lv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_sfrlsj_lv` (
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `sum` int(11) DEFAULT NULL COMMENT '总数量',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `lv` double(100,4) DEFAULT NULL COMMENT '资源不足工单率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='容量管理资源不足工单率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_sla_lv`
--

DROP TABLE IF EXISTS `dm_sla_lv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_sla_lv` (
  `event_type` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '事件类型',
  `yyyy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '月',
  `sum` int(11) DEFAULT NULL COMMENT '总数量',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `lv` double(100,2) DEFAULT NULL COMMENT 'sla达标率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='sla达标率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tc_and_eas_data`
--

DROP TABLE IF EXISTS `dm_tc_and_eas_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tc_and_eas_data` (
  `service_type` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '服务类别',
  `fail_qty` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '订阅失败',
  `unhandled_qty` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '未处理数量',
  `start_sysy` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '源系统',
  `end_sys` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '目标系统'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='TC和EAS数据流转完整性';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `st_change_flow_lv_excel`
--

DROP TABLE IF EXISTS `st_change_flow_lv_excel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_change_flow_lv_excel` (
  `流程模块` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `指标名称` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `指标数量` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `统计频率` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `年月日` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='变更流程执行率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `st_sys_peizhi_lv_excel`
--

DROP TABLE IF EXISTS `st_sys_peizhi_lv_excel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_sys_peizhi_lv_excel` (
  `sys_name` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '系统',
  `lv` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '符合率',
  `yyyymmdd` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='ITSM配置管理--各系统配置项符合率统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `st_sys_target_data_excel`
--

DROP TABLE IF EXISTS `st_sys_target_data_excel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_sys_target_data_excel` (
  `流程模块` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `指标名称` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `系统名称` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `指标数量` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `统计频率` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='运维工作总览表2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `st_target_data_excel`
--

DROP TABLE IF EXISTS `st_target_data_excel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_target_data_excel` (
  `流程模块` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `指标名称` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `指标数量` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `统计频率` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='运维工作总览表1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `v_cmdb_peizhi`
--

DROP TABLE IF EXISTS `v_cmdb_peizhi`;
/*!50001 DROP VIEW IF EXISTS `v_cmdb_peizhi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_cmdb_peizhi` AS SELECT 
 1 AS `yyyymm`,
 1 AS `type_name`,
 1 AS `num`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'zj_itsm'
--

--
-- Final view structure for view `v_cmdb_peizhi`
--

/*!50001 DROP VIEW IF EXISTS `v_cmdb_peizhi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_cmdb_peizhi` AS select substr(`ci_type_detail`.`create_date`,1,7) AS `yyyymm`,`ci_type_detail`.`type_name` AS `type_name`,count(0) AS `num` from `ci_type_detail` group by `ci_type_detail`.`type_name`,substr(`ci_type_detail`.`create_date`,1,7) order by substr(`ci_type_detail`.`create_date`,1,7) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-06 10:25:51


CREATE DATABASE IF NOT EXISTS excel_data DEFAULT CHARACTER
SET
    utf8mb4 COLLATE utf8mb4_general_ci;

-- 使用excel_data数据库
USE excel_data;

-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 10.24.207.80    Database: excel_data
-- ------------------------------------------------------
-- Server version	5.5.5-10.7.1-MariaDB-1:10.7.1+maria~focal

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

--
-- Table structure for table `census_information`
--

DROP TABLE IF EXISTS `census_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `census_information` (
  `plan_no` varchar(1000) DEFAULT NULL COMMENT '计划编号',
  `task_name` varchar(1000) DEFAULT NULL COMMENT '普查任务名称',
  `module` varchar(1000) DEFAULT NULL COMMENT '板块',
  `process_dept` varchar(1000) DEFAULT NULL COMMENT '执行单位',
  `Allocation_dept` varchar(1000) DEFAULT NULL COMMENT '配属局',
  `service_site` varchar(1000) DEFAULT NULL COMMENT '服务点',
  `car_type` varchar(1000) DEFAULT NULL COMMENT '车型',
  `car_group_no` varchar(1000) DEFAULT NULL COMMENT '车组号',
  `car_no` varchar(1000) DEFAULT NULL COMMENT '车号',
  `start_time` varchar(100) DEFAULT NULL COMMENT '计划开始段改时间',
  `end_time` varchar(100) DEFAULT NULL COMMENT '计划完成段改时间',
  `close_time` varchar(100) DEFAULT NULL COMMENT '计划关闭时间',
  `executor` varchar(1000) DEFAULT NULL COMMENT '执行人',
  `status` varchar(1000) DEFAULT NULL COMMENT '状态',
  `remark` varchar(1000) DEFAULT NULL COMMENT '说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_complaint`
--

DROP TABLE IF EXISTS `customer_complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_complaint` (
  `feedback_time` varchar(100) DEFAULT NULL COMMENT '反馈时间',
  `complaint_level` varchar(1000) DEFAULT NULL COMMENT '投诉等级',
  `recive_dept` varchar(1000) DEFAULT NULL COMMENT '反馈接收部门',
  `lead_process_dept` varchar(1000) DEFAULT NULL COMMENT '牵头处置单位',
  `complaint_type` varchar(1000) DEFAULT NULL COMMENT '反馈类型',
  `module` varchar(1000) DEFAULT NULL COMMENT '板块',
  `project_name` varchar(1000) DEFAULT NULL COMMENT '项目名称',
  `feedback_info` varchar(1000) DEFAULT NULL COMMENT '反馈事宜简述',
  `process_dept` varchar(1000) DEFAULT NULL COMMENT '处理部门',
  `feedback_channel` varchar(1000) DEFAULT NULL COMMENT '反馈途径',
  `is_resovled` varchar(1000) DEFAULT NULL COMMENT '是否解决',
  `disposal_progress` varchar(1000) DEFAULT NULL COMMENT '处置进展',
  `expectd_close_time` varchar(100) DEFAULT NULL COMMENT '预计关闭时间',
  `is_attachment` varchar(1000) DEFAULT NULL COMMENT '是否有附件',
  `closed_time` varchar(100) DEFAULT NULL COMMENT '投诉关闭时间',
  `is_expected_close` varchar(1000) DEFAULT NULL COMMENT '是否按照预计关闭时间关闭'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `depot_transform`
--

DROP TABLE IF EXISTS `depot_transform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depot_transform` (
  `plan_no` varchar(1000) DEFAULT NULL COMMENT '计划编号',
  `task_name` varchar(1000) DEFAULT NULL COMMENT '段改任务名称',
  `module` varchar(1000) DEFAULT NULL COMMENT '板块',
  `process_dept` varchar(1000) DEFAULT NULL COMMENT '执行单位',
  `Allocation_dept` varchar(1000) DEFAULT NULL COMMENT '配属局',
  `service_site` varchar(1000) DEFAULT NULL COMMENT '服务点',
  `car_type` varchar(1000) DEFAULT NULL COMMENT '车型',
  `car_group` varchar(1000) DEFAULT NULL COMMENT '车组号',
  `car_na` varchar(1000) DEFAULT NULL COMMENT '车号',
  `start_time` varchar(100) DEFAULT NULL COMMENT '计划开始段改时间',
  `finish_time` varchar(100) DEFAULT NULL COMMENT '计划完成段改时间',
  `close_time` varchar(100) DEFAULT NULL COMMENT '计划关闭时间',
  `status` varchar(1000) DEFAULT NULL COMMENT '状态',
  `remark` varchar(1000) DEFAULT NULL COMMENT '说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_Million_km_fault_rate`
--

DROP TABLE IF EXISTS `dm_cs_Million_km_fault_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_Million_km_fault_rate` (
  `mon_year` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '年月',
  `car_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `indicator` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '指标',
  `indicator_value` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '指标值'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服百万公里故障率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_car_by_person`
--

DROP TABLE IF EXISTS `dm_cs_car_by_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_car_by_person` (
  `t_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '日期',
  `data_object` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '数据项',
  `data_value` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '数据值'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服人车比';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_complaint_info`
--

DROP TABLE IF EXISTS `dm_cs_complaint_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_complaint_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `complaint_num` int(11) DEFAULT NULL COMMENT '投诉量',
  `close_num` int(11) DEFAULT NULL COMMENT '关闭量',
  `close_rate` float DEFAULT NULL COMMENT '关闭率'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服客户投诉';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_expenses_analysis`
--

DROP TABLE IF EXISTS `dm_cs_expenses_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_expenses_analysis` (
  `t_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '时间',
  `car_num` int(11) DEFAULT NULL COMMENT '车辆数',
  `expense_type` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '费用类型',
  `total_expense` float DEFAULT NULL COMMENT '整体费用',
  `avg_expense` float DEFAULT NULL COMMENT '台车费用'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服整体费用分析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_expenses_analysis_by_cartype`
--

DROP TABLE IF EXISTS `dm_cs_expenses_analysis_by_cartype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_expenses_analysis_by_cartype` (
  `t_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '时间',
  `car_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `car_num` int(11) DEFAULT NULL COMMENT '车辆数',
  `total_expenses` float DEFAULT NULL COMMENT '总费用',
  `Travel_expenses` float DEFAULT NULL COMMENT '差旅费',
  `unit_cost` float DEFAULT NULL COMMENT '配件成本',
  `avg_Travel_expenses` float DEFAULT NULL COMMENT '台车差旅费',
  `avg_unit_cost` float DEFAULT NULL COMMENT '台车配件成本',
  `travel_flag` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '台车差旅费与均值差异范围',
  `unit_flag` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '台车配件成本与均值差异范围'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服费用分析（按车型）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_expenses_analysis_by_service_site`
--

DROP TABLE IF EXISTS `dm_cs_expenses_analysis_by_service_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_expenses_analysis_by_service_site` (
  `t_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '时间',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务点',
  `car_num` int(11) DEFAULT NULL COMMENT '车辆数',
  `total_expenses` float DEFAULT NULL COMMENT '总费用',
  `Travel_expenses` float DEFAULT NULL COMMENT '差旅费',
  `unit_cost` float DEFAULT NULL COMMENT '配件成本',
  `avg_Travel_expenses` float DEFAULT NULL COMMENT '台车差旅费',
  `avg_unit_cost` float DEFAULT NULL COMMENT '台车配件成本',
  `travel_flag` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '台车差旅费与均值差异范围',
  `unit_flag` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '台车配件成本与均值差异范围'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='按服务点费用分析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_fault_rank_info`
--

DROP TABLE IF EXISTS `dm_cs_fault_rank_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_fault_rank_info` (
  `t_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '日期',
  `module` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `rank_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '排名类型',
  `rank_object` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '排名对象',
  `rank_no` int(11) DEFAULT NULL COMMENT '排名'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服故障排名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_inform_info`
--

DROP TABLE IF EXISTS `dm_cs_inform_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_inform_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站点',
  `type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '通知类型',
  `title` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '通知标题',
  `summary` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '通知概要',
  `detial_info` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '通知详情'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_location`
--

DROP TABLE IF EXISTS `dm_cs_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_location` (
  `service_site` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '服务点名称',
  `module` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `loc_info` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '地址',
  `longitude_info` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '经度',
  `latitude` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '维度'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_notice_info`
--

DROP TABLE IF EXISTS `dm_cs_notice_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_notice_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站点',
  `type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '公告类型',
  `title` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '公告标题',
  `summary` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '公告概要',
  `detial_info` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '公告详情'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_notice_inform_info`
--

DROP TABLE IF EXISTS `dm_cs_notice_inform_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_notice_inform_info` (
  `type` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '类型',
  `title_code` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '公告编号',
  `title` varchar(5000) COLLATE utf16_bin DEFAULT NULL COMMENT '公告名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服公告通知信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_service_car_info`
--

DROP TABLE IF EXISTS `dm_cs_service_car_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_service_car_info` (
  `mon_year` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `region` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '国家/地区',
  `city` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '城市',
  `module` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站',
  `cat_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `car_group` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车组号',
  `mileage` int(11) DEFAULT NULL COMMENT '公里数',
  `is_zaibao` varchar(10) COLLATE utf16_bin DEFAULT NULL COMMENT '是否在保（1：在保 0：出保）',
  `is_weiqian_pac` varchar(10) COLLATE utf16_bin DEFAULT NULL COMMENT '是否未签pac车辆（1：是 0：否）',
  `is_pac_3_fac` varchar(10) COLLATE utf16_bin DEFAULT NULL COMMENT '是否PAC后3年未签FAC车(1:是 0：否)',
  `car_num` int(11) DEFAULT NULL COMMENT '车辆数'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服车辆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_service_site_after_sales_task`
--

DROP TABLE IF EXISTS `dm_cs_service_site_after_sales_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_service_site_after_sales_task` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站点',
  `task_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '任务类型',
  `finish_num` int(11) DEFAULT NULL COMMENT '已完成',
  `in_process_num` int(11) DEFAULT NULL COMMENT '实施中',
  `total_num` int(11) DEFAULT NULL COMMENT '总数'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服服务站售后任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_service_site_detial_info`
--

DROP TABLE IF EXISTS `dm_cs_service_site_detial_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_service_site_detial_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `region` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '国家/地区',
  `city` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '城市',
  `module` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站',
  `line_name` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '线路名称',
  `service_cartype` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务车型',
  `attach_cartype` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '配属车型',
  `over_period_num` int(11) DEFAULT NULL COMMENT '出质保车辆数',
  `in_period_num` int(11) DEFAULT NULL COMMENT '在保车辆数',
  `total_num` int(11) DEFAULT NULL COMMENT '车辆总数'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服服务站详情信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_service_site_fault_statistic`
--

DROP TABLE IF EXISTS `dm_cs_service_site_fault_statistic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_service_site_fault_statistic` (
  `t_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '日期',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站点',
  `statistic_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '统计方式',
  `sub_statistic_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '子类型',
  `fault_num` int(11) DEFAULT NULL COMMENT '故障数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服服务站故障统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_service_site_info`
--

DROP TABLE IF EXISTS `dm_cs_service_site_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_service_site_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `region` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '国家/地区',
  `city` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '城市',
  `moudle` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站',
  `site_master` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站长',
  `master_no` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站长工号',
  `master_tel` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站长电话',
  `on_duty_num` int(11) DEFAULT NULL COMMENT '常驻在岗人员数量',
  `off_duty_num` int(11) DEFAULT NULL COMMENT '常驻休假人员数量',
  `supply_num` int(11) DEFAULT NULL COMMENT '供应商人员数量',
  `special_num` int(11) DEFAULT NULL COMMENT '专项人员数量',
  `tech_num` int(11) DEFAULT NULL COMMENT '技术人员数量',
  `local_num` int(11) DEFAULT NULL COMMENT '属地化人员数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服服务站简要信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_staff_info`
--

DROP TABLE IF EXISTS `dm_cs_staff_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_staff_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `region` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '国家/地区',
  `city` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '城市',
  `module` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站',
  `name` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '姓名',
  `employee_no` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '工号',
  `status` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '状态',
  `sex` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '性别',
  `plotical_look` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '政治面貌',
  `edu` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '学历',
  `work_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '工种',
  `tech_level` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '技能等级',
  `age_level` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '年龄段',
  `travel_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '差旅类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服人员信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_unit_in_out_amount`
--

DROP TABLE IF EXISTS `dm_cs_unit_in_out_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_unit_in_out_amount` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `out_amount` float DEFAULT NULL COMMENT '出库金额',
  `in_amount` float DEFAULT NULL COMMENT '入库金额',
  `diff_amount` float DEFAULT NULL COMMENT '差额（入-出）'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服配件出入库金额';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cs_year_over_period_info`
--

DROP TABLE IF EXISTS `dm_cs_year_over_period_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cs_year_over_period_info` (
  `t_year` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '年份',
  `depot` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '配属站段',
  `car_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `car_no` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车号',
  `plan_over_period_time` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '计划出质保时间',
  `is_plan_over_period` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '是否计划出质保',
  `status` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '实际状态',
  `reason` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '未出质保原因'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='客服年度出质保情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_map_site_info`
--

DROP TABLE IF EXISTS `dm_map_site_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_map_site_info` (
  `company_type` varchar(32) COLLATE utf16_bin DEFAULT NULL,
  `module` varchar(32) COLLATE utf16_bin DEFAULT NULL,
  `service_site` varchar(128) COLLATE utf16_bin DEFAULT NULL,
  `site_info` text COLLATE utf16_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_module`
--

DROP TABLE IF EXISTS `dm_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_module` (
  `module` varchar(32) COLLATE utf16_bin DEFAULT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_car_distribution`
--

DROP TABLE IF EXISTS `dm_mt_car_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_car_distribution` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `total_car_num` int(11) DEFAULT NULL COMMENT '列车总数',
  `zheng_xian_num` int(11) DEFAULT NULL COMMENT '正线车辆',
  `ku_nei_onpower_num` int(11) DEFAULT NULL COMMENT '库内上电',
  `ku_nei_offlie_num` int(11) DEFAULT NULL COMMENT '库内离线'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保车辆分布';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_car_info`
--

DROP TABLE IF EXISTS `dm_mt_car_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_car_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '年月',
  `service_site` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '服务点',
  `cat_type` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `car_num` int(11) DEFAULT NULL COMMENT '车辆数'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保车辆数统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_car_use_rate`
--

DROP TABLE IF EXISTS `dm_mt_car_use_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_car_use_rate` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `line_name` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '线路',
  `ke_shangxian_num` int(11) DEFAULT NULL COMMENT '可上线',
  `kubei_che_num` int(11) DEFAULT NULL COMMENT '库备车',
  `kou_che_num` int(11) DEFAULT NULL COMMENT '扣车数'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保车辆利用率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_cost_analysis`
--

DROP TABLE IF EXISTS `dm_mt_cost_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_cost_analysis` (
  `tx_year` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '年份',
  `quarter` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '季度',
  `cost` float DEFAULT NULL COMMENT '成本对标',
  `cost_kpi` float DEFAULT NULL COMMENT '成本',
  `profit` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '利润率',
  `profit_kpi` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '利润率对标'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保成本分析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_ds_error_rate`
--

DROP TABLE IF EXISTS `dm_mt_ds_error_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_ds_error_rate` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `once_pass_rate` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '一次校验合格率'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_fault_analysis`
--

DROP TABLE IF EXISTS `dm_mt_fault_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_fault_analysis` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `fault_type` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '故障类型',
  `sub_fault_type` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '子类型',
  `nums` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保运营故障分析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_income_analysis`
--

DROP TABLE IF EXISTS `dm_mt_income_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_income_analysis` (
  `year` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '年份',
  `quarter` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '季度',
  `module` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `plan_amount` float DEFAULT NULL COMMENT '计划收入（万元）',
  `finish_amount` float DEFAULT NULL COMMENT '完成收入'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保经营收入分析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_mon_task_manage`
--

DROP TABLE IF EXISTS `dm_mt_mon_task_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_mon_task_manage` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `task_num` int(11) DEFAULT NULL COMMENT '任务数',
  `plan_close_num` int(11) DEFAULT NULL COMMENT '计划关闭任务数',
  `finish_close_num` int(11) DEFAULT NULL COMMENT '已关闭任务数',
  `un_close_num` int(11) DEFAULT NULL COMMENT '未关闭任务数',
  `close_rate` varchar(100) COLLATE utf16_bin DEFAULT NULL COMMENT '月度任务关闭率'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保月度任务管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_monitor_kpi`
--

DROP TABLE IF EXISTS `dm_mt_monitor_kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_monitor_kpi` (
  `update_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '更新日期',
  `year_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '年份',
  `data_range` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '数据范围',
  `5_10_nums` int(11) DEFAULT NULL COMMENT '晚点5-10分钟次数',
  `10_15_nums` int(11) DEFAULT NULL COMMENT '晚点10-15分钟次数',
  `rescue_15_nums` int(11) DEFAULT NULL COMMENT '救援或晚点15分钟'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保运营监控分析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_notice_info`
--

DROP TABLE IF EXISTS `dm_mt_notice_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_notice_info` (
  `idx` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '序号',
  `task_no` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '任务单号',
  `task_name` varchar(100) COLLATE utf16_bin DEFAULT NULL COMMENT '名称',
  `push_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '下发日期',
  `person_in_charge` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '任务单负责专工',
  `finish_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '完成时间节点'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_order_analysis`
--

DROP TABLE IF EXISTS `dm_mt_order_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_order_analysis` (
  `year` varchar(12) COLLATE utf16_bin DEFAULT NULL,
  `quarter` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '季度',
  `module` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `plan_amount` float DEFAULT NULL COMMENT '计划订单金额（万元）',
  `finish_amount` float DEFAULT NULL COMMENT '完成订单金额（万元）'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保订单分析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_produce_plan_mon`
--

DROP TABLE IF EXISTS `dm_mt_produce_plan_mon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_produce_plan_mon` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `plan_type` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '计划类型',
  `plan_kpi_num` int(11) DEFAULT NULL COMMENT '计划完成数量',
  `actual_num` int(11) DEFAULT NULL COMMENT '实际完成数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保月度生产计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_produce_plan_year`
--

DROP TABLE IF EXISTS `dm_mt_produce_plan_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_produce_plan_year` (
  `year_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '年份',
  `plan_type` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '计划类型',
  `plan_kpi_num` int(11) DEFAULT NULL COMMENT '计划完成数量',
  `actual_num` int(11) DEFAULT NULL COMMENT '实际完成数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保年度生产计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_project_composition`
--

DROP TABLE IF EXISTS `dm_mt_project_composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_project_composition` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `region` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '区域',
  `module` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `project_pharse` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '项目阶段',
  `project_num` int(11) DEFAULT NULL COMMENT '项目数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保项目构成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_project_manage_kpi`
--

DROP TABLE IF EXISTS `dm_mt_project_manage_kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_project_manage_kpi` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `plan_rate` varchar(100) COLLATE utf16_bin DEFAULT NULL COMMENT '维保项目计划完成率',
  `actual_rate` varchar(100) COLLATE utf16_bin DEFAULT NULL COMMENT '维保合同履约率'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保项目管理指标';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_qc_kpi`
--

DROP TABLE IF EXISTS `dm_mt_qc_kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_qc_kpi` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `avg_hours` float DEFAULT NULL COMMENT '平均无故障时间',
  `avg_km` float DEFAULT NULL COMMENT '平均无故障公里数',
  `err_rate` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '设计差错率',
  `once_pass_rate` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '一次校验合格率'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保质量管理指标';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_received_payment`
--

DROP TABLE IF EXISTS `dm_mt_received_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_received_payment` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '年份',
  `quarter` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '季度',
  `plan_amount` float DEFAULT NULL COMMENT '应回款金额(万元)',
  `actual_amount` float DEFAULT NULL COMMENT '实际回款金额(万元)'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保回款情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_risk_manage`
--

DROP TABLE IF EXISTS `dm_mt_risk_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_risk_manage` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `risk_num` int(11) DEFAULT NULL COMMENT '风险数（截止日期之前）',
  `plan_close_num` int(11) DEFAULT NULL COMMENT '计划关闭风险数',
  `finish_close_num` int(11) DEFAULT NULL COMMENT '已关闭风险数',
  `un_close_num` int(11) DEFAULT NULL COMMENT '未关闭风险数',
  `close_rate` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '风险关闭率'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保风险管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_safe_operation_days`
--

DROP TABLE IF EXISTS `dm_mt_safe_operation_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_safe_operation_days` (
  `record_date` date DEFAULT CURDATE(),
  `safe_operation_days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_service_site_detial_info`
--

DROP TABLE IF EXISTS `dm_mt_service_site_detial_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_service_site_detial_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `module` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `service_site` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站',
  `line_name` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '线路名称',
  `mt_car_type` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '维保服务车型',
  `allocate_car_type` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '配属车型',
  `car_type_num` int(11) DEFAULT NULL COMMENT '车型数量',
  `mt_car_lie_num` int(11) DEFAULT NULL COMMENT '维保车辆列数',
  `mt_car_tai_num` int(11) DEFAULT NULL COMMENT '维保车辆台数'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保服务点详细信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_service_site_info`
--

DROP TABLE IF EXISTS `dm_mt_service_site_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_service_site_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `module` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站',
  `site_master` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站长',
  `master_no` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站长工号',
  `master_tel` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站长电话'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保服务点简要信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_site_allocate_car`
--

DROP TABLE IF EXISTS `dm_mt_site_allocate_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_site_allocate_car` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站点',
  `car_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `lie_nums` int(11) DEFAULT NULL COMMENT '列数量',
  `tai_nums` int(11) DEFAULT NULL COMMENT '台数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保服务点配属车辆';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_staff_info`
--

DROP TABLE IF EXISTS `dm_mt_staff_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_staff_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `module` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `service_site` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站',
  `person_type` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '人员类型',
  `total_num` int(11) DEFAULT NULL COMMENT '总数量',
  `certificate_num` int(11) DEFAULT NULL COMMENT '持证人员数'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保人员信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mt_task_process_info`
--

DROP TABLE IF EXISTS `dm_mt_task_process_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mt_task_process_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `task_type` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '任务类型',
  `task_total_num` int(11) DEFAULT NULL COMMENT '任务总数量',
  `finish_num` int(11) DEFAULT NULL COMMENT '已完成任务数量',
  `in_operation_num` int(11) DEFAULT NULL COMMENT '实施中任务数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='维保任务进展';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_warn_model`
--

DROP TABLE IF EXISTS `dm_warn_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_warn_model` (
  `warn_name` varchar(64) COLLATE utf16_bin DEFAULT NULL,
  `module` varchar(32) COLLATE utf16_bin DEFAULT NULL,
  `warn_obj` varchar(64) COLLATE utf16_bin DEFAULT NULL,
  `warn_cycle` varchar(32) COLLATE utf16_bin DEFAULT NULL,
  `actual_value` decimal(12,4) DEFAULT NULL,
  `warn_condition` varchar(512) COLLATE utf16_bin DEFAULT NULL,
  `warn_level` varchar(64) COLLATE utf16_bin DEFAULT NULL,
  `deal_status` varchar(512) COLLATE utf16_bin DEFAULT NULL,
  `calculate_method` varchar(1024) COLLATE utf16_bin DEFAULT NULL,
  `warn_rule` varchar(1024) COLLATE utf16_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dwa_cs_Census_information`
--

DROP TABLE IF EXISTS `dwa_cs_Census_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwa_cs_Census_information` (
  `year_mon` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '计划开始段该时间',
  `module` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `process_dept` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '执行单位',
  `Allocation_dept` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '配属局',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务点',
  `car_type` varchar(100) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `status` varchar(101) COLLATE utf16_bin DEFAULT NULL COMMENT '状态',
  `census_num` int(11) DEFAULT NULL COMMENT '普查数量',
  `finished_census_num` int(11) DEFAULT NULL COMMENT '普查完成数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dwa_cs_Depot_transform`
--

DROP TABLE IF EXISTS `dwa_cs_Depot_transform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwa_cs_Depot_transform` (
  `year_mon` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `module` varchar(100) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `process_dept` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '执行单位',
  `Allocation_dept` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '配属局',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务点',
  `car_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `status` varchar(100) COLLATE utf16_bin DEFAULT NULL COMMENT '状态',
  `depot_num` int(11) DEFAULT NULL COMMENT '段改数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dwa_cs_Million_km_fault_rate`
--

DROP TABLE IF EXISTS `dwa_cs_Million_km_fault_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwa_cs_Million_km_fault_rate` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '年月',
  `jiche_jipo_num` int(11) DEFAULT NULL COMMENT '机车机破数',
  `jiche_jipo_rate` float DEFAULT NULL COMMENT '机车百万公里机破率',
  `dongche_anjian_num` int(11) DEFAULT NULL COMMENT '动车安监数',
  `dongche_anjian_rate` float DEFAULT NULL COMMENT '动车百万公里安监率',
  `chenggui_jiuyuan_num` int(11) DEFAULT NULL COMMENT '城轨救援数',
  `chenggui_qingke_num` int(11) DEFAULT NULL COMMENT '城轨清客',
  `chenggui_jiuyuan_rate` float DEFAULT NULL COMMENT '城轨百万公里救援率',
  `chenggui_qingke_rate` float DEFAULT NULL COMMENT '城轨百万公里清客率'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dwa_cs_customer_complaint`
--

DROP TABLE IF EXISTS `dwa_cs_customer_complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwa_cs_customer_complaint` (
  `feedback_time` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '反馈时间',
  `complaint_level` varchar(100) COLLATE utf16_bin DEFAULT NULL COMMENT '投诉等级',
  `recive_dept` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '反馈接收部门',
  `lead_process_dept` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '牵头处置单位',
  `complaint_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '反馈类型',
  `module` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `project_name` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '项目名称',
  `process_dept` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '处理部门',
  `feedback_channel` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '反馈途径',
  `is_resovled` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '是否解决',
  `is_expected_close` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '是否按照预计关闭时间关闭',
  `coplaint_nums` int(11) DEFAULT NULL COMMENT '投诉量',
  `close_nums` int(11) DEFAULT NULL COMMENT '关闭量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dwa_cs_fault_info`
--

DROP TABLE IF EXISTS `dwa_cs_fault_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwa_cs_fault_info` (
  `fault_date` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '故障(填报)日期',
  `project_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '项目类型',
  `car_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `Motion_Control` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '动/控',
  `Allocation_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '配属路局',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务点',
  `fault_car_loc` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '故障车位置',
  `fault_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '故障性质',
  `fault_stage` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '故障发生阶段',
  `fault_unit` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '一级故障部件',
  `supplier` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '供应商名称',
  `fault_num` int(11) DEFAULT NULL COMMENT '故障次数',
  `mileage` int(11) DEFAULT NULL COMMENT '公里数'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dwa_cs_over_period_plan_statistics`
--

DROP TABLE IF EXISTS `dwa_cs_over_period_plan_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwa_cs_over_period_plan_statistics` (
  `project_name` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '项目名称',
  `project_total_trains` int(11) DEFAULT NULL COMMENT '项目总列数',
  `sign_fac_trains` int(11) DEFAULT NULL COMMENT '已签订FAC列数',
  `unsign_fac_trains` int(11) DEFAULT NULL COMMENT '剩余未签FAC列数',
  `plan_2024_fac_trains` int(11) DEFAULT NULL COMMENT '计划2024年签订FAC总列数',
  `mon_1` int(11) DEFAULT NULL COMMENT '1月',
  `mon_2` int(11) DEFAULT NULL COMMENT '2月',
  `mon_3` int(11) DEFAULT NULL COMMENT '3月',
  `mon_4` int(11) DEFAULT NULL COMMENT '4月',
  `mon_5` int(11) DEFAULT NULL COMMENT '5月',
  `mon_6` int(11) DEFAULT NULL COMMENT '6月',
  `mon_7` int(11) DEFAULT NULL COMMENT '7月',
  `mon_8` int(11) DEFAULT NULL COMMENT '8月',
  `mon_9` int(11) DEFAULT NULL COMMENT '9月',
  `mon_10` int(11) DEFAULT NULL COMMENT '10月',
  `mon_11` int(11) DEFAULT NULL COMMENT '11月',
  `mon_12` int(11) DEFAULT NULL COMMENT '12月'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dwa_cs_service_car_info`
--

DROP TABLE IF EXISTS `dwa_cs_service_car_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwa_cs_service_car_info` (
  `region_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '地域',
  `customer` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '客户',
  `product` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '产品',
  `module` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '类型',
  `region` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '国家/地区',
  `city` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '城市',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务点名称',
  `cat_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `car_no` int(11) DEFAULT NULL COMMENT '车辆数',
  `mileage` int(11) DEFAULT NULL COMMENT '公里数',
  `is_zaibao` varchar(10) COLLATE utf16_bin DEFAULT NULL COMMENT '是否在保（1：在保 0：出保）',
  `is_weiqian_pac` varchar(10) COLLATE utf16_bin DEFAULT NULL COMMENT '是否未签pac车辆（1：是 0：否）',
  `is_pac_3_fac` varchar(10) COLLATE utf16_bin DEFAULT NULL COMMENT '是否PAC后3年未签FAC车(1:是 0：否)'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dwa_cs_service_employee_info`
--

DROP TABLE IF EXISTS `dwa_cs_service_employee_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwa_cs_service_employee_info` (
  `module` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块名',
  `service_name` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务点名称',
  `staus` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '状态',
  `is_stationmaster` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '是否站长',
  `belong_dept` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '所属部门',
  `Domestic_days` int(11) DEFAULT NULL COMMENT '国内在段天数',
  `overseas_days` int(11) DEFAULT NULL COMMENT '海外在段天数',
  `travel_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '差旅类型',
  `sex` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '性别',
  `political_outlook` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '政治面貌',
  `highest_edu` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '最高学历',
  `work_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '工种',
  `skill_level` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '技能等级',
  `expert` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '中车专家',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `nums` int(11) DEFAULT NULL COMMENT '人数',
  `amount` float DEFAULT NULL COMMENT '差旅费用'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dwa_cs_topic_info`
--

DROP TABLE IF EXISTS `dwa_cs_topic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwa_cs_topic_info` (
  `draft_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '拟稿日期',
  `create_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '创建日期',
  `end_date` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '结束日期',
  `topic_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '专题类型',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务点',
  `module` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `product_service` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '产品/服务',
  `fault_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '故障性质',
  `topic_keyword` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '专题关键字',
  `bill_staus` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '单据状态',
  `responsible_unit` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '主要责任单位',
  `supplier` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '责任供应商',
  `topic_num` int(11) DEFAULT NULL COMMENT '专题数量',
  `finish_topic_num` int(11) DEFAULT NULL COMMENT '完成专题数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dwa_cs_unit_inventory_info`
--

DROP TABLE IF EXISTS `dwa_cs_unit_inventory_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwa_cs_unit_inventory_info` (
  `year_mon` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '年月',
  `car_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `module` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `allocate_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '配属局',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务点名称',
  `loc_code` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '库位编码',
  `loc_name` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '库位名称',
  `unit_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '配件类型',
  `duan_gai_no` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '段改/三包编号',
  `material_no` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '物料名称',
  `specification` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '规格型号',
  `statistic_unit` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '计量单位',
  `quanty` int(11) DEFAULT NULL COMMENT '数量',
  `is_in_out` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '出入库',
  `belong_dept` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '配件所属单位',
  `remark` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '备注',
  `price` float DEFAULT NULL COMMENT '单价',
  `amount` float DEFAULT NULL COMMENT '总金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dwa_cs_unit_inventory_info_new`
--

DROP TABLE IF EXISTS `dwa_cs_unit_inventory_info_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dwa_cs_unit_inventory_info_new` (
  `year_mon` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '年月',
  `car_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `module` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `allocate_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '配属局',
  `service_site` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '服务点名称',
  `loc_code` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '库位编码',
  `loc_name` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '库位名称',
  `unit_type` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '配件类型',
  `duan_gai_no` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '段改/三包编号',
  `material_no` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '物料名称',
  `specification` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '规格型号',
  `statistic_unit` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '计量单位',
  `is_in_out` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '出入库',
  `belong_dept` varchar(1000) COLLATE utf16_bin DEFAULT NULL COMMENT '配件所属单位',
  `quanty` int(11) DEFAULT NULL COMMENT '数量',
  `amount` float DEFAULT NULL COMMENT '总金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fault_info`
--

DROP TABLE IF EXISTS `fault_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fault_info` (
  `fault_no` varchar(100) DEFAULT NULL COMMENT '故障单编号',
  `fault_date` varchar(1000) DEFAULT NULL COMMENT '故障(填报)日期',
  `project_type` varchar(1000) DEFAULT NULL COMMENT '项目类型',
  `car_type` varchar(1000) DEFAULT NULL COMMENT '车型',
  `Motion_Control` varchar(1000) DEFAULT NULL COMMENT '动/控',
  `car_group_no` varchar(1000) DEFAULT NULL COMMENT '车组号',
  `car_no` varchar(1000) DEFAULT NULL COMMENT '车号',
  `Allocation_site` varchar(1000) DEFAULT NULL COMMENT '配属路局',
  `service_site` varchar(1000) DEFAULT NULL COMMENT '服务点',
  `fault_car_loc` varchar(1000) DEFAULT NULL COMMENT '故障车位置',
  `fault_type` varchar(1000) DEFAULT NULL COMMENT '故障性质',
  `fault_up` varchar(1000) DEFAULT NULL COMMENT '故障填报人',
  `fault_stage` varchar(1000) DEFAULT NULL COMMENT '故障发生阶段',
  `mileage` int(11) DEFAULT NULL COMMENT '公里数',
  `fault_desc` varchar(1000) DEFAULT NULL COMMENT '故障描述',
  `repair_desc` varchar(1000) DEFAULT NULL COMMENT '修复描述',
  `fault_unit` varchar(1000) DEFAULT NULL COMMENT '一级故障部件',
  `supplier` varchar(1000) DEFAULT NULL COMMENT '供应商名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `million_km_fault_rate`
--

DROP TABLE IF EXISTS `million_km_fault_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `million_km_fault_rate` (
  `year_mon` varchar(50) DEFAULT NULL COMMENT '年月',
  `jiche_jipo_num` int(11) DEFAULT NULL COMMENT '机车机破数',
  `jiche_jipo_rate` varchar(50) DEFAULT NULL COMMENT '机车百万公里机破率',
  `dongche_anjian_num` int(11) DEFAULT NULL COMMENT '动车安监数',
  `dongche_anjian_rate` varchar(8) DEFAULT NULL COMMENT '动车百万公里安监率',
  `chenggui_jiuyuan_num` int(11) DEFAULT NULL COMMENT '城轨救援数',
  `chenggui_qingke_num` int(11) DEFAULT NULL COMMENT '城轨清客',
  `chenggui_jiuyuan_rate` varchar(8) DEFAULT NULL COMMENT '城轨百万公里救援率',
  `chenggui_qingke_rate` varchar(8) DEFAULT NULL COMMENT '城轨百万公里清客率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mt_car_info`
--

DROP TABLE IF EXISTS `mt_car_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_car_info` (
  `idx` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT 'IDX',
  `sub_car_no` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '车厢号',
  `car_no` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '车号',
  `car_type` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `creator` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '创建人',
  `create_time` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '创建时间',
  `sub_car_code` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '车厢编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mt_service_detial_info`
--

DROP TABLE IF EXISTS `mt_service_detial_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_service_detial_info` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL COMMENT '月份',
  `module` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '板块',
  `project_name` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '项目名次',
  `service_site` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站',
  `project_type` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '项目类型',
  `project_pharse` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '项目阶段',
  `region` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '区域',
  `city` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '城市',
  `line_name` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '线路名称',
  `car_type` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '维保服务车型',
  `car_num` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '维保车辆数',
  `master_name` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站长',
  `master_no` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站长工号',
  `master_tel` varchar(500) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站长电话'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `over_period_plan_statistics`
--

DROP TABLE IF EXISTS `over_period_plan_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `over_period_plan_statistics` (
  `project_name` varchar(1000) DEFAULT NULL COMMENT '项目名称',
  `project_total_trains` int(11) DEFAULT NULL COMMENT '项目总列数',
  `sign_fac_trains` int(11) DEFAULT NULL COMMENT '已签订FAC列数',
  `unsign_fac_trains` int(11) DEFAULT NULL COMMENT '剩余未签FAC列数',
  `plan_2024_fac_trains` int(11) DEFAULT NULL COMMENT '计划2024年签订FAC总列数',
  `mon_1` int(11) DEFAULT NULL COMMENT '1月',
  `mon_2` int(11) DEFAULT NULL COMMENT '2月',
  `mon_3` int(11) DEFAULT NULL COMMENT '3月',
  `mon_4` int(11) DEFAULT NULL COMMENT '4月',
  `mon_5` int(11) DEFAULT NULL COMMENT '5月',
  `mon_6` int(11) DEFAULT NULL COMMENT '6月',
  `mon_7` int(11) DEFAULT NULL COMMENT '7月',
  `mon_8` int(11) DEFAULT NULL COMMENT '8月',
  `mon_9` int(11) DEFAULT NULL COMMENT '9月',
  `mon_10` int(11) DEFAULT NULL COMMENT '10月',
  `mon_11` int(11) DEFAULT NULL COMMENT '11月',
  `mon_12` int(11) DEFAULT NULL COMMENT '12月'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_car_info`
--

DROP TABLE IF EXISTS `service_car_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_car_info` (
  `region_type` varchar(100) DEFAULT NULL COMMENT '地域',
  `customer` varchar(100) DEFAULT NULL COMMENT '客户',
  `product` varchar(1000) DEFAULT NULL COMMENT '产品',
  `module` varchar(100) DEFAULT NULL COMMENT '板块',
  `type` varchar(1000) DEFAULT NULL COMMENT '类型',
  `Allocation_dept` varchar(1000) DEFAULT NULL COMMENT '配属局/公司',
  `region` varchar(100) DEFAULT NULL COMMENT '国家/地区',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `service_site` varchar(1000) DEFAULT NULL COMMENT '服务点名称',
  `cat_type` varchar(1000) DEFAULT NULL COMMENT '车型',
  `company` varchar(1000) DEFAULT NULL COMMENT '线路或联运单位',
  `car_group_no` varchar(1000) DEFAULT NULL COMMENT '车组号',
  `group_no` varchar(1000) DEFAULT NULL COMMENT '编组',
  `car_no` varchar(1000) DEFAULT NULL COMMENT '车辆号',
  `mileage` int(11) DEFAULT NULL COMMENT '公里数',
  `acceptance_date` varchar(100) DEFAULT NULL COMMENT '验收日期',
  `d3_d4_date` varchar(100) DEFAULT NULL COMMENT 'D3/C4修(FAC)日期',
  `d3_d4_unit` varchar(1000) DEFAULT NULL COMMENT 'D3/C4(FAC)修单位',
  `d3_d4_mileage` int(11) DEFAULT NULL COMMENT 'D3/C4修(FAC)里程',
  `d4_d5_date` varchar(100) DEFAULT NULL COMMENT 'D4/C5(架修)修日期',
  `d4_d5_unit` varchar(1000) DEFAULT NULL COMMENT 'D4/C5(架修)修单位',
  `d4_d5_mileage` int(11) DEFAULT NULL COMMENT 'D4/C5(架修)修里程',
  `d5_d6_date` varchar(100) DEFAULT NULL COMMENT 'D5/C6(回厂修)修日期',
  `d5_d6_unit` varchar(1000) DEFAULT NULL COMMENT 'D5/C6(回厂修)修单位',
  `d5_d6_mileage` int(11) DEFAULT NULL COMMENT 'D5/C6(回厂修)修里程',
  `2c4_2d3_date` varchar(100) DEFAULT NULL COMMENT '2C4/2D3修日期',
  `2c4_2d3_mileage` int(11) DEFAULT NULL COMMENT '2C4/2D3修里程',
  `2c4_2d3_dunit` varchar(1000) DEFAULT NULL COMMENT '2C4/2D3修单位'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_employee_info`
--

DROP TABLE IF EXISTS `service_employee_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_employee_info` (
  `employee_name` varchar(1000) DEFAULT NULL COMMENT '姓名',
  `employee_no` varchar(1000) DEFAULT NULL COMMENT '工号',
  `module` varchar(1000) DEFAULT NULL COMMENT '板块名',
  `service_name` varchar(1000) DEFAULT NULL COMMENT '服务点名称',
  `staus` varchar(1000) DEFAULT NULL COMMENT '状态',
  `is_stationmaster` varchar(1000) DEFAULT NULL COMMENT '是否站长',
  `belong_dept` varchar(1000) DEFAULT NULL COMMENT '所属部门',
  `Domestic_days` int(11) DEFAULT NULL COMMENT '国内在段天数',
  `overseas_days` int(11) DEFAULT NULL COMMENT '海外在段天数',
  `travel_type` varchar(1000) DEFAULT NULL COMMENT '差旅类型',
  `sex` varchar(1000) DEFAULT NULL COMMENT '性别',
  `political_outlook` varchar(1000) DEFAULT NULL COMMENT '政治面貌',
  `highest_edu` varchar(1000) DEFAULT NULL COMMENT '最高学历',
  `work_type` varchar(1000) DEFAULT NULL COMMENT '工种',
  `skill_level` varchar(1000) DEFAULT NULL COMMENT '技能等级',
  `expert` varchar(1000) DEFAULT NULL COMMENT '中车专家',
  `birthday` varchar(1000) DEFAULT NULL COMMENT '出生年月'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_car_health`
--

DROP TABLE IF EXISTS `t_car_health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_car_health` (
  `id` varchar(64) COLLATE utf16_bin NOT NULL COMMENT 'id',
  `section_name` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '服务站点',
  `model` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '车型',
  `train_code` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '车次代码',
  `score` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '健康得分区间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='车辆健康度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_key_faults`
--

DROP TABLE IF EXISTS `t_key_faults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_key_faults` (
  `id` varchar(64) COLLATE utf16_bin NOT NULL COMMENT 'ID',
  `fault_reason` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '故障原因',
  `fault_code` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '故障代码',
  `happen_count` varchar(22) COLLATE utf16_bin DEFAULT NULL COMMENT '发生次数',
  `system_name` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '系统名称',
  `focus` varchar(64) COLLATE utf16_bin DEFAULT NULL COMMENT '是否关注',
  `model` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '模型',
  `treatment_scheme` text COLLATE utf16_bin DEFAULT NULL COMMENT '处理方案',
  `fault_source` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '故障来源',
  `fault_level` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '故障级别',
  `fault_name` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT '故障名称',
  `fault_date` date DEFAULT NULL COMMENT '故障日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='重点故障表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_warning_fault`
--

DROP TABLE IF EXISTS `t_warning_fault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_warning_fault` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `date_time` datetime NOT NULL COMMENT 'date_time',
  `handler` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'handler',
  `authority_name` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'authority_name',
  `unread` tinyint(4) NOT NULL COMMENT 'unread',
  `train_code` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'train_code',
  `fault_status` int(11) NOT NULL COMMENT 'fault_status',
  `is_crrc` tinyint(4) DEFAULT NULL COMMENT 'is_crrc',
  `fault_relate_signal` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'fault_relate_signal',
  `fault_level` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'fault_level',
  `section_name` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'section_name',
  `score` tinyint(4) DEFAULT NULL COMMENT 'score',
  `distinct_id` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'distinct_id',
  `real_fault_code` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'real_fault_code',
  `system_name` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'system_name',
  `model_code` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'model_code',
  `fault_part` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'fault_part',
  `start_time` datetime DEFAULT NULL COMMENT 'start_time',
  `model` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'model',
  `fault_source` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'fault_source',
  `ab` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'ab',
  `ver` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'ver',
  `system_id` int(11) DEFAULT NULL COMMENT 'system_id',
  `handle_time` datetime DEFAULT NULL COMMENT 'handle_time',
  `qyvx_pushed` tinyint(4) DEFAULT NULL COMMENT 'qyvx_pushed',
  `velocity` double DEFAULT NULL COMMENT 'velocity',
  `fault_name` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'fault_name',
  `push_type` int(11) DEFAULT NULL COMMENT 'push_type',
  `fault_reason` text COLLATE utf16_bin DEFAULT NULL COMMENT 'fault_reason',
  `fault_code` varchar(255) COLLATE utf16_bin DEFAULT NULL COMMENT 'fault_code',
  `deleted` tinyint(4) DEFAULT NULL COMMENT 'deleted',
  `end_time` datetime DEFAULT NULL COMMENT 'end_time',
  `fault_repair_suggestion` text COLLATE utf16_bin DEFAULT NULL COMMENT 'fault_repair_suggestion',
  `pushed` tinyint(4) DEFAULT NULL COMMENT 'pushed',
  `fault_push` tinyint(4) DEFAULT NULL COMMENT 'fault_push',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin COMMENT='预警故障';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_table`
--

DROP TABLE IF EXISTS `test_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_table` (
  `id` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_mt`
--

DROP TABLE IF EXISTS `tmp_mt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmp_mt` (
  `year_mon` varchar(50) COLLATE utf16_bin DEFAULT NULL,
  `module` varchar(500) COLLATE utf16_bin DEFAULT NULL,
  `service_site` varchar(500) COLLATE utf16_bin DEFAULT NULL,
  `jishu_num` int(11) DEFAULT NULL,
  `guanli_num` int(11) DEFAULT NULL,
  `banzu_num` int(11) DEFAULT NULL,
  `banzu_chizheng_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `topic_info`
--

DROP TABLE IF EXISTS `topic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic_info` (
  `draft_date` varchar(50) DEFAULT NULL COMMENT '拟稿日期',
  `create_date` varchar(50) DEFAULT NULL COMMENT '创建日期',
  `end_date` varchar(50) DEFAULT NULL COMMENT '结束日期',
  `topic_no` varchar(1000) DEFAULT NULL COMMENT '专题编号',
  `topic` varchar(1000) DEFAULT NULL COMMENT '主题',
  `topic_type` varchar(1000) DEFAULT NULL COMMENT '专题类型',
  `service_site` varchar(1000) DEFAULT NULL COMMENT '服务点',
  `module` varchar(1000) DEFAULT NULL COMMENT '板块',
  `pro_service` varchar(1000) DEFAULT NULL COMMENT '产品/服务',
  `fault_type` varchar(1000) DEFAULT NULL COMMENT '故障性质',
  `topic_keyword` varchar(1000) DEFAULT NULL COMMENT '专题关键字',
  `drafted_by` varchar(1000) DEFAULT NULL COMMENT '拟稿人',
  `bill_status` varchar(1000) DEFAULT NULL COMMENT '单据状态',
  `main_resp_unit` varchar(1000) DEFAULT NULL COMMENT '主要责任单位',
  `supplier` varchar(1000) DEFAULT NULL COMMENT '责任供应商'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unit_inventory_info`
--

DROP TABLE IF EXISTS `unit_inventory_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_inventory_info` (
  `year_mon` varchar(1000) DEFAULT NULL COMMENT '年月',
  `car_type` varchar(1000) DEFAULT NULL COMMENT '车型',
  `module` varchar(1000) DEFAULT NULL COMMENT '板块',
  `allocate_site` varchar(1000) DEFAULT NULL COMMENT '配属局',
  `service_site` varchar(1000) DEFAULT NULL COMMENT '服务点名称',
  `loc_code` varchar(1000) DEFAULT NULL COMMENT '库位编码',
  `loc_name` varchar(1000) DEFAULT NULL COMMENT '库位名称',
  `unit_type` varchar(1000) DEFAULT NULL COMMENT '配件类型',
  `duan_gai_no` varchar(1000) DEFAULT NULL COMMENT '段改/三包编号',
  `material_no` varchar(1000) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(1000) DEFAULT NULL COMMENT '物料名称',
  `specification` varchar(1000) DEFAULT NULL COMMENT '规格型号',
  `statistic_unit` varchar(1000) DEFAULT NULL COMMENT '计量单位',
  `quanty` int(11) DEFAULT NULL COMMENT '数量',
  `belong_dept` varchar(1000) DEFAULT NULL COMMENT '配件所属单位',
  `price` float DEFAULT NULL COMMENT '单价'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unit_inventory_info_new`
--

DROP TABLE IF EXISTS `unit_inventory_info_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_inventory_info_new` (
  `year_mon` varchar(1000) DEFAULT NULL COMMENT '年月',
  `car_type` varchar(1000) DEFAULT NULL COMMENT '车型',
  `module` varchar(1000) DEFAULT NULL COMMENT '板块',
  `allocate_site` varchar(1000) DEFAULT NULL COMMENT '配属局',
  `service_site` varchar(1000) DEFAULT NULL COMMENT '服务点名称',
  `loc_code` varchar(1000) DEFAULT NULL COMMENT '库位编码',
  `loc_name` varchar(1000) DEFAULT NULL COMMENT '库位名称',
  `unit_type` varchar(1000) DEFAULT NULL COMMENT '配件类型',
  `duan_gai_no` varchar(1000) DEFAULT NULL COMMENT '段改/三包编号',
  `material_no` varchar(1000) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(1000) DEFAULT NULL COMMENT '物料名称',
  `specification` varchar(1000) DEFAULT NULL COMMENT '规格型号',
  `statistic_unit` varchar(1000) DEFAULT NULL COMMENT '计量单位',
  `quanty` int(11) DEFAULT NULL COMMENT '数量',
  `is_in_out` varchar(1000) DEFAULT NULL COMMENT '出入库',
  `belong_dept` varchar(1000) DEFAULT NULL COMMENT '配件所属单位',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  `price` float DEFAULT NULL COMMENT '单价',
  `amount` float DEFAULT NULL COMMENT '总金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `v_dm_mt_staff_info`
--

DROP TABLE IF EXISTS `v_dm_mt_staff_info`;
/*!50001 DROP VIEW IF EXISTS `v_dm_mt_staff_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_dm_mt_staff_info` AS SELECT 
 1 AS `year_mon`,
 1 AS `moudle`,
 1 AS `service_site`,
 1 AS `person_type`,
 1 AS `total_num`,
 1 AS `certificate_num`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'excel_data'
--

--
-- Final view structure for view `v_dm_mt_staff_info`
--

/*!50001 DROP VIEW IF EXISTS `v_dm_mt_staff_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`excel_data`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_dm_mt_staff_info` AS select `t`.`year_mon` AS `year_mon`,case when `t`.`module` = '智能运维' then '城轨' else `t`.`module` end AS `moudle`,`t`.`service_site` AS `service_site`,`t`.`person_type` AS `person_type`,`t`.`total_num` AS `total_num`,`t`.`certificate_num` AS `certificate_num` from `dm_mt_staff_info` `t` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-06 10:25:49


CREATE DATABASE IF NOT EXISTS pub_logs DEFAULT CHARACTER
SET
    utf8mb4 COLLATE utf8mb4_general_ci;

USE pub_logs;

-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 10.24.207.80    Database: pub_logs
-- ------------------------------------------------------
-- Server version	5.5.5-10.7.1-MariaDB-1:10.7.1+maria~focal

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

--
-- Table structure for table `colldata_log`
--

DROP TABLE IF EXISTS `colldata_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colldata_log` (
  `cycle_id` varchar(20) DEFAULT NULL,
  `sys_id` varchar(32) DEFAULT NULL,
  `table_id` varchar(128) DEFAULT NULL,
  `get_way` varchar(8) DEFAULT NULL,
  `sys_record_num` bigint(20) DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'pub_logs'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-06 10:25:49

CREATE DATABASE IF NOT EXISTS sys DEFAULT CHARACTER
SET
    utf8mb4 COLLATE utf8mb4_general_ci;

USE sys;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 10.24.207.80    Database: sys
-- ------------------------------------------------------
-- Server version	5.5.5-10.7.1-MariaDB-1:10.7.1+maria~focal

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

--
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=Aria DEFAULT CHARSET=utf8mb3 PAGE_CHECKSUM=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'sys'
--
/*!50003 DROP FUNCTION IF EXISTS `extract_schema_from_file_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `extract_schema_from_file_name`(path VARCHAR(512)
    ) RETURNS varchar(64) CHARSET utf8mb3
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a raw file path, and attempts to extract the schema name from it.\n             Useful for when interacting with Performance Schema data\n             concerning IO statistics, for example.\n             Currently relies on the fact that a table data file will be within a\n             specified database directory (will not work with partitions or tables\n             that specify an individual DATA_DIRECTORY).\n             Parameters\n             path (VARCHAR(512)):\n               The full file path to a data file to extract the schema name from.\n             Returns\n             VARCHAR(64)\n             Example\n             mysql> SELECT sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n             +----------------------------------------------------------------------------+\n             | sys.extract_schema_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n             +----------------------------------------------------------------------------+\n             | employees                                                                  |\n             +----------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN LEFT(SUBSTRING_INDEX(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -2), '/', 1), 64);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `extract_table_from_file_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `extract_table_from_file_name`(path VARCHAR(512)
    ) RETURNS varchar(64) CHARSET utf8mb3
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a raw file path, and extracts the table name from it.\n             Useful for when interacting with Performance Schema data\n             concerning IO statistics, for example.\n             Parameters\n             path (VARCHAR(512)):\n               The full file path to a data file to extract the table name from.\n             Returns\n             VARCHAR(64)\n             Example\n             mysql> SELECT sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'');\n             +---------------------------------------------------------------------------+\n             | sys.extract_table_from_file_name(''/var/lib/mysql/employees/employee.ibd'') |\n             +---------------------------------------------------------------------------+\n             | employee                                                                  |\n             +---------------------------------------------------------------------------+\n             1 row in set (0.02 sec)\n            '
BEGIN
    RETURN LEFT(SUBSTRING_INDEX(REPLACE(SUBSTRING_INDEX(REPLACE(path, '\\', '/'), '/', -1), '@0024', '$'), '.', 1), 64);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_bytes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `format_bytes`(bytes TEXT
    ) RETURNS text CHARSET utf8mb3
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a raw bytes value, and converts it to a human readable format.\n             Parameters\n             bytes (TEXT):\n               A raw bytes value.\n             Returns\n             TEXT\n             Example\n             mysql> SELECT sys.format_bytes(2348723492723746) AS size;\n             +----------+\n             | size     |\n             +----------+\n             | 2.09 PiB |\n             +----------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.format_bytes(2348723492723) AS size;\n             +----------+\n             | size     |\n             +----------+\n             | 2.14 TiB |\n             +----------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.format_bytes(23487234) AS size;\n             +-----------+\n             | size      |\n             +-----------+\n             | 22.40 MiB |\n             +-----------+\n             1 row in set (0.00 sec)\n            '
BEGIN
  IF bytes IS NULL THEN RETURN NULL;
  ELSEIF bytes >= 1125899906842624 THEN RETURN CONCAT(ROUND(bytes / 1125899906842624, 2), ' PiB');
  ELSEIF bytes >= 1099511627776 THEN RETURN CONCAT(ROUND(bytes / 1099511627776, 2), ' TiB');
  ELSEIF bytes >= 1073741824 THEN RETURN CONCAT(ROUND(bytes / 1073741824, 2), ' GiB');
  ELSEIF bytes >= 1048576 THEN RETURN CONCAT(ROUND(bytes / 1048576, 2), ' MiB');
  ELSEIF bytes >= 1024 THEN RETURN CONCAT(ROUND(bytes / 1024, 2), ' KiB');
  ELSE RETURN CONCAT(ROUND(bytes, 0), ' bytes');
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_path` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `format_path`(in_path VARCHAR(512)
    ) RETURNS varchar(512) CHARSET utf8mb3
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a raw path value, and strips out the datadir or tmpdir\n             replacing with @@datadir and @@tmpdir respectively.\n             Also normalizes the paths across operating systems, so backslashes\n             on Windows are converted to forward slashes\n             Parameters\n             path (VARCHAR(512)):\n               The raw file path value to format.\n             Returns\n             VARCHAR(512) CHARSET UTF8\n             Example\n             mysql> select @@datadir;\n             +-----------------------------------------------+\n             | @@datadir                                     |\n             +-----------------------------------------------+\n             | /Users/mark/sandboxes/SmallTree/AMaster/data/ |\n             +-----------------------------------------------+\n             1 row in set (0.06 sec)\n             mysql> select format_path(''/Users/mark/sandboxes/SmallTree/AMaster/data/mysql/proc.MYD'') AS path;\n             +--------------------------+\n             | path                     |\n             +--------------------------+\n             | @@datadir/mysql/proc.MYD |\n             +--------------------------+\n             1 row in set (0.03 sec)\n            '
BEGIN
  DECLARE v_dir VARCHAR(1024);
  DECLARE v_path VARCHAR(512);
  DECLARE path_separator CHAR(1) DEFAULT '/';
  IF @@global.version_compile_os LIKE 'win%' THEN
    SET path_separator = '\\';
  END IF;
  IF in_path LIKE '/private/%' THEN
    SET v_path = REPLACE(in_path, '/private', '');
  ELSE
    SET v_path = in_path;
  END IF;
  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = 'innodb_data_home_dir'), '');
  IF v_path IS NULL THEN
    RETURN NULL;
  END IF;
  IF v_path LIKE CONCAT(@@global.datadir, IF(SUBSTRING(@@global.datadir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.datadir, CONCAT('@@datadir', IF(SUBSTRING(@@global.datadir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  IF v_path LIKE CONCAT(@@global.tmpdir, IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.tmpdir, CONCAT('@@tmpdir', IF(SUBSTRING(@@global.tmpdir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = 'innodb_data_home_dir'), '');
  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, v_dir, CONCAT('@@innodb_data_home_dir', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = 'innodb_log_group_home_dir'), '');
  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, v_dir, CONCAT('@@innodb_log_group_home_dir', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  SET v_dir= IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = 'slave_load_tmpdir'), '');
  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, v_dir, CONCAT('@@slave_load_tmpdir', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  SET v_dir = IFNULL((SELECT VARIABLE_VALUE FROM information_schema.global_variables WHERE VARIABLE_NAME = 'innodb_undo_directory'), '');
  IF v_path LIKE CONCAT(v_dir, IF(SUBSTRING(v_dir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, v_dir, CONCAT('@@innodb_undo_directory', IF(SUBSTRING(v_dir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  IF v_path LIKE CONCAT(@@global.basedir, IF(SUBSTRING(@@global.basedir, -1) = path_separator, '%', CONCAT(path_separator, '%'))) ESCAPE '|' THEN
    SET v_path = REPLACE(v_path, @@global.basedir, CONCAT('@@basedir', IF(SUBSTRING(@@global.basedir, -1) = path_separator, path_separator, '')));
    RETURN v_path;
  END IF;
  RETURN v_path;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_statement` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `format_statement`(statement LONGTEXT
    ) RETURNS longtext CHARSET utf8mb3
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Formats a normalized statement, truncating it if it is > 64 characters long by default.\n             To configure the length to truncate the statement to by default, update the `statement_truncate_len`\n             variable with `sys_config` table to a different value. Alternatively, to change it just for just\n             your particular session, use `SET @sys.statement_truncate_len := <some new value>`.\n             Useful for printing statement related data from Performance Schema from\n             the command line.\n             Parameters\n             statement (LONGTEXT):\n               The statement to format.\n             Returns\n             LONGTEXT\n             Example\n             mysql> SELECT sys.format_statement(digest_text)\n                 ->   FROM performance_schema.events_statements_summary_by_digest\n                 ->  ORDER by sum_timer_wait DESC limit 5;\n             +-------------------------------------------------------------------+\n             | sys.format_statement(digest_text)                                 |\n             +-------------------------------------------------------------------+\n             | CREATE SQL SECURITY INVOKER VI ... KE ? AND `variable_value` > ?  |\n             | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `esc` . ... |\n             | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `sys` . ... |\n             | CREATE SQL SECURITY INVOKER VI ...  , `compressed_size` ) ) DESC  |\n             | CREATE SQL SECURITY INVOKER VI ... LIKE ? ORDER BY `timer_start`  |\n             +-------------------------------------------------------------------+\n             5 rows in set (0.00 sec)\n            '
BEGIN
  IF @sys.statement_truncate_len IS NULL THEN
      SET @sys.statement_truncate_len = sys_get_config('statement_truncate_len', 64);
  END IF;
  IF CHAR_LENGTH(statement) > @sys.statement_truncate_len THEN
      RETURN REPLACE(CONCAT(LEFT(statement, (@sys.statement_truncate_len/2)-2), ' ... ', RIGHT(statement, (@sys.statement_truncate_len/2)-2)), '\n', ' ');
  ELSE
      RETURN REPLACE(statement, '\n', ' ');
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `format_time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `format_time`(picoseconds TEXT
    ) RETURNS text CHARSET utf8mb3
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a raw picoseconds value, and converts it to a human readable form.\n             Picoseconds are the precision that all latency values are printed in\n             within Performance Schema, however are not user friendly when wanting\n             to scan output from the command line.\n             Parameters\n             picoseconds (TEXT):\n               The raw picoseconds value to convert.\n             Returns\n             TEXT\n             Example\n             mysql> select format_time(342342342342345);\n             +------------------------------+\n             | format_time(342342342342345) |\n             +------------------------------+\n             | 00:05:42                     |\n             +------------------------------+\n             1 row in set (0.00 sec)\n             mysql> select format_time(342342342);\n             +------------------------+\n             | format_time(342342342) |\n             +------------------------+\n             | 342.34 us              |\n             +------------------------+\n             1 row in set (0.00 sec)\n             mysql> select format_time(34234);\n              +--------------------+\n             | format_time(34234) |\n             +--------------------+\n             | 34.23 ns           |\n             +--------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
  IF picoseconds IS NULL THEN RETURN NULL;
  ELSEIF picoseconds >= 604800000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 604800000000000000, 2), ' w');
  ELSEIF picoseconds >= 86400000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 86400000000000000, 2), ' d');
  ELSEIF picoseconds >= 3600000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 3600000000000000, 2), ' h');
  ELSEIF picoseconds >= 60000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 60000000000000, 2), ' m');
  ELSEIF picoseconds >= 1000000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000000, 2), ' s');
  ELSEIF picoseconds >= 1000000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000000, 2), ' ms');
  ELSEIF picoseconds >= 1000000 THEN RETURN CONCAT(ROUND(picoseconds / 1000000, 2), ' us');
  ELSEIF picoseconds >= 1000 THEN RETURN CONCAT(ROUND(picoseconds / 1000, 2), ' ns');
  ELSE RETURN CONCAT(picoseconds, ' ps');
  END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `list_add` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `list_add`(in_list TEXT,
        in_add_value TEXT
    ) RETURNS text CHARSET utf8mb3
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a list, and a value to add to the list, and returns the resulting list.\n             Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n             Parameters\n             in_list (TEXT):\n               The comma separated list to add a value to\n             in_add_value (TEXT):\n               The value to add to the input list\n             Returns\n             TEXT\n             Example\n             mysql> select @@sql_mode;\n             +-----------------------------------------------------------------------------------+\n             | @@sql_mode                                                                        |\n             +-----------------------------------------------------------------------------------+\n             | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +-----------------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n             mysql> set sql_mode = sys.list_add(@@sql_mode, ''ANSI_QUOTES'');\n             Query OK, 0 rows affected (0.06 sec)\n             mysql> select @@sql_mode;\n             +-----------------------------------------------------------------------------------------------+\n             | @@sql_mode                                                                                    |\n             +-----------------------------------------------------------------------------------------------+\n             | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +-----------------------------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    IF (in_add_value IS NULL) THEN
        SIGNAL SQLSTATE '02200'
           SET MESSAGE_TEXT = 'Function sys.list_add: in_add_value input variable should not be NULL',
               MYSQL_ERRNO = 1138;
    END IF;
    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN
        RETURN in_add_value;
    END IF;
    RETURN (SELECT CONCAT(TRIM(BOTH ',' FROM TRIM(in_list)), ',', in_add_value));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `list_drop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `list_drop`(in_list TEXT,
        in_drop_value TEXT
    ) RETURNS text CHARSET utf8mb3
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a list, and a value to attempt to remove from the list, and returns the resulting list.\n             Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n             Parameters\n             in_list (TEXT):\n               The comma separated list to drop a value from\n             in_drop_value (TEXT):\n               The value to drop from the input list\n             Returns\n             TEXT\n             Example\n             mysql> select @@sql_mode;\n             +-----------------------------------------------------------------------------------------------+\n             | @@sql_mode                                                                                    |\n             +-----------------------------------------------------------------------------------------------+\n             | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +-----------------------------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n             mysql> set sql_mode = sys.list_drop(@@sql_mode, ''ONLY_FULL_GROUP_BY'');\n             Query OK, 0 rows affected (0.03 sec)\n             mysql> select @@sql_mode;\n             +----------------------------------------------------------------------------+\n             | @@sql_mode                                                                 |\n             +----------------------------------------------------------------------------+\n             | ANSI_QUOTES,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n             +----------------------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    IF (in_drop_value IS NULL) THEN
        SIGNAL SQLSTATE '02200'
           SET MESSAGE_TEXT = 'Function sys.list_drop: in_drop_value input variable should not be NULL',
               MYSQL_ERRNO = 1138;
    END IF;
    IF (in_list IS NULL OR LENGTH(in_list) = 0) THEN
        RETURN in_list;
    END IF;
    RETURN (SELECT TRIM(BOTH ',' FROM REPLACE(REPLACE(CONCAT(',', in_list), CONCAT(',', in_drop_value), ''), CONCAT(', ', in_drop_value), '')));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_account_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `ps_is_account_enabled`(in_host VARCHAR(60),
        in_user VARCHAR(16)
    ) RETURNS enum('YES','NO') CHARSET utf8mb3
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Determines whether instrumentation of an account is enabled\n             within Performance Schema.\n             Parameters\n             in_host VARCHAR(60):\n               The hostname of the account to check.\n             in_user (VARCHAR(16)):\n               The username of the account to check.\n             Returns\n             ENUM(''YES'', ''NO'', ''PARTIAL'')\n             Example\n             mysql> SELECT sys.ps_is_account_enabled(''localhost'', ''root'');\n             +------------------------------------------------+\n             | sys.ps_is_account_enabled(''localhost'', ''root'') |\n             +------------------------------------------------+\n             | YES                                            |\n             +------------------------------------------------+\n             1 row in set (0.01 sec)\n            '
BEGIN
    RETURN IF(EXISTS(SELECT 1
                       FROM performance_schema.setup_actors
                      WHERE (`HOST` = '%' OR in_host LIKE `HOST`)
                        AND (`USER` = '%' OR `USER` = in_user)
                    ),
              'YES', 'NO'
           );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_consumer_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `ps_is_consumer_enabled`(in_consumer varchar(64)
   ) RETURNS enum('YES','NO') CHARSET utf8mb3
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Determines whether a consumer is enabled (taking the consumer hierarchy into consideration)\n             within the Performance Schema.\n             Parameters\n             in_consumer VARCHAR(64):\n               The name of the consumer to check.\n             Returns\n             ENUM(''YES'', ''NO'')\n             Example\n             mysql> SELECT sys.ps_is_consumer_enabled(''events_stages_history'');\n             +-----------------------------------------------------+\n             | sys.ps_is_consumer_enabled(''events_stages_history'') |\n             +-----------------------------------------------------+\n             | NO                                                  |\n             +-----------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN (
        SELECT (CASE
                   WHEN c.NAME = 'global_instrumentation' THEN c.ENABLED
                   WHEN c.NAME = 'thread_instrumentation' THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   WHEN c.NAME LIKE '%\_digest'           THEN IF(cg.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   WHEN c.NAME LIKE '%\_current'          THEN IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES', 'YES', 'NO')
                   ELSE IF(cg.ENABLED = 'YES' AND ct.ENABLED = 'YES' AND c.ENABLED = 'YES'
                           AND ( SELECT cc.ENABLED FROM performance_schema.setup_consumers cc WHERE NAME = CONCAT(SUBSTRING_INDEX(c.NAME, '_', 2), '_current')
                               ) = 'YES', 'YES', 'NO')
                END) AS IsEnabled
          FROM performance_schema.setup_consumers c
               INNER JOIN performance_schema.setup_consumers cg
               INNER JOIN performance_schema.setup_consumers ct
         WHERE cg.NAME       = 'global_instrumentation'
               AND ct.NAME   = 'thread_instrumentation'
               AND c.NAME    = in_consumer
       );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_instrument_default_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `ps_is_instrument_default_enabled`(in_instrument VARCHAR(128)
    ) RETURNS enum('YES','NO') CHARSET utf8mb3
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns whether an instrument is enabled by default in this version of MySQL.\n             Parameters\n             in_instrument VARCHAR(128):\n               The instrument to check.\n             Returns\n             ENUM(''YES'', ''NO'')\n             Example\n             mysql> SELECT sys.ps_is_instrument_default_enabled(''statement/sql/select'');\n             +--------------------------------------------------------------+\n             | sys.ps_is_instrument_default_enabled(''statement/sql/select'') |\n             +--------------------------------------------------------------+\n             | YES                                                          |\n             +--------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    DECLARE v_enabled ENUM('YES', 'NO');
    SET v_enabled = IF(in_instrument LIKE 'wait/io/file/%'
                        OR in_instrument LIKE 'wait/io/table/%'
                        OR in_instrument LIKE 'statement/%'
                        OR in_instrument LIKE 'memory/performance_schema/%'
                        OR in_instrument IN ('wait/lock/table/sql/handler', 'idle')
               
                      ,
                       'YES',
                       'NO'
                    );
    RETURN v_enabled;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_instrument_default_timed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `ps_is_instrument_default_timed`(in_instrument VARCHAR(128)
    ) RETURNS enum('YES','NO') CHARSET utf8mb3
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns whether an instrument is timed by default in this version of MySQL.\n             Parameters\n             in_instrument VARCHAR(128):\n               The instrument to check.\n             Returns\n             ENUM(''YES'', ''NO'')\n             Example\n             mysql> SELECT sys.ps_is_instrument_default_timed(''statement/sql/select'');\n             +------------------------------------------------------------+\n             | sys.ps_is_instrument_default_timed(''statement/sql/select'') |\n             +------------------------------------------------------------+\n             | YES                                                        |\n             +------------------------------------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    DECLARE v_timed ENUM('YES', 'NO');
    SET v_timed = IF(in_instrument LIKE 'wait/io/file/%'
                        OR in_instrument LIKE 'wait/io/table/%'
                        OR in_instrument LIKE 'statement/%'
                        OR in_instrument IN ('wait/lock/table/sql/handler', 'idle')
               
                      ,
                       'YES',
                       'NO'
                    );
    RETURN v_timed;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_is_thread_instrumented` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `ps_is_thread_instrumented`(in_connection_id BIGINT UNSIGNED
    ) RETURNS enum('YES','NO','UNKNOWN') CHARSET utf8mb3
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Checks whether the provided connection id is instrumented within Performance Schema.\n             Parameters\n             in_connection_id (BIGINT UNSIGNED):\n               The id of the connection to check.\n             Returns\n             ENUM(''YES'', ''NO'', ''UNKNOWN'')\n             Example\n             mysql> SELECT sys.ps_is_thread_instrumented(CONNECTION_ID());\n             +------------------------------------------------+\n             | sys.ps_is_thread_instrumented(CONNECTION_ID()) |\n             +------------------------------------------------+\n             | YES                                            |\n             +------------------------------------------------+\n            '
BEGIN
    DECLARE v_enabled ENUM('YES', 'NO', 'UNKNOWN');
    IF (in_connection_id IS NULL) THEN
        RETURN NULL;
    END IF;
    SELECT INSTRUMENTED INTO v_enabled
      FROM performance_schema.threads
     WHERE PROCESSLIST_ID = in_connection_id;
    IF (v_enabled IS NULL) THEN
        RETURN 'UNKNOWN';
    ELSE
        RETURN v_enabled;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_account` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `ps_thread_account`(in_thread_id BIGINT UNSIGNED
    ) RETURNS text CHARSET utf8mb3
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Return the user@host account for the given Performance Schema thread id.\n             Parameters\n             in_thread_id (BIGINT UNSIGNED):\n               The id of the thread to return the account for.\n             Example\n             mysql> select thread_id, processlist_user, processlist_host from performance_schema.threads where type = ''foreground'';\n              +-----------+------------------+------------------+\n              | thread_id | processlist_user | processlist_host |\n              +-----------+------------------+------------------+\n              |        23 | NULL             | NULL             |\n              |        30 | root             | localhost        |\n              |        31 | msandbox         | localhost        |\n              |        32 | msandbox         | localhost        |\n              +-----------+------------------+------------------+\n              4 rows in set (0.00 sec)\n              mysql> select sys.ps_thread_account(31);\n              +---------------------------+\n              | sys.ps_thread_account(31) |\n              +---------------------------+\n              | msandbox@localhost        |\n              +---------------------------+\n              1 row in set (0.00 sec)\n            '
BEGIN
    RETURN (SELECT IF(
                      type = 'FOREGROUND',
                      CONCAT(processlist_user, '@', processlist_host),
                      type
                     ) AS account
              FROM `performance_schema`.`threads`
             WHERE thread_id = in_thread_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `ps_thread_id`(in_connection_id BIGINT UNSIGNED
    ) RETURNS bigint(20) unsigned
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Return the Performance Schema THREAD_ID for the specified connection ID.\n             Parameters\n             in_connection_id (BIGINT UNSIGNED):\n               The id of the connection to return the thread id for. If NULL, the current\n               connection thread id is returned.\n             Example\n             mysql> SELECT sys.ps_thread_id(79);\n             +----------------------+\n             | sys.ps_thread_id(79) |\n             +----------------------+\n             |                   98 |\n             +----------------------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.ps_thread_id(CONNECTION_ID());\n             +-----------------------------------+\n             | sys.ps_thread_id(CONNECTION_ID()) |\n             +-----------------------------------+\n             |                                98 |\n             +-----------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN (SELECT THREAD_ID
              FROM `performance_schema`.`threads`
             WHERE PROCESSLIST_ID = IFNULL(in_connection_id, CONNECTION_ID())
           );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_stack` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `ps_thread_stack`(thd_id BIGINT UNSIGNED,
        debug BOOLEAN
    ) RETURNS longtext CHARSET latin1
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Outputs a JSON formatted stack of all statements, stages and events\n             within Performance Schema for the specified thread.\n             Parameters\n             thd_id (BIGINT UNSIGNED):\n               The id of the thread to trace. This should match the thread_id\n               column from the performance_schema.threads table.\n             in_verbose (BOOLEAN):\n               Include file:lineno information in the events.\n             Example\n             (line separation added for output)\n             mysql> SELECT sys.ps_thread_stack(37, FALSE) AS thread_stack\\G\n             *************************** 1. row ***************************\n             thread_stack: {"rankdir": "LR","nodesep": "0.10","stack_created": "2014-02-19 13:39:03",\n             "mysql_version": "5.7.3-m13","mysql_user": "root@localhost","events":\n             [{"nesting_event_id": "0", "event_id": "10", "timer_wait": 256.35, "event_info":\n             "sql/select", "wait_info": "select @@version_comment limit 1\\nerrors: 0\\nwarnings: 0\\nlock time:\n             ...\n            '
BEGIN
    DECLARE json_objects LONGTEXT;
    
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE processlist_id = CONNECTION_ID();
    
    SET SESSION group_concat_max_len=@@global.max_allowed_packet;
    SELECT GROUP_CONCAT(CONCAT( '{'
              , CONCAT_WS( ', '
              , CONCAT('"nesting_event_id": "', IF(nesting_event_id IS NULL, '0', nesting_event_id), '"')
              , CONCAT('"event_id": "', event_id, '"')
              , CONCAT( '"timer_wait": ', ROUND(timer_wait/1000000, 2))
              , CONCAT( '"event_info": "'
                  , CASE
                        WHEN event_name NOT LIKE 'wait/io%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -2), '\\', '\\\\')
                        WHEN event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%' THEN REPLACE(SUBSTRING_INDEX(event_name, '/', -4), '\\', '\\\\')
                        ELSE event_name
                    END
                  , '"'
              )
              , CONCAT( '"wait_info": "', IFNULL(wait_info, ''), '"')
              , CONCAT( '"source": "', IF(true AND event_name LIKE 'wait%', IFNULL(wait_info, ''), ''), '"')
              , CASE
                     WHEN event_name LIKE 'wait/io/file%'      THEN '"event_type": "io/file"'
                     WHEN event_name LIKE 'wait/io/table%'     THEN '"event_type": "io/table"'
                     WHEN event_name LIKE 'wait/io/socket%'    THEN '"event_type": "io/socket"'
                     WHEN event_name LIKE 'wait/synch/mutex%'  THEN '"event_type": "synch/mutex"'
                     WHEN event_name LIKE 'wait/synch/cond%'   THEN '"event_type": "synch/cond"'
                     WHEN event_name LIKE 'wait/synch/rwlock%' THEN '"event_type": "synch/rwlock"'
                     WHEN event_name LIKE 'wait/lock%'         THEN '"event_type": "lock"'
                     WHEN event_name LIKE 'statement/%'        THEN '"event_type": "stmt"'
                     WHEN event_name LIKE 'stage/%'            THEN '"event_type": "stage"'
                     WHEN event_name LIKE '%idle%'             THEN '"event_type": "idle"'
                     ELSE ''
                END
            )
            , '}'
          )
          ORDER BY event_id ASC SEPARATOR ',') event
    INTO json_objects
    FROM (
          
          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,
                  CONCAT(sql_text, '\\n',
                         'errors: ', errors, '\\n',
                         'warnings: ', warnings, '\\n',
                         'lock time: ', ROUND(lock_time/1000000, 2),'us\\n',
                         'rows affected: ', rows_affected, '\\n',
                         'rows sent: ', rows_sent, '\\n',
                         'rows examined: ', rows_examined, '\\n',
                         'tmp tables: ', created_tmp_tables, '\\n',
                         'tmp disk tables: ', created_tmp_disk_tables, '\\n',
                         'select scan: ', select_scan, '\\n',
                         'select full join: ', select_full_join, '\\n',
                         'select full range join: ', select_full_range_join, '\\n',
                         'select range: ', select_range, '\\n',
                         'select range check: ', select_range_check, '\\n',
                         'sort merge passes: ', sort_merge_passes, '\\n',
                         'sort rows: ', sort_rows, '\\n',
                         'sort range: ', sort_range, '\\n',
                         'sort scan: ', sort_scan, '\\n',
                         'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n',
                         'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n'
                         ) AS wait_info
             FROM performance_schema.events_statements_history_long WHERE thread_id = thd_id)
          UNION
          (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info
             FROM performance_schema.events_stages_history_long WHERE thread_id = thd_id)
          UNION 
          (SELECT thread_id, event_id,
                  CONCAT(event_name ,
                         IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''),
                         IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''),
                         IF(event_name LIKE 'wait/io/file%', '\\n', ''),
                         IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''),
                         IF(object_name IS NOT NULL,
                            IF (event_name LIKE 'wait/io/socket%',
                                CONCAT(IF (object_name LIKE ':0%', @@socket, object_name)),
                                object_name),
                            ''),
                          IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''),'\\n'
                         ) AS event_name,
                  timer_wait, timer_start, nesting_event_id, source AS wait_info
             FROM performance_schema.events_waits_history_long WHERE thread_id = thd_id)) events
    ORDER BY event_id;
    RETURN CONCAT('{',
                  CONCAT_WS(',',
                            '"rankdir": "LR"',
                            '"nodesep": "0.10"',
                            CONCAT('"stack_created": "', NOW(), '"'),
                            CONCAT('"mysql_version": "', VERSION(), '"'),
                            CONCAT('"mysql_user": "', CURRENT_USER(), '"'),
                            CONCAT('"events": [', IFNULL(json_objects,''), ']')
                           ),
                  '}');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ps_thread_trx_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `ps_thread_trx_info`(in_thread_id BIGINT UNSIGNED
    ) RETURNS longtext CHARSET utf8mb3
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns a JSON object with info on the given threads current transaction,\n             and the statements it has already executed, derived from the\n             performance_schema.events_transactions_current and\n             performance_schema.events_statements_history tables (so the consumers\n             for these also have to be enabled within Performance Schema to get full\n             data in the object).\n             When the output exceeds the default truncation length (65535), a JSON error\n             object is returned, such as:\n             { "error": "Trx info truncated: Row 6 was cut by GROUP_CONCAT()" }\n             Similar error objects are returned for other warnings/and exceptions raised\n             when calling the function.\n             The max length of the output of this function can be controlled with the\n             ps_thread_trx_info.max_length variable set via sys_config, or the\n             @sys.ps_thread_trx_info.max_length user variable, as appropriate.\n             Parameters\n             in_thread_id (BIGINT UNSIGNED):\n               The id of the thread to return the transaction info for.\n             Example\n             SELECT sys.ps_thread_trx_info(48)\\G\n             *************************** 1. row ***************************\n             sys.ps_thread_trx_info(48): [\n               {\n                 "time": "790.70 us",\n                 "state": "COMMITTED",\n                 "mode": "READ WRITE",\n                 "autocommitted": "NO",\n                 "gtid": "AUTOMATIC",\n                 "isolation": "REPEATABLE READ",\n                 "statements_executed": [\n                   {\n                     "sql_text": "INSERT INTO info VALUES (1, ''foo'')",\n                     "time": "471.02 us",\n                     "schema": "trx",\n                     "rows_examined": 0,\n                     "rows_affected": 1,\n                     "rows_sent": 0,\n                     "tmp_tables": 0,\n                     "tmp_disk_tables": 0,\n                     "sort_rows": 0,\n                     "sort_merge_passes": 0\n                   },\n                   {\n                     "sql_text": "COMMIT",\n                     "time": "254.42 us",\n                     "schema": "trx",\n                     "rows_examined": 0,\n                     "rows_affected": 0,\n                     "rows_sent": 0,\n                     "tmp_tables": 0,\n                     "tmp_disk_tables": 0,\n                     "sort_rows": 0,\n                     "sort_merge_passes": 0\n                   }\n                 ]\n               },\n               {\n                 "time": "426.20 us",\n                 "state": "COMMITTED",\n                 "mode": "READ WRITE",\n                 "autocommitted": "NO",\n                 "gtid": "AUTOMATIC",\n                 "isolation": "REPEATABLE READ",\n                 "statements_executed": [\n                   {\n                     "sql_text": "INSERT INTO info VALUES (2, ''bar'')",\n                     "time": "107.33 us",\n                     "schema": "trx",\n                     "rows_examined": 0,\n                     "rows_affected": 1,\n                     "rows_sent": 0,\n                     "tmp_tables": 0,\n                     "tmp_disk_tables": 0,\n                     "sort_rows": 0,\n                     "sort_merge_passes": 0\n                   },\n                   {\n                     "sql_text": "COMMIT",\n                     "time": "213.23 us",\n                     "schema": "trx",\n                     "rows_examined": 0,\n                     "rows_affected": 0,\n                     "rows_sent": 0,\n                     "tmp_tables": 0,\n                     "tmp_disk_tables": 0,\n                     "sort_rows": 0,\n                     "sort_merge_passes": 0\n                   }\n                 ]\n               }\n             ]\n             1 row in set (0.03 sec)\n            '
BEGIN
    DECLARE v_output LONGTEXT DEFAULT '{}';
    DECLARE v_msg_text TEXT DEFAULT '';
    DECLARE v_signal_msg TEXT DEFAULT '';
    DECLARE v_mysql_errno INT;
    DECLARE v_max_output_len BIGINT;
    DECLARE EXIT HANDLER FOR SQLWARNING, SQLEXCEPTION
    BEGIN
        GET DIAGNOSTICS CONDITION 1
            v_msg_text = MESSAGE_TEXT,
            v_mysql_errno = MYSQL_ERRNO;
        IF v_mysql_errno = 1260 THEN
            SET v_signal_msg = CONCAT('{ "error": "Trx info truncated: ', v_msg_text, '" }');
        ELSE
            SET v_signal_msg = CONCAT('{ "error": "', v_msg_text, '" }');
        END IF;
        RETURN v_signal_msg;
    END;
    IF (@sys.ps_thread_trx_info.max_length IS NULL) THEN
        SET @sys.ps_thread_trx_info.max_length = sys.sys_get_config('ps_thread_trx_info.max_length', 65535);
    END IF;
    IF (@sys.ps_thread_trx_info.max_length != @@session.group_concat_max_len) THEN
        SET @old_group_concat_max_len = @@session.group_concat_max_len;
        SET v_max_output_len = (@sys.ps_thread_trx_info.max_length - 5);
        SET SESSION group_concat_max_len = v_max_output_len;
    END IF;
    SET v_output = (
        SELECT CONCAT('[', IFNULL(GROUP_CONCAT(trx_info ORDER BY event_id), ''), '\n]') AS trx_info
          FROM (SELECT trxi.thread_id,
                       trxi.event_id,
                       GROUP_CONCAT(
                         IFNULL(
                           CONCAT('\n  {\n',
                                  '    "time": "', IFNULL(sys.format_time(trxi.timer_wait), ''), '",\n',
                                  '    "state": "', IFNULL(trxi.state, ''), '",\n',
                                  '    "mode": "', IFNULL(trxi.access_mode, ''), '",\n',
                                  '    "autocommitted": "', IFNULL(trxi.autocommit, ''), '",\n',
                                  '    "gtid": "', IFNULL(trxi.gtid, ''), '",\n',
                                  '    "isolation": "', IFNULL(trxi.isolation_level, ''), '",\n',
                                  '    "statements_executed": [', IFNULL(s.stmts, ''), IF(s.stmts IS NULL, ' ]\n', '\n    ]\n'),
                                  '  }'
                           ),
                           '')
                         ORDER BY event_id) AS trx_info
                  FROM (
                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level
                           FROM performance_schema.events_transactions_current
                          WHERE thread_id = in_thread_id
                            AND end_event_id IS NULL)
                        UNION
                        (SELECT thread_id, event_id, timer_wait, state,access_mode, autocommit, gtid, isolation_level
                           FROM performance_schema.events_transactions_history
                          WHERE thread_id = in_thread_id)
                       ) AS trxi
                  LEFT JOIN (SELECT thread_id,
                                    nesting_event_id,
                                    GROUP_CONCAT(
                                      IFNULL(
                                        CONCAT('\n      {\n',
                                               '        "sql_text": "', IFNULL(sys.format_statement(REPLACE(sql_text, '\\', '\\\\')), ''), '",\n',
                                               '        "time": "', IFNULL(sys.format_time(timer_wait), ''), '",\n',
                                               '        "schema": "', IFNULL(current_schema, ''), '",\n',
                                               '        "rows_examined": ', IFNULL(rows_examined, ''), ',\n',
                                               '        "rows_affected": ', IFNULL(rows_affected, ''), ',\n',
                                               '        "rows_sent": ', IFNULL(rows_sent, ''), ',\n',
                                               '        "tmp_tables": ', IFNULL(created_tmp_tables, ''), ',\n',
                                               '        "tmp_disk_tables": ', IFNULL(created_tmp_disk_tables, ''), ',\n',
                                               '        "sort_rows": ', IFNULL(sort_rows, ''), ',\n',
                                               '        "sort_merge_passes": ', IFNULL(sort_merge_passes, ''), '\n',
                                               '      }'), '') ORDER BY event_id) AS stmts
                               FROM performance_schema.events_statements_history
                              WHERE sql_text IS NOT NULL
                                AND thread_id = in_thread_id
                              GROUP BY thread_id, nesting_event_id
                            ) AS s
                    ON trxi.thread_id = s.thread_id
                   AND trxi.event_id = s.nesting_event_id
                 WHERE trxi.thread_id = in_thread_id
                 GROUP BY trxi.thread_id, trxi.event_id
                ) trxs
          GROUP BY thread_id
    );
    IF (@old_group_concat_max_len IS NOT NULL) THEN
        SET SESSION group_concat_max_len = @old_group_concat_max_len;
    END IF;
    RETURN v_output;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `quote_identifier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `quote_identifier`(in_identifier TEXT) RETURNS text CHARSET utf8mb3
    NO SQL
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes an unquoted identifier (schema name, table name, etc.) and\n             returns the identifier quoted with backticks.\n             Parameters\n             in_identifier (TEXT):\n               The identifier to quote.\n             Returns\n             TEXT\n             Example\n             mysql> SELECT sys.quote_identifier(''my_identifier'') AS Identifier;\n             +-----------------+\n             | Identifier      |\n             +-----------------+\n             | `my_identifier` |\n             +-----------------+\n             1 row in set (0.00 sec)\n             mysql> SELECT sys.quote_identifier(''my`idenfier'') AS Identifier;\n             +----------------+\n             | Identifier     |\n             +----------------+\n             | `my``idenfier` |\n             +----------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN CONCAT('`', REPLACE(in_identifier, '`', '``'), '`');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `sys_get_config` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `sys_get_config`(in_variable_name VARCHAR(128),
        in_default_value VARCHAR(128)
    ) RETURNS varchar(128) CHARSET utf8mb3
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns the value for the requested variable using the following logic:\n                1. If the option exists in sys.sys_config return the value from there.\n                2. Else fall back on the provided default value.\n             Notes for using sys_get_config():\n                * If the default value argument to sys_get_config() is NULL and case 2. is reached, NULL is returned.\n                  It is then expected that the caller is able to handle NULL for the given configuration option.\n                * The convention is to name the user variables @sys.<name of variable>. It is <name of variable> that\n                  is stored in the sys_config table and is what is expected as the argument to sys_get_config().\n                * If you want to check whether the configuration option has already been set and if not assign with\n                  the return value of sys_get_config() you can use IFNULL(...) (see example below). However this should\n                  not be done inside a loop (e.g. for each row in a result set) as for repeated calls where assignment\n                  is only needed in the first iteration using IFNULL(...) is expected to be significantly slower than\n                  using an IF (...) THEN ... END IF; block (see example below).\n             Parameters\n             in_variable_name (VARCHAR(128)):\n               The name of the config option to return the value for.\n             in_default_value (VARCHAR(128)):\n               The default value to return if the variable does not exist in sys.sys_config.\n             Returns\n             VARCHAR(128)\n             Example\n             mysql> SELECT sys.sys_get_config(''statement_truncate_len'', 128) AS Value;\n             +-------+\n             | Value |\n             +-------+\n             | 64    |\n             +-------+\n             1 row in set (0.00 sec)\n             mysql> SET @sys.statement_truncate_len = IFNULL(@sys.statement_truncate_len, sys.sys_get_config(''statement_truncate_len'', 64));\n             Query OK, 0 rows affected (0.00 sec)\n             IF (@sys.statement_truncate_len IS NULL) THEN\n                 SET @sys.statement_truncate_len = sys.sys_get_config(''statement_truncate_len'', 64);\n             END IF;\n            '
BEGIN
    DECLARE v_value VARCHAR(128) DEFAULT NULL;
    DECLARE old_val INTEGER DEFAULT NULL;
    SET v_value = (SELECT value FROM sys.sys_config WHERE variable = in_variable_name);
    IF (v_value IS NULL) THEN
        SET v_value = in_default_value;
    END IF;
    RETURN v_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_major` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `version_major`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns the major version of MySQL Server.\n             Returns\n             TINYINT UNSIGNED\n             Example\n             mysql> SELECT VERSION(), sys.version_major();\n             +--------------------------------------+---------------------+\n             | VERSION()                            | sys.version_major() |\n             +--------------------------------------+---------------------+\n             | 5.7.9-enterprise-commercial-advanced | 5                   |\n             +--------------------------------------+---------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_minor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `version_minor`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns the minor (release series) version of MySQL Server.\n             Returns\n             TINYINT UNSIGNED\n             Example\n             mysql> SELECT VERSION(), sys.server_minor();\n             +--------------------------------------+---------------------+\n             | VERSION()                            | sys.version_minor() |\n             +--------------------------------------+---------------------+\n             | 5.7.9-enterprise-commercial-advanced | 7                   |\n             +--------------------------------------+---------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', 2), '.', -1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `version_patch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` FUNCTION `version_patch`() RETURNS tinyint(3) unsigned
    NO SQL
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Returns the patch release version of MySQL Server.\n             Returns\n             TINYINT UNSIGNED\n             Example\n             mysql> SELECT VERSION(), sys.version_patch();\n             +--------------------------------------+---------------------+\n             | VERSION()                            | sys.version_patch() |\n             +--------------------------------------+---------------------+\n             | 5.7.9-enterprise-commercial-advanced | 9                   |\n             +--------------------------------------+---------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    RETURN SUBSTRING_INDEX(SUBSTRING_INDEX(VERSION(), '-', 1), '.', -1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_synonym_db` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `create_synonym_db`(
        IN in_db_name VARCHAR(64),
        IN in_synonym VARCHAR(64)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes a source database name and synonym name, and then creates the\n             synonym database with views that point to all of the tables within\n             the source database.\n             Useful for creating a "ps" synonym for "performance_schema",\n             or "is" instead of "information_schema", for example.\n             Parameters\n             in_db_name (VARCHAR(64)):\n               The database name that you would like to create a synonym for.\n             in_synonym (VARCHAR(64)):\n               The database synonym name.\n             Example\n             mysql> SHOW DATABASES;\n             +--------------------+\n             | Database           |\n             +--------------------+\n             | information_schema |\n             | mysql              |\n             | performance_schema |\n             | sys                |\n             | test               |\n             +--------------------+\n             5 rows in set (0.00 sec)\n             mysql> CALL sys.create_synonym_db(''performance_schema'', ''ps'');\n             +---------------------------------------+\n             | summary                               |\n             +---------------------------------------+\n             | Created 74 views in the `ps` database |\n             +---------------------------------------+\n             1 row in set (8.57 sec)\n             Query OK, 0 rows affected (8.57 sec)\n             mysql> SHOW DATABASES;\n             +--------------------+\n             | Database           |\n             +--------------------+\n             | information_schema |\n             | mysql              |\n             | performance_schema |\n             | ps                 |\n             | sys                |\n             | test               |\n             +--------------------+\n             6 rows in set (0.00 sec)\n             mysql> SHOW FULL TABLES FROM ps;\n             +------------------------------------------------------+------------+\n             | Tables_in_ps                                         | Table_type |\n             +------------------------------------------------------+------------+\n             | accounts                                             | VIEW       |\n             | cond_instances                                       | VIEW       |\n             | events_stages_current                                | VIEW       |\n             | events_stages_history                                | VIEW       |\n             ...\n            '
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_db_name_check VARCHAR(64);
    DECLARE v_db_err_msg TEXT;
    DECLARE v_table VARCHAR(64);
    DECLARE v_views_created INT DEFAULT 0;
    DECLARE db_doesnt_exist CONDITION FOR SQLSTATE '42000';
    DECLARE db_name_exists CONDITION FOR SQLSTATE 'HY000';
    DECLARE c_table_names CURSOR FOR
        SELECT TABLE_NAME
          FROM INFORMATION_SCHEMA.TABLES
         WHERE TABLE_SCHEMA = in_db_name;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    SELECT SCHEMA_NAME INTO v_db_name_check
      FROM INFORMATION_SCHEMA.SCHEMATA
     WHERE SCHEMA_NAME = in_db_name;
    IF v_db_name_check IS NULL THEN
        SET v_db_err_msg = CONCAT('Unknown database ', in_db_name);
        SIGNAL SQLSTATE 'HY000'
            SET MESSAGE_TEXT = v_db_err_msg;
    END IF;
    SELECT SCHEMA_NAME INTO v_db_name_check
      FROM INFORMATION_SCHEMA.SCHEMATA
     WHERE SCHEMA_NAME = in_synonym;
    IF v_db_name_check = in_synonym THEN
        SET v_db_err_msg = CONCAT('Can\'t create database ', in_synonym, '; database exists');
        SIGNAL SQLSTATE 'HY000'
            SET MESSAGE_TEXT = v_db_err_msg;
    END IF;
    SET @create_db_stmt := CONCAT('CREATE DATABASE ', sys.quote_identifier(in_synonym));
    PREPARE create_db_stmt FROM @create_db_stmt;
    EXECUTE create_db_stmt;
    DEALLOCATE PREPARE create_db_stmt;
    SET v_done = FALSE;
    OPEN c_table_names;
    c_table_names: LOOP
        FETCH c_table_names INTO v_table;
        IF v_done THEN
            LEAVE c_table_names;
        END IF;
        SET @create_view_stmt = CONCAT(
            'CREATE SQL SECURITY INVOKER VIEW ',
            sys.quote_identifier(in_synonym),
            '.',
            sys.quote_identifier(v_table),
            ' AS SELECT * FROM ',
            sys.quote_identifier(in_db_name),
            '.',
            sys.quote_identifier(v_table)
        );
        PREPARE create_view_stmt FROM @create_view_stmt;
        EXECUTE create_view_stmt;
        DEALLOCATE PREPARE create_view_stmt;
        SET v_views_created = v_views_created + 1;
    END LOOP;
    CLOSE c_table_names;
    SELECT CONCAT(
        'Created ', v_views_created, ' view',
        IF(v_views_created != 1, 's', ''), ' in the ',
        sys.quote_identifier(in_synonym), ' database'
    ) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `diagnostics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `diagnostics`(
        IN in_max_runtime int unsigned, IN in_interval int unsigned,
        IN in_auto_config enum ('current', 'medium', 'full')
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Create a report of the current status of the server for diagnostics purposes. Data collected includes (some items depends on versions and settings):\n                * The GLOBAL VARIABLES\n                * Several sys schema views including metrics or equivalent (depending on version and settings)\n                * Queries in the 95th percentile\n                * Several ndbinfo views for MySQL Cluster\n                * Replication (both master and slave) information.\n             Some of the sys schema views are calculated as initial (optional), overall, delta:\n                * The initial view is the content of the view at the start of this procedure.\n                  This output will be the same as the the start values used for the delta view.\n                  The initial view is included if @sys.diagnostics.include_raw = ''ON''.\n                * The overall view is the content of the view at the end of this procedure.\n                  This output is the same as the end values used for the delta view.\n                  The overall view is always included.\n                * The delta view is the difference from the beginning to the end. Note that for min and max values\n                  they are simply the min or max value from the end view respectively, so does not necessarily reflect\n                  the minimum/maximum value in the monitored period.\n                  Note: except for the metrics views the delta is only calculation between the first and last outputs.\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Versions supported:\n                * MySQL 5.6: 5.6.10 and later\n                * MySQL 5.7: 5.7.9 and later\n             Parameters\n             in_max_runtime (INT UNSIGNED):\n               The maximum time to keep collecting data.\n               Use NULL to get the default which is 60 seconds, otherwise enter a value greater than 0.\n             in_interval (INT UNSIGNED):\n               How long to sleep between data collections.\n               Use NULL to get the default which is 30 seconds, otherwise enter a value greater than 0.\n             in_auto_config (ENUM(''current'', ''medium'', ''full''))\n               Automatically enable Performance Schema instruments and consumers.\n               NOTE: The more that are enabled, the more impact on the performance.\n               Supported values are:\n                  * current - use the current settings.\n                  * medium - enable some settings.\n                  * full - enables all settings. This will have a big impact on the\n                           performance - be careful using this option.\n               If another setting the ''current'' is chosen, the current settings\n               are restored at the end of the procedure.\n             Configuration Options\n             sys.diagnostics.allow_i_s_tables\n               Specifies whether it is allowed to do table scan queries on information_schema.TABLES. This can be expensive if there\n               are many tables. Set to ''ON'' to allow, ''OFF'' to not allow.\n               Default is ''OFF''.\n             sys.diagnostics.include_raw\n               Set to ''ON'' to include the raw data (e.g. the original output of "SELECT * FROM sys.metrics").\n               Use this to get the initial values of the various views.\n               Default is ''OFF''.\n             sys.statement_truncate_len\n               How much of queries in the process list output to include.\n               Default is 64.\n             sys.debug\n               Whether to provide debugging output.\n               Default is ''OFF''. Set to ''ON'' to include.\n             Example\n             To create a report and append it to the file diag.out:\n             mysql> TEE diag.out;\n             mysql> CALL sys.diagnostics(120, 30, ''current'');\n             ...\n             mysql> NOTEE;\n            '
BEGIN
    DECLARE v_start, v_runtime, v_iter_start, v_sleep DECIMAL(20,2) DEFAULT 0.0;
    DECLARE v_has_innodb, v_has_ndb, v_has_ps, v_has_replication, v_has_ps_replication VARCHAR(8) CHARSET utf8 DEFAULT 'NO';
    DECLARE v_this_thread_enabled, v_has_ps_vars, v_has_metrics ENUM('YES', 'NO');
    DECLARE v_table_name, v_banner VARCHAR(64) CHARSET utf8;
    DECLARE v_sql_status_summary_select, v_sql_status_summary_delta, v_sql_status_summary_from, v_no_delta_names TEXT;
    DECLARE v_output_time, v_output_time_prev DECIMAL(20,3) UNSIGNED;
    DECLARE v_output_count, v_count, v_old_group_concat_max_len INT UNSIGNED DEFAULT 0;
    DECLARE v_status_summary_width TINYINT UNSIGNED DEFAULT 50;
    DECLARE v_done BOOLEAN DEFAULT FALSE;
    DECLARE c_ndbinfo CURSOR FOR
        SELECT TABLE_NAME
          FROM information_schema.TABLES
         WHERE TABLE_SCHEMA = 'ndbinfo'
               AND TABLE_NAME NOT IN (
                  'blocks',
                  'config_params',
                  'dict_obj_types',
                  'disk_write_speed_base',
                  'memory_per_fragment',
                  'memoryusage',
                  'operations_per_fragment',
                  'threadblocks'
               );
    DECLARE c_sysviews_w_delta CURSOR FOR
        SELECT table_name
          FROM tmp_sys_views_delta
         ORDER BY table_name;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    END IF;
    IF (in_max_runtime < in_interval) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_max_runtime must be greater than or equal to in_interval';
    END IF;
    IF (in_max_runtime = 0) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_max_runtime must be greater than 0';
    END IF;
    IF (in_interval = 0) THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'in_interval must be greater than 0';
    END IF;
    IF (@sys.diagnostics.allow_i_s_tables IS NULL) THEN
        SET @sys.diagnostics.allow_i_s_tables = sys.sys_get_config('diagnostics.allow_i_s_tables', 'OFF');
    END IF;
    IF (@sys.diagnostics.include_raw IS NULL) THEN
        SET @sys.diagnostics.include_raw      = sys.sys_get_config('diagnostics.include_raw'     , 'OFF');
    END IF;
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug                        = sys.sys_get_config('debug'                       , 'OFF');
    END IF;
    IF (@sys.statement_truncate_len IS NULL) THEN
        SET @sys.statement_truncate_len       = sys.sys_get_config('statement_truncate_len'      , '64' );
    END IF;
    SET @log_bin := @@sql_log_bin;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = 0;
    END IF;
    SET v_no_delta_names = CONCAT('s%{COUNT}.Variable_name NOT IN (',
        '''innodb_buffer_pool_pages_total'', ',
        '''innodb_page_size'', ',
        '''last_query_cost'', ',
        '''last_query_partial_plans'', ',
        '''qcache_total_blocks'', ',
        '''slave_last_heartbeat'', ',
        '''ssl_ctx_verify_depth'', ',
        '''ssl_ctx_verify_mode'', ',
        '''ssl_session_cache_size'', ',
        '''ssl_verify_depth'', ',
        '''ssl_verify_mode'', ',
        '''ssl_version'', ',
        '''buffer_flush_lsn_avg_rate'', ',
        '''buffer_flush_pct_for_dirty'', ',
        '''buffer_flush_pct_for_lsn'', ',
        '''buffer_pool_pages_total'', ',
        '''lock_row_lock_time_avg'', ',
        '''lock_row_lock_time_max'', ',
        '''innodb_page_size''',
    ')');
    IF (in_auto_config <> 'current') THEN
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('Updating Performance Schema configuration to ', in_auto_config) AS 'Debug';
        END IF;
        CALL sys.ps_setup_save(0);
        IF (in_auto_config = 'medium') THEN
            UPDATE performance_schema.setup_consumers
                SET ENABLED = 'YES'
            WHERE NAME NOT LIKE '%\_history%';
            UPDATE performance_schema.setup_instruments
                SET ENABLED = 'YES',
                    TIMED   = 'YES'
            WHERE NAME NOT LIKE 'wait/synch/%';
        ELSEIF (in_auto_config = 'full') THEN
            UPDATE performance_schema.setup_consumers
                SET ENABLED = 'YES';
            UPDATE performance_schema.setup_instruments
                SET ENABLED = 'YES',
                    TIMED   = 'YES';
        END IF;
        UPDATE performance_schema.threads
           SET INSTRUMENTED = 'YES'
         WHERE PROCESSLIST_ID <> CONNECTION_ID();
    END IF;
    SET v_start        = UNIX_TIMESTAMP(NOW(2)),
        in_interval    = IFNULL(in_interval, 30),
        in_max_runtime = IFNULL(in_max_runtime, 60);
    SET v_banner = REPEAT(
                      '-',
                      LEAST(
                         GREATEST(
                            36,
                            CHAR_LENGTH(VERSION()),
                            CHAR_LENGTH(@@global.version_comment),
                            CHAR_LENGTH(@@global.version_compile_os),
                            CHAR_LENGTH(@@global.version_compile_machine),
                            CHAR_LENGTH(@@global.socket),
                            CHAR_LENGTH(@@global.datadir)
                         ),
                         64
                      )
                   );
    SELECT 'Hostname' AS 'Name', @@global.hostname AS 'Value'
    UNION ALL
    SELECT 'Port' AS 'Name', @@global.port AS 'Value'
    UNION ALL
    SELECT 'Socket' AS 'Name', @@global.socket AS 'Value'
    UNION ALL
    SELECT 'Datadir' AS 'Name', @@global.datadir AS 'Value'
    UNION ALL
    SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value'
    UNION ALL
    SELECT 'MySQL Version' AS 'Name', VERSION() AS 'Value'
    UNION ALL
    SELECT 'Sys Schema Version' AS 'Name', (SELECT sys_version FROM sys.version) AS 'Value'
    UNION ALL
    SELECT 'Version Comment' AS 'Name', @@global.version_comment AS 'Value'
    UNION ALL
    SELECT 'Version Compile OS' AS 'Name', @@global.version_compile_os AS 'Value'
    UNION ALL
    SELECT 'Version Compile Machine' AS 'Name', @@global.version_compile_machine AS 'Value'
    UNION ALL
    SELECT REPEAT('-', 23) AS 'Name', v_banner AS 'Value'
    UNION ALL
    SELECT 'UTC Time' AS 'Name', UTC_TIMESTAMP() AS 'Value'
    UNION ALL
    SELECT 'Local Time' AS 'Name', NOW() AS 'Value'
    UNION ALL
    SELECT 'Time Zone' AS 'Name', @@global.time_zone AS 'Value'
    UNION ALL
    SELECT 'System Time Zone' AS 'Name', @@global.system_time_zone AS 'Value'
    UNION ALL
    SELECT 'Time Zone Offset' AS 'Name', TIMEDIFF(NOW(), UTC_TIMESTAMP()) AS 'Value';
    SET v_has_innodb         = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'InnoDB'), 'NO'),
        v_has_ndb            = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'NDBCluster'), 'NO'),
        v_has_ps             = IFNULL((SELECT SUPPORT FROM information_schema.ENGINES WHERE ENGINE = 'PERFORMANCE_SCHEMA'), 'NO'),
        v_has_ps_replication = IF(v_has_ps = 'YES'
                                   AND EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'replication_applier_status'),
                                   'YES',
                                   'NO'
                               ),
        v_has_replication    = 'MAYBE',
        v_has_metrics        = IF(v_has_ps = 'YES' OR (sys.version_major() = 5 AND sys.version_minor() = 6), 'YES', 'NO'),
        v_has_ps_vars        = 'NO';
    
    
    IF (@sys.debug = 'ON') THEN
       SELECT v_has_innodb AS 'Has_InnoDB', v_has_ndb AS 'Has_NDBCluster',
              v_has_ps AS 'Has_Performance_Schema', v_has_ps_vars AS 'Has_P_S_SHOW_Variables',
              v_has_metrics AS 'Has_metrics',
              v_has_ps_replication 'AS Has_P_S_Replication', v_has_replication AS 'Has_Replication';
    END IF;
    IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
        SET @sys.diagnostics.sql = 'SHOW ENGINE InnoDB STATUS';
        PREPARE stmt_innodb_status FROM @sys.diagnostics.sql;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SET @sys.diagnostics.sql = 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS';
        PREPARE stmt_ps_status FROM @sys.diagnostics.sql;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
        SET @sys.diagnostics.sql = 'SHOW ENGINE NDBCLUSTER STATUS';
        PREPARE stmt_ndbcluster_status FROM @sys.diagnostics.sql;
    END IF;
    SET @sys.diagnostics.sql_gen_query_template = 'SELECT CONCAT(
           ''SELECT '',
           GROUP_CONCAT(
               CASE WHEN (SUBSTRING(TABLE_NAME, 3), COLUMN_NAME) IN (
                                (''io_global_by_file_by_bytes'', ''total''),
                                (''io_global_by_wait_by_bytes'', ''total_requested'')
                         )
                         THEN CONCAT(''sys.format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -8) = ''_latency''
                         THEN CONCAT(''sys.format_time('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated''
                         OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'')
                         THEN CONCAT(''sys.format_bytes('', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    ELSE COLUMN_NAME
               END
               ORDER BY ORDINAL_POSITION
               SEPARATOR '',\n       ''
           ),
           ''\n  FROM tmp_'', SUBSTRING(TABLE_NAME FROM 3), ''_%{OUTPUT}''
       ) AS Query INTO @sys.diagnostics.sql_select
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = ''sys'' AND TABLE_NAME = ?
 GROUP BY TABLE_NAME';
    SET @sys.diagnostics.sql_gen_query_delta = 'SELECT CONCAT(
           ''SELECT '',
           GROUP_CONCAT(
               CASE WHEN FIND_IN_SET(COLUMN_NAME, diag.pk)
                         THEN COLUMN_NAME
                    WHEN diag.TABLE_NAME = ''io_global_by_file_by_bytes'' AND COLUMN_NAME = ''write_pct''
                         THEN CONCAT(''IFNULL(ROUND(100-(((e.total_read-IFNULL(s.total_read, 0))'',
                                     ''/NULLIF(((e.total_read-IFNULL(s.total_read, 0))+(e.total_written-IFNULL(s.total_written, 0))), 0))*100), 2), 0.00) AS '',
                                     COLUMN_NAME)
                    WHEN (diag.TABLE_NAME, COLUMN_NAME) IN (
                                (''io_global_by_file_by_bytes'', ''total''),
                                (''io_global_by_wait_by_bytes'', ''total_requested'')
                         )
                         THEN CONCAT(''sys.format_bytes(e.'', COLUMN_NAME, ''-IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, 1, 4) IN (''max_'', ''min_'') AND SUBSTRING(COLUMN_NAME, -8) = ''_latency''
                         THEN CONCAT(''sys.format_time(e.'', COLUMN_NAME, '') AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME = ''avg_latency''
                         THEN CONCAT(''sys.format_time((e.total_latency - IFNULL(s.total_latency, 0))'',
                                     ''/NULLIF(e.total - IFNULL(s.total, 0), 0)) AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -12) = ''_avg_latency''
                         THEN CONCAT(''sys.format_time((e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''_latency, 0))'',
                                     ''/NULLIF(e.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s - IFNULL(s.'', SUBSTRING(COLUMN_NAME FROM 1 FOR CHAR_LENGTH(COLUMN_NAME)-12), ''s, 0), 0)) AS '', COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -8) = ''_latency''
                         THEN CONCAT(''sys.format_time(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    WHEN COLUMN_NAME IN (''avg_read'', ''avg_write'', ''avg_written'')
                         THEN CONCAT(''sys.format_bytes(IFNULL((e.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), ''-IFNULL(s.total_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''written''), '', 0))'',
                                     ''/NULLIF(e.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), ''-IFNULL(s.count_'', IF(COLUMN_NAME = ''avg_read'', ''read'', ''write''), '', 0), 0), 0)) AS '',
                                     COLUMN_NAME)
                    WHEN SUBSTRING(COLUMN_NAME, -7) = ''_memory'' OR SUBSTRING(COLUMN_NAME, -17) = ''_memory_allocated''
                         OR ((SUBSTRING(COLUMN_NAME, -5) = ''_read'' OR SUBSTRING(COLUMN_NAME, -8) = ''_written'' OR SUBSTRING(COLUMN_NAME, -6) = ''_write'') AND SUBSTRING(COLUMN_NAME, 1, 6) <> ''COUNT_'')
                         THEN CONCAT(''sys.format_bytes(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
                    ELSE CONCAT(''(e.'', COLUMN_NAME, '' - IFNULL(s.'', COLUMN_NAME, '', 0)) AS '', COLUMN_NAME)
               END
               ORDER BY ORDINAL_POSITION
               SEPARATOR '',\n       ''
           ),
           ''\n  FROM tmp_'', diag.TABLE_NAME, ''_end e
       LEFT OUTER JOIN tmp_'', diag.TABLE_NAME, ''_start s USING ('', diag.pk, '')''
       ) AS Query INTO @sys.diagnostics.sql_select
  FROM tmp_sys_views_delta diag
       INNER JOIN information_schema.COLUMNS c ON c.TABLE_NAME = CONCAT(''x$'', diag.TABLE_NAME)
 WHERE c.TABLE_SCHEMA = ''sys'' AND diag.TABLE_NAME = ?
 GROUP BY diag.TABLE_NAME';
    IF (v_has_ps = 'YES') THEN
        DROP TEMPORARY TABLE IF EXISTS tmp_sys_views_delta;
        CREATE TEMPORARY TABLE tmp_sys_views_delta (
            TABLE_NAME varchar(64) NOT NULL,
            order_by text COMMENT 'ORDER BY clause for the initial and overall views',
            order_by_delta text COMMENT 'ORDER BY clause for the delta views',
            where_delta text COMMENT 'WHERE clause to use for delta views to only include rows with a "count" > 0',
            limit_rows int unsigned COMMENT 'The maximum number of rows to include for the view',
            pk varchar(128) COMMENT 'Used with the FIND_IN_SET() function so use comma separated list without whitespace',
            PRIMARY KEY (TABLE_NAME)
        );
        IF (@sys.debug = 'ON') THEN
            SELECT 'Populating tmp_sys_views_delta' AS 'Debug';
        END IF;
        INSERT INTO tmp_sys_views_delta
        VALUES ('host_summary'                       , '%{TABLE}.statement_latency DESC',
                                                       '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC',
                                                       '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'host'),
               ('host_summary_by_file_io'            , '%{TABLE}.io_latency DESC',
                                                       '(e.io_latency-IFNULL(s.io_latency, 0)) DESC',
                                                       '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'host'),
               ('host_summary_by_file_io_type'       , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'),
               ('host_summary_by_stages'             , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event_name'),
               ('host_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host'),
               ('host_summary_by_statement_type'     , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,statement'),
               ('io_by_thread_by_latency'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,thread_id,processlist_id'),
               ('io_global_by_file_by_bytes'         , '%{TABLE}.total DESC',
                                                       '(e.total-IFNULL(s.total, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'),
               ('io_global_by_file_by_latency'       , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', 100, 'file'),
               ('io_global_by_wait_by_bytes'         , '%{TABLE}.total_requested DESC',
                                                       '(e.total_requested-IFNULL(s.total_requested, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'),
               ('io_global_by_wait_by_latency'       , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_name'),
               ('schema_index_statistics'            , '(%{TABLE}.select_latency+%{TABLE}.insert_latency+%{TABLE}.update_latency+%{TABLE}.delete_latency) DESC',
                                                       '((e.select_latency+e.insert_latency+e.update_latency+e.delete_latency)-IFNULL(s.select_latency+s.insert_latency+s.update_latency+s.delete_latency, 0)) DESC',
                                                       '((e.rows_selected+e.insert_latency+e.rows_updated+e.rows_deleted)-IFNULL(s.rows_selected+s.rows_inserted+s.rows_updated+s.rows_deleted, 0)) > 0',
                                                       100, 'table_schema,table_name,index_name'),
               ('schema_table_statistics'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) > 0', 100, 'table_schema,table_name'),
               ('schema_tables_with_full_table_scans', '%{TABLE}.rows_full_scanned DESC',
                                                       '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) DESC',
                                                       '(e.rows_full_scanned-IFNULL(s.rows_full_scanned, 0)) > 0', 100, 'object_schema,object_name'),
               ('user_summary'                       , '%{TABLE}.statement_latency DESC',
                                                       '(e.statement_latency-IFNULL(s.statement_latency, 0)) DESC',
                                                       '(e.statements - IFNULL(s.statements, 0)) > 0', NULL, 'user'),
               ('user_summary_by_file_io'            , '%{TABLE}.io_latency DESC',
                                                       '(e.io_latency-IFNULL(s.io_latency, 0)) DESC',
                                                       '(e.ios - IFNULL(s.ios, 0)) > 0', NULL, 'user'),
               ('user_summary_by_file_io_type'       , '%{TABLE}.user, %{TABLE}.latency DESC',
                                                       'e.user, (e.latency-IFNULL(s.latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'),
               ('user_summary_by_stages'             , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event_name'),
               ('user_summary_by_statement_latency'  , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user'),
               ('user_summary_by_statement_type'     , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,statement'),
               ('wait_classes_global_by_avg_latency' , 'IFNULL(%{TABLE}.total_latency / NULLIF(%{TABLE}.total, 0), 0) DESC',
                                                       'IFNULL((e.total_latency-IFNULL(s.total_latency, 0)) / NULLIF((e.total - IFNULL(s.total, 0)), 0), 0) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'),
               ('wait_classes_global_by_latency'     , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'event_class'),
               ('waits_by_host_by_latency'           , '%{TABLE}.host, %{TABLE}.total_latency DESC',
                                                       'e.host, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'host,event'),
               ('waits_by_user_by_latency'           , '%{TABLE}.user, %{TABLE}.total_latency DESC',
                                                       'e.user, (e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'user,event'),
               ('waits_global_by_latency'            , '%{TABLE}.total_latency DESC',
                                                       '(e.total_latency-IFNULL(s.total_latency, 0)) DESC',
                                                       '(e.total - IFNULL(s.total, 0)) > 0', NULL, 'events')
        ;
    END IF;
    SELECT '
=======================
     Configuration
=======================
' AS '';
    SELECT 'GLOBAL VARIABLES' AS 'The following output is:';
    IF (v_has_ps_vars = 'YES') THEN
        SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM performance_schema.global_variables ORDER BY VARIABLE_NAME;
    ELSE
        SELECT LOWER(VARIABLE_NAME) AS Variable_name, VARIABLE_VALUE AS Variable_value FROM information_schema.GLOBAL_VARIABLES ORDER BY VARIABLE_NAME;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SELECT 'Performance Schema Setup - Actors' AS 'The following output is:';
        SELECT * FROM performance_schema.setup_actors;
        SELECT 'Performance Schema Setup - Consumers' AS 'The following output is:';
        SELECT NAME AS Consumer, ENABLED, sys.ps_is_consumer_enabled(NAME) AS COLLECTS
          FROM performance_schema.setup_consumers;
        SELECT 'Performance Schema Setup - Instruments' AS 'The following output is:';
        SELECT SUBSTRING_INDEX(NAME, '/', 2) AS 'InstrumentClass',
               ROUND(100*SUM(IF(ENABLED = 'YES', 1, 0))/COUNT(*), 2) AS 'EnabledPct',
               ROUND(100*SUM(IF(TIMED = 'YES', 1, 0))/COUNT(*), 2) AS 'TimedPct'
          FROM performance_schema.setup_instruments
         GROUP BY SUBSTRING_INDEX(NAME, '/', 2)
         ORDER BY SUBSTRING_INDEX(NAME, '/', 2);
        SELECT 'Performance Schema Setup - Objects' AS 'The following output is:';
        SELECT * FROM performance_schema.setup_objects;
        SELECT 'Performance Schema Setup - Threads' AS 'The following output is:';
        SELECT `TYPE` AS ThreadType, COUNT(*) AS 'Total', ROUND(100*SUM(IF(INSTRUMENTED = 'YES', 1, 0))/COUNT(*), 2) AS 'InstrumentedPct'
          FROM performance_schema.threads
        GROUP BY TYPE;
    END IF;
    IF (v_has_replication = 'NO') THEN
        SELECT 'No Replication Configured' AS 'Replication Status';
    ELSE
        SELECT CONCAT('Replication Configured: ', v_has_replication, ' - Performance Schema Replication Tables: ', v_has_ps_replication) AS 'Replication Status';
        IF (v_has_ps_replication = 'YES') THEN
            SELECT 'Replication - Connection Configuration' AS 'The following output is:';
            SELECT * FROM performance_schema.replication_connection_configuration;
        END IF;
        IF (v_has_ps_replication = 'YES') THEN
            SELECT 'Replication - Applier Configuration' AS 'The following output is:';
            SELECT * FROM performance_schema.replication_applier_configuration ORDER BY CHANNEL_NAME;
        END IF;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
       SELECT 'Cluster Thread Blocks' AS 'The following output is:';
       SELECT * FROM ndbinfo.threadblocks;
    END IF;
    IF (v_has_ps = 'YES') THEN
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            SELECT '
========================
     Initial Status
========================
' AS '';
        END IF;
        DROP TEMPORARY TABLE IF EXISTS tmp_digests_start;
        CALL sys.statement_performance_analyzer('create_tmp', 'tmp_digests_start', NULL);
        CALL sys.statement_performance_analyzer('snapshot', NULL, NULL);
        CALL sys.statement_performance_analyzer('save', 'tmp_digests_start', NULL);
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'start');
            IF (@sys.debug = 'ON') THEN
                SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug';
                SELECT @sys.diagnostics.sql AS 'Debug';
            END IF;
            PREPARE stmt_gen_query FROM @sys.diagnostics.sql;
        END IF;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            IF (@sys.debug = 'ON') THEN
                SELECT CONCAT('The following queries are for storing the initial content of ', v_table_name) AS 'Debug';
            END IF;
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_start`'));
            CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_start` SELECT * FROM `sys`.`x$', v_table_name, '`'));
            IF (@sys.diagnostics.include_raw = 'ON') THEN
                SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name);
                EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;
                SELECT CONCAT(@sys.diagnostics.sql_select,
                              IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_start'))), ''),
                              IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                       )
                  INTO @sys.diagnostics.sql_select
                  FROM tmp_sys_views_delta
                 WHERE TABLE_NAME = v_table_name;
                SELECT CONCAT('Initial ', v_table_name) AS 'The following output is:';
                CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
            END IF;
        END LOOP;
        CLOSE c_sysviews_w_delta;
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            DEALLOCATE PREPARE stmt_gen_query;
        END IF;
    END IF;
    SET v_sql_status_summary_select = 'SELECT Variable_name',
        v_sql_status_summary_delta  = '',
        v_sql_status_summary_from   = '';
    REPEAT
        SET v_output_count = v_output_count + 1;
        IF (v_output_count > 1) THEN
            SET v_sleep = in_interval-(UNIX_TIMESTAMP(NOW(2))-v_iter_start);
            SELECT NOW() AS 'Time', CONCAT('Going to sleep for ', v_sleep, ' seconds. Please do not interrupt') AS 'The following output is:';
            DO SLEEP(in_interval);
        END IF;
        SET v_iter_start = UNIX_TIMESTAMP(NOW(2));
        SELECT NOW(), CONCAT('Iteration Number ', IFNULL(v_output_count, 'NULL')) AS 'The following output is:';
        IF (@@log_bin = 1) THEN
            SELECT 'SHOW MASTER STATUS' AS 'The following output is:';
            SHOW MASTER STATUS;
        END IF;
        IF (v_has_replication <> 'NO') THEN
            SELECT 'SHOW SLAVE STATUS' AS 'The following output is:';
            SHOW SLAVE STATUS;
        END IF;
        SET v_table_name = CONCAT('tmp_metrics_', v_output_count);
        CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name));
        CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE ', v_table_name, ' (
  Variable_name VARCHAR(193) NOT NULL,
  Variable_value VARCHAR(1024),
  Type VARCHAR(100) NOT NULL,
  Enabled ENUM(''YES'', ''NO'', ''PARTIAL'') NOT NULL,
  PRIMARY KEY (Type, Variable_name)
) ENGINE = InnoDB DEFAULT CHARSET=utf8'));
        IF (v_has_metrics) THEN
            SET @sys.diagnostics.sql = CONCAT(
                'INSERT INTO ', v_table_name,
                ' SELECT Variable_name, REPLACE(Variable_value, ''\n'', ''\\\\n'') AS Variable_value, Type, Enabled FROM sys.metrics'
            );
        ELSE
            SET @sys.diagnostics.sql = CONCAT(
                'INSERT INTO ', v_table_name,
                '(SELECT LOWER(VARIABLE_NAME) AS Variable_name, REPLACE(VARIABLE_VALUE, ''\n'', ''\\\\n'') AS Variable_value,
                         ''Global Status'' AS Type, ''YES'' AS Enabled
  FROM performance_schema.global_status
) UNION ALL (
SELECT NAME AS Variable_name, COUNT AS Variable_value,
       CONCAT(''InnoDB Metrics - '', SUBSYSTEM) AS Type,
       IF(STATUS = ''enabled'', ''YES'', ''NO'') AS Enabled
  FROM information_schema.INNODB_METRICS
 WHERE NAME NOT IN (
     ''lock_row_lock_time'', ''lock_row_lock_time_avg'', ''lock_row_lock_time_max'', ''lock_row_lock_waits'',
     ''buffer_pool_reads'', ''buffer_pool_read_requests'', ''buffer_pool_write_requests'', ''buffer_pool_wait_free'',
     ''buffer_pool_read_ahead'', ''buffer_pool_read_ahead_evicted'', ''buffer_pool_pages_total'', ''buffer_pool_pages_misc'',
     ''buffer_pool_pages_data'', ''buffer_pool_bytes_data'', ''buffer_pool_pages_dirty'', ''buffer_pool_bytes_dirty'',
     ''buffer_pool_pages_free'', ''buffer_pages_created'', ''buffer_pages_written'', ''buffer_pages_read'',
     ''buffer_data_reads'', ''buffer_data_written'', ''file_num_open_files'',
     ''os_log_bytes_written'', ''os_log_fsyncs'', ''os_log_pending_fsyncs'', ''os_log_pending_writes'',
     ''log_waits'', ''log_write_requests'', ''log_writes'', ''innodb_dblwr_writes'', ''innodb_dblwr_pages_written'', ''innodb_page_size'')
) UNION ALL (
SELECT ''NOW()'' AS Variable_name, NOW(3) AS Variable_value, ''System Time'' AS Type, ''YES'' AS Enabled
) UNION ALL (
SELECT ''UNIX_TIMESTAMP()'' AS Variable_name, ROUND(UNIX_TIMESTAMP(NOW(3)), 3) AS Variable_value, ''System Time'' AS Type, ''YES'' AS Enabled
)
 ORDER BY Type, Variable_name;'
            );
        END IF;
        CALL sys.execute_prepared_stmt(@sys.diagnostics.sql);
        CALL sys.execute_prepared_stmt(
            CONCAT('SELECT Variable_value INTO @sys.diagnostics.output_time FROM ', v_table_name, ' WHERE Type = ''System Time'' AND Variable_name = ''UNIX_TIMESTAMP()''')
        );
        SET v_output_time = @sys.diagnostics.output_time;
        SET v_sql_status_summary_select = CONCAT(v_sql_status_summary_select, ',
       CONCAT(
           LEFT(s', v_output_count, '.Variable_value, ', v_status_summary_width, '),
           IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'', CONCAT('' ('', ROUND(s', v_output_count, '.Variable_value/', v_output_time, ', 2), ''/sec)''), '''')
       ) AS ''Output ', v_output_count, ''''),
            v_sql_status_summary_from   = CONCAT(v_sql_status_summary_from, '
',
                                                    IF(v_output_count = 1, '  FROM ', '       INNER JOIN '),
                                                    v_table_name, ' s', v_output_count,
                                                    IF (v_output_count = 1, '', ' USING (Type, Variable_name)'));
        IF (v_output_count > 1) THEN
            SET v_sql_status_summary_delta  = CONCAT(v_sql_status_summary_delta, ',
       IF(', REPLACE(v_no_delta_names, '%{COUNT}', v_output_count), ' AND s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'' AND s', v_output_count, '.Variable_value REGEXP ''^[0-9]+(\\\\.[0-9]+)?$'',
          CONCAT(IF(s', (v_output_count-1), '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'' OR s', v_output_count, '.Variable_value REGEXP ''^[0-9]+\\\\.[0-9]+$'',
                    ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value), 2),
                    (s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value)
                   ),
                 '' ('', ROUND((s', v_output_count, '.Variable_value-s', (v_output_count-1), '.Variable_value)/(', v_output_time, '-', v_output_time_prev, '), 2), ''/sec)''
          ),
          ''''
       ) AS ''Delta (', (v_output_count-1), ' -> ', v_output_count, ')''');
        END IF;
        SET v_output_time_prev = v_output_time;
        IF (@sys.diagnostics.include_raw = 'ON') THEN
            IF (v_has_metrics) THEN
                SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:';
            ELSE
                SELECT 'sys.metrics equivalent' AS 'The following output is:';
            END IF;
            CALL sys.execute_prepared_stmt(CONCAT('SELECT Type, Variable_name, Enabled, Variable_value FROM ', v_table_name, ' ORDER BY Type, Variable_name'));
        END IF;
        IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
            SELECT 'SHOW ENGINE INNODB STATUS' AS 'The following output is:';
            EXECUTE stmt_innodb_status;
            SELECT 'InnoDB - Transactions' AS 'The following output is:';
            SELECT * FROM information_schema.INNODB_TRX;
        END IF;
        IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
            SELECT 'SHOW ENGINE NDBCLUSTER STATUS' AS 'The following output is:';
            EXECUTE stmt_ndbcluster_status;
            SELECT 'ndbinfo.memoryusage' AS 'The following output is:';
            SELECT node_id, memory_type, sys.format_bytes(used) AS used, used_pages, sys.format_bytes(total) AS total, total_pages,
                   ROUND(100*(used/total), 2) AS 'Used %'
            FROM ndbinfo.memoryusage;
            SET v_done = FALSE;
            OPEN c_ndbinfo;
            c_ndbinfo_loop: LOOP
                FETCH c_ndbinfo INTO v_table_name;
                IF v_done THEN
                LEAVE c_ndbinfo_loop;
                END IF;
                SELECT CONCAT('SELECT * FROM ndbinfo.', v_table_name) AS 'The following output is:';
                CALL sys.execute_prepared_stmt(CONCAT('SELECT * FROM `ndbinfo`.`', v_table_name, '`'));
            END LOOP;
            CLOSE c_ndbinfo;
            SELECT * FROM information_schema.FILES;
        END IF;
        SELECT 'SELECT * FROM sys.processlist' AS 'The following output is:';
        SELECT processlist.* FROM sys.processlist;
        IF (v_has_ps = 'YES') THEN
            IF (sys.ps_is_consumer_enabled('events_waits_history_long') = 'YES') THEN
                SELECT 'SELECT * FROM sys.latest_file_io' AS 'The following output is:';
                SELECT * FROM sys.latest_file_io;
            END IF;
            IF (EXISTS(SELECT 1 FROM performance_schema.setup_instruments WHERE NAME LIKE 'memory/%' AND ENABLED = 'YES')) THEN
                SELECT 'SELECT * FROM sys.memory_by_host_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_host_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_by_thread_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_thread_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_by_user_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_by_user_by_current_bytes;
                SELECT 'SELECT * FROM sys.memory_global_by_current_bytes' AS 'The following output is:';
                SELECT * FROM sys.memory_global_by_current_bytes;
            END IF;
        END IF;
        SET v_runtime = (UNIX_TIMESTAMP(NOW(2)) - v_start);
    UNTIL (v_runtime + in_interval >= in_max_runtime) END REPEAT;
    IF (v_has_ps = 'YES') THEN
        SELECT 'SHOW ENGINE PERFORMANCE_SCHEMA STATUS' AS 'The following output is:';
        EXECUTE stmt_ps_status;
    END IF;
    IF (v_has_innodb IN ('DEFAULT', 'YES')) THEN
        DEALLOCATE PREPARE stmt_innodb_status;
    END IF;
    IF (v_has_ps = 'YES') THEN
        DEALLOCATE PREPARE stmt_ps_status;
    END IF;
    IF (v_has_ndb IN ('DEFAULT', 'YES')) THEN
        DEALLOCATE PREPARE stmt_ndbcluster_status;
    END IF;
    SELECT '
============================
     Schema Information
============================
' AS '';
    SELECT COUNT(*) AS 'Total Number of Tables' FROM information_schema.TABLES;
    IF (@sys.diagnostics.allow_i_s_tables = 'ON') THEN
        SELECT 'Storage Engine Usage' AS 'The following output is:';
        SELECT ENGINE, COUNT(*) AS NUM_TABLES,
                sys.format_bytes(SUM(DATA_LENGTH)) AS DATA_LENGTH,
                sys.format_bytes(SUM(INDEX_LENGTH)) AS INDEX_LENGTH,
                sys.format_bytes(SUM(DATA_LENGTH+INDEX_LENGTH)) AS TOTAL
            FROM information_schema.TABLES
            GROUP BY ENGINE;
        SELECT 'Schema Object Overview' AS 'The following output is:';
        SELECT * FROM sys.schema_object_overview;
        SELECT 'Tables without a PRIMARY KEY' AS 'The following output is:';
        SELECT TABLES.TABLE_SCHEMA, ENGINE, COUNT(*) AS NumTables
          FROM information_schema.TABLES
               LEFT OUTER JOIN information_schema.STATISTICS ON STATISTICS.TABLE_SCHEMA = TABLES.TABLE_SCHEMA
                                                                AND STATISTICS.TABLE_NAME = TABLES.TABLE_NAME
                                                                AND STATISTICS.INDEX_NAME = 'PRIMARY'
         WHERE STATISTICS.TABLE_NAME IS NULL
               AND TABLES.TABLE_SCHEMA NOT IN ('mysql', 'information_schema', 'performance_schema', 'sys')
               AND TABLES.TABLE_TYPE = 'BASE TABLE'
         GROUP BY TABLES.TABLE_SCHEMA, ENGINE;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SELECT 'Unused Indexes' AS 'The following output is:';
        SELECT object_schema, COUNT(*) AS NumUnusedIndexes
          FROM performance_schema.table_io_waits_summary_by_index_usage
         WHERE index_name IS NOT NULL
               AND count_star = 0
               AND object_schema NOT IN ('mysql', 'sys')
               AND index_name != 'PRIMARY'
         GROUP BY object_schema;
    END IF;
    IF (v_has_ps = 'YES') THEN
        SELECT '
=========================
     Overall Status
=========================
' AS '';
        SELECT 'CALL sys.ps_statement_avg_latency_histogram()' AS 'The following output is:';
        CALL sys.ps_statement_avg_latency_histogram();
        CALL sys.statement_performance_analyzer('snapshot', NULL, NULL);
        CALL sys.statement_performance_analyzer('overall', NULL, 'with_runtimes_in_95th_percentile');
        SET @sys.diagnostics.sql = REPLACE(@sys.diagnostics.sql_gen_query_template, '%{OUTPUT}', 'end');
        IF (@sys.debug = 'ON') THEN
            SELECT 'The following query will be used to generate the query for each sys view' AS 'Debug';
            SELECT @sys.diagnostics.sql AS 'Debug';
        END IF;
        PREPARE stmt_gen_query FROM @sys.diagnostics.sql;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            IF (@sys.debug = 'ON') THEN
                SELECT CONCAT('The following queries are for storing the final content of ', v_table_name) AS 'Debug';
            END IF;
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS `tmp_', v_table_name, '_end`'));
            CALL sys.execute_prepared_stmt(CONCAT('CREATE TEMPORARY TABLE `tmp_', v_table_name, '_end` SELECT * FROM `sys`.`x$', v_table_name, '`'));
            IF (@sys.diagnostics.include_raw = 'ON') THEN
                SET @sys.diagnostics.table_name = CONCAT('x$', v_table_name);
                EXECUTE stmt_gen_query USING @sys.diagnostics.table_name;
                SELECT CONCAT(@sys.diagnostics.sql_select,
                                IF(order_by IS NOT NULL, CONCAT('\n ORDER BY ', REPLACE(order_by, '%{TABLE}', CONCAT('tmp_', v_table_name, '_end'))), ''),
                                IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                        )
                    INTO @sys.diagnostics.sql_select
                    FROM tmp_sys_views_delta
                    WHERE TABLE_NAME = v_table_name;
                SELECT CONCAT('Overall ', v_table_name) AS 'The following output is:';
                CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
            END IF;
        END LOOP;
        CLOSE c_sysviews_w_delta;
        DEALLOCATE PREPARE stmt_gen_query;
        SELECT '
======================
     Delta Status
======================
' AS '';
        CALL sys.statement_performance_analyzer('delta', 'tmp_digests_start', 'with_runtimes_in_95th_percentile');
        CALL sys.statement_performance_analyzer('cleanup', NULL, NULL);
        DROP TEMPORARY TABLE tmp_digests_start;
        IF (@sys.debug = 'ON') THEN
            SELECT 'The following query will be used to generate the query for each sys view delta' AS 'Debug';
            SELECT @sys.diagnostics.sql_gen_query_delta AS 'Debug';
        END IF;
        PREPARE stmt_gen_query_delta FROM @sys.diagnostics.sql_gen_query_delta;
        SET v_old_group_concat_max_len = @@session.group_concat_max_len;
        SET @@session.group_concat_max_len = 2048;
        SET v_done = FALSE;
        OPEN c_sysviews_w_delta;
        c_sysviews_w_delta_loop: LOOP
            FETCH c_sysviews_w_delta INTO v_table_name;
            IF v_done THEN
                LEAVE c_sysviews_w_delta_loop;
            END IF;
            SET @sys.diagnostics.table_name = v_table_name;
            EXECUTE stmt_gen_query_delta USING @sys.diagnostics.table_name;
            SELECT CONCAT(@sys.diagnostics.sql_select,
                            IF(where_delta IS NOT NULL, CONCAT('\n WHERE ', where_delta), ''),
                            IF(order_by_delta IS NOT NULL, CONCAT('\n ORDER BY ', order_by_delta), ''),
                            IF(limit_rows IS NOT NULL, CONCAT('\n LIMIT ', limit_rows), '')
                    )
                INTO @sys.diagnostics.sql_select
                FROM tmp_sys_views_delta
                WHERE TABLE_NAME = v_table_name;
            SELECT CONCAT('Delta ', v_table_name) AS 'The following output is:';
            CALL sys.execute_prepared_stmt(@sys.diagnostics.sql_select);
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_end`'));
            CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE `tmp_', v_table_name, '_start`'));
        END LOOP;
        CLOSE c_sysviews_w_delta;
        SET @@session.group_concat_max_len = v_old_group_concat_max_len;
        DEALLOCATE PREPARE stmt_gen_query_delta;
        DROP TEMPORARY TABLE tmp_sys_views_delta;
    END IF;
    IF (v_has_metrics) THEN
        SELECT 'SELECT * FROM sys.metrics' AS 'The following output is:';
    ELSE
        SELECT 'sys.metrics equivalent' AS 'The following output is:';
    END IF;
    CALL sys.execute_prepared_stmt(
        CONCAT(v_sql_status_summary_select, v_sql_status_summary_delta, ', Type, s1.Enabled', v_sql_status_summary_from,
               '
 ORDER BY Type, Variable_name'
        )
    );
    SET v_count = 0;
    WHILE (v_count < v_output_count) DO
        SET v_count = v_count + 1;
        SET v_table_name = CONCAT('tmp_metrics_', v_count);
        CALL sys.execute_prepared_stmt(CONCAT('DROP TEMPORARY TABLE IF EXISTS ', v_table_name));
    END WHILE;
    IF (in_auto_config <> 'current') THEN
        CALL sys.ps_setup_reload_saved();
        SET sql_log_bin = @log_bin;
    END IF;
    SET @sys.diagnostics.output_time            = NULL,
        @sys.diagnostics.sql                    = NULL,
        @sys.diagnostics.sql_gen_query_delta    = NULL,
        @sys.diagnostics.sql_gen_query_template = NULL,
        @sys.diagnostics.sql_select             = NULL,
        @sys.diagnostics.table_name             = NULL;
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = @log_bin;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `execute_prepared_stmt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `execute_prepared_stmt`(
        IN in_query longtext CHARACTER SET UTF8
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Takes the query in the argument and executes it using a prepared statement. The prepared statement is deallocated,\n             so the procedure is mainly useful for executing one off dynamically created queries.\n             The sys_execute_prepared_stmt prepared statement name is used for the query and is required not to exist.\n             Parameters\n             in_query (longtext CHARACTER SET UTF8):\n               The query to execute.\n             Configuration Options\n             sys.debug\n               Whether to provide debugging output.\n               Default is ''OFF''. Set to ''ON'' to include.\n             Example\n             mysql> CALL sys.execute_prepared_stmt(''SELECT * FROM sys.sys_config'');\n             +------------------------+-------+---------------------+--------+\n             | variable               | value | set_time            | set_by |\n             +------------------------+-------+---------------------+--------+\n             | statement_truncate_len | 64    | 2015-06-30 13:06:00 | NULL   |\n             +------------------------+-------+---------------------+--------+\n             1 row in set (0.00 sec)\n             Query OK, 0 rows affected (0.00 sec)\n            '
BEGIN
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug = sys.sys_get_config('debug', 'OFF');
    END IF;
    IF (in_query IS NULL OR LENGTH(in_query) < 4) THEN
       SIGNAL SQLSTATE '45000'
          SET MESSAGE_TEXT = "The @sys.execute_prepared_stmt.sql must contain a query";
    END IF;
    SET @sys.execute_prepared_stmt.sql = in_query;
    IF (@sys.debug = 'ON') THEN
        SELECT @sys.execute_prepared_stmt.sql AS 'Debug';
    END IF;
    PREPARE sys_execute_prepared_stmt FROM @sys.execute_prepared_stmt.sql;
    EXECUTE sys_execute_prepared_stmt;
    DEALLOCATE PREPARE sys_execute_prepared_stmt;
    SET @sys.execute_prepared_stmt.sql = NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_background_threads` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_disable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Disable all background thread instrumentation within Performance Schema.\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_setup_disable_background_threads();\n             +--------------------------------+\n             | summary                        |\n             +--------------------------------+\n             | Disabled 18 background threads |\n             +--------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE type = 'BACKGROUND';
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_consumer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_disable_consumer`(
        IN consumer VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Disables consumers within Performance Schema\n             matching the input pattern.\n             Parameters\n             consumer (VARCHAR(128)):\n               A LIKE pattern match (using "%consumer%") of consumers to disable\n             Example\n             To disable all consumers:\n             mysql> CALL sys.ps_setup_disable_consumer('''');\n             +--------------------------+\n             | summary                  |\n             +--------------------------+\n             | Disabled 15 consumers    |\n             +--------------------------+\n             1 row in set (0.02 sec)\n             To disable just the event_stage consumers:\n             mysql> CALL sys.ps_setup_disable_comsumers(''stage'');\n             +------------------------+\n             | summary                |\n             +------------------------+\n             | Disabled 3 consumers   |\n             +------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    UPDATE performance_schema.setup_consumers
       SET enabled = 'NO'
     WHERE name LIKE CONCAT('%', consumer, '%');
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_instrument` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_disable_instrument`(
        IN in_pattern VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Disables instruments within Performance Schema\n             matching the input pattern.\n             Parameters\n             in_pattern (VARCHAR(128)):\n               A LIKE pattern match (using "%in_pattern%") of events to disable\n             Example\n             To disable all mutex instruments:\n             mysql> CALL sys.ps_setup_disable_instrument(''wait/synch/mutex'');\n             +--------------------------+\n             | summary                  |\n             +--------------------------+\n             | Disabled 155 instruments |\n             +--------------------------+\n             1 row in set (0.02 sec)\n             To disable just a specific TCP/IP based network IO instrument:\n             mysql> CALL sys.ps_setup_disable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n             +------------------------+\n             | summary                |\n             +------------------------+\n             | Disabled 1 instruments |\n             +------------------------+\n             1 row in set (0.00 sec)\n             To disable all instruments:\n             mysql> CALL sys.ps_setup_disable_instrument('''');\n             +--------------------------+\n             | summary                  |\n             +--------------------------+\n             | Disabled 547 instruments |\n             +--------------------------+\n             1 row in set (0.01 sec)\n            '
BEGIN
    UPDATE performance_schema.setup_instruments
       SET enabled = 'NO', timed = 'NO'
     WHERE name LIKE CONCAT('%', in_pattern, '%');
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_disable_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_disable_thread`(
        IN in_connection_id BIGINT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Disable the given connection/thread in Performance Schema.\n             Parameters\n             in_connection_id (BIGINT):\n               The connection ID (PROCESSLIST_ID from performance_schema.threads\n               or the ID shown within SHOW PROCESSLIST)\n             Example\n             mysql> CALL sys.ps_setup_disable_thread(3);\n             +-------------------+\n             | summary           |\n             +-------------------+\n             | Disabled 1 thread |\n             +-------------------+\n             1 row in set (0.01 sec)\n             To disable the current connection:\n             mysql> CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n             +-------------------+\n             | summary           |\n             +-------------------+\n             | Disabled 1 thread |\n             +-------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'NO'
     WHERE processlist_id = in_connection_id;
    SELECT CONCAT('Disabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_background_threads` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_enable_background_threads`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Enable all background thread instrumentation within Performance Schema.\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_setup_enable_background_threads();\n             +-------------------------------+\n             | summary                       |\n             +-------------------------------+\n             | Enabled 18 background threads |\n             +-------------------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'YES'
     WHERE type = 'BACKGROUND';
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' background thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_consumer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_enable_consumer`(
        IN consumer VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Enables consumers within Performance Schema\n             matching the input pattern.\n             Parameters\n             consumer (VARCHAR(128)):\n               A LIKE pattern match (using "%consumer%") of consumers to enable\n             Example\n             To enable all consumers:\n             mysql> CALL sys.ps_setup_enable_consumer('''');\n             +-------------------------+\n             | summary                 |\n             +-------------------------+\n             | Enabled 10 consumers    |\n             +-------------------------+\n             1 row in set (0.02 sec)\n             Query OK, 0 rows affected (0.02 sec)\n             To enable just "waits" consumers:\n             mysql> CALL sys.ps_setup_enable_consumer(''waits'');\n             +-----------------------+\n             | summary               |\n             +-----------------------+\n             | Enabled 3 consumers   |\n             +-----------------------+\n             1 row in set (0.00 sec)\n             Query OK, 0 rows affected (0.00 sec)\n             '
BEGIN
    UPDATE performance_schema.setup_consumers
       SET enabled = 'YES'
     WHERE name LIKE CONCAT('%', consumer, '%');
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' consumer', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_instrument` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_enable_instrument`(
        IN in_pattern VARCHAR(128)
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Enables instruments within Performance Schema\n             matching the input pattern.\n             Parameters\n             in_pattern (VARCHAR(128)):\n               A LIKE pattern match (using "%in_pattern%") of events to enable\n             Example\n             To enable all mutex instruments:\n             mysql> CALL sys.ps_setup_enable_instrument(''wait/synch/mutex'');\n             +-------------------------+\n             | summary                 |\n             +-------------------------+\n             | Enabled 155 instruments |\n             +-------------------------+\n             1 row in set (0.02 sec)\n             Query OK, 0 rows affected (0.02 sec)\n             To enable just a specific TCP/IP based network IO instrument:\n             mysql> CALL sys.ps_setup_enable_instrument(''wait/io/socket/sql/server_tcpip_socket'');\n             +-----------------------+\n             | summary               |\n             +-----------------------+\n             | Enabled 1 instruments |\n             +-----------------------+\n             1 row in set (0.00 sec)\n             Query OK, 0 rows affected (0.00 sec)\n             To enable all instruments:\n             mysql> CALL sys.ps_setup_enable_instrument('''');\n             +-------------------------+\n             | summary                 |\n             +-------------------------+\n             | Enabled 547 instruments |\n             +-------------------------+\n             1 row in set (0.01 sec)\n             Query OK, 0 rows affected (0.01 sec)\n            '
BEGIN
    UPDATE performance_schema.setup_instruments
       SET enabled = 'YES', timed = 'YES'
     WHERE name LIKE CONCAT('%', in_pattern, '%');
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' instrument', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_enable_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_enable_thread`(
        IN in_connection_id BIGINT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Enable the given connection/thread in Performance Schema.\n             Parameters\n             in_connection_id (BIGINT):\n               The connection ID (PROCESSLIST_ID from performance_schema.threads\n               or the ID shown within SHOW PROCESSLIST)\n             Example\n             mysql> CALL sys.ps_setup_enable_thread(3);\n             +------------------+\n             | summary          |\n             +------------------+\n             | Enabled 1 thread |\n             +------------------+\n             1 row in set (0.01 sec)\n             To enable the current connection:\n             mysql> CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n             +------------------+\n             | summary          |\n             +------------------+\n             | Enabled 1 thread |\n             +------------------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    UPDATE performance_schema.threads
       SET instrumented = 'YES'
     WHERE processlist_id = in_connection_id;
    SELECT CONCAT('Enabled ', @rows := ROW_COUNT(), ' thread', IF(@rows != 1, 's', '')) AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_reload_saved` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_reload_saved`()
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Reloads a saved Performance Schema configuration,\n             so that you can alter the setup for debugging purposes,\n             but restore it to a previous state.\n             Use the companion procedure - ps_setup_save(), to\n             save a configuration.\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_setup_save();\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> UPDATE performance_schema.setup_instruments SET enabled = ''YES'', timed = ''YES'';\n             Query OK, 547 rows affected (0.40 sec)\n             Rows matched: 784  Changed: 547  Warnings: 0\n             /* Run some tests that need more detailed instrumentation here */\n             mysql> CALL sys.ps_setup_reload_saved();\n             Query OK, 0 rows affected (0.32 sec)\n            '
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_lock_result INT;
    DECLARE v_lock_used_by BIGINT;
    DECLARE v_signal_message TEXT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SIGNAL SQLSTATE VALUE '90001'
           SET MESSAGE_TEXT = 'An error occurred, was sys.ps_setup_save() run before this procedure?';
    END;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT IS_USED_LOCK('sys.ps_setup_save') INTO v_lock_used_by;
    IF (v_lock_used_by != CONNECTION_ID()) THEN
        SET v_signal_message = CONCAT('The sys.ps_setup_save lock is currently owned by ', v_lock_used_by);
        SIGNAL SQLSTATE VALUE '90002'
           SET MESSAGE_TEXT = v_signal_message;
    END IF;
    DELETE FROM performance_schema.setup_actors;
    INSERT INTO performance_schema.setup_actors SELECT * FROM tmp_setup_actors;
    BEGIN
        DECLARE v_name varchar(64);
        DECLARE v_enabled enum('YES', 'NO');
        DECLARE c_consumers CURSOR FOR SELECT NAME, ENABLED FROM tmp_setup_consumers;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
        SET v_done = FALSE;
        OPEN c_consumers;
        c_consumers_loop: LOOP
            FETCH c_consumers INTO v_name, v_enabled;
            IF v_done THEN
               LEAVE c_consumers_loop;
            END IF;
            UPDATE performance_schema.setup_consumers
               SET ENABLED = v_enabled
             WHERE NAME = v_name;
         END LOOP;
         CLOSE c_consumers;
    END;
    UPDATE performance_schema.setup_instruments
     INNER JOIN tmp_setup_instruments USING (NAME)
       SET performance_schema.setup_instruments.ENABLED = tmp_setup_instruments.ENABLED,
           performance_schema.setup_instruments.TIMED   = tmp_setup_instruments.TIMED;
    BEGIN
        DECLARE v_thread_id bigint unsigned;
        DECLARE v_instrumented enum('YES', 'NO');
        DECLARE c_threads CURSOR FOR SELECT THREAD_ID, INSTRUMENTED FROM tmp_threads;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
        SET v_done = FALSE;
        OPEN c_threads;
        c_threads_loop: LOOP
            FETCH c_threads INTO v_thread_id, v_instrumented;
            IF v_done THEN
               LEAVE c_threads_loop;
            END IF;
            UPDATE performance_schema.threads
               SET INSTRUMENTED = v_instrumented
             WHERE THREAD_ID = v_thread_id;
        END LOOP;
        CLOSE c_threads;
    END;
    UPDATE performance_schema.threads
       SET INSTRUMENTED = IF(PROCESSLIST_USER IS NOT NULL,
                             sys.ps_is_account_enabled(PROCESSLIST_HOST, PROCESSLIST_USER),
                             'YES')
     WHERE THREAD_ID NOT IN (SELECT THREAD_ID FROM tmp_threads);
    DROP TEMPORARY TABLE tmp_setup_actors;
    DROP TEMPORARY TABLE tmp_setup_consumers;
    DROP TEMPORARY TABLE tmp_setup_instruments;
    DROP TEMPORARY TABLE tmp_threads;
    SELECT RELEASE_LOCK('sys.ps_setup_save') INTO v_lock_result;
    SET sql_log_bin = @log_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_reset_to_default` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_reset_to_default`(
       IN in_verbose BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Resets the Performance Schema setup to the default settings.\n             Parameters\n             in_verbose (BOOLEAN):\n               Whether to print each setup stage (including the SQL) whilst running.\n             Example\n             mysql> CALL sys.ps_setup_reset_to_default(true)\\G\n             *************************** 1. row ***************************\n             status: Resetting: setup_actors\n             DELETE\n             FROM performance_schema.setup_actors\n              WHERE NOT (HOST = ''%'' AND USER = ''%'' AND ROLE = ''%'')\n             1 row in set (0.00 sec)\n             *************************** 1. row ***************************\n             status: Resetting: setup_actors\n             INSERT IGNORE INTO performance_schema.setup_actors\n             VALUES (''%'', ''%'', ''%'')\n             1 row in set (0.00 sec)\n             ...\n             mysql> CALL sys.ps_setup_reset_to_default(false)\\G\n             Query OK, 0 rows affected (0.00 sec)\n            '
BEGIN
    SET @query = 'DELETE
                    FROM performance_schema.setup_actors
                   WHERE NOT (HOST = ''%'' AND USER = ''%'' AND ROLE = ''%'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'INSERT IGNORE INTO performance_schema.setup_actors
                  VALUES (''%'', ''%'', ''%'', ''YES'', ''YES'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_actors\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.setup_instruments
                     SET ENABLED = sys.ps_is_instrument_default_enabled(NAME),
                         TIMED   = sys.ps_is_instrument_default_timed(NAME)';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_instruments\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.setup_consumers
                     SET ENABLED = IF(NAME IN (''events_statements_current'', ''events_transactions_current'', ''global_instrumentation'', ''thread_instrumentation'', ''statements_digest''), ''YES'', ''NO'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_consumers\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'DELETE
                    FROM performance_schema.setup_objects
                   WHERE NOT (OBJECT_TYPE IN (''EVENT'', ''FUNCTION'', ''PROCEDURE'', ''TABLE'', ''TRIGGER'') AND OBJECT_NAME = ''%''
                     AND (OBJECT_SCHEMA = ''mysql''              AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''performance_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''information_schema'' AND ENABLED = ''NO''  AND TIMED = ''NO'' )
                      OR (OBJECT_SCHEMA = ''%''                  AND ENABLED = ''YES'' AND TIMED = ''YES''))';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'INSERT IGNORE INTO performance_schema.setup_objects
                  VALUES (''EVENT''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''EVENT''    , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''FUNCTION'' , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''FUNCTION'' , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''PROCEDURE'', ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''PROCEDURE'', ''%''                 , ''%'', ''YES'', ''YES''),
                         (''TABLE''    , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TABLE''    , ''%''                 , ''%'', ''YES'', ''YES''),
                         (''TRIGGER''  , ''mysql''             , ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''performance_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''information_schema'', ''%'', ''NO'' , ''NO'' ),
                         (''TRIGGER''  , ''%''                 , ''%'', ''YES'', ''YES'')';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: setup_objects\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
    SET @query = 'UPDATE performance_schema.threads
                     SET INSTRUMENTED = ''YES''';
    IF (in_verbose) THEN
        SELECT CONCAT('Resetting: threads\n', REPLACE(@query, '  ', '')) AS status;
    END IF;
    PREPARE reset_stmt FROM @query;
    EXECUTE reset_stmt;
    DEALLOCATE PREPARE reset_stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_save`(
        IN in_timeout INT
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Saves the current configuration of Performance Schema,\n             so that you can alter the setup for debugging purposes,\n             but restore it to a previous state.\n             Use the companion procedure - ps_setup_reload_saved(), to\n             restore the saved config.\n             The named lock "sys.ps_setup_save" is taken before the\n             current configuration is saved. If the attempt to get the named\n             lock times out, an error occurs.\n             The lock is released after the settings have been restored by\n             calling ps_setup_reload_saved().\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Parameters\n             in_timeout INT\n               The timeout in seconds used when trying to obtain the lock.\n               A negative timeout means infinite timeout.\n             Example\n             mysql> CALL sys.ps_setup_save(-1);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> UPDATE performance_schema.setup_instruments\n                 ->    SET enabled = ''YES'', timed = ''YES'';\n             Query OK, 547 rows affected (0.40 sec)\n             Rows matched: 784  Changed: 547  Warnings: 0\n             /* Run some tests that need more detailed instrumentation here */\n             mysql> CALL sys.ps_setup_reload_saved();\n             Query OK, 0 rows affected (0.32 sec)\n            '
BEGIN
    DECLARE v_lock_result INT;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT GET_LOCK('sys.ps_setup_save', in_timeout) INTO v_lock_result;
    IF v_lock_result THEN
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_actors;
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_consumers;
        DROP TEMPORARY TABLE IF EXISTS tmp_setup_instruments;
        DROP TEMPORARY TABLE IF EXISTS tmp_threads;
        CREATE TEMPORARY TABLE tmp_setup_actors LIKE performance_schema.setup_actors;
        CREATE TEMPORARY TABLE tmp_setup_consumers LIKE performance_schema.setup_consumers;
        CREATE TEMPORARY TABLE tmp_setup_instruments LIKE performance_schema.setup_instruments;
        CREATE TEMPORARY TABLE tmp_threads (THREAD_ID bigint unsigned NOT NULL PRIMARY KEY, INSTRUMENTED enum('YES','NO') NOT NULL);
        INSERT INTO tmp_setup_actors SELECT * FROM performance_schema.setup_actors;
        INSERT INTO tmp_setup_consumers SELECT * FROM performance_schema.setup_consumers;
        INSERT INTO tmp_setup_instruments SELECT * FROM performance_schema.setup_instruments;
        INSERT INTO tmp_threads SELECT THREAD_ID, INSTRUMENTED FROM performance_schema.threads;
    ELSE
        SIGNAL SQLSTATE VALUE '90000'
           SET MESSAGE_TEXT = 'Could not lock the sys.ps_setup_save user lock, another thread has a saved configuration';
    END IF;
    SET sql_log_bin = @log_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_show_disabled`(
        IN in_show_instruments BOOLEAN,
        IN in_show_threads BOOLEAN
    )
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently disable Performance Schema configuration.\n             Disabled users is only available for MySQL 5.7.6 and later.\n             In earlier versions it was only possible to enable users.\n             Parameters\n             in_show_instruments (BOOLEAN):\n               Whether to print disabled instruments (can print many items)\n             in_show_threads (BOOLEAN):\n               Whether to print disabled threads\n             Example\n             mysql> CALL sys.ps_setup_show_disabled(TRUE, TRUE);\n             +----------------------------+\n             | performance_schema_enabled |\n             +----------------------------+\n             |                          1 |\n             +----------------------------+\n             1 row in set (0.00 sec)\n             +--------------------+\n             | disabled_users     |\n             +--------------------+\n             | ''mark''@''localhost'' |\n             +--------------------+\n             1 row in set (0.00 sec)\n             +-------------+----------------------+---------+-------+\n             | object_type | objects              | enabled | timed |\n             +-------------+----------------------+---------+-------+\n             | EVENT       | mysql.%              | NO      | NO    |\n             | EVENT       | performance_schema.% | NO      | NO    |\n             | EVENT       | information_schema.% | NO      | NO    |\n             | FUNCTION    | mysql.%              | NO      | NO    |\n             | FUNCTION    | performance_schema.% | NO      | NO    |\n             | FUNCTION    | information_schema.% | NO      | NO    |\n             | PROCEDURE   | mysql.%              | NO      | NO    |\n             | PROCEDURE   | performance_schema.% | NO      | NO    |\n             | PROCEDURE   | information_schema.% | NO      | NO    |\n             | TABLE       | mysql.%              | NO      | NO    |\n             | TABLE       | performance_schema.% | NO      | NO    |\n             | TABLE       | information_schema.% | NO      | NO    |\n             | TRIGGER     | mysql.%              | NO      | NO    |\n             | TRIGGER     | performance_schema.% | NO      | NO    |\n             | TRIGGER     | information_schema.% | NO      | NO    |\n             +-------------+----------------------+---------+-------+\n             15 rows in set (0.00 sec)\n             +----------------------------------+\n             | disabled_consumers               |\n             +----------------------------------+\n             | events_stages_current            |\n             | events_stages_history            |\n             | events_stages_history_long       |\n             | events_statements_history        |\n             | events_statements_history_long   |\n             | events_transactions_history      |\n             | events_transactions_history_long |\n             | events_waits_current             |\n             | events_waits_history             |\n             | events_waits_history_long        |\n             +----------------------------------+\n             10 rows in set (0.00 sec)\n             Empty set (0.00 sec)\n             +---------------------------------------------------------------------------------------+-------+\n             | disabled_instruments                                                                  | timed |\n             +---------------------------------------------------------------------------------------+-------+\n             | wait/synch/mutex/sql/TC_LOG_MMAP::LOCK_tc                                             | NO    |\n             | wait/synch/mutex/sql/LOCK_des_key_file                                                | NO    |\n             | wait/synch/mutex/sql/MYSQL_BIN_LOG::LOCK_commit                                       | NO    |\n             ...\n             | memory/sql/servers_cache                                                              | NO    |\n             | memory/sql/udf_mem                                                                    | NO    |\n             | wait/lock/metadata/sql/mdl                                                            | NO    |\n             +---------------------------------------------------------------------------------------+-------+\n             547 rows in set (0.00 sec)\n             Query OK, 0 rows affected (0.01 sec)\n            '
BEGIN
    SELECT @@performance_schema AS performance_schema_enabled;
    
    SELECT object_type,
           CONCAT(object_schema, '.', object_name) AS objects,
           enabled,
           timed
      FROM performance_schema.setup_objects
     WHERE enabled = 'NO'
     ORDER BY object_type, objects;
    SELECT name AS disabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'NO'
     ORDER BY disabled_consumers;
    IF (in_show_threads) THEN
        SELECT IF(name = 'thread/sql/one_connection',
                  CONCAT(processlist_user, '@', processlist_host),
                  REPLACE(name, 'thread/', '')) AS disabled_threads,
        TYPE AS thread_type
          FROM performance_schema.threads
         WHERE INSTRUMENTED = 'NO'
         ORDER BY disabled_threads;
    END IF;
    IF (in_show_instruments) THEN
        SELECT name AS disabled_instruments,
               timed
          FROM performance_schema.setup_instruments
         WHERE enabled = 'NO'
         ORDER BY disabled_instruments;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled_consumers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_show_disabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently disabled consumers.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_disabled_consumers();\n             +---------------------------+\n             | disabled_consumers        |\n             +---------------------------+\n             | events_statements_current |\n             | global_instrumentation    |\n             | thread_instrumentation    |\n             | statements_digest         |\n             +---------------------------+\n             4 rows in set (0.05 sec)\n            '
BEGIN
    SELECT name AS disabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'NO'
     ORDER BY disabled_consumers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_disabled_instruments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_show_disabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently disabled instruments.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_disabled_instruments();\n            '
BEGIN
    SELECT name AS disabled_instruments, timed
      FROM performance_schema.setup_instruments
     WHERE enabled = 'NO'
     ORDER BY disabled_instruments;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_show_enabled`(
        IN in_show_instruments BOOLEAN,
        IN in_show_threads BOOLEAN
    )
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently enabled Performance Schema configuration.\n             Parameters\n             in_show_instruments (BOOLEAN):\n               Whether to print enabled instruments (can print many items)\n             in_show_threads (BOOLEAN):\n               Whether to print enabled threads\n             Example\n             mysql> CALL sys.ps_setup_show_enabled(TRUE, TRUE);\n             +----------------------------+\n             | performance_schema_enabled |\n             +----------------------------+\n             |                          1 |\n             +----------------------------+\n             1 row in set (0.00 sec)\n             +---------------+\n             | enabled_users |\n             +---------------+\n             | ''%''@''%''       |\n             +---------------+\n             1 row in set (0.01 sec)\n             +-------------+---------+---------+-------+\n             | object_type | objects | enabled | timed |\n             +-------------+---------+---------+-------+\n             | EVENT       | %.%     | YES     | YES   |\n             | FUNCTION    | %.%     | YES     | YES   |\n             | PROCEDURE   | %.%     | YES     | YES   |\n             | TABLE       | %.%     | YES     | YES   |\n             | TRIGGER     | %.%     | YES     | YES   |\n             +-------------+---------+---------+-------+\n             5 rows in set (0.01 sec)\n             +---------------------------+\n             | enabled_consumers         |\n             +---------------------------+\n             | events_statements_current |\n             | global_instrumentation    |\n             | thread_instrumentation    |\n             | statements_digest         |\n             +---------------------------+\n             4 rows in set (0.05 sec)\n             +---------------------------------+-------------+\n             | enabled_threads                 | thread_type |\n             +---------------------------------+-------------+\n             | sql/main                        | BACKGROUND  |\n             | sql/thread_timer_notifier       | BACKGROUND  |\n             | innodb/io_ibuf_thread           | BACKGROUND  |\n             | innodb/io_log_thread            | BACKGROUND  |\n             | innodb/io_read_thread           | BACKGROUND  |\n             | innodb/io_read_thread           | BACKGROUND  |\n             | innodb/io_write_thread          | BACKGROUND  |\n             | innodb/io_write_thread          | BACKGROUND  |\n             | innodb/page_cleaner_thread      | BACKGROUND  |\n             | innodb/srv_lock_timeout_thread  | BACKGROUND  |\n             | innodb/srv_error_monitor_thread | BACKGROUND  |\n             | innodb/srv_monitor_thread       | BACKGROUND  |\n             | innodb/srv_master_thread        | BACKGROUND  |\n             | innodb/srv_purge_thread         | BACKGROUND  |\n             | innodb/srv_worker_thread        | BACKGROUND  |\n             | innodb/srv_worker_thread        | BACKGROUND  |\n             | innodb/srv_worker_thread        | BACKGROUND  |\n             | innodb/buf_dump_thread          | BACKGROUND  |\n             | innodb/dict_stats_thread        | BACKGROUND  |\n             | sql/signal_handler              | BACKGROUND  |\n             | sql/compress_gtid_table         | FOREGROUND  |\n             | root@localhost                  | FOREGROUND  |\n             +---------------------------------+-------------+\n             22 rows in set (0.01 sec)\n             +-------------------------------------+-------+\n             | enabled_instruments                 | timed |\n             +-------------------------------------+-------+\n             | wait/io/file/sql/map                | YES   |\n             | wait/io/file/sql/binlog             | YES   |\n             ...\n             | statement/com/Error                 | YES   |\n             | statement/com/                      | YES   |\n             | idle                                | YES   |\n             +-------------------------------------+-------+\n             210 rows in set (0.08 sec)\n             Query OK, 0 rows affected (0.89 sec)\n            '
BEGIN
    SELECT @@performance_schema AS performance_schema_enabled;
    SELECT CONCAT('\'', user, '\'@\'', host, '\'') AS enabled_users
      FROM performance_schema.setup_actors
      WHERE enabled = 'YES'
     ORDER BY enabled_users;
    SELECT object_type,
           CONCAT(object_schema, '.', object_name) AS objects,
           enabled,
           timed
      FROM performance_schema.setup_objects
     WHERE enabled = 'YES'
     ORDER BY object_type, objects;
    SELECT name AS enabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'YES'
     ORDER BY enabled_consumers;
    IF (in_show_threads) THEN
        SELECT IF(name = 'thread/sql/one_connection',
                  CONCAT(processlist_user, '@', processlist_host),
                  REPLACE(name, 'thread/', '')) AS enabled_threads,
        TYPE AS thread_type
          FROM performance_schema.threads
         WHERE INSTRUMENTED = 'YES' AND name <> 'thread/innodb/thread_pool_thread'
         ORDER BY enabled_threads;
    END IF;
    IF (in_show_instruments) THEN
        SELECT name AS enabled_instruments,
               timed
          FROM performance_schema.setup_instruments
         WHERE enabled = 'YES'
         ORDER BY enabled_instruments;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled_consumers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_show_enabled_consumers`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently enabled consumers.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_enabled_consumers();\n             +---------------------------+\n             | enabled_consumers         |\n             +---------------------------+\n             | events_statements_current |\n             | global_instrumentation    |\n             | thread_instrumentation    |\n             | statements_digest         |\n             +---------------------------+\n             4 rows in set (0.05 sec)\n            '
BEGIN
    SELECT name AS enabled_consumers
      FROM performance_schema.setup_consumers
     WHERE enabled = 'YES'
     ORDER BY enabled_consumers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_setup_show_enabled_instruments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_setup_show_enabled_instruments`()
    READS SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Shows all currently enabled instruments.\n             Parameters\n             None\n             Example\n             mysql> CALL sys.ps_setup_show_enabled_instruments();\n            '
BEGIN
    SELECT name AS enabled_instruments, timed
      FROM performance_schema.setup_instruments
     WHERE enabled = 'YES'
     ORDER BY enabled_instruments;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_statement_avg_latency_histogram` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_statement_avg_latency_histogram`()
    READS SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Outputs a textual histogram graph of the average latency values\n             across all normalized queries tracked within the Performance Schema\n             events_statements_summary_by_digest table.\n             Can be used to show a very high level picture of what kind of\n             latency distribution statements running within this instance have.\n             Parameters\n             None.\n             Example\n             mysql> CALL sys.ps_statement_avg_latency_histogram()\\G\n             *************************** 1. row ***************************\n             Performance Schema Statement Digest Average Latency Histogram:\n               . = 1 unit\n               * = 2 units\n               # = 3 units\n             (0 - 38ms)     240 | ################################################################################\n             (38 - 77ms)    38  | ......................................\n             (77 - 115ms)   3   | ...\n             (115 - 154ms)  62  | *******************************\n             (154 - 192ms)  3   | ...\n             (192 - 231ms)  0   |\n             (231 - 269ms)  0   |\n             (269 - 307ms)  0   |\n             (307 - 346ms)  0   |\n             (346 - 384ms)  1   | .\n             (384 - 423ms)  1   | .\n             (423 - 461ms)  0   |\n             (461 - 499ms)  0   |\n             (499 - 538ms)  0   |\n             (538 - 576ms)  0   |\n             (576 - 615ms)  1   | .\n               Total Statements: 350; Buckets: 16; Bucket Size: 38 ms;\n            '
BEGIN
SELECT CONCAT('\n',
       '\n  . = 1 unit',
       '\n  * = 2 units',
       '\n  # = 3 units\n',
       @label := CONCAT(@label_inner := CONCAT('\n(0 - ',
                                               ROUND((@bucket_size := (SELECT ROUND((MAX(avg_us) - MIN(avg_us)) / (@buckets := 16)) AS size
                                                                         FROM sys.x$ps_digest_avg_latency_distribution)) / (@unit_div := 1000)),
                                                (@unit := 'ms'), ')'),
                        REPEAT(' ', (@max_label_size := ((1 + LENGTH(ROUND((@bucket_size * 15) / @unit_div)) + 3 + LENGTH(ROUND(@bucket_size * 16) / @unit_div)) + 1)) - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us <= @bucket_size), 0)),
       REPEAT(' ', (@max_label_len := (@max_label_size + LENGTH((@total_queries := (SELECT SUM(cnt) FROM sys.x$ps_digest_avg_latency_distribution)))) + 1) - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < (@one_unit := 40), '.', IF(@count_in_bucket < (@two_unit := 80), '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND(@bucket_size / @unit_div), ' - ', ROUND((@bucket_size * 2) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size AND b1.avg_us <= @bucket_size * 2), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 2) / @unit_div), ' - ', ROUND((@bucket_size * 3) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 2 AND b1.avg_us <= @bucket_size * 3), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 3) / @unit_div), ' - ', ROUND((@bucket_size * 4) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 3 AND b1.avg_us <= @bucket_size * 4), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 4) / @unit_div), ' - ', ROUND((@bucket_size * 5) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 4 AND b1.avg_us <= @bucket_size * 5), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 5) / @unit_div), ' - ', ROUND((@bucket_size * 6) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 5 AND b1.avg_us <= @bucket_size * 6), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 6) / @unit_div), ' - ', ROUND((@bucket_size * 7) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 6 AND b1.avg_us <= @bucket_size * 7), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 7) / @unit_div), ' - ', ROUND((@bucket_size * 8) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 7 AND b1.avg_us <= @bucket_size * 8), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 8) / @unit_div), ' - ', ROUND((@bucket_size * 9) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 8 AND b1.avg_us <= @bucket_size * 9), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 9) / @unit_div), ' - ', ROUND((@bucket_size * 10) / @unit_div), @unit, ')'),
                         REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                         @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                       FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                      WHERE b1.avg_us > @bucket_size * 9 AND b1.avg_us <= @bucket_size * 10), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 10) / @unit_div), ' - ', ROUND((@bucket_size * 11) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 10 AND b1.avg_us <= @bucket_size * 11), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 11) / @unit_div), ' - ', ROUND((@bucket_size * 12) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 11 AND b1.avg_us <= @bucket_size * 12), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 12) / @unit_div), ' - ', ROUND((@bucket_size * 13) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 12 AND b1.avg_us <= @bucket_size * 13), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 13) / @unit_div), ' - ', ROUND((@bucket_size * 14) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 13 AND b1.avg_us <= @bucket_size * 14), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 14) / @unit_div), ' - ', ROUND((@bucket_size * 15) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 14 AND b1.avg_us <= @bucket_size * 15), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       @label := CONCAT(@label_inner := CONCAT('\n(', ROUND((@bucket_size * 15) / @unit_div), ' - ', ROUND((@bucket_size * 16) / @unit_div), @unit, ')'),
                        REPEAT(' ', @max_label_size - LENGTH(@label_inner)),
                        @count_in_bucket := IFNULL((SELECT SUM(cnt)
                                                      FROM sys.x$ps_digest_avg_latency_distribution AS b1
                                                     WHERE b1.avg_us > @bucket_size * 15 AND b1.avg_us <= @bucket_size * 16), 0)),
       REPEAT(' ', @max_label_len - LENGTH(@label)), '| ',
       IFNULL(REPEAT(IF(@count_in_bucket < @one_unit, '.', IF(@count_in_bucket < @two_unit, '*', '#')),
       	             IF(@count_in_bucket < @one_unit, @count_in_bucket,
       	             	IF(@count_in_bucket < @two_unit, @count_in_bucket / 2, @count_in_bucket / 3))), ''),
       '\n\n  Total Statements: ', @total_queries, '; Buckets: ', @buckets , '; Bucket Size: ', ROUND(@bucket_size / @unit_div) , ' ', @unit, ';\n'
      ) AS `Performance Schema Statement Digest Average Latency Histogram`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_trace_statement_digest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_trace_statement_digest`(
        IN in_digest VARCHAR(32),
        IN in_runtime INT,
        IN in_interval DECIMAL(2,2),
        IN in_start_fresh BOOLEAN,
        IN in_auto_enable BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Traces all instrumentation within Performance Schema for a specific\n             Statement Digest.\n             When finding a statement of interest within the\n             performance_schema.events_statements_summary_by_digest table, feed\n             the DIGEST MD5 value in to this procedure, set how long to poll for,\n             and at what interval to poll, and it will generate a report of all\n             statistics tracked within Performance Schema for that digest for the\n             interval.\n             It will also attempt to generate an EXPLAIN for the longest running\n             example of the digest during the interval. Note this may fail, as:\n                * Performance Schema truncates long SQL_TEXT values (and hence the\n                  EXPLAIN will fail due to parse errors)\n                * the default schema is sys (so tables that are not fully qualified\n                  in the query may not be found)\n                * some queries such as SHOW are not supported in EXPLAIN.\n             When the EXPLAIN fails, the error will be ignored and no EXPLAIN\n             output generated.\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Parameters\n             in_digest (VARCHAR(32)):\n               The statement digest identifier you would like to analyze\n             in_runtime (INT):\n               The number of seconds to run analysis for\n             in_interval (DECIMAL(2,2)):\n               The interval (in seconds, may be fractional) at which to try\n               and take snapshots\n             in_start_fresh (BOOLEAN):\n               Whether to TRUNCATE the events_statements_history_long and\n               events_stages_history_long tables before starting\n             in_auto_enable (BOOLEAN):\n               Whether to automatically turn on required consumers\n             Example\n             mysql> call ps_trace_statement_digest(''891ec6860f98ba46d89dd20b0c03652c'', 10, 0.1, true, true);\n             +--------------------+\n             | SUMMARY STATISTICS |\n             +--------------------+\n             | SUMMARY STATISTICS |\n             +--------------------+\n             1 row in set (9.11 sec)\n             +------------+-----------+-----------+-----------+---------------+------------+------------+\n             | executions | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scans |\n             +------------+-----------+-----------+-----------+---------------+------------+------------+\n             |         21 | 4.11 ms   | 2.00 ms   |         0 |            21 |          0 |          0 |\n             +------------+-----------+-----------+-----------+---------------+------------+------------+\n             1 row in set (9.11 sec)\n             +------------------------------------------+-------+-----------+\n             | event_name                               | count | latency   |\n             +------------------------------------------+-------+-----------+\n             | stage/sql/checking query cache for query |    16 | 724.37 us |\n             | stage/sql/statistics                     |    16 | 546.92 us |\n             | stage/sql/freeing items                  |    18 | 520.11 us |\n             | stage/sql/init                           |    51 | 466.80 us |\n             ...\n             | stage/sql/cleaning up                    |    18 | 11.92 us  |\n             | stage/sql/executing                      |    16 | 6.95 us   |\n             +------------------------------------------+-------+-----------+\n             17 rows in set (9.12 sec)\n             +---------------------------+\n             | LONGEST RUNNING STATEMENT |\n             +---------------------------+\n             | LONGEST RUNNING STATEMENT |\n             +---------------------------+\n             1 row in set (9.16 sec)\n             +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n             | thread_id | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scan |\n             +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n             |    166646 | 618.43 us | 1.00 ms   |         0 |             1 |          0 |         0 |\n             +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n             1 row in set (9.16 sec)\n             // Truncated for clarity...\n             +-----------------------------------------------------------------+\n             | sql_text                                                        |\n             +-----------------------------------------------------------------+\n             | select hibeventhe0_.id as id1382_, hibeventhe0_.createdTime ... |\n             +-----------------------------------------------------------------+\n             1 row in set (9.17 sec)\n             +------------------------------------------+-----------+\n             | event_name                               | latency   |\n             +------------------------------------------+-----------+\n             | stage/sql/init                           | 8.61 us   |\n             | stage/sql/Waiting for query cache lock   | 453.23 us |\n             | stage/sql/init                           | 331.07 ns |\n             | stage/sql/checking query cache for query | 43.04 us  |\n             ...\n             | stage/sql/freeing items                  | 30.46 us  |\n             | stage/sql/cleaning up                    | 662.13 ns |\n             +------------------------------------------+-----------+\n             18 rows in set (9.23 sec)\n             +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n             | id | select_type | table        | type  | possible_keys | key       | key_len | ref         | rows | Extra |\n             +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n             |  1 | SIMPLE      | hibeventhe0_ | const | fixedTime     | fixedTime | 775     | const,const |    1 | NULL  |\n             +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n             1 row in set (9.27 sec)\n             Query OK, 0 rows affected (9.28 sec)\n            '
BEGIN
    DECLARE v_start_fresh BOOLEAN DEFAULT false;
    DECLARE v_auto_enable BOOLEAN DEFAULT false;
    DECLARE v_explain     BOOLEAN DEFAULT true;
    DECLARE v_this_thread_enabed ENUM('YES', 'NO');
    DECLARE v_runtime INT DEFAULT 0;
    DECLARE v_start INT DEFAULT 0;
    DECLARE v_found_stmts INT;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    DROP TEMPORARY TABLE IF EXISTS stmt_trace;
    CREATE TEMPORARY TABLE stmt_trace (
        thread_id BIGINT UNSIGNED,
        timer_start BIGINT UNSIGNED,
        event_id BIGINT UNSIGNED,
        sql_text longtext,
        timer_wait BIGINT UNSIGNED,
        lock_time BIGINT UNSIGNED,
        errors BIGINT UNSIGNED,
        mysql_errno INT,
        rows_sent BIGINT UNSIGNED,
        rows_affected BIGINT UNSIGNED,
        rows_examined BIGINT UNSIGNED,
        created_tmp_tables BIGINT UNSIGNED,
        created_tmp_disk_tables BIGINT UNSIGNED,
        no_index_used BIGINT UNSIGNED,
        PRIMARY KEY (thread_id, timer_start)
    );
    DROP TEMPORARY TABLE IF EXISTS stmt_stages;
    CREATE TEMPORARY TABLE stmt_stages (
       event_id BIGINT UNSIGNED,
       stmt_id BIGINT UNSIGNED,
       event_name VARCHAR(128),
       timer_wait BIGINT UNSIGNED,
       PRIMARY KEY (event_id)
    );
    SET v_start_fresh = in_start_fresh;
    IF v_start_fresh THEN
        TRUNCATE TABLE performance_schema.events_statements_history_long;
        TRUNCATE TABLE performance_schema.events_stages_history_long;
    END IF;
    SET v_auto_enable = in_auto_enable;
    IF v_auto_enable THEN
        CALL sys.ps_setup_save(0);
        UPDATE performance_schema.threads
           SET INSTRUMENTED = IF(PROCESSLIST_ID IS NOT NULL, 'YES', 'NO');
        UPDATE performance_schema.setup_consumers
           SET ENABLED = 'YES'
         WHERE NAME NOT LIKE '%\_history'
               AND NAME NOT LIKE 'events_wait%'
               AND NAME NOT LIKE 'events_transactions%'
               AND NAME <> 'statements_digest';
        UPDATE performance_schema.setup_instruments
           SET ENABLED = 'YES',
               TIMED   = 'YES'
         WHERE NAME LIKE 'statement/%' OR NAME LIKE 'stage/%';
    END IF;
    WHILE v_runtime < in_runtime DO
        SELECT UNIX_TIMESTAMP() INTO v_start;
        INSERT IGNORE INTO stmt_trace
        SELECT thread_id, timer_start, event_id, sql_text, timer_wait, lock_time, errors, mysql_errno,
               rows_sent, rows_affected, rows_examined, created_tmp_tables, created_tmp_disk_tables, no_index_used
          FROM performance_schema.events_statements_history_long
        WHERE digest = in_digest;
        INSERT IGNORE INTO stmt_stages
        SELECT stages.event_id, stmt_trace.event_id,
               stages.event_name, stages.timer_wait
          FROM performance_schema.events_stages_history_long AS stages
          JOIN stmt_trace ON stages.nesting_event_id = stmt_trace.event_id;
        SELECT SLEEP(in_interval) INTO @sleep;
        SET v_runtime = v_runtime + (UNIX_TIMESTAMP() - v_start);
    END WHILE;
    SELECT "SUMMARY STATISTICS";
    SELECT COUNT(*) executions,
           sys.format_time(SUM(timer_wait)) AS exec_time,
           sys.format_time(SUM(lock_time)) AS lock_time,
           SUM(rows_sent) AS rows_sent,
           SUM(rows_affected) AS rows_affected,
           SUM(rows_examined) AS rows_examined,
           SUM(created_tmp_tables) AS tmp_tables,
           SUM(no_index_used) AS full_scans
      FROM stmt_trace;
    SELECT event_name,
           COUNT(*) as count,
           sys.format_time(SUM(timer_wait)) as latency
      FROM stmt_stages
     GROUP BY event_name
     ORDER BY SUM(timer_wait) DESC;
    SELECT "LONGEST RUNNING STATEMENT";
    SELECT thread_id,
           sys.format_time(timer_wait) AS exec_time,
           sys.format_time(lock_time) AS lock_time,
           rows_sent,
           rows_affected,
           rows_examined,
           created_tmp_tables AS tmp_tables,
           no_index_used AS full_scan
      FROM stmt_trace
     ORDER BY timer_wait DESC LIMIT 1;
    SELECT sql_text
      FROM stmt_trace
     ORDER BY timer_wait DESC LIMIT 1;
    SELECT sql_text, event_id INTO @sql, @sql_id
      FROM stmt_trace
    ORDER BY timer_wait DESC LIMIT 1;
    IF (@sql_id IS NOT NULL) THEN
        SELECT event_name,
               sys.format_time(timer_wait) as latency
          FROM stmt_stages
         WHERE stmt_id = @sql_id
         ORDER BY event_id;
    END IF;
    DROP TEMPORARY TABLE stmt_trace;
    DROP TEMPORARY TABLE stmt_stages;
    IF (@sql IS NOT NULL) THEN
        SET @stmt := CONCAT("EXPLAIN FORMAT=JSON ", @sql);
        BEGIN
            DECLARE CONTINUE HANDLER FOR 1064, 1146 SET v_explain = false;
            PREPARE explain_stmt FROM @stmt;
        END;
        IF (v_explain) THEN
            EXECUTE explain_stmt;
            DEALLOCATE PREPARE explain_stmt;
        END IF;
    END IF;
    IF v_auto_enable THEN
        CALL sys.ps_setup_reload_saved();
    END IF;
    IF (v_this_thread_enabed = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    SET sql_log_bin = @log_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_trace_thread` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_trace_thread`(
        IN in_thread_id BIGINT UNSIGNED,
        IN in_outfile VARCHAR(255),
        IN in_max_runtime DECIMAL(20,2),
        IN in_interval DECIMAL(20,2),
        IN in_start_fresh BOOLEAN,
        IN in_auto_setup BOOLEAN,
        IN in_debug BOOLEAN
    )
    MODIFIES SQL DATA
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Dumps all data within Performance Schema for an instrumented thread,\n             to create a DOT formatted graph file.\n             Each resultset returned from the procedure should be used for a complete graph\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Parameters\n             in_thread_id (BIGINT UNSIGNED):\n               The thread that you would like a stack trace for\n             in_outfile  (VARCHAR(255)):\n               The filename the dot file will be written to\n             in_max_runtime (DECIMAL(20,2)):\n               The maximum time to keep collecting data.\n               Use NULL to get the default which is 60 seconds.\n             in_interval (DECIMAL(20,2)):\n               How long to sleep between data collections.\n               Use NULL to get the default which is 1 second.\n             in_start_fresh (BOOLEAN):\n               Whether to reset all Performance Schema data before tracing.\n             in_auto_setup (BOOLEAN):\n               Whether to disable all other threads and enable all consumers/instruments.\n               This will also reset the settings at the end of the run.\n             in_debug (BOOLEAN):\n               Whether you would like to include file:lineno in the graph\n             Example\n             mysql> CALL sys.ps_trace_thread(25, CONCAT(''/tmp/stack-'', REPLACE(NOW(), '' '', ''-''), ''.dot''), NULL, NULL, TRUE, TRUE, TRUE);\n             +-------------------+\n             | summary           |\n             +-------------------+\n             | Disabled 1 thread |\n             +-------------------+\n             1 row in set (0.00 sec)\n             +---------------------------------------------+\n             | Info                                        |\n             +---------------------------------------------+\n             | Data collection starting for THREAD_ID = 25 |\n             +---------------------------------------------+\n             1 row in set (0.03 sec)\n             +-----------------------------------------------------------+\n             | Info                                                      |\n             +-----------------------------------------------------------+\n             | Stack trace written to /tmp/stack-2014-02-16-21:18:41.dot |\n             +-----------------------------------------------------------+\n             1 row in set (60.07 sec)\n             +-------------------------------------------------------------------+\n             | Convert to PDF                                                    |\n             +-------------------------------------------------------------------+\n             | dot -Tpdf -o /tmp/stack_25.pdf /tmp/stack-2014-02-16-21:18:41.dot |\n             +-------------------------------------------------------------------+\n             1 row in set (60.07 sec)\n             +-------------------------------------------------------------------+\n             | Convert to PNG                                                    |\n             +-------------------------------------------------------------------+\n             | dot -Tpng -o /tmp/stack_25.png /tmp/stack-2014-02-16-21:18:41.dot |\n             +-------------------------------------------------------------------+\n             1 row in set (60.07 sec)\n             +------------------+\n             | summary          |\n             +------------------+\n             | Enabled 1 thread |\n             +------------------+\n             1 row in set (60.32 sec)\n            '
BEGIN
    DECLARE v_done bool DEFAULT FALSE;
    DECLARE v_start, v_runtime DECIMAL(20,2) DEFAULT 0.0;
    DECLARE v_min_event_id bigint unsigned DEFAULT 0;
    DECLARE v_this_thread_enabed ENUM('YES', 'NO');
    DECLARE v_event longtext;
    DECLARE c_stack CURSOR FOR
        SELECT CONCAT(IF(nesting_event_id IS NOT NULL, CONCAT(nesting_event_id, ' -> '), ''),
                    event_id, '; ', event_id, ' [label="',
                    '(', sys.format_time(timer_wait), ') ',
                    IF (event_name NOT LIKE 'wait/io%',
                        SUBSTRING_INDEX(event_name, '/', -2),
                        IF (event_name NOT LIKE 'wait/io/file%' OR event_name NOT LIKE 'wait/io/socket%',
                            SUBSTRING_INDEX(event_name, '/', -4),
                            event_name)
                        ),
                    IF (event_name LIKE 'statement/%', IFNULL(CONCAT('\\n', wait_info), ''), ''),
                    IF (in_debug AND event_name LIKE 'wait%', wait_info, ''),
                    '", ',
                    CASE WHEN event_name LIKE 'wait/io/file%' THEN
                           'shape=box, style=filled, color=red'
                         WHEN event_name LIKE 'wait/io/table%' THEN
                           'shape=box, style=filled, color=green'
                         WHEN event_name LIKE 'wait/io/socket%' THEN
                           'shape=box, style=filled, color=yellow'
                         WHEN event_name LIKE 'wait/synch/mutex%' THEN
                           'style=filled, color=lightskyblue'
                         WHEN event_name LIKE 'wait/synch/cond%' THEN
                           'style=filled, color=darkseagreen3'
                         WHEN event_name LIKE 'wait/synch/rwlock%' THEN
                           'style=filled, color=orchid'
                         WHEN event_name LIKE 'wait/lock%' THEN
                           'shape=box, style=filled, color=tan'
                         WHEN event_name LIKE 'statement/%' THEN
                           CONCAT('shape=box, style=bold',
                                  CASE WHEN event_name LIKE 'statement/com/%' THEN
                                         ' style=filled, color=darkseagreen'
                                       ELSE
                                         IF((timer_wait/1000000000000) > @@long_query_time,
                                            ' style=filled, color=red',
                                            ' style=filled, color=lightblue')
                                  END
                           )
                         WHEN event_name LIKE 'stage/%' THEN
                           'style=filled, color=slategray3'
                         WHEN event_name LIKE '%idle%' THEN
                           'shape=box, style=filled, color=firebrick3'
                         ELSE '' END,
                     '];\n'
                   ) event, event_id
        FROM (
             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id,
                     CONCAT(sql_text, '\\n',
                            'errors: ', errors, '\\n',
                            'warnings: ', warnings, '\\n',
                            'lock time: ', sys.format_time(lock_time),'\\n',
                            'rows affected: ', rows_affected, '\\n',
                            'rows sent: ', rows_sent, '\\n',
                            'rows examined: ', rows_examined, '\\n',
                            'tmp tables: ', created_tmp_tables, '\\n',
                            'tmp disk tables: ', created_tmp_disk_tables, '\\n'
                            'select scan: ', select_scan, '\\n',
                            'select full join: ', select_full_join, '\\n',
                            'select full range join: ', select_full_range_join, '\\n',
                            'select range: ', select_range, '\\n',
                            'select range check: ', select_range_check, '\\n',
                            'sort merge passes: ', sort_merge_passes, '\\n',
                            'sort rows: ', sort_rows, '\\n',
                            'sort range: ', sort_range, '\\n',
                            'sort scan: ', sort_scan, '\\n',
                            'no index used: ', IF(no_index_used, 'TRUE', 'FALSE'), '\\n',
                            'no good index used: ', IF(no_good_index_used, 'TRUE', 'FALSE'), '\\n'
                     ) AS wait_info
                FROM performance_schema.events_statements_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
             UNION
             (SELECT thread_id, event_id, event_name, timer_wait, timer_start, nesting_event_id, null AS wait_info
                FROM performance_schema.events_stages_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
             UNION
             (SELECT thread_id, event_id,
                     CONCAT(event_name,
                            IF(event_name NOT LIKE 'wait/synch/mutex%', IFNULL(CONCAT(' - ', operation), ''), ''),
                            IF(number_of_bytes IS NOT NULL, CONCAT(' ', number_of_bytes, ' bytes'), ''),
                            IF(event_name LIKE 'wait/io/file%', '\\n', ''),
                            IF(object_schema IS NOT NULL, CONCAT('\\nObject: ', object_schema, '.'), ''),
                            IF(object_name IS NOT NULL,
                               IF (event_name LIKE 'wait/io/socket%',
                                   CONCAT('\\n', IF (object_name LIKE ':0%', @@socket, object_name)),
                                   object_name),
                               ''
                            ),
                            IF(index_name IS NOT NULL, CONCAT(' Index: ', index_name), ''), '\\n'
                     ) AS event_name,
                     timer_wait, timer_start, nesting_event_id, source AS wait_info
                FROM performance_schema.events_waits_history_long
               WHERE thread_id = in_thread_id AND event_id > v_min_event_id)
           ) events
       ORDER BY event_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    SET @log_bin := @@sql_log_bin;
    SET sql_log_bin = 0;
    SELECT INSTRUMENTED INTO v_this_thread_enabed FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    IF (in_auto_setup) THEN
        CALL sys.ps_setup_save(0);
        DELETE FROM performance_schema.setup_actors;
        UPDATE performance_schema.threads
           SET INSTRUMENTED = IF(THREAD_ID = in_thread_id, 'YES', 'NO');
        UPDATE performance_schema.setup_consumers
           SET ENABLED = 'YES'
         WHERE NAME NOT LIKE '%\_history';
        UPDATE performance_schema.setup_instruments
           SET ENABLED = 'YES',
               TIMED   = 'YES';
    END IF;
    IF (in_start_fresh) THEN
        TRUNCATE performance_schema.events_statements_history_long;
        TRUNCATE performance_schema.events_stages_history_long;
        TRUNCATE performance_schema.events_waits_history_long;
    END IF;
    DROP TEMPORARY TABLE IF EXISTS tmp_events;
    CREATE TEMPORARY TABLE tmp_events (
      event_id bigint unsigned NOT NULL,
      event longblob,
      PRIMARY KEY (event_id)
    );
    INSERT INTO tmp_events VALUES (0, CONCAT('digraph events { rankdir=LR; nodesep=0.10;\n',
                                             '// Stack created .....: ', NOW(), '\n',
                                             '// MySQL version .....: ', VERSION(), '\n',
                                             '// MySQL hostname ....: ', @@hostname, '\n',
                                             '// MySQL port ........: ', @@port, '\n',
                                             '// MySQL socket ......: ', @@socket, '\n',
                                             '// MySQL user ........: ', CURRENT_USER(), '\n'));
    SELECT CONCAT('Data collection starting for THREAD_ID = ', in_thread_id) AS 'Info';
    SET v_min_event_id = 0,
        v_start        = UNIX_TIMESTAMP(),
        in_interval    = IFNULL(in_interval, 1.00),
        in_max_runtime = IFNULL(in_max_runtime, 60.00);
    WHILE (v_runtime < in_max_runtime
           AND (SELECT INSTRUMENTED FROM performance_schema.threads WHERE THREAD_ID = in_thread_id) = 'YES') DO
        SET v_done = FALSE;
        OPEN c_stack;
        c_stack_loop: LOOP
            FETCH c_stack INTO v_event, v_min_event_id;
            IF v_done THEN
                LEAVE c_stack_loop;
            END IF;
            IF (LENGTH(v_event) > 0) THEN
                INSERT INTO tmp_events VALUES (v_min_event_id, v_event);
            END IF;
        END LOOP;
        CLOSE c_stack;
        SELECT SLEEP(in_interval) INTO @sleep;
        SET v_runtime = (UNIX_TIMESTAMP() - v_start);
    END WHILE;
    INSERT INTO tmp_events VALUES (v_min_event_id+1, '}');
    SET @query = CONCAT('SELECT event FROM tmp_events ORDER BY event_id INTO OUTFILE ''', in_outfile, ''' FIELDS ESCAPED BY '''' LINES TERMINATED BY ''''');
    PREPARE stmt_output FROM @query;
    EXECUTE stmt_output;
    DEALLOCATE PREPARE stmt_output;
    SELECT CONCAT('Stack trace written to ', in_outfile) AS 'Info';
    SELECT CONCAT('dot -Tpdf -o /tmp/stack_', in_thread_id, '.pdf ', in_outfile) AS 'Convert to PDF';
    SELECT CONCAT('dot -Tpng -o /tmp/stack_', in_thread_id, '.png ', in_outfile) AS 'Convert to PNG';
    DROP TEMPORARY TABLE tmp_events;
    IF (in_auto_setup) THEN
        CALL sys.ps_setup_reload_saved();
    END IF;
    IF (v_this_thread_enabed = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    SET sql_log_bin = @log_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ps_truncate_all_tables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `ps_truncate_all_tables`(
        IN in_verbose BOOLEAN
    )
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Truncates all summary tables within Performance Schema,\n             resetting all aggregated instrumentation as a snapshot.\n             Parameters\n             in_verbose (BOOLEAN):\n               Whether to print each TRUNCATE statement before running\n             Example\n             mysql> CALL sys.ps_truncate_all_tables(false);\n             +---------------------+\n             | summary             |\n             +---------------------+\n             | Truncated 44 tables |\n             +---------------------+\n             1 row in set (0.10 sec)\n             Query OK, 0 rows affected (0.10 sec)\n            '
BEGIN
    DECLARE v_done INT DEFAULT FALSE;
    DECLARE v_total_tables INT DEFAULT 0;
    DECLARE v_ps_table VARCHAR(64);
    DECLARE ps_tables CURSOR FOR
        SELECT table_name
          FROM INFORMATION_SCHEMA.TABLES
         WHERE table_schema = 'performance_schema'
           AND (table_name LIKE '%summary%'
            OR table_name LIKE '%history%');
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_done = TRUE;
    OPEN ps_tables;
    ps_tables_loop: LOOP
        FETCH ps_tables INTO v_ps_table;
        IF v_done THEN
          LEAVE ps_tables_loop;
        END IF;
        SET @truncate_stmt := CONCAT('TRUNCATE TABLE performance_schema.', v_ps_table);
        IF in_verbose THEN
            SELECT CONCAT('Running: ', @truncate_stmt) AS status;
        END IF;
        PREPARE truncate_stmt FROM @truncate_stmt;
        EXECUTE truncate_stmt;
        DEALLOCATE PREPARE truncate_stmt;
        SET v_total_tables = v_total_tables + 1;
    END LOOP;
    CLOSE ps_tables;
    SELECT CONCAT('Truncated ', v_total_tables, ' tables') AS summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `statement_performance_analyzer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `statement_performance_analyzer`(
        IN in_action ENUM('snapshot', 'overall', 'delta', 'create_table', 'create_tmp', 'save', 'cleanup'),
        IN in_table VARCHAR(129),
        IN in_views SET ('with_runtimes_in_95th_percentile', 'analysis', 'with_errors_or_warnings', 'with_full_table_scans', 'with_sorting', 'with_temp_tables', 'custom')
    )
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Create a report of the statements running on the server.\n             The views are calculated based on the overall and/or delta activity.\n             Requires the SUPER privilege for "SET sql_log_bin = 0;".\n             Parameters\n             in_action (ENUM(''snapshot'', ''overall'', ''delta'', ''create_tmp'', ''create_table'', ''save'', ''cleanup'')):\n               The action to take. Supported actions are:\n                 * snapshot      Store a snapshot. The default is to make a snapshot of the current content of\n                                 performance_schema.events_statements_summary_by_digest, but by setting in_table\n                                 this can be overwritten to copy the content of the specified table.\n                                 The snapshot is stored in the sys.tmp_digests temporary table.\n                 * overall       Generate analyzis based on the content specified by in_table. For the overall analyzis,\n                                 in_table can be NOW() to use a fresh snapshot. This will overwrite an existing snapshot.\n                                 Use NULL for in_table to use the existing snapshot. If in_table IS NULL and no snapshot\n                                 exists, a new will be created.\n                                 See also in_views and @sys.statement_performance_analyzer.limit.\n                 * delta         Generate a delta analysis. The delta will be calculated between the reference table in\n                                 in_table and the snapshot. An existing snapshot must exist.\n                                 The action uses the sys.tmp_digests_delta temporary table.\n                                 See also in_views and @sys.statement_performance_analyzer.limit.\n                 * create_table  Create a regular table suitable for storing the snapshot for later use, e.g. for\n                                 calculating deltas.\n                 * create_tmp    Create a temporary table suitable for storing the snapshot for later use, e.g. for\n                                 calculating deltas.\n                 * save          Save the snapshot in the table specified by in_table. The table must exists and have\n                                 the correct structure.\n                                 If no snapshot exists, a new is created.\n                 * cleanup       Remove the temporary tables used for the snapshot and delta.\n             in_table (VARCHAR(129)):\n               The table argument used for some actions. Use the format ''db1.t1'' or ''t1'' without using any backticks (`)\n               for quoting. Periods (.) are not supported in the database and table names.\n               The meaning of the table for each action supporting the argument is:\n                 * snapshot      The snapshot is created based on the specified table. Set to NULL or NOW() to use\n                                 the current content of performance_schema.events_statements_summary_by_digest.\n                 * overall       The table with the content to create the overall analyzis for. The following values\n                                 can be used:\n                                   - A table name - use the content of that table.\n                                   - NOW()        - create a fresh snapshot and overwrite the existing snapshot.\n                                   - NULL         - use the last stored snapshot.\n                 * delta         The table name is mandatory and specified the reference view to compare the currently\n                                 stored snapshot against. If no snapshot exists, a new will be created.\n                 * create_table  The name of the regular table to create.\n                 * create_tmp    The name of the temporary table to create.\n                 * save          The name of the table to save the currently stored snapshot into.\n             in_views (SET (''with_runtimes_in_95th_percentile'', ''analysis'', ''with_errors_or_warnings'',\n                            ''with_full_table_scans'', ''with_sorting'', ''with_temp_tables'', ''custom''))\n               Which views to include:\n                 * with_runtimes_in_95th_percentile  Based on the sys.statements_with_runtimes_in_95th_percentile view\n                 * analysis                          Based on the sys.statement_analysis view\n                 * with_errors_or_warnings           Based on the sys.statements_with_errors_or_warnings view\n                 * with_full_table_scans             Based on the sys.statements_with_full_table_scans view\n                 * with_sorting                      Based on the sys.statements_with_sorting view\n                 * with_temp_tables                  Based on the sys.statements_with_temp_tables view\n                 * custom                            Use a custom view. This view must be specified in @sys.statement_performance_analyzer.view to an existing view or a query\n             Default is to include all except ''custom''.\n             Configuration Options\n             sys.statement_performance_analyzer.limit\n               The maximum number of rows to include for the views that does not have a built-in limit (e.g. the 95th percentile view).\n               If not set the limit is 100.\n             sys.statement_performance_analyzer.view\n               Used together with the ''custom'' view. If the value contains a space, it is considered a query, otherwise it must be\n               an existing view querying the performance_schema.events_statements_summary_by_digest table. There cannot be any limit\n               clause including in the query or view definition if @sys.statement_performance_analyzer.limit > 0.\n               If specifying a view, use the same format as for in_table.\n             sys.debug\n               Whether to provide debugging output.\n               Default is ''OFF''. Set to ''ON'' to include.\n             Example\n             To create a report with the queries in the 95th percentile since last truncate of performance_schema.events_statements_summary_by_digest\n             and the delta for a 1 minute period:\n                1. Create a temporary table to store the initial snapshot.\n                2. Create the initial snapshot.\n                3. Save the initial snapshot in the temporary table.\n                4. Wait one minute.\n                5. Create a new snapshot.\n                6. Perform analyzis based on the new snapshot.\n                7. Perform analyzis based on the delta between the initial and new snapshots.\n             mysql> CALL sys.statement_performance_analyzer(''create_tmp'', ''mydb.tmp_digests_ini'', NULL);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\n             Query OK, 0 rows affected (0.02 sec)\n             mysql> CALL sys.statement_performance_analyzer(''save'', ''mydb.tmp_digests_ini'', NULL);\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> DO SLEEP(60);\n             Query OK, 0 rows affected (1 min 0.00 sec)\n             mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\n             Query OK, 0 rows affected (0.02 sec)\n             mysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile'');\n             +-----------------------------------------+\n             | Next Output                             |\n             +-----------------------------------------+\n             | Queries with Runtime in 95th Percentile |\n             +-----------------------------------------+\n             1 row in set (0.05 sec)\n             ...\n             mysql> CALL sys.statement_performance_analyzer(''delta'', ''mydb.tmp_digests_ini'', ''with_runtimes_in_95th_percentile'');\n             +-----------------------------------------+\n             | Next Output                             |\n             +-----------------------------------------+\n             | Queries with Runtime in 95th Percentile |\n             +-----------------------------------------+\n             1 row in set (0.03 sec)\n             ...\n             To create an overall report of the 95th percentile queries and the top 10 queries with full table scans:\n             mysql> CALL sys.statement_performance_analyzer(''snapshot'', NULL, NULL);\n             Query OK, 0 rows affected (0.01 sec)\n             mysql> SET @sys.statement_performance_analyzer.limit = 10;\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> CALL sys.statement_performance_analyzer(''overall'', NULL, ''with_runtimes_in_95th_percentile,with_full_table_scans'');\n             +-----------------------------------------+\n             | Next Output                             |\n             +-----------------------------------------+\n             | Queries with Runtime in 95th Percentile |\n             +-----------------------------------------+\n             1 row in set (0.01 sec)\n             ...\n             +-------------------------------------+\n             | Next Output                         |\n             +-------------------------------------+\n             | Top 10 Queries with Full Table Scan |\n             +-------------------------------------+\n             1 row in set (0.09 sec)\n             ...\n             Use a custom view showing the top 10 query sorted by total execution time refreshing the view every minute using\n             the watch command in Linux.\n             mysql> CREATE OR REPLACE VIEW mydb.my_statements AS\n                 -> SELECT sys.format_statement(DIGEST_TEXT) AS query,\n                 ->        SCHEMA_NAME AS db,\n                 ->        COUNT_STAR AS exec_count,\n                 ->        sys.format_time(SUM_TIMER_WAIT) AS total_latency,\n                 ->        sys.format_time(AVG_TIMER_WAIT) AS avg_latency,\n                 ->        ROUND(IFNULL(SUM_ROWS_SENT / NULLIF(COUNT_STAR, 0), 0)) AS rows_sent_avg,\n                 ->        ROUND(IFNULL(SUM_ROWS_EXAMINED / NULLIF(COUNT_STAR, 0), 0)) AS rows_examined_avg,\n                 ->        ROUND(IFNULL(SUM_ROWS_AFFECTED / NULLIF(COUNT_STAR, 0), 0)) AS rows_affected_avg,\n                 ->        DIGEST AS digest\n                 ->   FROM performance_schema.events_statements_summary_by_digest\n                 -> ORDER BY SUM_TIMER_WAIT DESC;\n             Query OK, 0 rows affected (0.01 sec)\n             mysql> CALL sys.statement_performance_analyzer(''create_table'', ''mydb.digests_prev'', NULL);\n             Query OK, 0 rows affected (0.10 sec)\n             shell$ watch -n 60 "mysql sys --table -e "\n             > SET @sys.statement_performance_analyzer.view = ''mydb.my_statements'';\n             > SET @sys.statement_performance_analyzer.limit = 10;\n             > CALL statement_performance_analyzer(''snapshot'', NULL, NULL);\n             > CALL statement_performance_analyzer(''delta'', ''mydb.digests_prev'', ''custom'');\n             > CALL statement_performance_analyzer(''save'', ''mydb.digests_prev'', NULL);\n             > ""\n             Every 60.0s: mysql sys --table -e "                                                                                                   ...  Mon Dec 22 10:58:51 2014\n             +----------------------------------+\n             | Next Output                      |\n             +----------------------------------+\n             | Top 10 Queries Using Custom View |\n             +----------------------------------+\n             +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+\n             | query             | db    | exec_count | total_latency | avg_latency | rows_sent_avg | rows_examined_avg | rows_affected_avg | digest                           |\n             +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+\n             ...\n            '
BEGIN
    DECLARE v_table_exists, v_tmp_digests_table_exists, v_custom_view_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY') DEFAULT '';
    DECLARE v_this_thread_enabled ENUM('YES', 'NO');
    DECLARE v_force_new_snapshot BOOLEAN DEFAULT FALSE;
    DECLARE v_digests_table VARCHAR(133);
    DECLARE v_quoted_table, v_quoted_custom_view VARCHAR(133) DEFAULT '';
    DECLARE v_table_db, v_table_name, v_custom_db, v_custom_name VARCHAR(64);
    DECLARE v_digest_table_template, v_checksum_ref, v_checksum_table text;
    DECLARE v_sql longtext;
    DECLARE v_error_msg VARCHAR(128);
    SELECT INSTRUMENTED INTO v_this_thread_enabled FROM performance_schema.threads WHERE PROCESSLIST_ID = CONNECTION_ID();
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_disable_thread(CONNECTION_ID());
    END IF;
    SET @log_bin := @@sql_log_bin;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = 0;
    END IF;
    IF (@sys.statement_performance_analyzer.limit IS NULL) THEN
        SET @sys.statement_performance_analyzer.limit = sys.sys_get_config('statement_performance_analyzer.limit', '100');
    END IF;
    IF (@sys.debug IS NULL) THEN
        SET @sys.debug                                = sys.sys_get_config('debug'                               , 'OFF');
    END IF;
    IF (in_table = 'NOW()') THEN
        SET v_force_new_snapshot = TRUE,
            in_table             = NULL;
    ELSEIF (in_table IS NOT NULL) THEN
        IF (NOT INSTR(in_table, '.')) THEN
            SET v_table_db   = DATABASE(),
                v_table_name = in_table;
        ELSE
            SET v_table_db   = SUBSTRING_INDEX(in_table, '.', 1);
            SET v_table_name = SUBSTRING(in_table, CHAR_LENGTH(v_table_db)+2);
        END IF;
        SET v_quoted_table = CONCAT('`', v_table_db, '`.`', v_table_name, '`');
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('in_table is: db = ''', v_table_db, ''', table = ''', v_table_name, '''') AS 'Debug';
        END IF;
        IF (v_table_db = DATABASE() AND (v_table_name = 'tmp_digests' OR v_table_name = 'tmp_digests_delta')) THEN
            SET v_error_msg = CONCAT('Invalid value for in_table: ', v_quoted_table, ' is reserved table name.');
            SIGNAL SQLSTATE '45000'
               SET MESSAGE_TEXT = v_error_msg;
        END IF;
        CALL sys.table_exists(v_table_db, v_table_name, v_table_exists);
        IF (@sys.debug = 'ON') THEN
            SELECT CONCAT('v_table_exists = ', v_table_exists) AS 'Debug';
        END IF;
        IF (v_table_exists = 'BASE TABLE') THEN
            SET v_checksum_ref = (
                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum
                   FROM information_schema.COLUMNS
                  WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'events_statements_summary_by_digest'
                ),
                v_checksum_table = (
                 SELECT GROUP_CONCAT(CONCAT(COLUMN_NAME, COLUMN_TYPE) ORDER BY ORDINAL_POSITION) AS Checksum
                   FROM information_schema.COLUMNS
                  WHERE TABLE_SCHEMA = v_table_db AND TABLE_NAME = v_table_name
                );
            IF (v_checksum_ref <> v_checksum_table) THEN
                SET v_error_msg = CONCAT('The table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 93, CONCAT('...', SUBSTRING(v_quoted_table, -90)), v_quoted_table),
                                         ' has the wrong definition.');
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        END IF;
    END IF;
    IF (in_views IS NULL OR in_views = '') THEN
        SET in_views = 'with_runtimes_in_95th_percentile,analysis,with_errors_or_warnings,with_full_table_scans,with_sorting,with_temp_tables';
    END IF;
    CALL sys.table_exists(DATABASE(), 'tmp_digests', v_tmp_digests_table_exists);
    IF (@sys.debug = 'ON') THEN
        SELECT CONCAT('v_tmp_digests_table_exists = ', v_tmp_digests_table_exists) AS 'Debug';
    END IF;
    CASE
        WHEN in_action IN ('snapshot', 'overall') THEN
            IF (in_table IS NOT NULL) THEN
                IF (NOT v_table_exists IN ('TEMPORARY', 'BASE TABLE')) THEN
                    SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be NULL, NOW() or specify an existing table.',
                                             ' The table ',
                                             IF(CHAR_LENGTH(v_quoted_table) > 16, CONCAT('...', SUBSTRING(v_quoted_table, -13)), v_quoted_table),
                                             ' does not exist.');
                    SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = v_error_msg;
                END IF;
            END IF;
        WHEN in_action IN ('delta', 'save') THEN
            IF (v_table_exists NOT IN ('TEMPORARY', 'BASE TABLE')) THEN
                SET v_error_msg = CONCAT('The ', in_action, ' action requires in_table to be an existing table.',
                                         IF(in_table IS NOT NULL, CONCAT(' The table ',
                                             IF(CHAR_LENGTH(v_quoted_table) > 39, CONCAT('...', SUBSTRING(v_quoted_table, -36)), v_quoted_table),
                                             ' does not exist.'), ''));
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
            IF (in_action = 'delta' AND v_tmp_digests_table_exists <> 'TEMPORARY') THEN
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = 'An existing snapshot generated with the statement_performance_analyzer() must exist.';
            END IF;
        WHEN in_action = 'create_tmp' THEN
            IF (v_table_exists = 'TEMPORARY') THEN
                SET v_error_msg = CONCAT('Cannot create the table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 72, CONCAT('...', SUBSTRING(v_quoted_table, -69)), v_quoted_table),
                                         ' as it already exists.');
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        WHEN in_action = 'create_table' THEN
            IF (v_table_exists <> '') THEN
                SET v_error_msg = CONCAT('Cannot create the table ',
                                         IF(CHAR_LENGTH(v_quoted_table) > 52, CONCAT('...', SUBSTRING(v_quoted_table, -49)), v_quoted_table),
                                         ' as it already exists',
                                         IF(v_table_exists = 'TEMPORARY', ' as a temporary table.', '.'));
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = v_error_msg;
            END IF;
        WHEN in_action = 'cleanup' THEN
            DO (SELECT 1);
        ELSE
            SIGNAL SQLSTATE '45000'
               SET MESSAGE_TEXT = 'Unknown action. Supported actions are: cleanup, create_table, create_tmp, delta, overall, save, snapshot';
    END CASE;
    SET v_digest_table_template = 'CREATE %{TEMPORARY}TABLE %{TABLE_NAME} (
  `SCHEMA_NAME` varchar(64) DEFAULT NULL,
  `DIGEST` varchar(32) DEFAULT NULL,
  `DIGEST_TEXT` longtext,
  `COUNT_STAR` bigint(20) unsigned NOT NULL,
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL,
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL,
  `SUM_ERRORS` bigint(20) unsigned NOT NULL,
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL,
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL,
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL,
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL,
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL,
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL,
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL,
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL,
  `FIRST_SEEN` timestamp NULL DEFAULT NULL,
  `LAST_SEEN` timestamp NULL DEFAULT NULL,
  INDEX (SCHEMA_NAME, DIGEST)
) DEFAULT CHARSET=utf8';
    IF (v_force_new_snapshot
           OR in_action = 'snapshot'
           OR (in_action = 'overall' AND in_table IS NULL)
           OR (in_action = 'save' AND v_tmp_digests_table_exists <> 'TEMPORARY')
       ) THEN
        IF (v_tmp_digests_table_exists = 'TEMPORARY') THEN
            IF (@sys.debug = 'ON') THEN
                SELECT 'DROP TEMPORARY TABLE IF EXISTS tmp_digests' AS 'Debug';
            END IF;
            DROP TEMPORARY TABLE IF EXISTS tmp_digests;
        END IF;
        CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', 'tmp_digests'));
        SET v_sql = CONCAT('INSERT INTO tmp_digests SELECT * FROM ',
                           IF(in_table IS NULL OR in_action = 'save', 'performance_schema.events_statements_summary_by_digest', v_quoted_table));
        CALL sys.execute_prepared_stmt(v_sql);
    END IF;
    IF (in_action IN ('create_table', 'create_tmp')) THEN
        IF (in_action = 'create_table') THEN
            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', ''), '%{TABLE_NAME}', v_quoted_table));
        ELSE
            CALL sys.execute_prepared_stmt(REPLACE(REPLACE(v_digest_table_template, '%{TEMPORARY}', 'TEMPORARY '), '%{TABLE_NAME}', v_quoted_table));
        END IF;
    ELSEIF (in_action = 'save') THEN
        CALL sys.execute_prepared_stmt(CONCAT('DELETE FROM ', v_quoted_table));
        CALL sys.execute_prepared_stmt(CONCAT('INSERT INTO ', v_quoted_table, ' SELECT * FROM tmp_digests'));
    ELSEIF (in_action = 'cleanup') THEN
        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests;
        DROP TEMPORARY TABLE IF EXISTS sys.tmp_digests_delta;
    ELSEIF (in_action IN ('overall', 'delta')) THEN
        IF (in_action = 'overall') THEN
            IF (in_table IS NULL) THEN
                SET v_digests_table = 'tmp_digests';
            ELSE
                SET v_digests_table = v_quoted_table;
            END IF;
        ELSE
            SET v_digests_table = 'tmp_digests_delta';
            DROP TEMPORARY TABLE IF EXISTS tmp_digests_delta;
            CREATE TEMPORARY TABLE tmp_digests_delta LIKE tmp_digests;
            SET v_sql = CONCAT('INSERT INTO tmp_digests_delta
SELECT `d_end`.`SCHEMA_NAME`,
       `d_end`.`DIGEST`,
       `d_end`.`DIGEST_TEXT`,
       `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) AS ''COUNT_STAR'',
       `d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0) AS ''SUM_TIMER_WAIT'',
       `d_end`.`MIN_TIMER_WAIT` AS ''MIN_TIMER_WAIT'',
       IFNULL((`d_end`.`SUM_TIMER_WAIT`-IFNULL(`d_start`.`SUM_TIMER_WAIT`, 0))/NULLIF(`d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0), 0), 0) AS ''AVG_TIMER_WAIT'',
       `d_end`.`MAX_TIMER_WAIT` AS ''MAX_TIMER_WAIT'',
       `d_end`.`SUM_LOCK_TIME`-IFNULL(`d_start`.`SUM_LOCK_TIME`, 0) AS ''SUM_LOCK_TIME'',
       `d_end`.`SUM_ERRORS`-IFNULL(`d_start`.`SUM_ERRORS`, 0) AS ''SUM_ERRORS'',
       `d_end`.`SUM_WARNINGS`-IFNULL(`d_start`.`SUM_WARNINGS`, 0) AS ''SUM_WARNINGS'',
       `d_end`.`SUM_ROWS_AFFECTED`-IFNULL(`d_start`.`SUM_ROWS_AFFECTED`, 0) AS ''SUM_ROWS_AFFECTED'',
       `d_end`.`SUM_ROWS_SENT`-IFNULL(`d_start`.`SUM_ROWS_SENT`, 0) AS ''SUM_ROWS_SENT'',
       `d_end`.`SUM_ROWS_EXAMINED`-IFNULL(`d_start`.`SUM_ROWS_EXAMINED`, 0) AS ''SUM_ROWS_EXAMINED'',
       `d_end`.`SUM_CREATED_TMP_DISK_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_DISK_TABLES`, 0) AS ''SUM_CREATED_TMP_DISK_TABLES'',
       `d_end`.`SUM_CREATED_TMP_TABLES`-IFNULL(`d_start`.`SUM_CREATED_TMP_TABLES`, 0) AS ''SUM_CREATED_TMP_TABLES'',
       `d_end`.`SUM_SELECT_FULL_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_JOIN`, 0) AS ''SUM_SELECT_FULL_JOIN'',
       `d_end`.`SUM_SELECT_FULL_RANGE_JOIN`-IFNULL(`d_start`.`SUM_SELECT_FULL_RANGE_JOIN`, 0) AS ''SUM_SELECT_FULL_RANGE_JOIN'',
       `d_end`.`SUM_SELECT_RANGE`-IFNULL(`d_start`.`SUM_SELECT_RANGE`, 0) AS ''SUM_SELECT_RANGE'',
       `d_end`.`SUM_SELECT_RANGE_CHECK`-IFNULL(`d_start`.`SUM_SELECT_RANGE_CHECK`, 0) AS ''SUM_SELECT_RANGE_CHECK'',
       `d_end`.`SUM_SELECT_SCAN`-IFNULL(`d_start`.`SUM_SELECT_SCAN`, 0) AS ''SUM_SELECT_SCAN'',
       `d_end`.`SUM_SORT_MERGE_PASSES`-IFNULL(`d_start`.`SUM_SORT_MERGE_PASSES`, 0) AS ''SUM_SORT_MERGE_PASSES'',
       `d_end`.`SUM_SORT_RANGE`-IFNULL(`d_start`.`SUM_SORT_RANGE`, 0) AS ''SUM_SORT_RANGE'',
       `d_end`.`SUM_SORT_ROWS`-IFNULL(`d_start`.`SUM_SORT_ROWS`, 0) AS ''SUM_SORT_ROWS'',
       `d_end`.`SUM_SORT_SCAN`-IFNULL(`d_start`.`SUM_SORT_SCAN`, 0) AS ''SUM_SORT_SCAN'',
       `d_end`.`SUM_NO_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_INDEX_USED`, 0) AS ''SUM_NO_INDEX_USED'',
       `d_end`.`SUM_NO_GOOD_INDEX_USED`-IFNULL(`d_start`.`SUM_NO_GOOD_INDEX_USED`, 0) AS ''SUM_NO_GOOD_INDEX_USED'',
       `d_end`.`FIRST_SEEN`,
       `d_end`.`LAST_SEEN`
  FROM tmp_digests d_end
       LEFT OUTER JOIN ', v_quoted_table, ' d_start ON `d_start`.`DIGEST` = `d_end`.`DIGEST`
                                                    AND (`d_start`.`SCHEMA_NAME` = `d_end`.`SCHEMA_NAME`
                                                          OR (`d_start`.`SCHEMA_NAME` IS NULL AND `d_end`.`SCHEMA_NAME` IS NULL)
                                                        )
 WHERE `d_end`.`COUNT_STAR`-IFNULL(`d_start`.`COUNT_STAR`, 0) > 0');
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_runtimes_in_95th_percentile', in_views)) THEN
            SELECT 'Queries with Runtime in 95th Percentile' AS 'Next Output';
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution1;
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_avg_latency_distribution2;
            DROP TEMPORARY TABLE IF EXISTS tmp_digest_95th_percentile_by_avg_us;
            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution1 (
              cnt bigint unsigned NOT NULL,
              avg_us decimal(21,0) NOT NULL,
              PRIMARY KEY (avg_us)
            ) ENGINE=InnoDB;
            SET v_sql = CONCAT('INSERT INTO tmp_digest_avg_latency_distribution1
SELECT COUNT(*) cnt,
       ROUND(avg_timer_wait/1000000) AS avg_us
  FROM ', v_digests_table, '
 GROUP BY avg_us');
            CALL sys.execute_prepared_stmt(v_sql);
            CREATE TEMPORARY TABLE tmp_digest_avg_latency_distribution2 LIKE tmp_digest_avg_latency_distribution1;
            INSERT INTO tmp_digest_avg_latency_distribution2 SELECT * FROM tmp_digest_avg_latency_distribution1;
            CREATE TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us (
              avg_us decimal(21,0) NOT NULL,
              percentile decimal(46,4) NOT NULL,
              PRIMARY KEY (avg_us)
            ) ENGINE=InnoDB;
            SET v_sql = CONCAT('INSERT INTO tmp_digest_95th_percentile_by_avg_us
SELECT s2.avg_us avg_us,
       IFNULL(SUM(s1.cnt)/NULLIF((SELECT COUNT(*) FROM ', v_digests_table, '), 0), 0) percentile
  FROM tmp_digest_avg_latency_distribution1 AS s1
       JOIN tmp_digest_avg_latency_distribution2 AS s2 ON s1.avg_us <= s2.avg_us
 GROUP BY s2.avg_us
HAVING percentile > 0.95
 ORDER BY percentile
 LIMIT 1');
            CALL sys.execute_prepared_stmt(v_sql);
            SET v_sql =
                REPLACE(
                    REPLACE(
                        (SELECT VIEW_DEFINITION
                           FROM information_schema.VIEWS
                          WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_runtimes_in_95th_percentile'
                        ),
                        '`performance_schema`.`events_statements_summary_by_digest`',
                        v_digests_table
                    ),
                    'sys.x$ps_digest_95th_percentile_by_avg_us',
                    '`sys`.`x$ps_digest_95th_percentile_by_avg_us`'
              );
            CALL sys.execute_prepared_stmt(v_sql);
            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution1;
            DROP TEMPORARY TABLE tmp_digest_avg_latency_distribution2;
            DROP TEMPORARY TABLE tmp_digest_95th_percentile_by_avg_us;
        END IF;
        IF (FIND_IN_SET('analysis', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Ordered by Total Latency') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statement_analysis'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_errors_or_warnings', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Errors') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_errors_or_warnings'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_full_table_scans', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Full Table Scan') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_full_table_scans'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_sorting', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Sorting') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_sorting'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('with_temp_tables', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries with Internal Temporary Tables') AS 'Next Output';
            SET v_sql =
                REPLACE(
                    (SELECT VIEW_DEFINITION
                       FROM information_schema.VIEWS
                      WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'statements_with_temp_tables'
                    ),
                    '`performance_schema`.`events_statements_summary_by_digest`',
                    v_digests_table
                );
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
        IF (FIND_IN_SET('custom', in_views)) THEN
            SELECT CONCAT('Top ', @sys.statement_performance_analyzer.limit, ' Queries Using Custom View') AS 'Next Output';
            IF (@sys.statement_performance_analyzer.view IS NULL) THEN
                SET @sys.statement_performance_analyzer.view = sys.sys_get_config('statement_performance_analyzer.view', NULL);
            END IF;
            IF (@sys.statement_performance_analyzer.view IS NULL) THEN
                SIGNAL SQLSTATE '45000'
                   SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable must be set with the view or query to use.';
            END IF;
            IF (NOT INSTR(@sys.statement_performance_analyzer.view, ' ')) THEN
                IF (NOT INSTR(@sys.statement_performance_analyzer.view, '.')) THEN
                    SET v_custom_db   = DATABASE(),
                        v_custom_name = @sys.statement_performance_analyzer.view;
                ELSE
                    SET v_custom_db   = SUBSTRING_INDEX(@sys.statement_performance_analyzer.view, '.', 1);
                    SET v_custom_name = SUBSTRING(@sys.statement_performance_analyzer.view, CHAR_LENGTH(v_custom_db)+2);
                END IF;
                CALL sys.table_exists(v_custom_db, v_custom_name, v_custom_view_exists);
                IF (v_custom_view_exists <> 'VIEW') THEN
                    SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = 'The @sys.statement_performance_analyzer.view user variable is set but specified neither an existing view nor a query.';
                END IF;
                SET v_sql =
                    REPLACE(
                        (SELECT VIEW_DEFINITION
                           FROM information_schema.VIEWS
                          WHERE TABLE_SCHEMA = v_custom_db AND TABLE_NAME = v_custom_name
                        ),
                        '`performance_schema`.`events_statements_summary_by_digest`',
                        v_digests_table
                    );
            ELSE
                SET v_sql = REPLACE(@sys.statement_performance_analyzer.view, '`performance_schema`.`events_statements_summary_by_digest`', v_digests_table);
            END IF;
            IF (@sys.statement_performance_analyzer.limit > 0) THEN
                SET v_sql = CONCAT(v_sql, ' LIMIT ', @sys.statement_performance_analyzer.limit);
            END IF;
            CALL sys.execute_prepared_stmt(v_sql);
        END IF;
    END IF;
    IF (v_this_thread_enabled = 'YES') THEN
        CALL sys.ps_setup_enable_thread(CONNECTION_ID());
    END IF;
    IF (@log_bin = 1) THEN
        SET sql_log_bin = @log_bin;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `table_exists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`mariadb.sys`@`localhost` PROCEDURE `table_exists`(
        IN in_db VARCHAR(64), IN in_table VARCHAR(64),
        OUT out_exists ENUM('', 'BASE TABLE', 'VIEW', 'TEMPORARY')
    )
    SQL SECURITY INVOKER
    COMMENT '\n             Description\n             Tests whether the table specified in in_db and in_table exists either as a regular\n             table, or as a temporary table. The returned value corresponds to the table that\n             will be used, so if there''s both a temporary and a permanent table with the given\n             name, then ''TEMPORARY'' will be returned.\n             Parameters\n             in_db (VARCHAR(64)):\n               The database name to check for the existance of the table in.\n             in_table (VARCHAR(64)):\n               The name of the table to check the existance of.\n             out_exists ENUM('''', ''BASE TABLE'', ''VIEW'', ''TEMPORARY''):\n               The return value: whether the table exists. The value is one of:\n                 * ''''           - the table does not exist neither as a base table, view, nor temporary table.\n                 * ''BASE TABLE'' - the table name exists as a permanent base table table.\n                 * ''VIEW''       - the table name exists as a view.\n                 * ''TEMPORARY''  - the table name exists as a temporary table.\n             Example\n             mysql> CREATE DATABASE db1;\n             Query OK, 1 row affected (0.07 sec)\n             mysql> use db1;\n             Database changed\n             mysql> CREATE TABLE t1 (id INT PRIMARY KEY);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> CREATE TABLE t2 (id INT PRIMARY KEY);\n             Query OK, 0 rows affected (0.08 sec)\n             mysql> CREATE view v_t1 AS SELECT * FROM t1;\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> CREATE TEMPORARY TABLE t1 (id INT PRIMARY KEY);\n             Query OK, 0 rows affected (0.00 sec)\n             mysql> CALL sys.table_exists(''db1'', ''t1'', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.00 sec)\n             +------------+\n             | @exists    |\n             +------------+\n             | TEMPORARY  |\n             +------------+\n             1 row in set (0.00 sec)\n             mysql> CALL sys.table_exists(''db1'', ''t2'', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.00 sec)\n             +------------+\n             | @exists    |\n             +------------+\n             | BASE TABLE |\n             +------------+\n             1 row in set (0.01 sec)\n             mysql> CALL sys.table_exists(''db1'', ''v_t1'', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.00 sec)\n             +---------+\n             | @exists |\n             +---------+\n             | VIEW    |\n             +---------+\n             1 row in set (0.00 sec)\n             mysql> CALL sys.table_exists(''db1'', ''t3'', @exists); SELECT @exists;\n             Query OK, 0 rows affected (0.01 sec)\n             +---------+\n             | @exists |\n             +---------+\n             |         |\n             +---------+\n             1 row in set (0.00 sec)\n            '
BEGIN
    DECLARE v_error BOOLEAN DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR 1050 SET v_error = TRUE;
    DECLARE CONTINUE HANDLER FOR 1146 SET v_error = TRUE;
    SET out_exists = '';
    IF (EXISTS(SELECT 1 FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table)) THEN
        SET @sys.tmp.table_exists.SQL = CONCAT('CREATE TEMPORARY TABLE `', in_db, '`.`', in_table, '` (id INT PRIMARY KEY)');
        PREPARE stmt_create_table FROM @sys.tmp.table_exists.SQL;
        EXECUTE stmt_create_table;
        DEALLOCATE PREPARE stmt_create_table;
        IF (v_error) THEN
            SET out_exists = 'TEMPORARY';
        ELSE
            SET @sys.tmp.table_exists.SQL = CONCAT('DROP TEMPORARY TABLE `', in_db, '`.`', in_table, '`');
            PREPARE stmt_drop_table FROM @sys.tmp.table_exists.SQL;
            EXECUTE stmt_drop_table;
            DEALLOCATE PREPARE stmt_drop_table;
            SET out_exists = (SELECT TABLE_TYPE FROM information_schema.TABLES WHERE TABLE_SCHEMA = in_db AND TABLE_NAME = in_table);
        END IF;
    ELSE
        SET @sys.tmp.table_exists.SQL = CONCAT('SELECT COUNT(*) FROM `', in_db, '`.`', in_table, '`');
        PREPARE stmt_select FROM @sys.tmp.table_exists.SQL;
        IF (NOT v_error) THEN
            DEALLOCATE PREPARE stmt_select;
            SET out_exists = 'TEMPORARY';
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` AS select if(`performance_schema`.`accounts`.`HOST` is null,'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull(sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on(`performance_schema`.`accounts`.`HOST` = `stmt`.`host`)) join `sys`.`x$host_summary_by_file_io` `io` on(`performance_schema`.`accounts`.`HOST` = `io`.`host`)) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on(`performance_schema`.`accounts`.`HOST` = `mem`.`host`)) group by if(`performance_schema`.`accounts`.`HOST` is null,'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' group by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%' and `performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0 order by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` AS select if(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where `performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` AS select if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` AS select if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-1) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED` AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` AS select if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,`sys`.`format_bytes`(sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED` = 'YES',1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD` = 'YES',1,NULL)) AS `pages_old`,round(sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` AS select if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-1),'`','') AS `object_name`,`sys`.`format_bytes`(sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED` = 'YES',1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD` = 'YES',1,NULL)) AS `pages_old`,round(sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')),replace(substring_index(`ibp`.`TABLE_NAME`,'.',-1),'`','') order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(current_timestamp(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,current_timestamp()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(current_timestamp(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(current_timestamp(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on(`b`.`trx_id` = `w`.`blocking_trx_id`)) join `information_schema`.`innodb_trx` `r` on(`r`.`trx_id` = `w`.`requesting_trx_id`)) join `information_schema`.`innodb_locks` `bl` on(`bl`.`lock_id` = `w`.`blocking_lock_id`)) join `information_schema`.`innodb_locks` `rl` on(`rl`.`lock_id` = `w`.`requested_lock_id`)) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` AS select if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) where `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0 group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0),0.00)) AS `avg_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round(100 - `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`,0) * 100,2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0)) AS `avg_written`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` AS select if(`information_schema`.`processlist`.`ID` is null,concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,`sys`.`format_time`(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`sys`.`format_bytes`(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on(`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) left join `information_schema`.`processlist` on(`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`)) where `performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null and `performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%' order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` AS select if(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` AS select `mt`.`THREAD_ID` AS `thread_id`,if(`t`.`NAME` = 'thread/sql/one_connection',concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on(`mt`.`THREAD_ID` = `t`.`THREAD_ID`)) group by `mt`.`THREAD_ID`,if(`t`.`NAME` = 'thread/sql/one_connection',concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` AS select if(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,`sys`.`format_bytes`(ifnull(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,`sys`.`format_bytes`(ifnull(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0 order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` AS select `sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` AS (select lcase(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status`) union all (select `information_schema`.`INNODB_METRICS`.`NAME` AS `Variable_name`,`information_schema`.`INNODB_METRICS`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`INNODB_METRICS`.`SUBSYSTEM`) AS `Type`,'YES' AS `Enabled` from `information_schema`.`INNODB_METRICS` where `information_schema`.`INNODB_METRICS`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size')) union all (select 'NOW()' AS `Variable_name`,current_timestamp(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) union all (select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(current_timestamp(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if(`pps`.`NAME` = 'thread/sql/one_connection',concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,if(`esc`.`END_EVENT_ID` is null,`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if(`esc`.`END_EVENT_ID` is null,round(100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`),2),NULL) AS `progress`,`sys`.`format_time`(`esc`.`LOCK_TIME`) AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(`esc`.`NO_GOOD_INDEX_USED` > 0 or `esc`.`NO_INDEX_USED` > 0,'YES','NO') AS `full_scan`,if(`esc`.`END_EVENT_ID` is not null,`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if(`esc`.`END_EVENT_ID` is not null,`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,`sys`.`format_bytes`(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(`ewc`.`END_EVENT_ID` is null and `ewc`.`EVENT_NAME` is not null,'Still Waiting',`sys`.`format_time`(`ewc`.`TIMER_WAIT`)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`sys`.`format_time`(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on(`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`)) left join `performance_schema`.`events_stages_current` `estc` on(`pps`.`THREAD_ID` = `estc`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `esc` on(`pps`.`THREAD_ID` = `esc`.`THREAD_ID`)) left join `performance_schema`.`events_transactions_current` `etc` on(`pps`.`THREAD_ID` = `etc`.`THREAD_ID`)) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on(`pps`.`THREAD_ID` = `mem`.`thread_id`)) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID` and `conattr_pid`.`ATTR_NAME` = '_pid')) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID` and `conattr_progname`.`ATTR_NAME` = 'program_name')) order by `pps`.`PROCESSLIST_TIME` desc,if(`ewc`.`END_EVENT_ID` is null and `ewc`.`EVENT_NAME` is not null,'Still Waiting',`sys`.`format_time`(`ewc`.`TIMER_WAIT`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where `performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost' and `performance_schema`.`global_status`.`VARIABLE_VALUE` > 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` AS select `information_schema`.`COLUMNS`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`COLUMNS`.`TABLE_NAME` AS `table_name`,`information_schema`.`COLUMNS`.`COLUMN_NAME` AS `column_name`,`information_schema`.`COLUMNS`.`DATA_TYPE` AS `data_type`,`information_schema`.`COLUMNS`.`COLUMN_TYPE` AS `column_type`,locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) = 0 AS `is_signed`,locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0 AS `is_unsigned`,case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end >> if(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0,0,1) AS `max_value`,`information_schema`.`TABLES`.`AUTO_INCREMENT` AS `auto_increment`,`information_schema`.`TABLES`.`AUTO_INCREMENT` / (case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end >> if(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0,0,1)) AS `auto_increment_ratio` from (`INFORMATION_SCHEMA`.`COLUMNS` join `INFORMATION_SCHEMA`.`TABLES` on(`information_schema`.`COLUMNS`.`TABLE_SCHEMA` = `information_schema`.`TABLES`.`TABLE_SCHEMA` and `information_schema`.`COLUMNS`.`TABLE_NAME` = `information_schema`.`TABLES`.`TABLE_NAME`)) where `information_schema`.`COLUMNS`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema') and `information_schema`.`TABLES`.`TABLE_TYPE` = 'BASE TABLE' and `information_schema`.`COLUMNS`.`EXTRA` = 'auto_increment' order by `information_schema`.`TABLES`.`AUTO_INCREMENT` / (case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end >> if(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0,0,1)) desc,case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end >> if(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0,0,1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`routines` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`tables` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`statistics` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`triggers` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`events` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if(`redundant_keys`.`subpart_exists` <> 0 or `dominant_keys`.`subpart_exists` <> 0,1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`sys`.`x$schema_flattened_keys` `redundant_keys` join `sys`.`x$schema_flattened_keys` `dominant_keys` on(`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema` and `redundant_keys`.`table_name` = `dominant_keys`.`table_name`)) where `redundant_keys`.`index_name` <> `dominant_keys`.`index_name` and (`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns` and (`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique` or `redundant_keys`.`non_unique` = `dominant_keys`.`non_unique` and if(`redundant_keys`.`index_name` = 'PRIMARY','',`redundant_keys`.`index_name`) > if(`dominant_keys`.`index_name` = 'PRIMARY','',`dominant_keys`.`index_name`)) or locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1 and `redundant_keys`.`non_unique` = 1 or locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1 and `dominant_keys`.`non_unique` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE` and `g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA` and `g`.`OBJECT_NAME` = `p`.`OBJECT_NAME` and `g`.`LOCK_STATUS` = 'GRANTED' and `p`.`LOCK_STATUS` = 'PENDING')) join `performance_schema`.`threads` `gt` on(`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`)) join `performance_schema`.`threads` `pt` on(`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `gs` on(`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `ps` on(`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`)) where `g`.`OBJECT_TYPE` = 'TABLE' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`sys`.`format_time`(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema` and `pst`.`OBJECT_NAME` = `fsbi`.`table_name`)) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,`sys`.`format_bytes`(`ibp`.`allocated`) AS `innodb_buffer_allocated`,`sys`.`format_bytes`(`ibp`.`data`) AS `innodb_buffer_data`,`sys`.`format_bytes`(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema` and `pst`.`OBJECT_NAME` = `fsbi`.`table_name`)) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema` and `pst`.`OBJECT_NAME` = `ibp`.`object_name`)) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null and `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0 order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null and `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_STAR` = 0 and `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` <> 'mysql' and `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` <> 'PRIMARY' order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `sys`.`processlist` where `processlist`.`conn_id` is not null and `processlist`.`command` <> 'Daemon' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID` and `sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')) left join `performance_schema`.`status_by_thread` `sslreuse` on(`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID` and `sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')) where `sslver`.`VARIABLE_NAME` = 'Ssl_version' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0,'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100 AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100 AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100,0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0) AS `rows_sent_avg`,round(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) and `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`  not like 'SHOW%' order by round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100,0) desc,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0 or `stmts`.`SUM_NO_INDEX_USED` > 0,'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull(`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull(`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on(round(`stmts`.`AVG_TIMER_WAIT` / 1000000,0) >= `top_percentile`.`avg_us`)) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_tmp_tables_per_query`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0),0) * 100,0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` AS select if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull(sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`)) left join `sys`.`x$user_summary_by_file_io` `io` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`)) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`)) group by if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' group by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` AS select if(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where `performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` AS select if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` AS select if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-1) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED` AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` AS select '1.5.1' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0)) AS `avg_latency`,`sys`.`format_time`(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` AS select if(`performance_schema`.`accounts`.`HOST` is null,'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,sum(`stmt`.`total_latency`) / sum(`stmt`.`total`) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on(`performance_schema`.`accounts`.`HOST` = `stmt`.`host`)) join `sys`.`x$host_summary_by_file_io` `io` on(`performance_schema`.`accounts`.`HOST` = `io`.`host`)) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on(`performance_schema`.`accounts`.`HOST` = `mem`.`host`)) group by if(`performance_schema`.`accounts`.`HOST` is null,'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' group by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%' and `performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0 order by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` AS select if(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where `performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` AS select if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` AS select if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-1) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED` AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` AS select if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED`,1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD`,1,NULL)) AS `pages_old`,round(ifnull(sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` AS select if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-1),'`','') AS `object_name`,sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED`,1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD`,1,NULL)) AS `pages_old`,round(ifnull(sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate('.',`ibp`.`TABLE_NAME`) = 0,'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')),replace(substring_index(`ibp`.`TABLE_NAME`,'.',-1),'`','') order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(current_timestamp(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,current_timestamp()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(current_timestamp(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(current_timestamp(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on(`b`.`trx_id` = `w`.`blocking_trx_id`)) join `information_schema`.`innodb_trx` `r` on(`r`.`trx_id` = `w`.`requesting_trx_id`)) join `information_schema`.`innodb_locks` `bl` on(`bl`.`lock_id` = `w`.`blocking_lock_id`)) join `information_schema`.`innodb_locks` `rl` on(`rl`.`lock_id` = `w`.`requested_lock_id`)) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` AS select if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) where `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0 group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0),0.00) AS `avg_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total`,ifnull(round(100 - `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`,0) * 100,2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0) AS `avg_written`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` AS select if(`information_schema`.`processlist`.`ID` is null,concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-1),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on(`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) left join `information_schema`.`processlist` on(`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`)) where `performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null and `performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%' order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` AS select if(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` AS select `t`.`THREAD_ID` AS `thread_id`,if(`t`.`NAME` = 'thread/sql/one_connection',concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on(`mt`.`THREAD_ID` = `t`.`THREAD_ID`)) group by `t`.`THREAD_ID`,if(`t`.`NAME` = 'thread/sql/one_connection',concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` AS select if(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0 order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if(`pps`.`NAME` = 'thread/sql/one_connection',concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,if(`esc`.`END_EVENT_ID` is null,`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if(`esc`.`END_EVENT_ID` is null,round(100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(`esc`.`NO_GOOD_INDEX_USED` > 0 or `esc`.`NO_INDEX_USED` > 0,'YES','NO') AS `full_scan`,if(`esc`.`END_EVENT_ID` is not null,`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if(`esc`.`END_EVENT_ID` is not null,`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(`ewc`.`END_EVENT_ID` is null and `ewc`.`EVENT_NAME` is not null,'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on(`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`)) left join `performance_schema`.`events_stages_current` `estc` on(`pps`.`THREAD_ID` = `estc`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `esc` on(`pps`.`THREAD_ID` = `esc`.`THREAD_ID`)) left join `performance_schema`.`events_transactions_current` `etc` on(`pps`.`THREAD_ID` = `etc`.`THREAD_ID`)) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on(`pps`.`THREAD_ID` = `mem`.`thread_id`)) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID` and `conattr_pid`.`ATTR_NAME` = '_pid')) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID` and `conattr_progname`.`ATTR_NAME` = 'program_name')) order by `pps`.`PROCESSLIST_TIME` desc,if(`ewc`.`END_EVENT_ID` is null and `ewc`.`EVENT_NAME` is not null,'Still Waiting',`ewc`.`TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` AS select `s2`.`avg_us` AS `avg_us`,ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) AS `percentile` from (`sys`.`x$ps_digest_avg_latency_distribution` `s1` join `sys`.`x$ps_digest_avg_latency_distribution` `s2` on(`s1`.`avg_us` <= `s2`.`avg_us`)) group by `s2`.`avg_us` having ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) > 0.95 order by ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` AS select count(0) AS `cnt`,round(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000,0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by round(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000,0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`),`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` AS select `information_schema`.`STATISTICS`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`STATISTICS`.`TABLE_NAME` AS `table_name`,`information_schema`.`STATISTICS`.`INDEX_NAME` AS `index_name`,max(`information_schema`.`STATISTICS`.`NON_UNIQUE`) AS `non_unique`,max(if(`information_schema`.`STATISTICS`.`SUB_PART` is null,0,1)) AS `subpart_exists`,group_concat(`information_schema`.`STATISTICS`.`COLUMN_NAME` order by `information_schema`.`STATISTICS`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `INFORMATION_SCHEMA`.`STATISTICS` where `information_schema`.`STATISTICS`.`INDEX_TYPE` = 'BTREE' and `information_schema`.`STATISTICS`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA') group by `information_schema`.`STATISTICS`.`TABLE_SCHEMA`,`information_schema`.`STATISTICS`.`TABLE_NAME`,`information_schema`.`STATISTICS`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE` and `g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA` and `g`.`OBJECT_NAME` = `p`.`OBJECT_NAME` and `g`.`LOCK_STATUS` = 'GRANTED' and `p`.`LOCK_STATUS` = 'PENDING')) join `performance_schema`.`threads` `gt` on(`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`)) join `performance_schema`.`threads` `pt` on(`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `gs` on(`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`)) left join `performance_schema`.`events_statements_current` `ps` on(`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`)) where `g`.`OBJECT_TYPE` = 'TABLE' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema` and `pst`.`OBJECT_NAME` = `fsbi`.`table_name`)) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,`ibp`.`allocated` - `ibp`.`data` AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema` and `pst`.`OBJECT_NAME` = `fsbi`.`table_name`)) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema` and `pst`.`OBJECT_NAME` = `ibp`.`object_name`)) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null and `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0 order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `sys`.`x$processlist` where `x$processlist`.`conn_id` is not null and `x$processlist`.`command` <> 'Daemon' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0,'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100 AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100 AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100,0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0) AS `rows_sent_avg`,round(`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0 or `performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) and `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`  not like 'SHOW%' order by round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0) * 100,0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0 or `stmts`.`SUM_NO_INDEX_USED` > 0,'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull(`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull(`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on(round(`stmts`.`AVG_TIMER_WAIT` / 1000000,0) >= `top_percentile`.`avg_us`)) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_tmp_tables_per_query`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0),0) * 100,0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` AS select if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull(sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`)) left join `sys`.`x$user_summary_by_file_io` `io` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`)) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on(if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`)) group by if(`performance_schema`.`accounts`.`USER` is null,'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%' group by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` AS select if(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where `performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` AS select if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` AS select if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-1) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED` AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0 order by if(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` AS select if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where `performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null,'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` AS select if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where `performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null and `performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0 order by if(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null,'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mariadb.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle' and `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-06 10:25:49


CREATE DATABASE IF NOT EXISTS test DEFAULT CHARACTER
SET
    utf8mb4 COLLATE utf8mb4_general_ci;

USE test;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 10.24.207.80    Database: test
-- ------------------------------------------------------
-- Server version	5.5.5-10.7.1-MariaDB-1:10.7.1+maria~focal

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

--
-- Table structure for table `ODS_ANNUAL_INCOME_TEST`
--

DROP TABLE IF EXISTS `ODS_ANNUAL_INCOME_TEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ODS_ANNUAL_INCOME_TEST` (
  `yyyy` varchar(255) DEFAULT NULL COMMENT '年份',
  `czsr` double(8,0) DEFAULT NULL COMMENT '财政收入',
  `gnsczz` double(8,0) DEFAULT NULL COMMENT '国内生产',
  `czzc` double(8,0) DEFAULT NULL COMMENT '财政支出',
  `splsjgzs` double(8,0) DEFAULT NULL COMMENT '商品零售价格指数',
  `json` varchar(0) DEFAULT NULL COMMENT 'json',
  `crrc_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ods_annual_income';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mysql_test_table`
--

DROP TABLE IF EXISTS `mysql_test_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mysql_test_table` (
  `id` int(9) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `num` double(3,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-06 10:25:50


CREATE DATABASE IF NOT EXISTS zj_data DEFAULT CHARACTER
SET
    utf8mb4 COLLATE utf8mb4_general_ci;

USE zj_data;

-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 10.24.207.80    Database: zj_data
-- ------------------------------------------------------
-- Server version	5.5.5-10.7.1-MariaDB-1:10.7.1+maria~focal

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

--
-- Table structure for table `CT_BCP_PLANPRICEASSERT_CODEPRICE`
--

DROP TABLE IF EXISTS `CT_BCP_PLANPRICEASSERT_CODEPRICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CT_BCP_PLANPRICEASSERT_CODEPRICE` (
  `CFMATERIALID` varchar(44) DEFAULT NULL COMMENT 'CFMATERIALID',
  `CFPLANPRICE` double(28,10) DEFAULT NULL COMMENT 'CFPLANPRICE',
  `CFUPDATEDATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'CFUPDATEDATE',
  `CODE` varchar(200) DEFAULT NULL COMMENT 'CODE',
  `NUMBER` varchar(200) DEFAULT NULL COMMENT 'NUMBER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='CT_BCP_PLANPRICEASSERT_CODEPRICE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CT_BCP_PRICE_CON`
--

DROP TABLE IF EXISTS `CT_BCP_PRICE_CON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CT_BCP_PRICE_CON` (
  `CODE` varchar(200) DEFAULT NULL COMMENT 'CODE',
  `NUMBER` varchar(200) DEFAULT NULL COMMENT 'NUMBER',
  `CFPLANPRICE_AVG` double(100,0) DEFAULT NULL COMMENT 'CFPLANPRICE_AVG',
  `CFPLANPRICE_NEW` double(100,0) DEFAULT NULL COMMENT 'CFPLANPRICE_NEW'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='CT_BCP_PRICE_CON';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CT_PCM_PURMATERIALPRICESTORAGE1`
--

DROP TABLE IF EXISTS `CT_PCM_PURMATERIALPRICESTORAGE1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CT_PCM_PURMATERIALPRICESTORAGE1` (
  `FNAME_L1` varchar(382) DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(382) DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(382) DEFAULT NULL COMMENT 'FNAME_L3',
  `FNUMBER` varchar(120) DEFAULT NULL COMMENT 'FNUMBER',
  `FDESCRIPTION_L1` varchar(382) DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(382) DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(382) DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(120) DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FID` varchar(44) NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FCREATORID` varchar(44) DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `CFMATERIALNUMBERID` varchar(500) DEFAULT NULL,
  `CFMATERIALNAME` varchar(500) DEFAULT NULL,
  `CFMODELANDSIZE` varchar(120) DEFAULT NULL COMMENT 'CFMODELANDSIZE',
  `CFPROCEDURE` varchar(150) DEFAULT NULL COMMENT 'CFPROCEDURE',
  `CFPROJECTNAMEID` varchar(500) DEFAULT NULL,
  `CFPLANPRICE` double(28,10) DEFAULT NULL COMMENT 'CFPLANPRICE',
  `CFMINPURPRICE` double(28,10) DEFAULT NULL COMMENT 'CFMINPURPRICE',
  `CFAVEPURPRICE` double(28,10) DEFAULT NULL COMMENT 'CFAVEPURPRICE',
  `CFLATESTPURPRICE` double(28,10) DEFAULT NULL COMMENT 'CFLATESTPURPRICE',
  `CFNEWESTPURSUPPLIE` varchar(44) DEFAULT NULL COMMENT 'CFNEWESTPURSUPPLIE',
  `CFSPAREPARTSPRICE` double(28,10) DEFAULT NULL COMMENT 'CFSPAREPARTSPRICE',
  `CFUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFUPDATETIME',
  `CFMATERIALATTRIBUTE1` bigint(20) unsigned DEFAULT NULL,
  `CFMATERIALATTRIBUTE2` blob DEFAULT NULL,
  `CFMATERIALATTRIBUTE3` blob DEFAULT NULL,
  `CFBELONGSYSTEM` varchar(150) DEFAULT NULL COMMENT 'CFBELONGSYSTEM',
  `CFREMARK` varchar(150) DEFAULT NULL COMMENT 'CFREMARK',
  `CFANOTHERMATERIALMESSAGE` blob DEFAULT NULL,
  `CFIMAGE` longtext DEFAULT NULL COMMENT 'CFIMAGE',
  `CFCTRLORGUNITID` varchar(44) DEFAULT NULL COMMENT 'CFCTRLORGUNITID',
  `CFMAXPURPRICE` double(28,10) DEFAULT NULL COMMENT 'CFMAXPURPRICE',
  `CFSTATUS` int(11) DEFAULT NULL COMMENT 'CFSTATUS',
  `CFUNITOFMEASUREMEN` blob DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='CT_PCM_PURMATERIALPRICESTORAGE1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DM_HRDS_PERSONINFOR`
--

DROP TABLE IF EXISTS `DM_HRDS_PERSONINFOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DM_HRDS_PERSONINFOR` (
  `Number` longtext NOT NULL COMMENT '工号',
  `Name` longtext NOT NULL COMMENT '姓名',
  `Age` longtext DEFAULT NULL COMMENT '年龄',
  `EmployeeType` longtext DEFAULT NULL COMMENT '用工关系状态',
  `Gender` int(11) DEFAULT NULL COMMENT '性别',
  `Political` longtext DEFAULT NULL COMMENT '政治面貌',
  `Folk` longtext DEFAULT NULL COMMENT '民族',
  `Wed` longtext DEFAULT NULL COMMENT '婚姻状况',
  `FNATIVEPLACE` longtext DEFAULT NULL COMMENT '籍贯',
  `POSITION` longtext DEFAULT NULL COMMENT '职位',
  `JobFamily` longtext DEFAULT NULL COMMENT '职类',
  `JobCategory` longtext DEFAULT NULL COMMENT '职群',
  `HRJob` longtext DEFAULT NULL COMMENT '职种',
  `JobLevel` longtext DEFAULT NULL COMMENT '职层',
  `Tongdaodengji` longtext DEFAULT NULL COMMENT '发展通道等级',
  `Zclevel` longtext DEFAULT NULL COMMENT '职称等级',
  `SkillLv` longtext DEFAULT NULL COMMENT '职业技能等级',
  `Rencaileixing` longtext DEFAULT NULL COMMENT '核心人才类型',
  `Diploma` longtext DEFAULT NULL COMMENT '学历',
  `Degree` longtext DEFAULT NULL COMMENT '学位',
  `QDiploma` longtext DEFAULT NULL COMMENT '全日制最高学历',
  `Company` longtext DEFAULT NULL COMMENT '公司',
  `firstAdminOrg` longtext DEFAULT NULL COMMENT '一级组织',
  `secondAdminOrg` longtext DEFAULT NULL COMMENT '二级组织',
  `UnitTypeFirst` longtext DEFAULT NULL COMMENT '一级组织类型',
  `FDISPLAYNAME` longtext DEFAULT NULL COMMENT '行政组织长名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DM_HRDS_PERSONINFOR';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DM_PMS_CRRC_MILESTONE`
--

DROP TABLE IF EXISTS `DM_PMS_CRRC_MILESTONE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DM_PMS_CRRC_MILESTONE` (
  `ID` varchar(32) NOT NULL COMMENT 'id  PK',
  `NAME` varchar(400) DEFAULT NULL COMMENT '名称',
  `ENAME` varchar(400) DEFAULT NULL COMMENT '英文名',
  `CODE` varchar(400) DEFAULT NULL COMMENT '编号',
  `DESCR` longtext DEFAULT NULL COMMENT '备注',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` date DEFAULT NULL COMMENT '创建日期',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` date DEFAULT NULL COMMENT '更新时间',
  `SORT_NO` int(11) DEFAULT NULL COMMENT '排序',
  `DELETE_FLAG` varchar(32) DEFAULT NULL COMMENT '删除标识',
  `PLAN_START_DATE` date DEFAULT NULL COMMENT '计划开始',
  `PLAN_END_DATE` date DEFAULT NULL COMMENT '计划完成',
  `TYPE` varchar(100) DEFAULT NULL COMMENT '类型',
  `PROJ_ID` varchar(32) DEFAULT NULL COMMENT '关联项目',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='项目里程碑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DM_PMS_CRRC_REGISTER`
--

DROP TABLE IF EXISTS `DM_PMS_CRRC_REGISTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DM_PMS_CRRC_REGISTER` (
  `ID` varchar(32) NOT NULL COMMENT 'id  PK',
  `NAME` varchar(400) DEFAULT NULL COMMENT '名称',
  `ENAME` varchar(400) DEFAULT NULL COMMENT '英文名',
  `CODE` varchar(400) DEFAULT NULL COMMENT '编号',
  `DESCR` longtext DEFAULT NULL COMMENT '备注',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` date DEFAULT NULL COMMENT '创建日期',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` date DEFAULT NULL COMMENT '更新时间',
  `SORT_NO` varchar(11) DEFAULT NULL COMMENT '排序',
  `DELETE_FLAG` varchar(32) DEFAULT NULL COMMENT '删除标识',
  `ROLE` varchar(100) DEFAULT NULL COMMENT '角色',
  `COMPANY` varchar(100) DEFAULT NULL COMMENT '公司',
  `DEPT` varchar(100) DEFAULT NULL COMMENT '职位部门',
  `PHONE` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `FAX` varchar(100) DEFAULT NULL COMMENT '传真',
  `PROJ_MANNER` varchar(100) DEFAULT NULL COMMENT '项目态度',
  `PROJ_ATTENTION` varchar(400) DEFAULT NULL COMMENT '项目关注点',
  `AFFECT` varchar(400) DEFAULT NULL COMMENT '影响环节',
  `INCIDENCE` varchar(400) DEFAULT NULL COMMENT '对项目的影响力',
  `CLASSIFY` varchar(100) DEFAULT NULL COMMENT '分类',
  `LEVELS` varchar(50) DEFAULT NULL COMMENT '重要度分级',
  `AFFECT_USER_ID` longtext DEFAULT NULL COMMENT '具有影响力的人员',
  `PROJ_ID` varchar(32) DEFAULT NULL COMMENT '关联项目'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='相关方登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DM_PMS_V_APP_TASK_REPORT`
--

DROP TABLE IF EXISTS `DM_PMS_V_APP_TASK_REPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DM_PMS_V_APP_TASK_REPORT` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `NAME` varchar(500) DEFAULT NULL COMMENT 'NAME',
  `ENAME` varchar(500) DEFAULT NULL COMMENT 'ENAME',
  `CODE` varchar(500) DEFAULT NULL COMMENT 'CODE',
  `CREATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'CREATE_TIME',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT 'CREATE_USER',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'UPDATE_TIME',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT 'UPDATE_USER',
  `DELETE_FLAG` varchar(32) DEFAULT NULL COMMENT 'DELETE_FLAG',
  `DESCR` longtext DEFAULT NULL COMMENT 'DESCR',
  `SORT_NO` varchar(100) DEFAULT NULL COMMENT 'SORT_NO',
  `STATUS` varchar(100) DEFAULT NULL COMMENT 'STATUS',
  `DURATION` int(11) DEFAULT NULL COMMENT 'DURATION',
  `COMPLETE_PERCENT` int(11) DEFAULT NULL COMMENT 'COMPLETE_PERCENT',
  `SRC_TMPL_ID` varchar(32) DEFAULT NULL COMMENT 'SRC_TMPL_ID',
  `TASK_TYPE` varchar(32) DEFAULT NULL COMMENT 'TASK_TYPE',
  `ORIG_TASK_ID` varchar(32) DEFAULT NULL COMMENT 'ORIG_TASK_ID',
  `AUTO_FLAG` varchar(32) DEFAULT NULL COMMENT 'AUTO_FLAG',
  `KEY_PATH` varchar(32) DEFAULT NULL COMMENT 'KEY_PATH',
  `CUT_FLAG` int(11) DEFAULT NULL COMMENT 'CUT_FLAG',
  `WEIGHT` int(11) DEFAULT NULL COMMENT 'WEIGHT',
  `TOTAL_FLOAT` longtext DEFAULT NULL COMMENT 'TOTAL_FLOAT',
  `PLAN_START_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'PLAN_START_DATE',
  `PLAN_END_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'PLAN_END_DATE',
  `BASE_START_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'BASE_START_DATE',
  `BASE_END_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'BASE_END_DATE',
  `ACTUAL_START_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'ACTUAL_START_DATE',
  `ACTUAL_END_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'ACTUAL_END_DATE',
  `PROJ_ID` varchar(100) DEFAULT NULL COMMENT 'PROJ_ID',
  `OBJECT_ID` varchar(100) DEFAULT NULL COMMENT 'OBJECT_ID',
  `WBS_ID` varchar(100) DEFAULT NULL COMMENT 'WBS_ID',
  `UUID` varchar(100) DEFAULT NULL COMMENT 'UUID',
  `T_VERSION` varchar(100) DEFAULT NULL COMMENT 'T_VERSION',
  `G_VERSION` varchar(100) DEFAULT NULL COMMENT 'G_VERSION',
  `IS_PROJ_SOURCE` varchar(100) DEFAULT NULL COMMENT 'IS_PROJ_SOURCE',
  `TASK_LEVEL` int(11) DEFAULT NULL COMMENT 'TASK_LEVEL',
  `OFFSET_INFO` longtext DEFAULT NULL COMMENT 'OFFSET_INFO',
  `STONE_TYPE` varchar(100) DEFAULT NULL COMMENT 'STONE_TYPE',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT 'PARENT_ID',
  `ACTUAL_LABOR` int(11) DEFAULT NULL COMMENT 'ACTUAL_LABOR',
  `PLAN_LABOR` int(11) DEFAULT NULL COMMENT 'PLAN_LABOR',
  `RESP_DEPT` varchar(100) DEFAULT NULL COMMENT 'RESP_DEPT',
  `QUALITY_GATE` varchar(400) DEFAULT NULL COMMENT 'QUALITY_GATE',
  `QUALITY` varchar(400) DEFAULT NULL COMMENT 'QUALITY',
  `DELIV` varchar(400) DEFAULT NULL COMMENT 'DELIV',
  `DELIV_NAME` varchar(400) DEFAULT NULL COMMENT 'DELIV_NAME',
  `BATCH_DELIV` varchar(400) DEFAULT NULL COMMENT 'BATCH_DELIV',
  `START_TRAIN_NUM` varchar(100) DEFAULT NULL COMMENT 'START_TRAIN_NUM',
  `END_TRAIN_NUM` varchar(100) DEFAULT NULL COMMENT 'END_TRAIN_NUM',
  `USER_ID` varchar(100) DEFAULT NULL COMMENT 'USER_ID',
  `USER_NAME` varchar(100) DEFAULT NULL COMMENT 'USER_NAME',
  `RESP_DEPT_NAME` varchar(400) DEFAULT NULL COMMENT 'RESP_DEPT_NAME',
  `PROJ_SHORT_NAME` varchar(400) DEFAULT NULL COMMENT 'PROJ_SHORT_NAME',
  `LOCATION_NAME` varchar(400) DEFAULT NULL COMMENT 'LOCATION_NAME'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DM_PMS_V_APP_TASK_REPORT_项目计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DM_PMS_V_SYS_TEAM_REPORT`
--

DROP TABLE IF EXISTS `DM_PMS_V_SYS_TEAM_REPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DM_PMS_V_SYS_TEAM_REPORT` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT 'USER_ID',
  `ROLE_ID` varchar(32) DEFAULT NULL COMMENT 'ROLE_ID',
  `PROJ_ID` varchar(32) DEFAULT NULL COMMENT 'PROJ_ID',
  `SHORT_NAME` varchar(400) DEFAULT NULL COMMENT 'SHORT_NAME',
  `LOCATION_NAME` varchar(400) DEFAULT NULL COMMENT 'LOCATION_NAME',
  `PROJ_SIZE_NAME` varchar(400) DEFAULT NULL COMMENT 'PROJ_SIZE_NAME',
  `PROJ_STAGE_NAME` varchar(400) DEFAULT NULL COMMENT 'PROJ_STAGE_NAME',
  `ROLE_DEPT_ID` varchar(400) DEFAULT NULL COMMENT 'ROLE_DEPT_ID',
  `ROLE_CODE` varchar(400) DEFAULT NULL COMMENT 'ROLE_CODE',
  `ROLE_NAME` varchar(400) DEFAULT NULL COMMENT 'ROLE_NAME',
  `ROLE_PATH` varchar(100) DEFAULT NULL COMMENT 'ROLE_PATH',
  `ROLE_SRC_TEMP_ID` varchar(100) DEFAULT NULL COMMENT 'ROLE_SRC_TEMP_ID',
  `ROLE_LEVEL` varchar(100) DEFAULT NULL COMMENT 'ROLE_LEVEL',
  `ROLE_TYPE` varchar(100) DEFAULT NULL COMMENT 'ROLE_TYPE',
  `SINGLE_FLAG` varchar(100) DEFAULT NULL COMMENT 'SINGLE_FLAG',
  `USER_NAME` varchar(100) DEFAULT NULL COMMENT 'USER_NAME',
  `USER_ACCOUNT` varchar(100) DEFAULT NULL COMMENT 'USER_ACCOUNT',
  `USER_CODE` varchar(100) DEFAULT NULL COMMENT 'USER_CODE',
  `USER_MOBILE` varchar(100) DEFAULT NULL COMMENT 'USER_MOBILE',
  `USER_TEL` varchar(100) DEFAULT NULL COMMENT 'USER_TEL',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT 'EMAIL',
  `GENDER` varchar(100) DEFAULT NULL COMMENT 'GENDER',
  `USER_LEVEL` varchar(100) DEFAULT NULL COMMENT 'USER_LEVEL',
  `DEPT_ID` varchar(100) DEFAULT NULL COMMENT 'DEPT_ID',
  `DEPT_CODE` varchar(200) DEFAULT NULL COMMENT 'DEPT_CODE',
  `DEPT_NAME` varchar(400) DEFAULT NULL COMMENT 'DEPT_NAME',
  `DEPT_PATH` varchar(500) DEFAULT NULL COMMENT 'DEPT_PATH',
  `FIRST_LEVEL_DEPT_ID` varchar(32) DEFAULT NULL COMMENT 'FIRST_LEVEL_DEPT_ID',
  `FIRST_LEVEL_DEPT_NAME` varchar(400) DEFAULT NULL COMMENT 'FIRST_LEVEL_DEPT_NAME',
  `EM_TYPE` varchar(32) DEFAULT NULL COMMENT 'EM_TYPE',
  `EM_LEVEL` varchar(32) DEFAULT NULL COMMENT 'EM_LEVEL',
  `EM_TYPE_NAME` varchar(400) DEFAULT NULL COMMENT 'EM_TYPE_NAME'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DM_PMS_V_SYS_TEAM_REPORT';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DM_gjsbgzl`
--

DROP TABLE IF EXISTS `DM_gjsbgzl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DM_gjsbgzl` (
  `BMDM` varchar(100) DEFAULT NULL COMMENT '编码代码',
  `SBBM` varchar(100) DEFAULT NULL COMMENT '设备编码',
  `SBMC` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `DJDH` varchar(100) DEFAULT NULL COMMENT '点检单号',
  `BYDH` varchar(100) DEFAULT NULL COMMENT '保养单号',
  `DJSJ` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '点检时间',
  `BYSJ` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '保养时间',
  `DJRQ` date DEFAULT NULL COMMENT '点检日期',
  `BYRQ` date DEFAULT NULL COMMENT '保养日期',
  `KGSC` double DEFAULT NULL COMMENT '开工时长',
  `WXDH` varchar(100) DEFAULT NULL COMMENT '维修单号',
  `KSSJ` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始时间',
  `JSSJ` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `WXSC` double DEFAULT NULL COMMENT '维修时长',
  `WXRQ` date DEFAULT NULL COMMENT '维修日期',
  `CJ` varchar(100) DEFAULT NULL COMMENT '车间',
  `CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `CX` varchar(100) DEFAULT NULL COMMENT '产线',
  `GWBM` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `GW` varchar(100) DEFAULT NULL COMMENT '工位'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm关键设备故障率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DM_yichanggbpjsc_process_zxj`
--

DROP TABLE IF EXISTS `DM_yichanggbpjsc_process_zxj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DM_yichanggbpjsc_process_zxj` (
  `todaydate` varchar(100) DEFAULT NULL COMMENT '日期',
  `LAUNCH_DATE` varchar(100) DEFAULT NULL COMMENT '主键',
  `CLOSE_DATE` varchar(100) DEFAULT NULL COMMENT '关闭时间',
  `closeTimeLong` varchar(100) DEFAULT NULL COMMENT '异常关闭时长',
  `FK_CRRC_ZXJ_GXBM` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `FK_CRRC_ZXJ_GXMC` varchar(100) DEFAULT NULL COMMENT '工序名称',
  `FK_crrc_zxj_gwbm` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `FK_crrc_zxj_gwmc` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `FK_crrc_zxj_cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `FK_crrc_zxj_cx` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `FK_crrc_zxj_cj` varchar(100) DEFAULT NULL COMMENT '车间名称',
  `nianyue` varchar(100) DEFAULT NULL COMMENT '年月',
  `gid` varchar(100) DEFAULT NULL COMMENT '主键'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DM_异常关闭平均时长-过程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DM_yichanxyjsl`
--

DROP TABLE IF EXISTS `DM_yichanxyjsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DM_yichanxyjsl` (
  `daydate` varchar(100) DEFAULT NULL COMMENT '日期',
  `riyichan_num` varchar(100) DEFAULT NULL COMMENT '异常数量',
  `ontime_num` varchar(100) DEFAULT NULL COMMENT '准时数量',
  `riyichan_res` varchar(100) DEFAULT NULL COMMENT '异常响应及时率',
  `CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `CXMC` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `CJMC` varchar(100) DEFAULT NULL COMMENT '车间名称',
  `GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `GWBM` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `GXBM` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `GXMC` varchar(100) DEFAULT NULL COMMENT '工序名称',
  `nian` varchar(100) DEFAULT NULL COMMENT '年份',
  `nianyue` varchar(100) DEFAULT NULL COMMENT '年月'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DM_异常响应及时率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EAS_PLANPRICEASSERT_CODEPRICE`
--

DROP TABLE IF EXISTS `EAS_PLANPRICEASSERT_CODEPRICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EAS_PLANPRICEASSERT_CODEPRICE` (
  `CODE` varchar(200) DEFAULT NULL COMMENT 'CODE',
  `NAME` varchar(200) DEFAULT NULL COMMENT 'NAME',
  `AVGprice` double(100,0) DEFAULT NULL COMMENT 'AVGprice',
  `MINprice` double(100,0) DEFAULT NULL COMMENT 'MINprice',
  `LatestPrice` double(100,0) DEFAULT NULL COMMENT 'LatestPrice',
  `MAXprice` double(100,0) DEFAULT NULL COMMENT 'MAXprice'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='EAS_PLANPRICEASSERT_CODEPRICE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `T_IM_INVENTORY`
--

DROP TABLE IF EXISTS `T_IM_INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_IM_INVENTORY` (
  `FID` varchar(200) NOT NULL,
  `FSTORAGEORGUNITID` varchar(200) DEFAULT NULL,
  `FWAREHOUSEID` varchar(200) DEFAULT NULL,
  `FLOCATIONID` varchar(100) DEFAULT NULL COMMENT 'FLOCATIONID',
  `FSTORETYPEID` varchar(100) DEFAULT NULL COMMENT 'FSTORETYPEID',
  `FSTORESTATUSID` varchar(100) DEFAULT NULL COMMENT 'FSTORESTATUSID',
  `FLOT` varchar(220) DEFAULT NULL COMMENT 'FLOT',
  `FSUPPLIERID` varchar(100) DEFAULT NULL COMMENT 'FSUPPLIERID',
  `FCUSTOMERID` varchar(100) DEFAULT NULL COMMENT 'FCUSTOMERID',
  `FMATERIALID` varchar(100) DEFAULT NULL COMMENT 'FMATERIALID',
  `FUNITID` varchar(100) DEFAULT NULL COMMENT 'FUNITID',
  `FCURSTOREQTY` double(50,16) DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='T_IM_INVENTORY';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `YQ_CM_Department`
--

DROP TABLE IF EXISTS `YQ_CM_Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YQ_CM_Department` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `ParentID` int(11) NOT NULL COMMENT 'ParentID',
  `InternationalID` varchar(50) NOT NULL COMMENT 'InternationalID',
  `DeptCode` varchar(50) NOT NULL COMMENT 'DeptCode',
  `DeptParentCode` varchar(50) NOT NULL COMMENT 'DeptParentCode',
  `DeptDepth` int(11) NOT NULL COMMENT 'DeptDepth',
  `DeptPath` varchar(200) NOT NULL COMMENT 'DeptPath',
  `DeptName` varchar(100) NOT NULL COMMENT 'DeptName',
  `DeptDescribe` varchar(200) NOT NULL COMMENT 'DeptDescribe',
  `Reamrk` varchar(200) NOT NULL COMMENT 'Reamrk',
  `DisplayOrder` int(11) NOT NULL COMMENT 'DisplayOrder',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='YQ_CM_Department';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `YQ_KQ_AttendanceDataKQ1`
--

DROP TABLE IF EXISTS `YQ_KQ_AttendanceDataKQ1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YQ_KQ_AttendanceDataKQ1` (
  `ID` varchar(50) DEFAULT NULL,
  `EmployeeID` varchar(50) DEFAULT NULL,
  `ClockTime` datetime NOT NULL COMMENT 'ClockTime',
  `CreateTime` datetime NOT NULL COMMENT 'CreateTime',
  `PhotoFilePath` varchar(100) NOT NULL COMMENT 'PhotoFilePath',
  `PhotoPlace` int(11) NOT NULL COMMENT 'PhotoPlace',
  `DeviceID` varchar(50) DEFAULT NULL,
  `InOrOut` int(11) NOT NULL COMMENT 'InOrOut',
  `UploadType` int(11) NOT NULL COMMENT 'UploadType',
  `PIN` varchar(50) NOT NULL COMMENT 'PIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='YQ_KQ_AttendanceDataKQ1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `YQ_KQ_EmployeeInfo`
--

DROP TABLE IF EXISTS `YQ_KQ_EmployeeInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YQ_KQ_EmployeeInfo` (
  `ID` varchar(50) DEFAULT NULL,
  `DeptID` int(11) NOT NULL COMMENT 'DeptID',
  `EmployeeID` varchar(20) NOT NULL COMMENT 'EmployeeID',
  `EmployeeName` varchar(50) NOT NULL COMMENT 'EmployeeName',
  `Sex` varchar(16) NOT NULL COMMENT 'Sex',
  `IdentityCard` varchar(18) NOT NULL COMMENT 'IdentityCard',
  `RegionUserName` varchar(100) NOT NULL COMMENT 'RegionUserName',
  `PostID` varchar(16) NOT NULL COMMENT 'PostID',
  `Duty` varchar(16) NOT NULL COMMENT 'Duty',
  `PassWord` varchar(100) NOT NULL COMMENT 'PassWord',
  `ApplyFlowType` varchar(16) NOT NULL COMMENT 'ApplyFlowType',
  `DutyType` varchar(16) NOT NULL COMMENT 'DutyType',
  `IsManagement` int(11) NOT NULL COMMENT 'IsManagement',
  `SwipeMode` varchar(200) NOT NULL COMMENT 'SwipeMode',
  `LeaderShip` varchar(16) NOT NULL COMMENT 'LeaderShip',
  `MaritalStatus` int(11) NOT NULL DEFAULT 0 COMMENT 'MaritalStatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='YQ_KQ_EmployeeInfo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `YQ_KQ_MC_EmployeeItem`
--

DROP TABLE IF EXISTS `YQ_KQ_MC_EmployeeItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YQ_KQ_MC_EmployeeItem` (
  `EmployeeID` varchar(16) NOT NULL COMMENT 'EmployeeID',
  `ItemType` varchar(50) NOT NULL COMMENT 'ItemType',
  `ItemIndex` int(11) NOT NULL COMMENT 'ItemIndex',
  `ItemValue` varchar(4) NOT NULL COMMENT 'ItemValue'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='YQ_KQ_MC_EmployeeItem';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `YQ_KQ_TodayAnalyis`
--

DROP TABLE IF EXISTS `YQ_KQ_TodayAnalyis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YQ_KQ_TodayAnalyis` (
  `EmployeeID` varchar(50) DEFAULT NULL,
  `ShiftID` varchar(50) DEFAULT '00000000-0000-0000-0000-000000000000',
  `AttendanceDataStr` varchar(300) DEFAULT '无记录',
  `IsShouldOnDuty` int(11) DEFAULT NULL,
  `IsOnDuty` int(11) DEFAULT NULL,
  `IsAbsence` int(11) DEFAULT NULL,
  `IsLeaveApply` int(11) DEFAULT NULL,
  `LeaveType` varchar(50) DEFAULT NULL,
  `AnalyisTime` datetime DEFAULT NULL,
  `LeaveApplyID` varchar(50) DEFAULT NULL,
  `IsCount` int(11) DEFAULT NULL,
  `IsOther` int(11) DEFAULT NULL,
  `IsLate` int(11) DEFAULT NULL,
  `IsSignIn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='YQ_KQ_TodayAnalyis';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_BW_JMS_MAIN`
--

DROP TABLE IF EXISTS `dm_BW_JMS_MAIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_BW_JMS_MAIN` (
  `ID` varchar(20) NOT NULL COMMENT '主键',
  `SYS_COMPANY_CODE` longtext DEFAULT NULL COMMENT '所属公司/租户ID',
  `BUYER_TAXNO` longtext DEFAULT NULL COMMENT '购方纳税人识别号',
  `INV_KIND` longtext DEFAULT NULL COMMENT '发票代码',
  `INV_NUM` longtext DEFAULT NULL COMMENT '发票号码',
  `E_INV_NUM` longtext DEFAULT NULL COMMENT '全电发票号码（纸票）',
  `SELLER_TAXNO` longtext DEFAULT NULL COMMENT '销方纳税人识别号',
  `INV_DATE` date DEFAULT NULL COMMENT '发票开票日期',
  `INV_COST` int(11) DEFAULT NULL COMMENT '发票金额(不含税)',
  `INV_VAT` int(11) DEFAULT NULL COMMENT '发票税额',
  `INV_SUM` int(11) DEFAULT NULL COMMENT '发票价税合计',
  `INV_PWD` longtext DEFAULT NULL COMMENT '发票密文',
  `INV_FROM` longtext DEFAULT NULL COMMENT '发票来源（1-抽取 2-扫描（查验入库） 3-手工录入 4-税局',
  `INV_TYPE` longtext DEFAULT NULL COMMENT '发票类型 01-增值税专用发票 03-机动车销售统一发票 04-',
  `INV_RATE` varchar(64) DEFAULT NULL COMMENT '发票税率',
  `INV_STATUS` longtext DEFAULT NULL COMMENT '发票状态：0-正常 1失控 2作废 3红冲 4异常 80-红冲发',
  `ERR_UPDATE_TIME` varchar(22) DEFAULT NULL COMMENT '更新为异常状态时间',
  `SYS_ORG_CODE` longtext DEFAULT NULL COMMENT '所属机构',
  `CHECK_CODE` longtext DEFAULT NULL COMMENT '校验码',
  `MACHINE_CODE` longtext DEFAULT NULL COMMENT '机器编码',
  `RECEIVING_CLERK` longtext DEFAULT NULL COMMENT '收货员',
  `CHECKER` longtext DEFAULT NULL COMMENT '复核人',
  `PAYEE` longtext DEFAULT NULL COMMENT '收款人',
  `DRAWER` longtext DEFAULT NULL COMMENT '开票人',
  `TOTAL_AMOUNT_CN` longtext DEFAULT NULL COMMENT '合计金额_中文',
  `INV_COMMENT` longtext DEFAULT NULL COMMENT '发票备注',
  `BUYER_NAME` longtext DEFAULT NULL COMMENT '购方名称',
  `BUYER_ADDR_TEL` longtext DEFAULT NULL COMMENT '购方地址电话',
  `BUYER_BANK` longtext DEFAULT NULL COMMENT '购方银行账户',
  `SELLER_NAME` longtext DEFAULT NULL COMMENT '销方名称',
  `SELLER_ADDR_TEL` longtext DEFAULT NULL COMMENT '销方地址电话',
  `SELLER_BANK` longtext DEFAULT NULL COMMENT '销方银行账户',
  `INV_DEDU_RESULT` longtext DEFAULT NULL COMMENT '发票认证结果（0-未认证 1-认证通过 2-认证不通过09-不需',
  `IS_COLLECT_ALL` longtext DEFAULT NULL COMMENT '（查验结果0未查验，1已查验） 是否采集全票面/是否查验通过(0',
  `TOLLSIGN` longtext DEFAULT NULL COMMENT '通行费标志(06-可抵扣通行费，07-不可抵扣通行费)',
  `IS_AGENCY_REBATE` longtext DEFAULT NULL COMMENT '是否代办退税（1为是，0为否）',
  `INV_TAXNO` longtext DEFAULT NULL COMMENT '代开纳税人识别号',
  `CHECK_ERR_CODE` longtext DEFAULT NULL COMMENT '异常原因(-1-状态异常',
  `OIL_MARK` longtext DEFAULT NULL COMMENT '成品油标记 Y',
  `INV_TAX_SIGN` longtext DEFAULT NULL COMMENT '代开发票标志（0-自开 1-代开）',
  `PO_IDS` longtext DEFAULT NULL COMMENT '供应链协同推票时订单ID',
  `PO_TYPE` longtext DEFAULT NULL COMMENT '订单类型（T-订单/收货单/结算单 O-红票单）',
  `CREATE_DATE` varchar(22) DEFAULT current_timestamp() COMMENT '创建时间',
  `CREATE_BY` longtext DEFAULT NULL COMMENT '创建人',
  `UPDATE_DATE` varchar(22) DEFAULT current_timestamp() COMMENT '修改时间',
  `UPDATE_BY` longtext DEFAULT NULL COMMENT '修改人',
  `SCAN_NO` longtext DEFAULT NULL COMMENT '管理状态',
  `FULL_BUYER_TAXNO` longtext DEFAULT NULL COMMENT '购方纳税人识别号（全票面税号）',
  `SOURCE_SYSTEM` longtext DEFAULT NULL COMMENT 'SOURCE_SYSTEM',
  `PLATFORM_SOURCE` longtext DEFAULT NULL COMMENT '平台来源 0-增值税发票管理系统，1-电子发票服务平台',
  `INV_BUSINESS_TYPE` longtext DEFAULT NULL COMMENT '发票业务类型',
  `RED_BLUE_INVOICE_NO` longtext DEFAULT NULL COMMENT '开具红字发票对应的蓝字发票号码',
  `RED_BLUE_INVOICE_PAPER_CODE` longtext DEFAULT NULL COMMENT '开具红字发票对应的纸质发票代码',
  `RED_BLUE_INVOICE_PAPER_NO` longtext DEFAULT NULL COMMENT '开具红字发票对应的纸质发票号码',
  `RED_INVOICE_SHEET_NO` longtext DEFAULT NULL COMMENT '红字申请单编号',
  `RED_LOCK_FLAG` longtext DEFAULT NULL COMMENT '红字锁定标志',
  `OIL_ABNORMAL_MARK` longtext DEFAULT NULL COMMENT '成品油异常标识',
  `INV_TIME` varchar(22) DEFAULT NULL COMMENT '发票开票时间 格式：yyyy-MM-dd HH',
  `USE_PART` longtext DEFAULT NULL COMMENT '用途划分，枚举值：0-全额抵扣 1-无法划分；默认为 0-全额抵',
  `VEHICLE_RISK_LEVEL` longtext DEFAULT NULL COMMENT '机动车发票风险 0：无风险、1：低风险、2：中风险、3：高风险',
  `TURN_DOMESTIC_NO` longtext DEFAULT NULL COMMENT '出口转内销编号',
  `NOT_DEDUCTIBLE` longtext DEFAULT NULL COMMENT '是否不得抵扣及退税发票 0：无1：不得抵扣及退税发票',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='新发票主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_CT_MO_MANUORDEREXECRECORDENTRY`
--

DROP TABLE IF EXISTS `dm_CT_MO_MANUORDEREXECRECORDENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_CT_MO_MANUORDEREXECRECORDENTRY` (
  `FSEQ` varchar(200) DEFAULT NULL COMMENT 'FSEQ',
  `FID` varchar(200) NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FPARENTID` varchar(200) DEFAULT NULL COMMENT 'FPARENTID',
  `CFMANUORDERID` varchar(200) DEFAULT NULL COMMENT 'CFMANUORDERID',
  `CFMANUTECHID` varchar(200) DEFAULT NULL COMMENT 'CFMANUTECHID',
  `CFMANUSTOCKID` varchar(200) DEFAULT NULL COMMENT 'CFMANUSTOCKID',
  `CFMANUORDERNUMBER` varchar(200) DEFAULT NULL COMMENT 'CFMANUORDERNUMBER',
  `CFORDERQTY` varchar(200) DEFAULT NULL COMMENT 'CFORDERQTY',
  `CFTRACKNUMBERID` varchar(200) DEFAULT NULL COMMENT 'CFTRACKNUMBERID',
  `CFPROJECTJCHID` varchar(200) DEFAULT NULL COMMENT 'CFPROJECTJCHID',
  `CFBASESTATUS` varchar(200) DEFAULT NULL COMMENT 'CFBASESTATUS',
  `CFENTRYBASESTATUS` varchar(200) DEFAULT NULL COMMENT 'CFENTRYBASESTATUS',
  `CFOPERATIONID` varchar(200) DEFAULT NULL COMMENT 'CFOPERATIONID',
  `CFOPERATIONNO` varchar(200) DEFAULT NULL COMMENT 'CFOPERATIONNO',
  `CFOLDOPERATIONNO` varchar(200) DEFAULT NULL COMMENT 'CFOLDOPERATIONNO',
  `CFWORKCENTERID` varchar(200) DEFAULT NULL COMMENT 'CFWORKCENTERID',
  `CFOLDWORKCENTERID` varchar(200) DEFAULT NULL COMMENT 'CFOLDWORKCENTERID',
  `CFOLDCOOSTORAGEORG` varchar(200) DEFAULT NULL COMMENT 'CFOLDCOOSTORAGEORG',
  `CFCOOSTORAGEORGUNI` varchar(200) DEFAULT NULL COMMENT 'CFCOOSTORAGEORGUNI',
  `CFISPICKINGPOINT` varchar(200) DEFAULT NULL COMMENT 'CFISPICKINGPOINT',
  `CFISOLDPICKINGPOINT` varchar(200) DEFAULT NULL COMMENT 'CFISOLDPICKINGPOINT',
  `CFISCHECKPOINT` varchar(200) DEFAULT NULL COMMENT 'CFISCHECKPOINT',
  `CFISOLDCHECKPOINT` varchar(200) DEFAULT NULL COMMENT 'CFISOLDCHECKPOINT',
  `CFLOCATIONDEFINEDI` varchar(200) DEFAULT NULL COMMENT 'CFLOCATIONDEFINEDI',
  `CFOLDLOCATIONDEFIN` varchar(200) DEFAULT NULL COMMENT 'CFOLDLOCATIONDEFIN',
  `CFMATERIALID` varchar(200) DEFAULT NULL COMMENT 'CFMATERIALID',
  `CFSUPPORGUNITID` varchar(200) DEFAULT NULL COMMENT 'CFSUPPORGUNITID',
  `CFUNITID` varchar(200) DEFAULT NULL COMMENT 'CFUNITID',
  `CFNEWQTY` varchar(200) DEFAULT NULL COMMENT 'CFNEWQTY',
  `CFOLDQTY` varchar(200) DEFAULT NULL COMMENT 'CFOLDQTY',
  `CFISSUEMODE` varchar(200) DEFAULT NULL COMMENT 'CFISSUEMODE',
  `CFPROVIDETYPE` varchar(200) DEFAULT NULL COMMENT 'CFPROVIDETYPE',
  `CFPICKTYPE` varchar(200) DEFAULT NULL COMMENT 'CFPICKTYPE',
  `CFISSUEQTY` varchar(200) DEFAULT NULL COMMENT 'CFISSUEQTY',
  `CFISSELECT` varchar(200) DEFAULT NULL COMMENT 'CFISSELECT',
  `CFCHANGETYPE` varchar(200) DEFAULT NULL COMMENT 'CFCHANGETYPE',
  `CFBEGINTIME` varchar(200) DEFAULT NULL COMMENT 'CFBEGINTIME',
  `CFENDTIME` varchar(200) DEFAULT NULL COMMENT 'CFENDTIME',
  `CFEXECTIME` varchar(200) DEFAULT NULL COMMENT 'CFEXECTIME',
  `CFPBOMENTRYID` varchar(200) DEFAULT NULL COMMENT 'CFPBOMENTRYID',
  `CFROUTINGITEMID` varchar(200) DEFAULT NULL COMMENT 'CFROUTINGITEMID',
  `CFEXECRESULT` longtext DEFAULT NULL COMMENT 'CFEXECRESULT',
  `CFNEWDEMANDDATE` varchar(200) DEFAULT NULL COMMENT 'CFNEWDEMANDDATE',
  `CFOLDDEMANDDATE` varchar(200) DEFAULT NULL COMMENT 'CFOLDDEMANDDATE',
  `CFORDERSEQ` varchar(200) DEFAULT NULL COMMENT 'CFORDERSEQ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_CT_MO_MANUORDEREXECRECORDENTRY';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_CT_MO_MDRAWBACKREQBILLENTRY`
--

DROP TABLE IF EXISTS `dm_CT_MO_MDRAWBACKREQBILLENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_CT_MO_MDRAWBACKREQBILLENTRY` (
  `FSEQ` varchar(200) DEFAULT NULL COMMENT 'FSEQ',
  `FID` varchar(200) NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FPARENTID` varchar(200) DEFAULT NULL COMMENT 'FPARENTID',
  `CFQTY` varchar(200) DEFAULT NULL COMMENT 'CFQTY',
  `CFUID` varchar(200) DEFAULT NULL COMMENT 'CFUID',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_CT_MO_MDRAWBACKREQBILLENTRY';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_CT_REW_REWORKPOE`
--

DROP TABLE IF EXISTS `dm_CT_REW_REWORKPOE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_CT_REW_REWORKPOE` (
  `FID` varchar(44) NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FSEQ` int(11) NOT NULL DEFAULT 0 COMMENT 'FSEQ',
  `FPARENTID` varchar(44) NOT NULL DEFAULT ''' ' COMMENT 'FPARENTID',
  `CFSEQ` varchar(200) DEFAULT NULL COMMENT 'CFSEQ',
  `CFOPERATIONNO` int(11) DEFAULT NULL COMMENT 'CFOPERATIONNO',
  `CFOPERATIONID` varchar(44) DEFAULT NULL COMMENT 'CFOPERATIONID',
  `CFOPERATIONNAME` varchar(80) DEFAULT NULL COMMENT 'CFOPERATIONNAME',
  `CFMANFACTUREORDERI` varchar(44) DEFAULT NULL COMMENT 'CFMANFACTUREORDERI',
  `CFWORKCENTERID` varchar(44) DEFAULT NULL COMMENT 'CFWORKCENTERID',
  `CFISCHECKPOINT` int(11) DEFAULT NULL COMMENT 'CFISCHECKPOINT',
  `CFENTRUSTTYPE` int(11) DEFAULT NULL COMMENT 'CFENTRUSTTYPE',
  `CFSUPPLIERID` varchar(44) DEFAULT NULL COMMENT 'CFSUPPLIERID',
  `CFOLDOPERATIONNO` int(11) DEFAULT NULL COMMENT 'CFOLDOPERATIONNO',
  `CFOLDOPERATIONID` varchar(44) DEFAULT NULL COMMENT 'CFOLDOPERATIONID',
  `CFOLDOPERATIONNAME` varchar(80) DEFAULT NULL COMMENT 'CFOLDOPERATIONNAME',
  `CFOLDWORKCENTERID` varchar(44) DEFAULT NULL COMMENT 'CFOLDWORKCENTERID',
  `CFOLDISCHECKPOINT` int(11) DEFAULT NULL COMMENT 'CFOLDISCHECKPOINT',
  `CFOLDENTRUSTTYPE` int(11) DEFAULT NULL COMMENT 'CFOLDENTRUSTTYPE',
  `CFOLDSUPPLIERID` varchar(44) DEFAULT NULL COMMENT 'CFOLDSUPPLIERID',
  `CFHANDWORKREAMRK` varchar(100) DEFAULT NULL COMMENT 'CFHANDWORKREAMRK',
  `CFQUALITYCLASS` varchar(100) DEFAULT NULL COMMENT 'CFQUALITYCLASS',
  `CFQUALITYREASON` varchar(100) DEFAULT NULL COMMENT 'CFQUALITYREASON',
  `CFQUALITYTIME` varchar(200) DEFAULT NULL COMMENT 'CFQUALITYTIME',
  `CFCHANGETYPE` int(11) DEFAULT NULL COMMENT 'CFCHANGETYPE',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_CT_REW_REWORKPOE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_MBF_EQUIPMENT`
--

DROP TABLE IF EXISTS `dm_MBF_EQUIPMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_MBF_EQUIPMENT` (
  `GID` varchar(50) DEFAULT NULL COMMENT '主键',
  `CODE` longtext DEFAULT NULL COMMENT '设备编码',
  `NAME` longtext DEFAULT NULL COMMENT '设备名称',
  `MODEL` longtext DEFAULT NULL COMMENT '设备型号',
  `TYPE_GID` longtext DEFAULT NULL COMMENT '设备类型',
  `MANU` longtext DEFAULT NULL COMMENT '制造厂商',
  `DEPT_GID` longtext DEFAULT NULL COMMENT '部门',
  `MADE_DATE` date DEFAULT NULL COMMENT '制造日期',
  `USE_DATE` date DEFAULT NULL COMMENT '使用日期',
  `IMAGE` longtext DEFAULT NULL COMMENT '设备图片',
  `OPERATE_ID` longtext DEFAULT NULL COMMENT '设备操作人',
  `USE_STATUS` longtext DEFAULT NULL COMMENT '设备使用状态',
  `RUN_STATUS` longtext DEFAULT NULL COMMENT '设备运行状态',
  `IS_NC` int(11) DEFAULT 0 COMMENT '是否数控设备',
  `LEADER_ID` longtext DEFAULT NULL COMMENT '设备负责人',
  `WORK_CELL_GID` longtext DEFAULT NULL COMMENT '工位',
  `IS_TOOL` int(11) DEFAULT NULL COMMENT '是否辅助工具',
  `INST_LIST_GID` longtext DEFAULT NULL COMMENT '工作指示',
  `SITE_GID` longtext DEFAULT NULL COMMENT '工厂',
  `PID` longtext DEFAULT NULL COMMENT '父级设备主键',
  `USE_METHOD_GID` longtext DEFAULT NULL COMMENT '使用方式',
  `CAPACITY` int(11) DEFAULT NULL COMMENT '容量',
  `MAX_POWER` int(11) DEFAULT NULL COMMENT '最大功率',
  `MAX_SPEED` int(11) DEFAULT NULL COMMENT '最大速度',
  `MIN_SPEED` int(11) DEFAULT NULL COMMENT '最小速度',
  `MAX_WEIGHT` int(11) DEFAULT NULL COMMENT '最大重量',
  `MAX_SIZE` int(11) DEFAULT NULL COMMENT '最大尺寸(mm)',
  `MAX_FEEDRATE` int(11) DEFAULT NULL COMMENT '速度最大值((r/min)',
  `MIN_FEEDRATE` int(11) DEFAULT NULL COMMENT '速度最小值((r/min)',
  `USE_LIFE` int(11) DEFAULT NULL COMMENT '使用年限',
  `REMARK` longtext DEFAULT NULL COMMENT '备注',
  `CREATE_DATE` date DEFAULT NULL COMMENT '创建日期',
  `MODIFY_DATE` date DEFAULT NULL COMMENT '修改日期',
  `CREATE_ID` longtext DEFAULT NULL COMMENT '创建人',
  `MODIFY_ID` longtext DEFAULT NULL COMMENT '修改人',
  `IS_ACTIVE` int(11) DEFAULT 0 COMMENT '激活标识',
  `IS_DELETE` int(11) DEFAULT 0 COMMENT '删除标识',
  `UDA1` longtext DEFAULT NULL COMMENT '[JS]MBF_EQUIPMENT_EXCEPTION主键',
  `UDA2` longtext DEFAULT NULL COMMENT '[JS]当前状态值',
  `UDA3` longtext DEFAULT NULL COMMENT '预留字段3',
  `UDA4` longtext DEFAULT NULL COMMENT '预留字段4',
  `UDA5` longtext DEFAULT NULL COMMENT '预留字段5',
  `DELETED` longtext DEFAULT NULL COMMENT 'DELETED',
  `DATA_ROLE` longtext DEFAULT NULL COMMENT '工厂GID',
  `MARK_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'MARK_TIME',
  `DATA_ROLE1` longtext DEFAULT NULL COMMENT '工作中心 GID',
  `DATA_ROLE2` longtext DEFAULT '0' COMMENT '工作中心层级权值',
  `WORK_CENTER_GID` longtext DEFAULT NULL COMMENT '工作中心主键',
  `UDA_EQUIP_BELONG_CODE` longtext DEFAULT NULL COMMENT '设备所属系统编码',
  `UDA_EQUIP_BELONG_NAME` longtext DEFAULT NULL COMMENT '设备所属系统名称',
  `UDA1C` longtext DEFAULT NULL COMMENT '备用字段1编码',
  `UDA1N` longtext DEFAULT NULL COMMENT '备用字段1名称',
  `UDA2C` longtext DEFAULT NULL COMMENT '备用字段2编码',
  `UDA2N` longtext DEFAULT NULL COMMENT '备用字段2名称',
  `UDA3C` longtext DEFAULT NULL COMMENT '备用字段3编码',
  `UDA3N` longtext DEFAULT NULL COMMENT '备用字段3名称',
  `UDA4C` longtext DEFAULT NULL COMMENT '备用字段4编码',
  `UDA4N` longtext DEFAULT NULL COMMENT '备用字段4名称',
  `UDA5C` longtext DEFAULT NULL COMMENT '备用字段5编码',
  `UDA5N` longtext DEFAULT NULL COMMENT '备用字段5名称',
  `UEM_EQUIP_BIGTYPEID` longtext DEFAULT NULL COMMENT '设备大类(来自自定义项档案)',
  `UEM_EQUIP_SMALLTYPEID` longtext DEFAULT NULL COMMENT '设备小类(来自自定义项档案)',
  `UEM_EQUIP_BIGTYPENAME` longtext DEFAULT NULL COMMENT '设备大类名称(来自自定义项档案)',
  `UEM_EQUIP_SMALLTYPENAME` longtext DEFAULT NULL COMMENT '设备小类名称(来自自定义项档案)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='MBF_设备基础信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_PMBB_EMPLOYEE`
--

DROP TABLE IF EXISTS `dm_PMBB_EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_PMBB_EMPLOYEE` (
  `GID` varchar(255) DEFAULT NULL COMMENT '主键',
  `CODE` longtext DEFAULT NULL COMMENT '人员编码',
  `NAME` longtext DEFAULT NULL COMMENT '姓名',
  `EMPLOYEE_CLASS_GID` longtext DEFAULT NULL COMMENT '人员类别',
  `USED_NAME` longtext DEFAULT NULL COMMENT '曾用名',
  `DEPT_GID` longtext DEFAULT NULL COMMENT '所属部门',
  `COMPANY_GID` longtext DEFAULT NULL COMMENT '所属公司',
  `OPERATOR_GID` longtext DEFAULT NULL COMMENT '业务员',
  `SEX` int(11) DEFAULT NULL COMMENT '性别',
  `ID_CARD_NUM` longtext DEFAULT NULL COMMENT '身份证号',
  `SOC_CARD_NUM` longtext DEFAULT NULL COMMENT '社会保障号',
  `BIRTHDAY` date DEFAULT NULL COMMENT '出生日期',
  `ADDRESS` longtext DEFAULT NULL COMMENT '家庭地址',
  `ZIPCODE` longtext DEFAULT NULL COMMENT '邮政编码',
  `OFFICE_TELE` longtext DEFAULT NULL COMMENT '办公电话',
  `HOME_TELE` longtext DEFAULT NULL COMMENT '家庭电话',
  `MOBILE` longtext DEFAULT NULL COMMENT '手机号码',
  `EMAIL` longtext DEFAULT NULL COMMENT '电子邮箱',
  `CAREER_BEGIN_DATE` date DEFAULT NULL COMMENT '参加工作日期',
  `JOIN_COMPANY_DATE` date DEFAULT NULL COMMENT '入职日期',
  `REMARK` longtext DEFAULT NULL COMMENT '备注',
  `CREATE_ID` longtext DEFAULT NULL COMMENT '创建人',
  `CREATE_DATE` date DEFAULT NULL COMMENT '创建时间',
  `MODIFY_ID` longtext DEFAULT NULL COMMENT '修改人',
  `MODIFY_DATE` date DEFAULT NULL COMMENT '修改日期',
  `IS_ACTIVE` int(11) DEFAULT 0 COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` int(11) DEFAULT 0 COMMENT '删除标识(0未删除1删除)',
  `UDA1` longtext DEFAULT NULL COMMENT '预留字段1',
  `UDA2` longtext DEFAULT NULL COMMENT '预留字段2',
  `UDA3` longtext DEFAULT NULL COMMENT '预留字段3',
  `UDA4` longtext DEFAULT NULL COMMENT '预留字段4',
  `UDA5` longtext DEFAULT NULL COMMENT '预留字段5',
  `DELETED` longtext DEFAULT NULL COMMENT 'DELETED',
  `DATA_ROLE` longtext DEFAULT NULL COMMENT '工厂GID',
  `SITE_GID` longtext DEFAULT NULL COMMENT '所属工厂',
  `DATA_ROLE1` longtext DEFAULT '-1' COMMENT '工作中心 GID',
  `DATA_ROLE2` longtext DEFAULT '0' COMMENT '工作中心层级权值',
  `IMG` longtext DEFAULT NULL COMMENT '????',
  `UDA100` longtext DEFAULT NULL COMMENT '职位代码',
  `UDA101` longtext DEFAULT NULL COMMENT '职位名称',
  `UDA102` longtext DEFAULT NULL COMMENT '年龄',
  `UDA103` longtext DEFAULT NULL COMMENT '在岗状态',
  `UDA104` longtext DEFAULT NULL COMMENT '班组',
  `UDA105` longtext DEFAULT NULL COMMENT '技能等级',
  `UDA106` longtext DEFAULT NULL COMMENT 'UDA106',
  `UDA107` longtext DEFAULT NULL COMMENT 'UDA107',
  `UDA108` longtext DEFAULT NULL COMMENT 'UDA108',
  `UDA109` longtext DEFAULT NULL COMMENT 'UDA109',
  `UDA110` longtext DEFAULT NULL COMMENT 'UDA110',
  `UDA111` longtext DEFAULT NULL COMMENT 'UDA111',
  `UDA1C` longtext DEFAULT NULL COMMENT '备用字段1编码',
  `UDA1N` longtext DEFAULT NULL COMMENT '备用字段1名称',
  `UDA2C` longtext DEFAULT NULL COMMENT '备用字段2编码',
  `UDA2N` longtext DEFAULT NULL COMMENT '备用字段2名称',
  `UDA3C` longtext DEFAULT NULL COMMENT '备用字段3编码',
  `UDA3N` longtext DEFAULT NULL COMMENT '备用字段3名称',
  `UDA4C` longtext DEFAULT NULL COMMENT '备用字段4编码',
  `UDA4N` longtext DEFAULT NULL COMMENT '备用字段4名称',
  `UDA5C` longtext DEFAULT NULL COMMENT '备用字段5编码',
  `UDA5N` longtext DEFAULT NULL COMMENT '备用字段5名称',
  `POST_ATTRIBUTE` longtext DEFAULT NULL COMMENT '岗位属性',
  `IS_SHR_SYNC` int(11) DEFAULT 0 COMMENT '是否是SHR同步新增标识 (0：否，1：是 )',
  `IC_NUMBER` longtext DEFAULT NULL COMMENT 'IC工卡卡号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工位人员导入临时表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_SBKGSC`
--

DROP TABLE IF EXISTS `dm_SBKGSC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_SBKGSC` (
  `DMBM` longtext DEFAULT NULL COMMENT '代码编码',
  `BYDH` longtext DEFAULT NULL COMMENT '保养单号',
  `DJDH` longtext DEFAULT NULL COMMENT '点检单号',
  `DJSJ` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '点检时间',
  `BYSJ` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '保养时间',
  `DJRQ` date DEFAULT NULL COMMENT '点检日期',
  `BYRQ` date DEFAULT NULL COMMENT '保养日期',
  `KGSC` double DEFAULT NULL COMMENT '开工时长'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm设备开工时长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_T_EMM_CLAIMNOTE`
--

DROP TABLE IF EXISTS `dm_T_EMM_CLAIMNOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_T_EMM_CLAIMNOTE` (
  `FPURCHASEORGUNITID` varchar(200) DEFAULT NULL COMMENT 'FPURCHASEORGUNITID',
  `FSUPPLIERID` varchar(200) DEFAULT NULL COMMENT 'FSUPPLIERID',
  `FMATERIALID` varchar(200) DEFAULT NULL COMMENT 'FMATERIALID',
  `FREJECTQTY` varchar(200) DEFAULT NULL COMMENT 'FREJECTQTY',
  `FCLAIMQTY` varchar(200) DEFAULT NULL COMMENT 'FCLAIMQTY',
  `FCLAIMAMOUNT` varchar(200) DEFAULT NULL COMMENT 'FCLAIMAMOUNT',
  `FCURRENCYID` varchar(200) DEFAULT NULL COMMENT 'FCURRENCYID',
  `FPLANRETDATE` varchar(200) DEFAULT NULL COMMENT 'FPLANRETDATE',
  `FPLANSETDATE` varchar(200) DEFAULT NULL COMMENT 'FPLANSETDATE',
  `FISSUPPLIERHANDER` varchar(200) DEFAULT NULL COMMENT 'FISSUPPLIERHANDER',
  `FNCRQTY` varchar(200) DEFAULT NULL COMMENT 'FNCRQTY',
  `FEXCHANGERATE` varchar(200) DEFAULT NULL COMMENT 'FEXCHANGERATE',
  `FAUDITTIME` varchar(200) DEFAULT NULL COMMENT 'FAUDITTIME',
  `FBASESTATUS` varchar(200) DEFAULT NULL COMMENT 'FBASESTATUS',
  `FBIZTYPEID` varchar(200) DEFAULT NULL COMMENT 'FBIZTYPEID',
  `FSOURCEBILLTYPEID` varchar(200) DEFAULT NULL COMMENT 'FSOURCEBILLTYPEID',
  `FBILLTYPEID` varchar(200) DEFAULT NULL COMMENT 'FBILLTYPEID',
  `FYEAR` varchar(200) DEFAULT NULL COMMENT 'FYEAR',
  `FPERIOD` varchar(200) DEFAULT NULL COMMENT 'FPERIOD',
  `FMODIFIERID` varchar(200) DEFAULT NULL COMMENT 'FMODIFIERID',
  `FMODIFICATIONTIME` varchar(200) DEFAULT NULL COMMENT 'FMODIFICATIONTIME',
  `FNUMBER` varchar(200) DEFAULT NULL COMMENT 'FNUMBER',
  `FBIZDATE` varchar(200) DEFAULT NULL COMMENT 'FBIZDATE',
  `FHANDLERID` varchar(200) DEFAULT NULL COMMENT 'FHANDLERID',
  `FDESCRIPTION` varchar(120) DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FHASEFFECTED` varchar(200) DEFAULT NULL COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(200) DEFAULT NULL COMMENT 'FAUDITORID',
  `FSOURCEBILLID` varchar(200) DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEFUNCTION` varchar(200) DEFAULT NULL COMMENT 'FSOURCEFUNCTION',
  `FCREATORID` varchar(200) DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` varchar(200) DEFAULT NULL COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(200) DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` varchar(200) DEFAULT NULL COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(200) DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FID` varchar(200) NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FSUPSTATUS` varchar(200) DEFAULT '0' COMMENT 'FSUPSTATUS',
  `FSUPAPPEALPER` varchar(200) DEFAULT NULL COMMENT 'FSUPAPPEALPER',
  `FSUPAPPEALDATE` varchar(200) DEFAULT NULL COMMENT 'FSUPAPPEALDATE',
  `FSUPAPPLYQTY` varchar(200) DEFAULT NULL COMMENT 'FSUPAPPLYQTY',
  `FSUPAPPLYAMOUNT` varchar(200) DEFAULT NULL COMMENT 'FSUPAPPLYAMOUNT',
  `FSUPFREMARK` varchar(200) DEFAULT NULL COMMENT 'FSUPFREMARK',
  `FTOTALDOWNQTY` varchar(200) DEFAULT NULL COMMENT 'FTOTALDOWNQTY',
  `CFALLINKID` varchar(200) DEFAULT NULL COMMENT 'CFALLINKID',
  `CFALLINKENTRYID` varchar(200) DEFAULT NULL COMMENT 'CFALLINKENTRYID',
  `FISOTHERINOUT` varchar(200) DEFAULT NULL COMMENT 'FISOTHERINOUT',
  `FPURORDERID` varchar(200) DEFAULT NULL COMMENT 'FPURORDERID',
  `FPURORDERENTRYID` varchar(200) DEFAULT NULL COMMENT 'FPURORDERENTRYID',
  `CFLOTNUMBER` varchar(200) DEFAULT NULL COMMENT 'CFLOTNUMBER',
  `FUNITSOURCE` varchar(200) DEFAULT NULL COMMENT 'FUNITSOURCE',
  `CFSRMPROGRESS` varchar(200) DEFAULT NULL COMMENT 'CFSRMPROGRESS',
  `FISYZMATERIAL` varchar(200) DEFAULT NULL COMMENT 'FISYZMATERIAL',
  `FMFRSUPPLIERID` varchar(200) DEFAULT NULL COMMENT 'FMFRSUPPLIERID',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_T_EMM_CLAIMNOTE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_T_EMM_NCRREPORT`
--

DROP TABLE IF EXISTS `dm_T_EMM_NCRREPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_T_EMM_NCRREPORT` (
  `FSTORAGEORGUNITID` varchar(44) NOT NULL COMMENT 'FSTORAGEORGUNITID',
  `FTRANSTYPEID` varchar(44) DEFAULT NULL COMMENT 'FTRANSTYPEID',
  `FAUDITLEVEL` int(11) DEFAULT NULL COMMENT 'FAUDITLEVEL',
  `FVERSIONNO` int(11) DEFAULT NULL COMMENT 'FVERSIONNO',
  `FPROJECTID` varchar(44) DEFAULT NULL COMMENT 'FPROJECTID',
  `FTRACKNUMBERID` varchar(44) DEFAULT NULL COMMENT 'FTRACKNUMBERID',
  `FSERIALNO` varchar(100) DEFAULT NULL COMMENT 'FSERIALNO',
  `FOCCURDEPTID` varchar(44) DEFAULT NULL COMMENT 'FOCCURDEPTID',
  `FRESTYPE` varchar(100) DEFAULT NULL COMMENT 'FRESTYPE',
  `FINRESDEPTID` varchar(44) DEFAULT NULL COMMENT 'FINRESDEPTID',
  `FOUTRESDEPTID` varchar(44) DEFAULT NULL COMMENT 'FOUTRESDEPTID',
  `FOUTRESDEPTMID` varchar(44) DEFAULT NULL COMMENT 'FOUTRESDEPTMID',
  `FTYPE` int(11) DEFAULT NULL COMMENT 'FTYPE',
  `FQTY` double(2,2) DEFAULT NULL COMMENT 'FQTY',
  `FISRERMATERIAL` int(11) DEFAULT NULL COMMENT 'FISRERMATERIAL',
  `FMATERIALID` varchar(44) DEFAULT NULL COMMENT 'FMATERIALID',
  `FMANINFOID` varchar(44) DEFAULT NULL COMMENT 'FMANINFOID',
  `FSALEOUTINFOID` varchar(44) DEFAULT NULL COMMENT 'FSALEOUTINFOID',
  `FNCRHANDLERID` varchar(44) DEFAULT NULL COMMENT 'FNCRHANDLERID',
  `FRECORDERID` varchar(44) DEFAULT NULL COMMENT 'FRECORDERID',
  `FRECORDDATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'FRECORDDATE',
  `FCONANDRESULT` varchar(100) DEFAULT NULL COMMENT 'FCONANDRESULT',
  `FAUDITRESULT` varchar(100) DEFAULT NULL COMMENT 'FAUDITRESULT',
  `FDETAILPROCESS` int(11) DEFAULT NULL COMMENT 'FDETAILPROCESS',
  `FOTHER` int(11) DEFAULT NULL COMMENT 'FOTHER',
  `FADUITDESCRIPTION` varchar(100) DEFAULT NULL COMMENT 'FADUITDESCRIPTION',
  `FAUDITHANDLERID` varchar(44) DEFAULT NULL COMMENT 'FAUDITHANDLERID',
  `FIFREQUIREDYES` int(11) DEFAULT NULL COMMENT 'FIFREQUIREDYES',
  `FIFREQUIRED` int(11) DEFAULT NULL COMMENT 'FIFREQUIRED',
  `FINDBEFORE` varchar(100) DEFAULT NULL COMMENT 'FINDBEFORE',
  `FDONEBEFORE` varchar(100) DEFAULT NULL COMMENT 'FDONEBEFORE',
  `FOCCURDEPTERID` varchar(44) DEFAULT NULL COMMENT 'FOCCURDEPTERID',
  `FRESDEPTERID` varchar(44) DEFAULT NULL COMMENT 'FRESDEPTERID',
  `FQMERID` varchar(44) DEFAULT NULL COMMENT 'FQMERID',
  `FTECHNICIANID` varchar(44) DEFAULT NULL COMMENT 'FTECHNICIANID',
  `FPROENGINERID` varchar(44) DEFAULT NULL COMMENT 'FPROENGINERID',
  `FSUPPLIERMANAGERID` varchar(44) DEFAULT NULL COMMENT 'FSUPPLIERMANAGERID',
  `FCHIEFWELDID` varchar(44) DEFAULT NULL COMMENT 'FCHIEFWELDID',
  `FOTHERPERSONID` varchar(44) DEFAULT NULL COMMENT 'FOTHERPERSONID',
  `FCHIEFENGINEERID` varchar(44) DEFAULT NULL COMMENT 'FCHIEFENGINEERID',
  `FCHIEFENGDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCHIEFENGDATE',
  `FCLOSEDLOOP` varchar(100) DEFAULT NULL COMMENT 'FCLOSEDLOOP',
  `FINSPECTORID` varchar(44) DEFAULT NULL COMMENT 'FINSPECTORID',
  `FINSPECDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FINSPECDATE',
  `FAUDITTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAUDITTIME',
  `FBASESTATUS` int(11) DEFAULT NULL COMMENT 'FBASESTATUS',
  `FBIZTYPEID` varchar(44) DEFAULT NULL COMMENT 'FBIZTYPEID',
  `FSOURCEBILLTYPEID` varchar(44) DEFAULT NULL COMMENT 'FSOURCEBILLTYPEID',
  `FBILLTYPEID` varchar(44) DEFAULT NULL COMMENT 'FBILLTYPEID',
  `FYEAR` int(11) DEFAULT NULL COMMENT 'FYEAR',
  `FPERIOD` int(11) DEFAULT NULL COMMENT 'FPERIOD',
  `FMODIFIERID` varchar(44) DEFAULT NULL COMMENT 'FMODIFIERID',
  `FMODIFICATIONTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FMODIFICATIONTIME',
  `FNUMBER` varchar(100) DEFAULT NULL COMMENT 'FNUMBER',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBIZDATE',
  `FHANDLERID` varchar(44) DEFAULT NULL COMMENT 'FHANDLERID',
  PRIMARY KEY (`FSTORAGEORGUNITID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_T_EMM_NCRREPORT';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_T_EMM_NCRREPORT2`
--

DROP TABLE IF EXISTS `dm_T_EMM_NCRREPORT2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_T_EMM_NCRREPORT2` (
  `FSTORAGEORGUNITID` varchar(44) NOT NULL COMMENT 'FSTORAGEORGUNITID',
  `FDESCRIPTION` varchar(2000) DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(44) DEFAULT NULL COMMENT 'FAUDITORID',
  `FSOURCEBILLID` varchar(44) DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEFUNCTION` varchar(120) DEFAULT NULL COMMENT 'FSOURCEFUNCTION',
  `FCREATORID` varchar(44) DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FID` varchar(44) NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FMOVEOUTWAREID` varchar(44) DEFAULT NULL COMMENT 'FMOVEOUTWAREID',
  `FAFFIRMERID` varchar(44) DEFAULT NULL COMMENT 'FAFFIRMERID',
  `FAFFIRMDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAFFIRMDATE',
  `FAUDITHANDLERSTR` longtext DEFAULT NULL COMMENT 'FAUDITHANDLERSTR',
  `FOCCURDEPTERSTR` longtext DEFAULT NULL COMMENT 'FOCCURDEPTERSTR',
  `FRESDEPTERSTR` longtext DEFAULT NULL COMMENT 'FRESDEPTERSTR',
  `FQMERSTR` longtext DEFAULT NULL COMMENT 'FQMERSTR',
  `FTECHNICIANSTR` longtext DEFAULT NULL COMMENT 'FTECHNICIANSTR',
  `FPROENGINERSTR` longtext DEFAULT NULL COMMENT 'FPROENGINERSTR',
  `FSUPPLIERMANAGERSTR` longtext DEFAULT NULL COMMENT 'FSUPPLIERMANAGERSTR',
  `FCHIEFWELDSTR` longtext DEFAULT NULL COMMENT 'FCHIEFWELDSTR',
  `FOTHERPERSONSTR` longtext DEFAULT NULL COMMENT 'FOTHERPERSONSTR',
  `FOUTSOURCEISSUEID` varchar(44) DEFAULT NULL COMMENT 'FOUTSOURCEISSUEID',
  `FDEPARTMENT1ID` varchar(44) DEFAULT NULL COMMENT 'FDEPARTMENT1ID',
  `FDEPARTMENT2ID` varchar(44) DEFAULT NULL COMMENT 'FDEPARTMENT2ID',
  `FDEPARTMENT3ID` varchar(44) DEFAULT NULL COMMENT 'FDEPARTMENT3ID',
  `FDEPARTMENT4ID` varchar(44) DEFAULT NULL COMMENT 'FDEPARTMENT4ID',
  `FDEPARTMENT5ID` varchar(44) DEFAULT NULL COMMENT 'FDEPARTMENT5ID',
  `FDEPARTMENT6ID` varchar(44) DEFAULT NULL COMMENT 'FDEPARTMENT6ID',
  `FDEPARTMENT7ID` varchar(44) DEFAULT NULL COMMENT 'FDEPARTMENT7ID',
  `FPURCHASEGROUPID` varchar(44) DEFAULT NULL COMMENT 'FPURCHASEGROUPID',
  `FPURCHASEPERSONID` varchar(44) DEFAULT NULL COMMENT 'FPURCHASEPERSONID',
  `CFALLINKID` varchar(75) DEFAULT NULL COMMENT 'CFALLINKID',
  `CFALLINKENTRYID` varchar(75) DEFAULT NULL COMMENT 'CFALLINKENTRYID',
  `FSUBMITERID` varchar(44) DEFAULT NULL COMMENT 'FSUBMITERID',
  `FSUBMITTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FSUBMITTIME',
  `FPURORDERID` varchar(44) DEFAULT NULL COMMENT 'FPURORDERID',
  `FPURORDERENTRYID` varchar(44) DEFAULT NULL COMMENT 'FPURORDERENTRYID',
  `CFIMG1` longtext DEFAULT NULL COMMENT 'CFIMG1',
  `CFIMG2` longtext DEFAULT NULL COMMENT 'CFIMG2',
  `FQUALITYHOUR` double(21,8) NOT NULL DEFAULT 0.00000000 COMMENT 'FQUALITYHOUR',
  `FQUALITYCLASS` varchar(10) DEFAULT NULL COMMENT 'FQUALITYCLASS',
  `FQUALITYREASON` varchar(10) DEFAULT '''' COMMENT 'FQUALITYREASON',
  `CFOLDAUDITOR` varchar(44) DEFAULT NULL COMMENT 'CFOLDAUDITOR',
  `FOTHERISSUEBILLID` varchar(44) DEFAULT NULL COMMENT 'FOTHERISSUEBILLID',
  `CFPURORGUNITID` varchar(44) DEFAULT NULL COMMENT 'CFPURORGUNITID',
  `FISSLNCR` int(11) DEFAULT NULL COMMENT 'FISSLNCR',
  `CFLOTNUMBER` varchar(150) DEFAULT NULL COMMENT 'CFLOTNUMBER',
  `FUNITSOURCE` int(11) DEFAULT NULL COMMENT 'FUNITSOURCE',
  `FLOTNUMBER` varchar(100) DEFAULT NULL COMMENT 'FLOTNUMBER',
  `FWORKCENTERID` varchar(44) DEFAULT NULL COMMENT 'FWORKCENTERID',
  `CFWMSSTATUS` int(11) DEFAULT NULL COMMENT 'CFWMSSTATUS',
  `CFSRMPROGRESS` int(11) DEFAULT NULL COMMENT 'CFSRMPROGRESS',
  `CFNCRMNUMBER` varchar(80) DEFAULT NULL COMMENT 'CFNCRMNUMBER',
  PRIMARY KEY (`FSTORAGEORGUNITID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_T_EMM_NCRREPORT2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_T_EMM_REWORKBILL`
--

DROP TABLE IF EXISTS `dm_T_EMM_REWORKBILL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_T_EMM_REWORKBILL` (
  `FSTORAGEORGUNITID` longtext DEFAULT NULL COMMENT 'FSTORAGEORGUNITID',
  `FMATERIALID` varchar(200) DEFAULT NULL COMMENT 'FMATERIALID',
  `FQTY` varchar(200) DEFAULT NULL COMMENT 'FQTY',
  `FPROJECTID` varchar(200) DEFAULT NULL COMMENT 'FPROJECTID',
  `FPLANREWORKDATE` varchar(200) DEFAULT NULL COMMENT 'FPLANREWORKDATE',
  `FPLANRETURNDATE` varchar(200) DEFAULT NULL COMMENT 'FPLANRETURNDATE',
  `FAUDITTIME` varchar(200) DEFAULT NULL COMMENT 'FAUDITTIME',
  `FBASESTATUS` varchar(200) DEFAULT NULL COMMENT 'FBASESTATUS',
  `FBIZTYPEID` varchar(200) DEFAULT NULL COMMENT 'FBIZTYPEID',
  `FSOURCEBILLTYPEID` varchar(200) DEFAULT NULL COMMENT 'FSOURCEBILLTYPEID',
  `FBILLTYPEID` varchar(200) DEFAULT NULL COMMENT 'FBILLTYPEID',
  `FYEAR` varchar(200) DEFAULT NULL COMMENT 'FYEAR',
  `FPERIOD` varchar(200) DEFAULT NULL COMMENT 'FPERIOD',
  `FMODIFIERID` varchar(200) DEFAULT NULL COMMENT 'FMODIFIERID',
  `FMODIFICATIONTIME` varchar(200) DEFAULT NULL COMMENT 'FMODIFICATIONTIME',
  `FNUMBER` varchar(120) DEFAULT NULL COMMENT 'FNUMBER',
  `FBIZDATE` varchar(200) DEFAULT NULL COMMENT 'FBIZDATE',
  `FHANDLERID` varchar(200) DEFAULT NULL COMMENT 'FHANDLERID',
  `FDESCRIPTION` varchar(200) DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FHASEFFECTED` varchar(200) DEFAULT NULL COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(200) DEFAULT NULL COMMENT 'FAUDITORID',
  `FSOURCEBILLID` varchar(200) DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEFUNCTION` varchar(200) DEFAULT NULL COMMENT 'FSOURCEFUNCTION',
  `FCREATORID` varchar(200) DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` varchar(200) DEFAULT NULL COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(200) DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` varchar(200) DEFAULT NULL COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(200) DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FID` varchar(200) NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FSUPPLIERID` varchar(200) DEFAULT NULL COMMENT 'FSUPPLIERID',
  `FUNITSOURCE` varchar(200) DEFAULT NULL COMMENT 'FUNITSOURCE',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_T_EMM_REWORKBILL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_UEM_EQUIP_CHK`
--

DROP TABLE IF EXISTS `dm_UEM_EQUIP_CHK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_UEM_EQUIP_CHK` (
  `GID` varchar(255) NOT NULL COMMENT '主键',
  `CHK_RESULT` int(11) DEFAULT NULL COMMENT '点检结果',
  `CHK_PERSON_ID` longtext DEFAULT NULL COMMENT '点检人id',
  `CHK_START_TIME` date DEFAULT NULL COMMENT '点检开始时间',
  `CHK_END_TIME` date DEFAULT NULL COMMENT '点检结束时间',
  `CREATE_ID` longtext DEFAULT NULL COMMENT '创建人',
  `CREATE_DATE` date DEFAULT NULL COMMENT '创建时间',
  `MODIFY_ID` longtext DEFAULT NULL COMMENT '修改人',
  `MODIFY_DATE` date DEFAULT NULL COMMENT '修改时间',
  `IS_ACTIVE` int(11) DEFAULT 0 COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` int(11) DEFAULT 0 COMMENT '删除标识(0未删除1删除)',
  `UDA1` longtext DEFAULT NULL COMMENT '备用字段1',
  `UDA2` longtext DEFAULT NULL COMMENT '备用字段2',
  `UDA3` longtext DEFAULT NULL COMMENT '备用字段3',
  `UDA4` longtext DEFAULT NULL COMMENT '备用字段4',
  `UDA5` longtext DEFAULT NULL COMMENT '备用字段5',
  `UDA6` longtext DEFAULT NULL COMMENT '备用字段6',
  `UDA7` longtext DEFAULT NULL COMMENT '预留字段7',
  `UDA8` longtext DEFAULT NULL COMMENT '预留字段8',
  `UDA9` longtext DEFAULT NULL COMMENT '预留字段9',
  `UDA10` longtext DEFAULT NULL COMMENT '预留字段10',
  `DELETED` longtext DEFAULT NULL COMMENT 'DELETED',
  `DATA_ROLE` longtext DEFAULT '-1 ' COMMENT '工厂GID',
  `DATA_ROLE1` longtext DEFAULT '-1' COMMENT '工作中心 GID',
  `DATA_ROLE2` longtext DEFAULT '0' COMMENT '工作中心层级权值',
  `UDA1C` longtext DEFAULT NULL COMMENT '备用字段1编码',
  `UDA1N` longtext DEFAULT NULL COMMENT '备用字段1名称',
  `UDA2C` longtext DEFAULT NULL COMMENT '备用字段2编码',
  `UDA2N` longtext DEFAULT NULL COMMENT '备用字段2名称',
  `UDA3C` longtext DEFAULT NULL COMMENT '备用字段3编码',
  `UDA3N` longtext DEFAULT NULL COMMENT '备用字段3名称',
  `UDA4C` longtext DEFAULT NULL COMMENT '备用字段4编码',
  `UDA4N` longtext DEFAULT NULL COMMENT '备用字段4名称',
  `UDA5C` longtext DEFAULT NULL COMMENT '备用字段5编码',
  `UDA5N` longtext DEFAULT NULL COMMENT '备用字段5名称',
  `EQUIP_GID` longtext DEFAULT NULL COMMENT '设备id',
  `FREQUENCY` longtext DEFAULT NULL COMMENT '班次',
  `WORK_START_TIME` date DEFAULT NULL COMMENT '运行开始时间',
  `WORK_END_TIME` date DEFAULT NULL COMMENT '运行结束时间',
  `DURATION` double DEFAULT NULL COMMENT '时长',
  `WORK_STATE` int(11) DEFAULT 0 COMMENT '运行状态(0未运行1运行中2运行结束 默认0)',
  PRIMARY KEY (`GID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='设备点检结果表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_UEX_VTRACK_RECORD_zxj`
--

DROP TABLE IF EXISTS `dm_UEX_VTRACK_RECORD_zxj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_UEX_VTRACK_RECORD_zxj` (
  `GID` longtext NOT NULL COMMENT '主键',
  `DISPATCH_CODE` longtext DEFAULT NULL COMMENT '派工单编号',
  `PRODU_UID` longtext DEFAULT NULL COMMENT '产品号',
  `PRODU_NAME` longtext DEFAULT NULL COMMENT '产品名称',
  `LOT_CODE` longtext DEFAULT NULL COMMENT '批次号',
  `MRL_CODE` longtext DEFAULT NULL COMMENT '车型/物料编码',
  `ORDER_CODE` longtext DEFAULT NULL COMMENT '订单号',
  `ORDER_TYPE` int(11) DEFAULT 0 COMMENT '订单类型',
  `WORK_ORDER_ID` longtext DEFAULT NULL COMMENT '计划工单编码',
  `WORK_ORDER_GID` longtext DEFAULT NULL COMMENT '计划工单主键',
  `DIS_CODE_STATE` int(11) DEFAULT NULL COMMENT '派工单状态(0.待开工 1.开工 2.暂停 3.完工 5.挂起)',
  `WORK_CENTER_GID` longtext DEFAULT NULL COMMENT '工作中心',
  `ORDER_STATE` int(11) DEFAULT NULL COMMENT '订单状态',
  `OPERATE_STATE` int(11) DEFAULT NULL COMMENT '操作状态',
  `WORK_ORDER_STATE` int(11) DEFAULT NULL COMMENT '工单状态',
  `PLANNED_START_TIME` date DEFAULT NULL COMMENT '计划开始时间',
  `PLANNED_FINISH_TIME` date DEFAULT NULL COMMENT '计划结束时间',
  `ISCOMPLETE` longtext DEFAULT NULL COMMENT '是否完工',
  `COMPLETE_DATE` date DEFAULT NULL COMMENT '完工时间',
  `ACTUAL_BEGIN_DATE` date DEFAULT NULL COMMENT '实际开始时间',
  `ACTUAL_END_DATE` date DEFAULT NULL COMMENT '实际结束时间',
  `WORK_DATE` int(11) DEFAULT NULL COMMENT '工时(秒)',
  `OP_PID` longtext DEFAULT NULL COMMENT '父工序',
  `OP_GID` longtext DEFAULT NULL COMMENT '工序主键',
  `OP_CODE` longtext DEFAULT NULL COMMENT '工序编码',
  `OP_FLAG` int(11) DEFAULT NULL COMMENT '工序标识（0.工序 1.工步）',
  `PLAN_OP_SEQ` int(11) DEFAULT NULL COMMENT '计划工序步骤顺序',
  `PROJECT` longtext DEFAULT NULL COMMENT '项目',
  `EQUIP_CD` longtext DEFAULT NULL COMMENT '主设备编码',
  `EOUIP_CD` longtext DEFAULT NULL COMMENT '副设备编码',
  `CAR_CODE` longtext DEFAULT NULL COMMENT '车号',
  `START_DAQ_CODE` longtext DEFAULT NULL COMMENT '开工人员code',
  `START_DAQ_NAME` longtext DEFAULT NULL COMMENT 'START_DAQ_NAME',
  `END_DAQ_CODE` longtext DEFAULT NULL COMMENT '完工人员code',
  `END_DAQ_NAME` longtext DEFAULT NULL COMMENT 'END_DAQ_NAME',
  `SINGER_CAR_CODE` longtext DEFAULT NULL COMMENT '节车号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='派工单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_UEX_VTRACK_RECORD_zxj_plan_actual`
--

DROP TABLE IF EXISTS `dm_UEX_VTRACK_RECORD_zxj_plan_actual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_UEX_VTRACK_RECORD_zxj_plan_actual` (
  `OP_CODE` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `todaydate` date DEFAULT NULL COMMENT '日期',
  `plan_fin_count` int(11) DEFAULT NULL COMMENT '计划完成数量',
  `act_fin_count` int(11) DEFAULT NULL COMMENT '实际完成数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日计划与实际完成数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_UEX_VTRACK_RECORD_zxj_result`
--

DROP TABLE IF EXISTS `dm_UEX_VTRACK_RECORD_zxj_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_UEX_VTRACK_RECORD_zxj_result` (
  `OP_CODE` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `crrc_zxj_gwbm` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `crrc_zxj_gwmc` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `crrc_zxj_cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `crrc_zxj_cx` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `crrc_zxj_cj` varchar(100) DEFAULT NULL COMMENT '车间名称',
  `date` date DEFAULT NULL COMMENT '日期',
  `dayplanfinishnum` int(11) DEFAULT NULL COMMENT '日计划完成数',
  `dayfinishnum` int(11) DEFAULT NULL COMMENT '日实际完成数',
  `cur_ontime_start_num` int(11) DEFAULT NULL COMMENT '当前时间点准时开工数量',
  `cur_ontime_fin_num` int(11) DEFAULT NULL COMMENT '当前时间点准时完工数量',
  `cur_plan_start_num` int(11) DEFAULT NULL COMMENT '当前时间点计划应开工数量',
  `cur_plan_fin_num` int(11) DEFAULT NULL COMMENT '当前时间点计划应完工数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_zxj_派工单结果表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_USM_EXCEPTION_BILL_yicl_gwgx_zxj`
--

DROP TABLE IF EXISTS `dm_USM_EXCEPTION_BILL_yicl_gwgx_zxj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_USM_EXCEPTION_BILL_yicl_gwgx_zxj` (
  `GID` longtext NOT NULL COMMENT '主键',
  `CODE` longtext DEFAULT NULL COMMENT '异常记录编码',
  `EXCEPTION_TYPE_GID` longtext DEFAULT NULL COMMENT '异常类型gid',
  `EXCEPTION_TYPE_CODE` longtext DEFAULT NULL COMMENT '异常类型编码',
  `EXCEPTION_TYPE_NAME` longtext DEFAULT NULL COMMENT '异常类型名称',
  `EXCEPTION_CONTENT_GID` longtext DEFAULT NULL COMMENT '异常内容id',
  `EXCEPTION_CONTENT_CODE` longtext DEFAULT NULL COMMENT '异常内容编码',
  `EXCEPTION_CONTENT_NAME` longtext DEFAULT NULL COMMENT '异常内容名称',
  `EXCEPTION_REMARK` longtext DEFAULT NULL COMMENT '异常描述',
  `WORKORDER_GID` longtext DEFAULT NULL COMMENT '工单id',
  `WORKORDER_CODE` longtext DEFAULT NULL COMMENT '工单编码',
  `OP_GID` longtext DEFAULT NULL COMMENT '工序id',
  `OP_CODE` longtext DEFAULT NULL COMMENT '工序编码',
  `DEVICE_CODE` longtext DEFAULT NULL COMMENT '机台编码',
  `MRL_CODE` longtext DEFAULT NULL COMMENT '物料编码',
  `LAUNCH_ID` longtext DEFAULT NULL COMMENT '发起人',
  `LAUNCH_DATE` date DEFAULT NULL COMMENT '发起时间',
  `STATE` int(11) DEFAULT NULL COMMENT '异常状态（0待响应，2待处理，4待关闭，8已关闭）',
  `ACT_RE_PROCDEF_GID` longtext DEFAULT NULL COMMENT '工作流实例id',
  `UDA1` longtext DEFAULT NULL COMMENT '备用字段1',
  `UDA2` longtext DEFAULT NULL COMMENT '备用字段2',
  `UDA3` longtext DEFAULT NULL COMMENT '备用字段3',
  `UDA4` longtext DEFAULT NULL COMMENT '备用字段4',
  `UDA5` longtext DEFAULT NULL COMMENT '异常原因',
  `REMARK` longtext DEFAULT NULL COMMENT '备注',
  `CREATE_ID` longtext NOT NULL COMMENT '创建人',
  `CREATE_DATE` date DEFAULT NULL COMMENT '创建时间',
  `MODIFY_ID` longtext DEFAULT NULL COMMENT '修改人',
  `MODIFY_DATE` date DEFAULT NULL COMMENT '修改时间',
  `IS_ACTIVE` int(11) NOT NULL COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` int(11) NOT NULL COMMENT '删除标识(0未删除1删除)',
  `DELETED` longtext DEFAULT NULL COMMENT 'DELETED',
  `DATA_ROLE` longtext NOT NULL DEFAULT '-1 ' COMMENT '工厂GID',
  `WORKCENTER_GID` longtext DEFAULT NULL COMMENT '工作中心id',
  `WORKCENTER_CODE` longtext DEFAULT NULL COMMENT '工作中心编码',
  `WORKCENTER_NAME` longtext DEFAULT NULL COMMENT '工作中心名称',
  `WORKCELL_GID` longtext DEFAULT NULL COMMENT '工位id',
  `WORKCELL_CODE` longtext DEFAULT NULL COMMENT '工位编码',
  `WORKCELL_NAME` longtext DEFAULT NULL COMMENT '工位名称',
  `DATA_ROLE1` longtext DEFAULT NULL COMMENT '工作中心 GID',
  `DATA_ROLE2` longtext DEFAULT '0' COMMENT '工作中心层级权值',
  `SOURCE_CODE` longtext DEFAULT NULL COMMENT '异常来源单据号',
  `SOURCE_TYPE` int(11) DEFAULT NULL COMMENT '异常来源   1设备任务单',
  `UDA1C` longtext DEFAULT NULL COMMENT '指定响应人',
  `UDA1N` longtext DEFAULT NULL COMMENT '备用字段1名称',
  `UDA2C` longtext DEFAULT NULL COMMENT '备用字段2编码',
  `UDA2N` longtext DEFAULT NULL COMMENT '备用字段2名称',
  `UDA3C` longtext DEFAULT NULL COMMENT '备用字段3编码',
  `UDA3N` longtext DEFAULT NULL COMMENT '备用字段3名称',
  `UDA4C` longtext DEFAULT NULL COMMENT '备用字段4编码',
  `UDA4N` longtext DEFAULT NULL COMMENT '备用字段4名称',
  `UDA5C` longtext DEFAULT NULL COMMENT '备用字段5编码',
  `UDA5N` longtext DEFAULT NULL COMMENT '备用字段5名称',
  `NCR_CODE` longtext DEFAULT NULL COMMENT 'NCR追溯号',
  `TRACK_ORDER_CODE` longtext DEFAULT NULL COMMENT '派工单号',
  `MRL_NAME` longtext DEFAULT NULL COMMENT '物料名称',
  `DEVICE_NAME` longtext DEFAULT NULL COMMENT '机台名称',
  `RESPONSE_ID` longtext DEFAULT NULL COMMENT '响应人',
  `RESPONSE_DATE` date DEFAULT NULL COMMENT '响应时间',
  `HANDL_ID` longtext DEFAULT NULL COMMENT '处理人',
  `HANDL_DATE` date DEFAULT NULL COMMENT '处理时间',
  `CLOSE_ID` longtext DEFAULT NULL COMMENT '关闭人',
  `CLOSE_DATE` date DEFAULT NULL COMMENT '关闭时间',
  `PLAN_PROCESS_DATE` longtext DEFAULT NULL COMMENT '预计处理时长',
  `IS_READ` int(11) DEFAULT NULL COMMENT '指定响应人读取状态(默认0 1已读取)',
  `TRANSFER_NUM` int(11) DEFAULT NULL COMMENT '转派次数',
  `TRANSFER_DATE` date DEFAULT NULL COMMENT '转派时间',
  `TRANSFER_ID` longtext DEFAULT NULL COMMENT '转派人',
  `IS_LET_PASS` int(11) DEFAULT NULL COMMENT '是否放行(0',
  `LET_PASS_USER` longtext DEFAULT NULL COMMENT '放行人',
  `LET_PASS_DATE` date DEFAULT NULL COMMENT '放行时间',
  `LET_PASS_REASON` longtext DEFAULT NULL COMMENT '放行原因',
  `CHK_EXCEPTION_SIGN` int(11) DEFAULT 0 COMMENT '是否为检测异常 0',
  `crrc_zxj_cj` longtext DEFAULT NULL COMMENT '车间',
  `crrc_zxj_cxbm` longtext DEFAULT NULL COMMENT '产线编码',
  `crrc_zxj_cxmc` longtext DEFAULT NULL COMMENT '产线名称',
  `crrc_zxj_gwbm` longtext DEFAULT NULL COMMENT '工位编码',
  `crrc_zxj_gwmc` longtext DEFAULT NULL COMMENT '工位名称',
  `crrc_zxj_gxbm` longtext DEFAULT NULL COMMENT '工序编码',
  `crrc_zxj_gxmc` longtext DEFAULT NULL COMMENT '工序名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm异常记录宽表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm__month_planrate_kbxm`
--

DROP TABLE IF EXISTS `dm__month_planrate_kbxm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm__month_planrate_kbxm` (
  `nianyue` varchar(100) DEFAULT NULL COMMENT '年月',
  `xmbh` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `xmmc` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `xmdh` varchar(100) DEFAULT NULL COMMENT '项目号',
  `cj` varchar(100) DEFAULT NULL COMMENT '车间',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `plan_num` int(11) DEFAULT NULL COMMENT '计划数量',
  `outline_num` int(11) DEFAULT NULL COMMENT '线下完成总数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='月度计划看板项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_aqscts`
--

DROP TABLE IF EXISTS `dm_aqscts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_aqscts` (
  `FK_CRRC_COMBOFIELD` varchar(100) DEFAULT NULL COMMENT '部门&车间',
  `latest_sj` date DEFAULT NULL COMMENT '最近隐患时间',
  `days_diff` int(11) DEFAULT NULL COMMENT '安全生产天数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='安全生产天数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_business_contact_letter_rate`
--

DROP TABLE IF EXISTS `dm_business_contact_letter_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_business_contact_letter_rate` (
  `f_year` date DEFAULT NULL COMMENT '年份',
  `f_status` varchar(100) DEFAULT NULL COMMENT '状态',
  `f_count` int(11) DEFAULT NULL COMMENT '计数',
  `f_per` float(100,0) DEFAULT NULL COMMENT '全年占比',
  `totalyear_count` int(11) DEFAULT NULL COMMENT '全年计数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='业联关闭率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_business_contact_letter_rf`
--

DROP TABLE IF EXISTS `dm_business_contact_letter_rf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_business_contact_letter_rf` (
  `f_id` varchar(100) DEFAULT NULL COMMENT '编号',
  `f_year` varchar(100) DEFAULT NULL COMMENT '申请年份',
  `f_number` varchar(100) DEFAULT NULL COMMENT '流水号',
  `title` varchar(100) DEFAULT NULL COMMENT '业联标题',
  `itemname` varchar(100) DEFAULT NULL COMMENT '业联标题全称',
  `clsname` varchar(100) DEFAULT NULL COMMENT '发起室组',
  `creatorname` varchar(100) DEFAULT NULL COMMENT '业联发起人',
  `f_status` varchar(100) DEFAULT NULL COMMENT '状态',
  `created_at` date DEFAULT NULL COMMENT '创建日期',
  `rf_clsname` varchar(100) DEFAULT NULL COMMENT '收文室组',
  `rf_status` varchar(100) DEFAULT NULL COMMENT '收文任务状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='业联关闭率详情_收文';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_buzhuangchefuliao_result`
--

DROP TABLE IF EXISTS `dm_buzhuangchefuliao_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_buzhuangchefuliao_result` (
  `mouth1` varchar(100) DEFAULT NULL COMMENT '月份',
  `costcenter` varchar(100) DEFAULT NULL COMMENT '事业部车间',
  `total_standard_cost` varchar(100) DEFAULT NULL COMMENT '本月标准花费',
  `total_num` varchar(100) DEFAULT NULL COMMENT '本月辅料数量',
  `cumulative_actual_cost` varchar(100) DEFAULT NULL COMMENT '当年累计实际花费',
  `total_actual_cost` varchar(100) DEFAULT NULL COMMENT '当月实际花费'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm不装车辅料结果表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cj_ndjhwcl`
--

DROP TABLE IF EXISTS `dm_cj_ndjhwcl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cj_ndjhwcl` (
  `crrc_zxj_cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `crrc_zxj_cx` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `date` date DEFAULT NULL COMMENT '日期',
  `annual_completed_num` int(11) DEFAULT NULL COMMENT '年度实际完成数量',
  `annual_planed_num` int(11) DEFAULT NULL COMMENT '年度计划完成数量',
  `annual_comleted_rate` double(100,0) DEFAULT NULL COMMENT '年度计划完成率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_cj_年度计划完成率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_closerate_tjg_design_change_execution_sheet`
--

DROP TABLE IF EXISTS `dm_closerate_tjg_design_change_execution_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_closerate_tjg_design_change_execution_sheet` (
  `Year_tjg` varchar(100) DEFAULT NULL COMMENT '年度',
  `total_records` int(11) DEFAULT NULL COMMENT '记录条数',
  `closed_records` int(11) DEFAULT NULL COMMENT '记录关闭条数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm设计变更关闭率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cms_census_details`
--

DROP TABLE IF EXISTS `dm_cms_census_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cms_census_details` (
  `id` varchar(64) NOT NULL COMMENT '主键id',
  `cen_plan_id` varchar(64) DEFAULT NULL COMMENT 'cms_census_plans.id',
  `carno` varchar(64) DEFAULT NULL COMMENT '车组号',
  `plate_num` varchar(64) DEFAULT NULL COMMENT '车号',
  `work_order` varchar(64) DEFAULT NULL COMMENT '工作令',
  `checker` varchar(64) DEFAULT NULL COMMENT '检查者,cms_att_staffs.emp_num',
  `check_for_problems` varchar(200) DEFAULT NULL COMMENT '发现的问题',
  `is_ok` int(11) DEFAULT NULL COMMENT '是否正常，1为正常，0为异常',
  `estimated` date DEFAULT NULL COMMENT '预计完成时间',
  `is_check` int(11) DEFAULT NULL COMMENT '是否完成普查，1为完成，0为待完成',
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `servorg_code` varchar(64) DEFAULT NULL COMMENT '服务点编号',
  `model_id` varchar(64) DEFAULT NULL COMMENT '车型id',
  `status` varchar(255) DEFAULT NULL COMMENT '状态 0 未提交 1 已提交',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='普查计划明细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cms_census_plans`
--

DROP TABLE IF EXISTS `dm_cms_census_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cms_census_plans` (
  `id` varchar(64) NOT NULL COMMENT '主键id',
  `cen_plan_code` varchar(64) DEFAULT NULL COMMENT '普查计划编号',
  `cen_item_name` varchar(255) DEFAULT NULL COMMENT '普查项目名称',
  `cen_item` varchar(64) DEFAULT NULL COMMENT '普查项目，从字典中匹配，维护',
  `execUnit` varchar(255) DEFAULT NULL COMMENT '执行单位',
  `model` varchar(50) DEFAULT NULL COMMENT '车型，从字典中匹配，维护',
  `cen_start_time` datetime DEFAULT NULL COMMENT '计划开始普查时间',
  `cen_end_time` datetime DEFAULT NULL COMMENT '计划完成普查时间',
  `spe_id` varchar(64) DEFAULT NULL COMMENT '专题id',
  `fault_id` varchar(64) DEFAULT NULL COMMENT '故障单编号',
  `cen_desc` varchar(200) DEFAULT NULL COMMENT '普查计划说明',
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `pic` varchar(500) DEFAULT NULL COMMENT '图片上传',
  `pdf_file_list` varchar(500) DEFAULT NULL COMMENT 'pdf文件',
  `pic_file_list` varchar(500) DEFAULT NULL COMMENT '原始文件名',
  `service_id` varchar(500) DEFAULT NULL COMMENT '服务点id',
  `service_name` varchar(500) DEFAULT NULL COMMENT '服务点名称',
  `model_name` varchar(255) DEFAULT NULL COMMENT '车型名称',
  `status` varchar(255) DEFAULT NULL COMMENT '状态  // 0 未提交  1已提交',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='普查计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cms_locomotive_correction_details`
--

DROP TABLE IF EXISTS `dm_cms_locomotive_correction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cms_locomotive_correction_details` (
  `id` varchar(64) NOT NULL COMMENT '主键ID',
  `carno` varchar(255) DEFAULT NULL COMMENT '车组号',
  `num_plate` varchar(50) DEFAULT NULL COMMENT '车号',
  `loco_plan_id` varchar(64) DEFAULT NULL COMMENT '段改计划id，cms_locomotive_correction_plans.id',
  `servorg_code` varchar(64) DEFAULT NULL COMMENT '服务点编号（dw_qms2_fracas_srv_servorgpsn.servorg_code）',
  `work_order` varchar(64) DEFAULT NULL COMMENT '工作令',
  `iocodetail_desc` varchar(200) DEFAULT NULL COMMENT '执行段改说明',
  `is_finish` char(1) DEFAULT NULL COMMENT '是否完成（1表示完成，0表示未完成）',
  `estimated` date DEFAULT NULL COMMENT '预计完成时间',
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `model_id` varchar(200) DEFAULT NULL COMMENT '车型id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='段改详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cms_locomotive_correction_plans`
--

DROP TABLE IF EXISTS `dm_cms_locomotive_correction_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cms_locomotive_correction_plans` (
  `id` varchar(64) NOT NULL COMMENT '主键ID',
  `corr_plan_code` varchar(64) DEFAULT NULL COMMENT '段改计划编号',
  `corr_item_name` varchar(255) DEFAULT NULL COMMENT '段改项目名称',
  `corr_item` varchar(100) DEFAULT NULL COMMENT '段改项目',
  `spe_code` varchar(64) DEFAULT NULL COMMENT '专题编号(qms2_spe_t_special.special_id)',
  `fault_id` varchar(64) DEFAULT NULL COMMENT '故障单编号',
  `model` varchar(50) DEFAULT NULL COMMENT '车型',
  `execUnit` varchar(255) DEFAULT NULL COMMENT '执行单位',
  `ioco_start_time` datetime DEFAULT NULL COMMENT '计划开始段改时间',
  `ioco_end_time` datetime DEFAULT NULL COMMENT '计划完成段改时间',
  `ioco_desc` varchar(200) DEFAULT NULL COMMENT '段改计划描述',
  `corr_status` int(11) DEFAULT NULL COMMENT '段改状态，1为完成，0为未完成',
  `status` varchar(255) DEFAULT NULL COMMENT '数据状态',
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `pic` varchar(500) DEFAULT NULL COMMENT '图片上传',
  `pdf_file_list` varchar(500) DEFAULT NULL COMMENT 'pdf文件',
  `pic_file_list` varchar(500) DEFAULT NULL COMMENT '原始文件名',
  `service_id` varchar(500) DEFAULT NULL COMMENT '服务点id',
  `service_name` varchar(500) DEFAULT NULL COMMENT '服务点名称',
  `model_name` varchar(255) DEFAULT NULL COMMENT '车型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='段改计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cms_open_item`
--

DROP TABLE IF EXISTS `dm_cms_open_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cms_open_item` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `open_item_code` varchar(50) NOT NULL COMMENT 'open_item_code',
  `project_code` varchar(50) DEFAULT NULL COMMENT 'project_code',
  `train_serial` varchar(255) DEFAULT NULL COMMENT 'train_serial',
  `produce_date` datetime DEFAULT NULL COMMENT 'produce_date',
  `review_info` varchar(500) DEFAULT NULL COMMENT 'review_info',
  `approve_info` varchar(500) DEFAULT NULL COMMENT 'approve_info',
  `quality_manage_info` varchar(500) DEFAULT NULL COMMENT '-',
  `quality_leader_info` varchar(500) DEFAULT NULL COMMENT '-',
  `urgent_manage_info` varchar(500) DEFAULT NULL COMMENT 'urgent_manage_info',
  `urgent_manager_info` varchar(500) DEFAULT NULL COMMENT '//',
  `attachment_name_list` varchar(500) DEFAULT NULL COMMENT 'attachment_name_list',
  `attachment_file_list` varchar(500) DEFAULT NULL COMMENT 'attachment_file_list',
  `attachment_pdf_list` varchar(500) DEFAULT NULL COMMENT 'pdf',
  `open_item_copy_name_list` varchar(500) DEFAULT NULL COMMENT 'open_item_copy_name_list',
  `open_item_copy_file_list` varchar(500) DEFAULT NULL COMMENT 'open_item_copy_file_list',
  `open_item_copy_pdf_list` varchar(500) DEFAULT NULL COMMENT 'pdf',
  `is_active` char(1) DEFAULT NULL COMMENT 'is_active',
  `create_name` varchar(50) DEFAULT NULL COMMENT 'create_name',
  `create_id` varchar(32) DEFAULT NULL COMMENT 'create_id',
  `create_date` datetime DEFAULT NULL COMMENT 'create_date',
  `modify_id` varchar(32) DEFAULT NULL COMMENT 'modify_id',
  `modify_date` datetime DEFAULT NULL COMMENT 'modify_date',
  `is_delete` char(1) DEFAULT NULL COMMENT 'is_delete',
  `remark` varchar(500) DEFAULT NULL COMMENT 'remark'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_cms_open_item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cms_open_item_contents`
--

DROP TABLE IF EXISTS `dm_cms_open_item_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cms_open_item_contents` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `open_item_id` varchar(50) DEFAULT NULL COMMENT 'id',
  `position` varchar(50) DEFAULT NULL COMMENT 'position',
  `plan_close_date` datetime DEFAULT NULL COMMENT 'plan_close_date',
  `duty_dept` varchar(50) DEFAULT NULL COMMENT 'duty_dept',
  `repair_dept` varchar(50) DEFAULT NULL COMMENT 'repair_dept',
  `open_item_type` varchar(20) DEFAULT NULL COMMENT 'open_item_type',
  `open_item_info` text DEFAULT NULL COMMENT 'open_item_info',
  `open_item_method` text DEFAULT NULL COMMENT 'open_item_method',
  `train_num_section` varchar(255) DEFAULT NULL COMMENT 'train_num_section',
  `is_active` char(1) DEFAULT NULL COMMENT 'is_active',
  `is_delete` char(1) DEFAULT NULL COMMENT 'is_delete',
  `create_id` varchar(32) DEFAULT NULL COMMENT 'create_id',
  `create_date` datetime DEFAULT NULL COMMENT 'create_date',
  `modify_id` varchar(32) DEFAULT NULL COMMENT 'modify_id',
  `modify_date` datetime DEFAULT NULL COMMENT 'modify_date',
  `remark` varchar(500) DEFAULT NULL COMMENT 'remark'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_cms_open_item_contents';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cms_open_item_details`
--

DROP TABLE IF EXISTS `dm_cms_open_item_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cms_open_item_details` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `open_content_id` varchar(64) DEFAULT NULL COMMENT 'cms_open_item_contents.id',
  `model` varchar(255) DEFAULT NULL COMMENT 'cms_model.pk_product',
  `train_group_code` varchar(255) DEFAULT NULL COMMENT 'train_group_code',
  `train_code` varchar(50) DEFAULT NULL COMMENT 'train_code',
  `servorg_id` varchar(64) DEFAULT NULL COMMENT 'Iddw_qms2_fracas_srv_servorgpsn.',
  `is_task` char(1) DEFAULT NULL COMMENT '10',
  `is_finish` char(1) DEFAULT NULL COMMENT '10',
  `is_active` char(1) DEFAULT NULL COMMENT 'is_active',
  `is_delete` char(1) DEFAULT NULL COMMENT 'is_delete',
  `create_id` varchar(32) DEFAULT NULL COMMENT 'create_id',
  `create_date` datetime DEFAULT NULL COMMENT 'create_date',
  `modify_id` varchar(32) DEFAULT NULL COMMENT 'modify_id',
  `modify_date` datetime DEFAULT NULL COMMENT 'modify_date',
  `remark` varchar(500) DEFAULT NULL COMMENT 'remark'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_cms_open_item_details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_colserate_tjg_business_contact_letter`
--

DROP TABLE IF EXISTS `dm_colserate_tjg_business_contact_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_colserate_tjg_business_contact_letter` (
  `year_tjg` varchar(100) DEFAULT NULL COMMENT '年度',
  `closed_records` int(11) DEFAULT NULL COMMENT '年度关闭记录数',
  `total_records` int(11) DEFAULT NULL COMMENT '年度记录总数',
  `letter_closerate` double(100,0) DEFAULT NULL COMMENT '年度业联变更关闭率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='业联变更关闭率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cq__t_org_org_l`
--

DROP TABLE IF EXISTS `dm_cq__t_org_org_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cq__t_org_org_l` (
  `FPKID` varchar(36) NOT NULL DEFAULT ' ' COMMENT 'FPKID',
  `FID` bigint(20) NOT NULL DEFAULT 0 COMMENT 'FID',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ' COMMENT 'FLOCALEID',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ' COMMENT 'FNAME',
  `FCOMMENT` varchar(255) NOT NULL DEFAULT ' ' COMMENT 'FCOMMENT',
  `FFIRMNAME` varchar(255) NOT NULL DEFAULT ' ' COMMENT 'FFIRMNAME',
  `FFIRMTYPE` varchar(255) NOT NULL DEFAULT ' ' COMMENT 'FFIRMTYPE',
  `FREPRESENTATIVE` varchar(255) NOT NULL DEFAULT ' ' COMMENT 'FREPRESENTATIVE',
  `FBIZSCOPE` varchar(255) NOT NULL DEFAULT ' ' COMMENT 'FBIZSCOPE',
  `FADDRESS` varchar(255) NOT NULL DEFAULT ' ' COMMENT 'FADDRESS',
  `FDEPOSITBANK` varchar(255) NOT NULL DEFAULT ' ' COMMENT 'FDEPOSITBANK',
  `FSIMPLENAME` varchar(100) NOT NULL DEFAULT ' ' COMMENT 'FSIMPLENAME',
  `FCONTACTADDRESS` varchar(255) NOT NULL DEFAULT ' ' COMMENT 'FCONTACTADDRESS',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_cq_t_org_org_l';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cq_tk_crrc_jyzbfx`
--

DROP TABLE IF EXISTS `dm_cq_tk_crrc_jyzbfx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cq_tk_crrc_jyzbfx` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` date DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` date DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` date DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_DATE` date DEFAULT NULL COMMENT '日期',
  `FK_CRRC_ORG` bigint(20) DEFAULT NULL COMMENT '组织',
  `FK_CRRC_YYSR` decimal(23,2) DEFAULT NULL COMMENT '营业收入',
  `FK_CRRC_YYCB` decimal(23,2) DEFAULT NULL COMMENT '营业成本',
  `FK_CRRC_LRZE` decimal(23,2) DEFAULT NULL COMMENT '利润总额',
  `FK_CRRC_GMJLR` decimal(23,2) DEFAULT NULL COMMENT '归母净利润',
  `FK_CRRC_QYLDSCL` decimal(23,2) DEFAULT NULL COMMENT '全员劳动生产率',
  `FK_CRRC_YFJSTRB` decimal(23,2) DEFAULT NULL COMMENT '研发技术投入比',
  `FK_CRRC_YYXJBL` decimal(23,2) DEFAULT NULL COMMENT '营业现金比率',
  `FK_CRRC_JZCSYL` decimal(23,2) DEFAULT NULL COMMENT '净资产收益率',
  `FK_CRRC_ZCFZL` decimal(23,2) DEFAULT NULL COMMENT '资产负债率',
  `FK_CRRC_YSZKBNLJ` decimal(23,2) DEFAULT NULL COMMENT '应收账款本年累计',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_cq_经营指标';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cq_tk_crrc_jyzbfxentry`
--

DROP TABLE IF EXISTS `dm_cq_tk_crrc_jyzbfxentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cq_tk_crrc_jyzbfxentry` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FEntryId` bigint(20) NOT NULL COMMENT 'FEntryId',
  `FSeq` int(11) NOT NULL DEFAULT 0 COMMENT 'FSeq',
  `FMODIFIERFIELD` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FMODIFYDATEFIELD` date DEFAULT NULL COMMENT '修改时间',
  `FK_CRRC_ZBMC` varchar(500) NOT NULL DEFAULT ' ' COMMENT '指标名称',
  `FK_CRRC_DW` varchar(500) NOT NULL DEFAULT ' ' COMMENT '单位',
  `FK_CRRC_SJLJZ` decimal(23,2) DEFAULT NULL COMMENT '实际累计值',
  `FK_CRRC_NDJHZ` decimal(23,2) DEFAULT NULL COMMENT '年度计划值',
  `FK_CRRC_HYBGZ` decimal(23,2) DEFAULT NULL COMMENT '行业标杆值',
  `FK_CRRC_JD` decimal(23,2) DEFAULT NULL COMMENT '进度',
  `FK_CRRC_DATE` date DEFAULT NULL COMMENT '日期',
  `FK_CRRC_ORG` bigint(20) DEFAULT NULL COMMENT '组织',
  PRIMARY KEY (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_cq_tk_crrc_jyzbfxentry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cq_tk_crrc_jyzbfxentry2`
--

DROP TABLE IF EXISTS `dm_cq_tk_crrc_jyzbfxentry2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cq_tk_crrc_jyzbfxentry2` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FEntryId` bigint(20) NOT NULL COMMENT 'FEntryId',
  `FSeq` int(11) NOT NULL DEFAULT 0 COMMENT 'FSeq',
  `FK_CRRC_MODIFIERFIELD` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FK_CRRC_MODIFYDATEFIELD` date DEFAULT NULL COMMENT '修改时间',
  `FK_CRRC_ZZ` bigint(20) DEFAULT NULL COMMENT '组织',
  `FK_CRRC_GSXZ` varchar(50) NOT NULL DEFAULT ' ' COMMENT '公司性质',
  `FK_CRRC_ENTRYYYSR` decimal(23,2) DEFAULT NULL COMMENT '营业收入',
  `FK_CRRC_YYSRJHZ` decimal(23,10) DEFAULT NULL COMMENT '营业收入计划值',
  `FK_CRRC_DATE` date DEFAULT NULL COMMENT '日期',
  `FK_CRRC_ORG` bigint(20) DEFAULT NULL COMMENT '组织',
  `FORGNAME` varchar(255) DEFAULT NULL COMMENT '组织名称',
  `FLOCALEID` varchar(10) DEFAULT NULL COMMENT 'FLOCALEID',
  PRIMARY KEY (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_cq_tk_crrc_jyzbfxentry2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cq_tk_crrc_scgl`
--

DROP TABLE IF EXISTS `dm_cq_tk_crrc_scgl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cq_tk_crrc_scgl` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` date DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` date DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` date DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_DATE` date DEFAULT NULL COMMENT '日期',
  `FK_CRRC_CGXQDDE` decimal(23,2) DEFAULT NULL COMMENT '城轨新签订单额',
  `FK_CRRC_JCXQDDE` decimal(23,2) DEFAULT NULL COMMENT '机车新签订单额',
  `FK_CRRC_HWXQDDE` decimal(23,2) DEFAULT NULL COMMENT '海外新签订单额',
  `FK_CRRC_WBXQDDE` decimal(23,2) DEFAULT NULL COMMENT '维保新签订单额',
  `FK_CRRC_CGJHXQDDE` decimal(23,2) DEFAULT NULL COMMENT '城轨计划新签订单额',
  `FK_CRRC_JCJHXQDDE` decimal(23,2) DEFAULT NULL COMMENT '机车计划新签订单额',
  `FK_CRRC_HWJHXQDDE` decimal(23,2) DEFAULT NULL COMMENT '海外计划新签订单额',
  `FK_CRRC_WBJHXQDDE` decimal(23,2) DEFAULT NULL COMMENT '维保计划新签订单额',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_cq_tk_crrc_scgl';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cx_jiepaiduixian`
--

DROP TABLE IF EXISTS `dm_cx_jiepaiduixian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cx_jiepaiduixian` (
  `cxbm` text DEFAULT NULL,
  `cxmc` text DEFAULT NULL,
  `month` text DEFAULT NULL,
  `finishnun` bigint(20) NOT NULL,
  `totalnum` bigint(20) NOT NULL,
  `rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cx_jiepaiduixian_new`
--

DROP TABLE IF EXISTS `dm_cx_jiepaiduixian_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cx_jiepaiduixian_new` (
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `month` date DEFAULT NULL COMMENT '月份',
  `finishnun` int(11) DEFAULT NULL COMMENT '节拍内完成工序次数',
  `totalnum` int(11) DEFAULT NULL COMMENT '工序总数',
  `rate` varchar(100) DEFAULT NULL COMMENT '节拍兑现率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='节拍兑现率结果表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_cx_ndjhwcl`
--

DROP TABLE IF EXISTS `dm_cx_ndjhwcl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_cx_ndjhwcl` (
  `shaixuan_date` date DEFAULT NULL COMMENT '日期',
  `crrc_zxj_cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `crrc_zxj_cx` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `annual_complete_num` int(11) DEFAULT NULL COMMENT '年度实际完成数量',
  `annual_plan_num` int(11) DEFAULT NULL COMMENT '年度计划完成数量',
  `annual_complete_rate` double(100,0) DEFAULT NULL COMMENT '年度计划完成率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_cx_年度计划完工率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_daily_inspection_item`
--

DROP TABLE IF EXISTS `dm_daily_inspection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_daily_inspection_item` (
  `serialno` varchar(100) DEFAULT NULL COMMENT '检查编号',
  `detail` varchar(100) DEFAULT NULL COMMENT '问题描述',
  `c_deptname` varchar(100) DEFAULT NULL COMMENT '创建人部门',
  `c_classname` varchar(100) DEFAULT NULL COMMENT '创建人班组',
  `r_deptname` varchar(100) DEFAULT NULL COMMENT '责任部门',
  `r_clsname` varchar(100) DEFAULT NULL COMMENT '责任班组',
  `replan` varchar(100) DEFAULT NULL COMMENT '整改措施',
  `expectdoneat` date DEFAULT NULL COMMENT '预计整改完成日期',
  `actat` date DEFAULT NULL COMMENT '整改日期',
  `ontime` int(11) DEFAULT NULL COMMENT '及时整改标记',
  `adetail` varchar(100) DEFAULT NULL COMMENT '整改详情',
  `oat` date DEFAULT NULL COMMENT '发生日期',
  `created_at` date DEFAULT NULL COMMENT '创建日期',
  `RESPONSORSNAME` varchar(100) DEFAULT NULL COMMENT '责任人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_daily_inspection_item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_day_ontime_open_rate`
--

DROP TABLE IF EXISTS `dm_day_ontime_open_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_day_ontime_open_rate` (
  `FK_CRRC_ZXJ_CJ` varchar(50) NOT NULL DEFAULT ' ' COMMENT '车间',
  `FK_CRRC_ZXJ_CXBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '产线编码',
  `FK_CRRC_ZXJ_CX` varchar(50) NOT NULL DEFAULT ' ' COMMENT '生产线',
  `FK_CRRC_ZXJ_GWBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工位名称',
  `FK_CRRC_ZXJ_GXBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工序编码',
  `FK_CRRC_ZXJ_GXMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工序名称',
  `Dayplan_open_num` int(11) DEFAULT NULL COMMENT '当日计划开工数量',
  `actual_open_num` int(11) DEFAULT NULL COMMENT '当日实际开工数量',
  `ontime_open_rate` double(100,0) DEFAULT NULL COMMENT '当日准时开工率',
  `Daydate` date DEFAULT NULL COMMENT '日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm日准时开工率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_day_ontime_pro`
--

DROP TABLE IF EXISTS `dm_day_ontime_pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_day_ontime_pro` (
  `CJMC` longtext DEFAULT NULL COMMENT '车间名称',
  `CXMC` longtext DEFAULT NULL COMMENT '产线名称',
  `CXBM` longtext DEFAULT NULL COMMENT '产线编码',
  `GWMC` longtext DEFAULT NULL COMMENT '工位名称',
  `GWBM` longtext DEFAULT NULL COMMENT '工位编码',
  `GXBM` longtext DEFAULT NULL COMMENT '工序编码',
  `PLAN_START_DARE` varchar(100) DEFAULT NULL,
  `DAY_ONTIME_START_NUM` varchar(100) DEFAULT NULL,
  `DAY_PLAN_START_NUM` varchar(100) DEFAULT NULL,
  `PLAN_FINISH_DARE` varchar(100) DEFAULT NULL,
  `DAY_ONTIME_FINISH_NUM` varchar(100) DEFAULT NULL,
  `DAY_PLAN_FINISH_NUM` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日准时开完工pro';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_day_plan_fin_num`
--

DROP TABLE IF EXISTS `dm_day_plan_fin_num`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_day_plan_fin_num` (
  `rq` date DEFAULT NULL COMMENT '日期',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `gwbm` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `gwmc` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `xm` varchar(100) DEFAULT NULL COMMENT '项目',
  `wgs` int(11) DEFAULT NULL COMMENT '完工数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日计划_完工数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_day_plan_fin_rate`
--

DROP TABLE IF EXISTS `dm_day_plan_fin_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_day_plan_fin_rate` (
  `FK_CRRC_ZXJ_CJ` varchar(50) NOT NULL DEFAULT ' ' COMMENT '车间',
  `FK_CRRC_ZXJ_CXBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '产线编码',
  `FK_CRRC_ZXJ_CX` varchar(50) NOT NULL DEFAULT ' ' COMMENT '生产线',
  `FK_CRRC_ZXJ_GWBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工位名称',
  `OP_CODE` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工序编码',
  `FK_CRRC_ZXJ_GXMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工序名称',
  `todaydate` date DEFAULT NULL COMMENT '日期',
  `plan_fin_count` int(11) DEFAULT NULL COMMENT '计划完成数量',
  `act_fin_count` int(11) DEFAULT NULL COMMENT '实际完成数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm日计划完成率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_day_plan_rate`
--

DROP TABLE IF EXISTS `dm_day_plan_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_day_plan_rate` (
  `rq` date DEFAULT NULL COMMENT '日期',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `gwbm` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `xm` varchar(100) DEFAULT NULL COMMENT '项目',
  `jh_num` int(11) DEFAULT NULL COMMENT '计划总数',
  `jhwg` int(11) DEFAULT NULL COMMENT '计划内完工数',
  `plan_rate` double(100,0) DEFAULT NULL COMMENT '完成率',
  `gwmc` varchar(100) DEFAULT NULL COMMENT '工位名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日计划完成率_计划内完工数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_department_processing_rate`
--

DROP TABLE IF EXISTS `dm_department_processing_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_department_processing_rate` (
  `deptname` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `time1` varchar(100) DEFAULT NULL COMMENT '月份',
  `total_planned` int(11) DEFAULT NULL COMMENT '计划处理数量',
  `incomplete_count` int(11) DEFAULT NULL COMMENT '未完成处理数量',
  `processing_rate` float(100,0) DEFAULT NULL COMMENT '处理及时率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门开口项处理及时率表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_dept_average_close_duration`
--

DROP TABLE IF EXISTS `dm_dept_average_close_duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_dept_average_close_duration` (
  `month1` varchar(100) DEFAULT NULL COMMENT '统计月份',
  `department` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `average` float(100,0) DEFAULT NULL COMMENT '部门平均关闭时长'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='质量异常平均关闭时长-部门/车间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_design_change`
--

DROP TABLE IF EXISTS `dm_design_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_design_change` (
  `designchangeno` varchar(100) DEFAULT NULL COMMENT '设计变更编号',
  `projectname` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `dc_title` varchar(100) DEFAULT NULL COMMENT '设计变更名称',
  `dc_status` varchar(100) DEFAULT NULL COMMENT '变更单分发状态',
  `dc_created_at` date DEFAULT NULL COMMENT '变更单导入时间',
  `process_clsname` varchar(100) DEFAULT NULL COMMENT '转发工艺组',
  `dcd_status` varchar(200) DEFAULT NULL COMMENT '变更单执行状态',
  `dcd_executor` varchar(100) DEFAULT NULL COMMENT '工号',
  `dcd_executorname` varchar(100) DEFAULT NULL COMMENT '工艺员',
  `dces_title` varchar(100) DEFAULT NULL COMMENT '执行单标题',
  `dces_status` varchar(100) DEFAULT NULL COMMENT '执行单状态',
  `rf_clsname` varchar(100) DEFAULT NULL COMMENT '收文班组',
  `rf_status` varchar(100) DEFAULT NULL COMMENT '收文状态',
  `rf_created_at` date DEFAULT NULL COMMENT '收文创建时间',
  `dcesia_clsname` varchar(100) DEFAULT NULL COMMENT '任务执行班组',
  `dcesia_mname` varchar(100) DEFAULT NULL COMMENT '部件名称',
  `dcesia_type` varchar(100) DEFAULT NULL COMMENT '任务类型',
  `dcesia_status` varchar(100) DEFAULT NULL COMMENT '任务状态',
  `dcesia_created_at` date DEFAULT NULL COMMENT '任务创建时间',
  `full_status` varchar(100) DEFAULT NULL COMMENT '设计变更整单状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_design_change';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_design_change_cq`
--

DROP TABLE IF EXISTS `dm_design_change_cq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_design_change_cq` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FEntryId` bigint(20) NOT NULL COMMENT 'FEntryId',
  `FSeq` bigint(20) NOT NULL DEFAULT 0 COMMENT 'FSeq',
  `FK_CRRC_BLMATERIALNUM` varchar(150) DEFAULT NULL COMMENT '所属零部件编号',
  `FK_CRRC_PVERSION` varchar(50) NOT NULL DEFAULT ' ' COMMENT '父版本',
  `FK_CRRC_BLMATERIALNAME` varchar(250) DEFAULT NULL COMMENT '所属零部件名称',
  `FK_CRRC_MATERIALNUM` varchar(150) DEFAULT NULL COMMENT '零部件编码',
  `FK_CRRC_SVERSION` varchar(50) NOT NULL DEFAULT ' ' COMMENT '子版本',
  `FK_CRRC_MATERIALNAME` varchar(250) DEFAULT NULL COMMENT '零部件名称',
  `FK_CRRC_ASSSEQ` varchar(50) NOT NULL DEFAULT ' ' COMMENT '装配序号',
  `FK_CRRC_QUOTA` varchar(50) NOT NULL DEFAULT ' ' COMMENT '原定额',
  `FK_CRRC_NEWQUOTA` varchar(50) NOT NULL DEFAULT ' ' COMMENT '新定额',
  `FK_CRRC_UNIT` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单位',
  `FK_CRRC_OLDCRAFTFLOW` varchar(50) NOT NULL DEFAULT ' ' COMMENT '旧工艺流程',
  `FK_CRRC_NEWCRAFTFLOW` varchar(50) NOT NULL DEFAULT ' ' COMMENT '新工艺流程',
  `FK_CRRC_DESCRIPTION` varchar(4000) NOT NULL DEFAULT ' ' COMMENT '更改描述',
  `FK_CRRC_STARTPROJECT` varchar(50) NOT NULL DEFAULT ' ' COMMENT '开始项号',
  `FK_CRRC_ENDPROJECT` varchar(50) NOT NULL DEFAULT ' ' COMMENT '结束项号',
  `FK_CRRC_CHANGECAUSE` varchar(50) NOT NULL DEFAULT ' ' COMMENT '变更原因',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '变更单号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` varchar(50) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` varchar(50) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` varchar(50) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` date DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` date DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` date DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_PROJECTNAME` varchar(255) NOT NULL DEFAULT ' ' COMMENT '项目名称',
  `FK_CRRC_PROJECT` varchar(50) NOT NULL DEFAULT ' ' COMMENT '项目号',
  `FK_CRRC_CHGBILLNAME` varchar(255) NOT NULL DEFAULT ' ' COMMENT '变更单名称',
  `FK_CRRC_DESIGNBILLNUM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '关联设计变更单编码',
  `FK_CRRC_DESIGNBILLNAME` varchar(150) NOT NULL DEFAULT ' ' COMMENT '关联设计变更单名称',
  `FK_CRRC_TOWNING_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '发起人',
  `FK_CRRC_DOWING_USER` varchar(50) NOT NULL DEFAULT ' ' COMMENT '设计变更用户',
  `FK_CRRC_DATE_RELEASED` date DEFAULT NULL COMMENT '发起时间',
  `FK_CRRC_SENDUNIT` varchar(500) NOT NULL DEFAULT ' ' COMMENT '发送单位',
  `FK_CRRC_COPYSENDUNIT` varchar(500) NOT NULL DEFAULT ' ' COMMENT '抄送单位',
  `FK_CRRC_DDATE_RELEASED` date DEFAULT NULL COMMENT '设计变更发起时间',
  `FK_CRRC_JOBDESC` varchar(255) NOT NULL DEFAULT ' ' COMMENT '描述',
  `FK_CRRC_OBSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '任务状态',
  `FK_CRRC_CLOSETEXT` varchar(255) NOT NULL DEFAULT ' ' COMMENT '变更执行单关闭内容',
  `FK_CRRC_SENDOUTDEPT` varchar(255) NOT NULL DEFAULT ' ' COMMENT '发出单位',
  `FK_CRRC_ISCONVERT` varchar(1) NOT NULL DEFAULT '0' COMMENT '是否转换工艺流程',
  `FK_CRRC_ISEXETASK` varchar(1) NOT NULL DEFAULT '0' COMMENT '是否执行后台任务',
  `FK_CRRC_SENDUSER` varchar(50) DEFAULT NULL COMMENT '分派用户',
  `fk_crrc_textfield` varchar(50) NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_textfield',
  `FK_CRRC_OPERATION` varchar(50) NOT NULL DEFAULT ' ' COMMENT '操作',
  PRIMARY KEY (`FEntryId`),
  KEY `index_163a` (`FK_CRRC_DATE_RELEASED`),
  KEY `index_7893` (`FId`),
  KEY `index_1996` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_design_change-cq';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_design_change_rate`
--

DROP TABLE IF EXISTS `dm_design_change_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_design_change_rate` (
  `f_year` date DEFAULT NULL COMMENT '年份',
  `dc_status` varchar(100) DEFAULT NULL COMMENT '状态',
  `counts` int(11) DEFAULT NULL COMMENT '计数',
  `rate` float(100,0) DEFAULT NULL COMMENT '关闭率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_design_change_rate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_detail_tjg_business_contact_letter`
--

DROP TABLE IF EXISTS `dm_detail_tjg_business_contact_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_detail_tjg_business_contact_letter` (
  `creatorname` longtext DEFAULT NULL COMMENT '创建人姓名',
  `clsname` longtext DEFAULT NULL COMMENT '创建人班组名称',
  `title` longtext DEFAULT NULL COMMENT '主题',
  `status1` longtext DEFAULT NULL COMMENT 'status1',
  `created_at` date DEFAULT NULL COMMENT '创建日期',
  `itemname` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `according_list` varchar(100) DEFAULT NULL COMMENT '关联单',
  `type1name` varchar(100) DEFAULT NULL COMMENT '类别',
  `number1` int(11) DEFAULT NULL COMMENT '序号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dwd业联变更关闭率详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_detail_tjg_design_change_execution_sheet`
--

DROP TABLE IF EXISTS `dm_detail_tjg_design_change_execution_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_detail_tjg_design_change_execution_sheet` (
  `creatorname` longtext DEFAULT NULL COMMENT '创建人姓名',
  `clsname` longtext DEFAULT NULL COMMENT '创建人班组名称',
  `title` longtext DEFAULT NULL COMMENT '主题',
  `sendclasses` longtext DEFAULT NULL COMMENT '发放班组',
  `ccdepts` longtext DEFAULT NULL COMMENT '抄送部门',
  `status1` longtext DEFAULT NULL COMMENT 'status1',
  `created_at` longtext DEFAULT NULL COMMENT '创建日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm设计变更关闭率详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_dwd_jiepaiduixianlvgxgw`
--

DROP TABLE IF EXISTS `dm_dwd_jiepaiduixianlvgxgw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_dwd_jiepaiduixianlvgxgw` (
  `GID` longtext NOT NULL COMMENT '主键',
  `DISPATCH_CODE` longtext DEFAULT NULL COMMENT '派工单编号',
  `PRODU_UID` longtext DEFAULT NULL COMMENT '产品号',
  `PRODU_NAME` longtext DEFAULT NULL COMMENT '产品名称',
  `LOT_CODE` longtext DEFAULT NULL COMMENT '批次号',
  `MRL_CODE` longtext DEFAULT NULL COMMENT '车型/物料编码',
  `ORDER_CODE` longtext DEFAULT NULL COMMENT '订单号',
  `ORDER_TYPE` int(11) DEFAULT 0 COMMENT '订单类型',
  `WORK_ORDER_ID` longtext DEFAULT NULL COMMENT '计划工单编码',
  `WORK_ORDER_GID` longtext DEFAULT NULL COMMENT '计划工单主键',
  `DIS_CODE_STATE` int(11) DEFAULT NULL COMMENT '派工单状态(0.待开工 1.开工 2.暂停 3.完工 5.挂起)',
  `WORK_CENTER_GID` longtext DEFAULT NULL COMMENT '工作中心',
  `ORDER_STATE` int(11) DEFAULT NULL COMMENT '订单状态',
  `OPERATE_STATE` int(11) DEFAULT NULL COMMENT '操作状态',
  `WORK_ORDER_STATE` int(11) DEFAULT NULL COMMENT '工单状态',
  `PLANNED_START_TIME` date DEFAULT NULL COMMENT '计划开始时间',
  `PLANNED_FINISH_TIME` date DEFAULT NULL COMMENT '计划结束时间',
  `ISCOMPLETE` longtext DEFAULT NULL COMMENT '是否完工',
  `COMPLETE_DATE` date DEFAULT NULL COMMENT '完工时间',
  `ACTUAL_BEGIN_DATE` date DEFAULT NULL COMMENT '实际开始时间',
  `ACTUAL_END_DATE` date DEFAULT NULL COMMENT '实际结束时间',
  `WORK_DATE` int(11) DEFAULT NULL COMMENT '工时(秒)',
  `OP_PID` longtext DEFAULT NULL COMMENT '父工序',
  `OP_GID` longtext DEFAULT NULL COMMENT '工序主键',
  `OP_CODE` longtext DEFAULT NULL COMMENT '工序编码',
  `OP_FLAG` int(11) DEFAULT NULL COMMENT '工序标识（0.工序 1.工步）',
  `PLAN_OP_SEQ` int(11) DEFAULT NULL COMMENT '计划工序步骤顺序',
  `PROJECT` longtext DEFAULT NULL COMMENT '项目',
  `EQUIP_CD` longtext DEFAULT NULL COMMENT '主设备编码',
  `EOUIP_CD` longtext DEFAULT NULL COMMENT '副设备编码',
  `CAR_CODE` longtext DEFAULT NULL COMMENT '车号',
  `START_DAQ_CODE` longtext DEFAULT NULL COMMENT '开工人员code',
  `START_DAQ_NAME` longtext DEFAULT NULL COMMENT 'START_DAQ_NAME',
  `END_DAQ_CODE` longtext DEFAULT NULL COMMENT '完工人员code',
  `END_DAQ_NAME` longtext DEFAULT NULL COMMENT 'END_DAQ_NAME',
  `SINGER_CAR_CODE` longtext DEFAULT NULL COMMENT '节车号',
  `crrc_zxj_cxbm` longtext DEFAULT NULL COMMENT '产线编码',
  `crrc_zxj_cx` longtext DEFAULT NULL COMMENT '产线名称',
  `crrc_zxj_gwbm` longtext DEFAULT NULL COMMENT '工位编码',
  `crrc_zxj_gwmc` longtext DEFAULT NULL COMMENT '工位名称',
  `crrc_zxj_gxmc` longtext DEFAULT NULL COMMENT '工序名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_dwd_jiepaiduixianlvgxgwd';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_first_piece_inspection_report_open_item`
--

DROP TABLE IF EXISTS `dm_first_piece_inspection_report_open_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_first_piece_inspection_report_open_item` (
  `id` int(10) unsigned NOT NULL COMMENT 'id',
  `pId` int(10) unsigned NOT NULL COMMENT '首检报告ID',
  `i` int(10) unsigned NOT NULL COMMENT '排序号',
  `content` varchar(1000) NOT NULL COMMENT '不合格内容',
  `action` varchar(1000) DEFAULT NULL COMMENT '整改措施',
  `action_dept` varchar(255) DEFAULT NULL COMMENT '整改单位',
  `etc` datetime DEFAULT NULL COMMENT '预计关闭日期',
  `result` varchar(1000) DEFAULT NULL COMMENT '整改结果',
  `verifier` varchar(45) DEFAULT NULL COMMENT '确认人',
  `verify_date` datetime DEFAULT NULL COMMENT '确认日期',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'created_at',
  `updated_at` datetime DEFAULT current_timestamp() COMMENT 'updated_at',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='首检报告的开口项内容项点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_gjsbqdrq`
--

DROP TABLE IF EXISTS `dm_gjsbqdrq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_gjsbqdrq` (
  `iOrd` int(11) DEFAULT NULL COMMENT '序号',
  `SBBM` longtext DEFAULT NULL COMMENT '设备编码',
  `SBMC` longtext DEFAULT NULL COMMENT '设备名称',
  `cj` longtext DEFAULT NULL COMMENT '车间',
  `CXBM` longtext DEFAULT NULL COMMENT '产线编码',
  `CX` longtext DEFAULT NULL COMMENT '产线',
  `GWBM` longtext DEFAULT NULL COMMENT '工位编码',
  `GW` longtext DEFAULT NULL COMMENT '工位',
  `rqxl` int(11) DEFAULT NULL COMMENT '日期序列',
  `rq` date DEFAULT NULL COMMENT '日期',
  `BMDM` longtext DEFAULT NULL COMMENT '编码代码',
  `djsj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '点检时间',
  `djdh` varchar(100) DEFAULT NULL COMMENT '点检单号',
  `bysj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '保养时间',
  `bydh` varchar(100) DEFAULT NULL COMMENT '保养单号',
  `bxsj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '报修时间',
  `bxdh` varchar(100) DEFAULT NULL COMMENT '报修单号',
  `wxkssj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '维修开始时间',
  `wxjssj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '维修结束时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm关键设备清单带日期';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_gongyichacuocishu`
--

DROP TABLE IF EXISTS `dm_gongyichacuocishu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_gongyichacuocishu` (
  `cjmc` varchar(100) DEFAULT NULL COMMENT '车间名称',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `gwbm` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `gwmc` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `gyccnum` int(11) DEFAULT NULL COMMENT '工艺差错次数',
  `date` date DEFAULT NULL COMMENT '日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_工艺差错次数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_gongyijilvjianchazhenggaiwanchenglv25_detail`
--

DROP TABLE IF EXISTS `dm_gongyijilvjianchazhenggaiwanchenglv25_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_gongyijilvjianchazhenggaiwanchenglv25_detail` (
  `id` longtext DEFAULT NULL COMMENT 'id',
  `status1` longtext DEFAULT NULL COMMENT 'status1',
  `cdept` longtext DEFAULT NULL COMMENT 'cDept',
  `ccls` longtext DEFAULT NULL COMMENT 'cCls',
  `creator` longtext DEFAULT NULL COMMENT 'creator',
  `creatorname` longtext DEFAULT NULL COMMENT 'creatorName',
  `qualified` longtext DEFAULT NULL COMMENT 'qualified',
  `hdept` longtext DEFAULT NULL COMMENT 'hDept',
  `hcls` longtext DEFAULT NULL COMMENT 'hCls',
  `handler` longtext DEFAULT NULL COMMENT 'handler',
  `handlername` longtext DEFAULT NULL COMMENT 'handlerName',
  `handleat` longtext DEFAULT NULL COMMENT 'handleAt',
  `handlemsg` longtext DEFAULT NULL COMMENT 'handleMsg',
  `serialtag` longtext DEFAULT NULL COMMENT '系列号',
  `num` longtext DEFAULT NULL COMMENT 'num',
  `serialno` longtext DEFAULT NULL COMMENT 'serialNo',
  `sourceid` longtext DEFAULT NULL COMMENT 'sourceId',
  `libid` longtext DEFAULT NULL COMMENT 'libId',
  `oat` longtext DEFAULT NULL COMMENT 'oAt',
  `odept` longtext DEFAULT NULL COMMENT 'oDept',
  `ocls` longtext DEFAULT NULL COMMENT 'oCls',
  `detail` longtext DEFAULT NULL COMMENT 'detail',
  `cimgs` longtext DEFAULT NULL COMMENT 'cImgs',
  `rdept` longtext DEFAULT NULL COMMENT 'rDept',
  `rcls` longtext DEFAULT NULL COMMENT 'rCls',
  `plan` longtext DEFAULT NULL COMMENT 'plan',
  `expectdoneat` longtext DEFAULT NULL COMMENT 'expectDoneAt',
  `checker` longtext DEFAULT NULL COMMENT 'checker',
  `checkername` longtext DEFAULT NULL COMMENT 'checkerName',
  `checkat` longtext DEFAULT NULL COMMENT 'checkAt',
  `checkmsg` longtext DEFAULT NULL COMMENT 'checkMsg',
  `receiver` longtext DEFAULT NULL COMMENT 'receiver',
  `receivername` longtext DEFAULT NULL COMMENT 'receiverName',
  `receiveat` longtext DEFAULT NULL COMMENT 'receiveAt',
  `responsors` longtext DEFAULT NULL COMMENT 'responsors',
  `responsorsname` longtext DEFAULT NULL COMMENT 'responsorsName',
  `actor` longtext DEFAULT NULL COMMENT 'actor',
  `actorname` longtext DEFAULT NULL COMMENT 'actorName',
  `adetail` longtext DEFAULT NULL COMMENT 'aDetail',
  `actreachat` longtext DEFAULT NULL COMMENT 'actReachAt',
  `actfillat` longtext DEFAULT NULL COMMENT 'actFillAt',
  `actat` longtext DEFAULT NULL COMMENT 'actAt',
  `actdone` longtext DEFAULT NULL COMMENT 'actDone',
  `aimgs` longtext DEFAULT NULL COMMENT 'aImgs',
  `actconfirmer` longtext DEFAULT NULL COMMENT 'actConfirmer',
  `actconfirmmsg` longtext DEFAULT NULL COMMENT 'actConfirmMsg',
  `actconfirmername` longtext DEFAULT NULL COMMENT 'actConfirmerName',
  `actconfirmat` longtext DEFAULT NULL COMMENT 'actConfirmAt',
  `confirmer` longtext DEFAULT NULL COMMENT 'confirmer',
  `confirmername` longtext DEFAULT NULL COMMENT 'confirmerName',
  `confirmat` longtext DEFAULT NULL COMMENT 'confirmAt',
  `confirmmsg` longtext DEFAULT NULL COMMENT 'confirmMsg',
  `fine` longtext DEFAULT NULL COMMENT 'fine',
  `auto` longtext DEFAULT NULL COMMENT 'auto',
  `autoat` longtext DEFAULT NULL COMMENT 'autoAt',
  `fined` longtext DEFAULT NULL COMMENT 'fined',
  `finedname` longtext DEFAULT NULL COMMENT 'finedName',
  `auditor` longtext DEFAULT NULL COMMENT 'auditor',
  `auditorname` longtext DEFAULT NULL COMMENT 'auditorName',
  `auditat` longtext DEFAULT NULL COMMENT 'auditAt',
  `firstauditat` longtext DEFAULT NULL COMMENT 'firstAuditAt',
  `auditmsg` longtext DEFAULT NULL COMMENT 'auditMsg',
  `olog` longtext DEFAULT NULL COMMENT 'oLog',
  `created_at` longtext DEFAULT NULL COMMENT '创建日期',
  `updated_at` longtext DEFAULT NULL COMMENT '最后更新日期',
  `deptname` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `classname` varchar(100) DEFAULT NULL COMMENT '班组名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_工艺纪律检查整改完成率25详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_gongyijilvjianchazhenggaiwanchenglv_bm`
--

DROP TABLE IF EXISTS `dm_gongyijilvjianchazhenggaiwanchenglv_bm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_gongyijilvjianchazhenggaiwanchenglv_bm` (
  `bmmc` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `date` varchar(100) DEFAULT NULL,
  `ontimenum` int(11) DEFAULT NULL COMMENT '统计周期内按时整改完成数量',
  `totalnum` varchar(100) DEFAULT NULL COMMENT '总数量',
  `rate` varchar(100) DEFAULT NULL COMMENT '工艺纪律检查整改完成率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_工艺纪律检查整改完成率_bm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_gongyijilvjianchazhenggaiwanchenglv_bz`
--

DROP TABLE IF EXISTS `dm_gongyijilvjianchazhenggaiwanchenglv_bz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_gongyijilvjianchazhenggaiwanchenglv_bz` (
  `cjmc` varchar(100) DEFAULT NULL COMMENT '车间名称',
  `bzmc` varchar(100) DEFAULT NULL COMMENT '班组名称',
  `date` varchar(100) DEFAULT NULL,
  `ontimenum` int(11) DEFAULT NULL COMMENT '统计周期内按时整改完成数量',
  `totalnum` int(11) DEFAULT NULL COMMENT '总数量',
  `rate` varchar(100) DEFAULT NULL COMMENT '工艺纪律检查整改完成率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_工艺纪律检查整改完成率_bz';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_gzdjhgl`
--

DROP TABLE IF EXISTS `dm_gzdjhgl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_gzdjhgl` (
  `sbmc` longtext DEFAULT NULL COMMENT '设备名称',
  `sbbh` longtext DEFAULT NULL COMMENT '设备编号',
  `djjg` longtext DEFAULT NULL COMMENT '点检结果',
  `djr` longtext DEFAULT NULL COMMENT '点检人',
  `djkssj` date DEFAULT NULL COMMENT '点检开始时间',
  `djjssj` date DEFAULT NULL COMMENT '点检结束时间',
  `sbdl` longtext DEFAULT NULL COMMENT '设备大类',
  `sscj` longtext DEFAULT NULL COMMENT '所属车间',
  `sscx` longtext DEFAULT NULL COMMENT '所属产线',
  `ssgw` longtext DEFAULT NULL COMMENT '所属工位'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_工装点检合格率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_hgtj`
--

DROP TABLE IF EXISTS `dm_hgtj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_hgtj` (
  `FK_CRRC_SBDL` varchar(100) DEFAULT NULL COMMENT '设备大类',
  `FK_CRRC_DJHGSL` int(11) DEFAULT NULL COMMENT '点检合格数量',
  `FK_CRRC_YDJSL` int(11) DEFAULT NULL COMMENT '已点检数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='合格统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_issue_close_duration`
--

DROP TABLE IF EXISTS `dm_issue_close_duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_issue_close_duration` (
  `num` varchar(100) DEFAULT NULL COMMENT '编号',
  `created_at` varchar(100) DEFAULT NULL COMMENT '创建时刻',
  `creator` varchar(100) DEFAULT NULL COMMENT '创建者',
  `deptname` varchar(100) DEFAULT NULL COMMENT '发生部门名称',
  `line` varchar(100) DEFAULT NULL COMMENT '发生生产线',
  `station` varchar(100) DEFAULT NULL COMMENT '发生工位',
  `product` varchar(100) DEFAULT NULL COMMENT '产品名',
  `rclsname` varchar(100) DEFAULT NULL COMMENT '责任班组',
  `rdept` varchar(100) DEFAULT NULL COMMENT '责任部门',
  `responsor` varchar(100) DEFAULT NULL COMMENT '负责人',
  `responsetime` varchar(100) DEFAULT NULL COMMENT '响应时刻',
  `dutytpe` varchar(100) DEFAULT NULL COMMENT '责任类型',
  `aclsname` varchar(100) DEFAULT NULL COMMENT '处置班组',
  `adept` varchar(100) DEFAULT NULL COMMENT '处置部门',
  `actor` varchar(100) DEFAULT NULL COMMENT '处理人',
  `acttime` varchar(100) DEFAULT NULL COMMENT '处理时刻',
  `feedbackername` varchar(100) DEFAULT NULL COMMENT '反馈人',
  `feedbacktime` varchar(100) DEFAULT NULL COMMENT '反馈时刻',
  `project` varchar(100) DEFAULT NULL COMMENT '项目名',
  `close_duration` float(100,0) DEFAULT NULL COMMENT '关闭时长',
  `issue` varchar(100) DEFAULT NULL COMMENT '问题类型',
  `QDETAIL` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='质量异常关闭时长详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_jhkbsj`
--

DROP TABLE IF EXISTS `dm_jhkbsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_jhkbsj` (
  `jhnf` varchar(100) DEFAULT NULL COMMENT '计划年份',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `xm` varchar(100) DEFAULT NULL COMMENT '项目',
  `jhzs` int(11) DEFAULT NULL COMMENT '计划总数',
  `xxwc` int(11) DEFAULT NULL COMMENT '线下完成数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='DM_年计划看板数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_kbxx_xm`
--

DROP TABLE IF EXISTS `dm_kbxx_xm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_kbxx_xm` (
  `cj` varchar(100) DEFAULT NULL COMMENT '车间',
  `nianyue` varchar(100) DEFAULT NULL COMMENT '年月',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `xmbh` varchar(100) DEFAULT NULL COMMENT '项目编号',
  `xmmc` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `jhsl` int(11) DEFAULT NULL COMMENT '计划数量',
  `xxsl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_看板信息带项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_line_average_close_duration`
--

DROP TABLE IF EXISTS `dm_line_average_close_duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_line_average_close_duration` (
  `month1` varchar(100) DEFAULT NULL COMMENT '统计月份',
  `department` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `production_line` varchar(100) DEFAULT NULL COMMENT '生产线名称',
  `average` float(100,0) DEFAULT NULL COMMENT '生产线平均关闭时长'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='质量异常平均关闭时长-产线';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_month_plan_rate`
--

DROP TABLE IF EXISTS `dm_month_plan_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_month_plan_rate` (
  `nianyue` varchar(100) DEFAULT NULL COMMENT '年月',
  `cj` varchar(100) DEFAULT NULL COMMENT '车间',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `plan_num` int(11) DEFAULT NULL COMMENT '计划总数',
  `online_num` int(11) DEFAULT NULL COMMENT '线上完成总数',
  `outline_num` int(11) DEFAULT NULL COMMENT '线下完成总数',
  `online_num_true` int(11) DEFAULT NULL COMMENT '线上实际完成总数',
  `xm` varchar(100) DEFAULT NULL COMMENT '项目号',
  `xmmc` varchar(100) DEFAULT NULL COMMENT '项目名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm月度计划完成率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_month_planrate_XM`
--

DROP TABLE IF EXISTS `dm_month_planrate_XM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_month_planrate_XM` (
  `year` varchar(100) DEFAULT NULL COMMENT '年月',
  `xmbh` varchar(100) DEFAULT NULL COMMENT '项目号',
  `xmmc` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `xmdh` varchar(100) DEFAULT NULL COMMENT '项目代号',
  `cj` varchar(100) DEFAULT NULL COMMENT '车间',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `plan_num` int(11) DEFAULT NULL COMMENT '计划总数',
  `outline_num` int(11) DEFAULT NULL COMMENT '线下数量',
  `online_num` int(11) DEFAULT NULL COMMENT '线上数量',
  `online_num_true` int(11) DEFAULT NULL COMMENT '线上真实数量',
  `year_pgd` varchar(100) DEFAULT NULL COMMENT '派工单年月',
  `xmbh_pgd` varchar(100) DEFAULT NULL COMMENT '派工单项目号',
  `xmmc_pgd` varchar(100) DEFAULT NULL COMMENT '派工单项目名称',
  `xmdh_pgd` varchar(100) DEFAULT NULL COMMENT '派工单项目代号',
  `cj_pgd` varchar(100) DEFAULT NULL COMMENT '派工单车间',
  `cxbm_pgd` varchar(100) DEFAULT NULL COMMENT '派工单产线编码',
  `cxmc_pgd` varchar(100) DEFAULT NULL COMMENT '派工单产线名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_月度计划项目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_mouthplanoverate`
--

DROP TABLE IF EXISTS `dm_mouthplanoverate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_mouthplanoverate` (
  `CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `FENMUN` int(11) DEFAULT NULL COMMENT '产线分母',
  `YEARMOUTHOFPLAN` varchar(100) DEFAULT NULL,
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT '车间',
  `NUM2` int(11) DEFAULT NULL COMMENT 'NUM2',
  `NUM1` int(11) DEFAULT NULL COMMENT 'NUM1',
  `CRRC_ZXJ_GWBM` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `MOUTHRATE` double(100,0) DEFAULT NULL COMMENT '月度完成率',
  `TOTAL` varchar(100) DEFAULT NULL COMMENT '分子'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_月度计划完成率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_next_retry_rate_class`
--

DROP TABLE IF EXISTS `dm_next_retry_rate_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_next_retry_rate_class` (
  `month1` varchar(100) DEFAULT NULL COMMENT '月份',
  `responsibility_dept` varchar(100) DEFAULT NULL COMMENT '责任部门',
  `responsibility_class` varchar(100) DEFAULT NULL COMMENT '责任班组',
  `workshop` varchar(100) DEFAULT NULL COMMENT '车间',
  `total_count` int(11) DEFAULT NULL COMMENT '总数量',
  `timely_closed_count` int(11) DEFAULT NULL COMMENT '及时关闭数量',
  `timely_closure_rate` float(100,0) DEFAULT NULL COMMENT '及时关闭率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='下工序回修及时关闭率_班组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_next_retry_rate_workshop`
--

DROP TABLE IF EXISTS `dm_next_retry_rate_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_next_retry_rate_workshop` (
  `month1` varchar(100) DEFAULT NULL COMMENT '月份',
  `workshop` varchar(100) DEFAULT NULL COMMENT '车间',
  `total_count` int(11) DEFAULT NULL COMMENT '总数量',
  `timely_closed_count` int(11) DEFAULT NULL COMMENT '及时关闭数量',
  `timely_closure_rate` float(100,0) DEFAULT NULL COMMENT '及时关闭率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='下工序回修活及时关闭率-车间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_niandujhuawanchlv1226_cx`
--

DROP TABLE IF EXISTS `dm_niandujhuawanchlv1226_cx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_niandujhuawanchlv1226_cx` (
  `NIAN` varchar(100) DEFAULT NULL COMMENT '年份',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `SJWC` int(11) DEFAULT NULL,
  `jhzoshu` int(11) DEFAULT NULL COMMENT '计划完成数量',
  `pgdwc` int(11) DEFAULT NULL COMMENT '派工单完成数',
  `XXWC` int(11) DEFAULT NULL COMMENT '线下完成数',
  `pgdxm` varchar(100) DEFAULT NULL COMMENT '派工单项目',
  `jhxm` varchar(100) DEFAULT NULL COMMENT '计划项目',
  `nian2` varchar(100) DEFAULT NULL COMMENT '计划年',
  `cxbm2` varchar(100) DEFAULT NULL COMMENT '计划产线',
  `cxmc2` varchar(100) DEFAULT NULL COMMENT '计划产线名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_年度计划完成率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_niandujihuawanchenglv_gjcj`
--

DROP TABLE IF EXISTS `dm_niandujihuawanchenglv_gjcj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_niandujihuawanchenglv_gjcj` (
  `FENZI` int(11) DEFAULT NULL COMMENT '分子',
  `MESNUM` int(11) DEFAULT NULL COMMENT 'mes数据',
  `BOARDNUM` int(11) DEFAULT NULL COMMENT '看板数据',
  `FENMU` int(11) DEFAULT NULL COMMENT '分母',
  `RATE` double(100,0) DEFAULT NULL COMMENT '年度计划完成率_构架车间',
  `YEAR` varchar(100) DEFAULT NULL COMMENT '年份',
  `CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `CXMC` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `CJMC` varchar(100) DEFAULT NULL COMMENT '车间名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_年度计划完成率_构架车间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_niandujihuawanchenglv_ldcj`
--

DROP TABLE IF EXISTS `dm_niandujihuawanchenglv_ldcj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_niandujihuawanchenglv_ldcj` (
  `FENZI` int(11) DEFAULT NULL COMMENT '分子',
  `MESNUM` int(11) DEFAULT NULL COMMENT 'mes数据',
  `BOARDNUM` int(11) DEFAULT NULL COMMENT '看板数据',
  `FENMU` int(11) DEFAULT NULL COMMENT '分母',
  `RATE` double(100,0) DEFAULT NULL COMMENT '年度计划完成率_轮对车间',
  `YEAR` varchar(100) DEFAULT NULL COMMENT '年份',
  `CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `CXMC` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `CJMC` varchar(100) DEFAULT NULL COMMENT '车间名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_年度计划完成率_轮对车间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_niandujihuawanchenglv_syb`
--

DROP TABLE IF EXISTS `dm_niandujihuawanchenglv_syb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_niandujihuawanchenglv_syb` (
  `FENZI` int(11) DEFAULT NULL COMMENT '分子',
  `MESNUM` int(11) DEFAULT NULL COMMENT 'mes数据',
  `BOARDNUM` int(11) DEFAULT NULL COMMENT '看板数据',
  `FENMU` int(11) DEFAULT NULL COMMENT '分母',
  `RATE` double(100,0) DEFAULT NULL COMMENT '年度计划完成率_事业部',
  `YEAR` varchar(100) DEFAULT NULL COMMENT '年份',
  `CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `CXMC` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `CJMC` varchar(100) DEFAULT NULL COMMENT '车间名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_年度计划完成率_事业部';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_niandujihuawanchenglv_zccj`
--

DROP TABLE IF EXISTS `dm_niandujihuawanchenglv_zccj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_niandujihuawanchenglv_zccj` (
  `FENZI` int(11) DEFAULT NULL COMMENT '分子',
  `MESNUM` int(11) DEFAULT NULL COMMENT 'mes数据',
  `BOARDNUM` int(11) DEFAULT NULL COMMENT '看板数据',
  `FENMU` int(11) DEFAULT NULL COMMENT '分母',
  `RATE` double(100,0) DEFAULT NULL COMMENT '年度计划完成率_总成车间',
  `YEAR` varchar(100) DEFAULT NULL COMMENT '年份',
  `CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `CXMC` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `CJMC` varchar(100) DEFAULT NULL COMMENT '车间名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_年度计划完成率_总成车间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_nianjihuawanchenglv_cx`
--

DROP TABLE IF EXISTS `dm_nianjihuawanchenglv_cx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_nianjihuawanchenglv_cx` (
  `FENZI` int(11) DEFAULT NULL COMMENT '分子',
  `MESNUM` int(11) DEFAULT NULL COMMENT 'mes数据',
  `BOARDNUM` int(11) DEFAULT NULL COMMENT '看板数据',
  `FENMU` int(11) DEFAULT NULL COMMENT '分母',
  `RATE` double(100,0) DEFAULT NULL COMMENT '年度计划完成率_产线',
  `DATEYEAR` varchar(100) DEFAULT NULL,
  `CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `CXMC` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `CJMC` varchar(100) DEFAULT NULL COMMENT '车间名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_年计划完成率_产线';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_cg_tabDIYTable2063`
--

DROP TABLE IF EXISTS `dm_ods_cg_tabDIYTable2063`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_cg_tabDIYTable2063` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `iOrd` int(11) NOT NULL COMMENT 'iOrd',
  `RepID` int(11) NOT NULL COMMENT 'RepID',
  `ModifyDate` varchar(0) NOT NULL COMMENT 'ModifyDate',
  `DeptID` int(11) NOT NULL COMMENT 'DeptID',
  `OperID` int(11) NOT NULL COMMENT 'OperID',
  `sDesc` longtext NOT NULL COMMENT 'sDesc',
  `bIsFinish` longtext NOT NULL COMMENT 'bIsFinish',
  `bLocked` longtext NOT NULL COMMENT 'bLocked',
  `bCanViewWhenNoFinished` longtext NOT NULL COMMENT 'bCanViewWhenNoFinished',
  `OperID2` int(11) NOT NULL COMMENT 'OperID2',
  `dUpdate2` varchar(0) NOT NULL COMMENT 'dUpdate2',
  `F16423` longtext NOT NULL COMMENT 'F16423',
  `F16424` longtext NOT NULL COMMENT 'F16424',
  `F16425` varchar(0) NOT NULL COMMENT 'F16425',
  `F16426` varchar(0) NOT NULL COMMENT 'F16426',
  `F16432` longtext NOT NULL COMMENT 'F16432',
  `F16433` longtext NOT NULL COMMENT 'F16433',
  `F16434` longtext NOT NULL COMMENT 'F16434',
  `F16435` longtext NOT NULL COMMENT 'F16435',
  `F16436` longtext NOT NULL COMMENT 'F16436',
  `F16439` longtext NOT NULL COMMENT 'F16439',
  `F16441` longtext NOT NULL COMMENT 'F16441',
  `F16442` longtext NOT NULL COMMENT 'F16442',
  `F16443` longtext NOT NULL COMMENT 'F16443',
  `F16444` longtext NOT NULL COMMENT 'F16444',
  `F16445` longtext NOT NULL COMMENT 'F16445',
  `F16491` longtext NOT NULL COMMENT 'F16491',
  `F16499` longtext NOT NULL COMMENT 'F16499',
  `F16500` longtext NOT NULL COMMENT 'F16500',
  `F16501` longtext NOT NULL COMMENT 'F16501',
  `FillDate` varchar(100) DEFAULT NULL COMMENT 'FillDate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_ods_cg_城轨事业部返工通知单_主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_ctmes_DEBUGGING_CAR`
--

DROP TABLE IF EXISTS `dm_ods_ctmes_DEBUGGING_CAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_ctmes_DEBUGGING_CAR` (
  `GID` varchar(32) NOT NULL COMMENT 'GID',
  `CAR_CODE` varchar(32) DEFAULT NULL COMMENT 'CAR_CODE',
  `STEP_ID` varchar(32) DEFAULT NULL COMMENT '实体项点步骤id',
  `CHK_RESULT` int(11) DEFAULT NULL COMMENT 'CHK_RESULT',
  `CHK_VALUE` varchar(320) DEFAULT NULL COMMENT '检测结果',
  `INSPECTOR` varchar(32) DEFAULT NULL COMMENT '检测人',
  `ORDER_CAR_ID` varchar(32) DEFAULT NULL COMMENT '订单调试步骤列id',
  `CREATE_ID` varchar(32) NOT NULL COMMENT 'CREATE_ID',
  `MODIFY_ID` varchar(32) DEFAULT NULL COMMENT 'MODIFY_ID',
  `MODIFY_DATE` date DEFAULT NULL COMMENT 'MODIFY_DATE',
  `IS_ACTIVE` int(11) NOT NULL DEFAULT 0 COMMENT 'IS_ACTIVE',
  `IS_DELETE` int(11) NOT NULL DEFAULT 0 COMMENT 'IS_DELETE',
  `UDA1` varchar(50) DEFAULT NULL COMMENT 'UDA1',
  `UDA2` varchar(50) DEFAULT NULL COMMENT 'UDA2',
  `UDA3` varchar(50) DEFAULT NULL COMMENT 'UDA3',
  `UDA4` varchar(50) DEFAULT NULL COMMENT 'UDA4',
  `UDA5` varchar(50) DEFAULT NULL COMMENT 'UDA5',
  `UDA6` varchar(50) DEFAULT NULL COMMENT 'UDA6',
  `UDA7` varchar(50) DEFAULT NULL COMMENT 'UDA7',
  `UDA8` varchar(50) DEFAULT NULL COMMENT 'UDA8',
  `UDA9` varchar(50) DEFAULT NULL COMMENT 'UDA9',
  `UDA10` varchar(50) DEFAULT NULL COMMENT 'UDA10',
  `DELETED1` varchar(32) DEFAULT NULL COMMENT 'DELETED',
  `DATA_ROLE` varchar(32) NOT NULL DEFAULT '-1 ' COMMENT 'DATA_ROLE',
  `DATA_ROLE1` varchar(32) DEFAULT '-1' COMMENT 'DATA_ROLE1',
  `DATA_ROLE2` varchar(32) DEFAULT '0' COMMENT 'DATA_ROLE2',
  `UDA1C` varchar(100) DEFAULT NULL COMMENT 'UDA1C',
  `UDA1N` varchar(100) DEFAULT NULL COMMENT 'UDA1N',
  `UDA2C` varchar(100) DEFAULT NULL COMMENT 'UDA2C',
  `UDA2N` varchar(100) DEFAULT NULL COMMENT 'UDA2N',
  `UDA3C` varchar(100) DEFAULT NULL COMMENT 'UDA3C',
  `UDA3N` varchar(100) DEFAULT NULL COMMENT 'UDA3N',
  `UDA4C` varchar(100) DEFAULT NULL COMMENT 'UDA4C',
  `UDA4N` varchar(100) DEFAULT NULL COMMENT 'UDA4N',
  `UDA5C` varchar(100) DEFAULT NULL COMMENT 'UDA5C',
  `UDA5N` varchar(100) DEFAULT NULL COMMENT 'UDA5N',
  `CREATE_DATE` varchar(100) DEFAULT NULL COMMENT 'CREATE_DATE',
  PRIMARY KEY (`GID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='实体调试步骤列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_dqmes_debugging_car`
--

DROP TABLE IF EXISTS `dm_ods_dqmes_debugging_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_dqmes_debugging_car` (
  `GID` longtext NOT NULL COMMENT 'GID',
  `CAR_CODE` longtext DEFAULT NULL COMMENT 'CAR_CODE',
  `STEP_ID` longtext DEFAULT NULL COMMENT '实体项点步骤id',
  `CHK_RESULT` int(11) DEFAULT NULL COMMENT 'CHK_RESULT',
  `CHK_VALUE` longtext DEFAULT NULL COMMENT '检测结果',
  `INSPECTOR` longtext DEFAULT NULL COMMENT '检测人',
  `ORDER_CAR_ID` longtext DEFAULT NULL COMMENT '订单调试步骤列id',
  `CREATE_ID` longtext NOT NULL COMMENT 'CREATE_ID',
  `MODIFY_ID` longtext DEFAULT NULL COMMENT 'MODIFY_ID',
  `MODIFY_DATE` date DEFAULT NULL COMMENT 'MODIFY_DATE',
  `IS_ACTIVE` varchar(200) NOT NULL DEFAULT '0 ' COMMENT 'IS_ACTIVE',
  `IS_DELETE` int(11) NOT NULL DEFAULT 0 COMMENT 'IS_DELETE',
  `UDA1` longtext DEFAULT NULL COMMENT 'UDA1',
  `UDA2` longtext DEFAULT NULL COMMENT 'UDA2',
  `UDA3` longtext DEFAULT NULL COMMENT 'UDA3',
  `UDA4` longtext DEFAULT NULL COMMENT 'UDA4',
  `UDA5` longtext DEFAULT NULL COMMENT 'UDA5',
  `UDA6` longtext DEFAULT NULL COMMENT 'UDA6',
  `UDA7` longtext DEFAULT NULL COMMENT 'UDA7',
  `UDA8` longtext DEFAULT NULL COMMENT 'UDA8',
  `UDA9` longtext DEFAULT NULL COMMENT 'UDA9',
  `UDA10` longtext DEFAULT NULL COMMENT 'UDA10',
  `DELETED` longtext DEFAULT NULL COMMENT 'DELETED',
  `DATA_ROLE` longtext NOT NULL DEFAULT '-1 ' COMMENT 'DATA_ROLE',
  `DATA_ROLE1` longtext DEFAULT '-1' COMMENT 'DATA_ROLE1',
  `DATA_ROLE2` longtext DEFAULT '0' COMMENT 'DATA_ROLE2',
  `UDA1C` longtext DEFAULT NULL COMMENT 'UDA1C',
  `UDA1N` longtext DEFAULT NULL COMMENT 'UDA1N',
  `UDA2C` longtext DEFAULT NULL COMMENT 'UDA2C',
  `UDA2N` longtext DEFAULT NULL COMMENT 'UDA2N',
  `UDA3C` longtext DEFAULT NULL COMMENT 'UDA3C',
  `UDA3N` longtext DEFAULT NULL COMMENT 'UDA3N',
  `UDA4C` longtext DEFAULT NULL COMMENT 'UDA4C',
  `UDA4N` longtext DEFAULT NULL COMMENT 'UDA4N',
  `UDA5C` longtext DEFAULT NULL COMMENT 'UDA5C',
  `UDA5N` longtext DEFAULT NULL COMMENT 'UDA5N',
  `CREATE_DATE` varchar(100) DEFAULT NULL COMMENT 'CREATE_DATE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='实体调试步骤列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_jc_tabDIYTable2444`
--

DROP TABLE IF EXISTS `dm_ods_jc_tabDIYTable2444`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_jc_tabDIYTable2444` (
  `ID` varchar(200) NOT NULL COMMENT 'ID',
  `iOrd` varchar(200) NOT NULL COMMENT 'iOrd',
  `RepID` varchar(200) NOT NULL COMMENT 'RepID',
  `FillDate` varchar(200) NOT NULL COMMENT 'FillDate',
  `ModifyDate` varchar(200) NOT NULL COMMENT 'ModifyDate',
  `DeptID` varchar(200) NOT NULL COMMENT 'DeptID',
  `OperID` varchar(200) NOT NULL COMMENT 'OperID',
  `sDesc` longtext NOT NULL COMMENT 'sDesc',
  `bIsFinish` longtext NOT NULL COMMENT 'bIsFinish',
  `bLocked` longtext NOT NULL COMMENT 'bLocked',
  `bCanViewWhenNoFinished` longtext NOT NULL COMMENT 'bCanViewWhenNoFinished',
  `OperID2` varchar(200) NOT NULL COMMENT 'OperID2',
  `dUpdate2` varchar(200) NOT NULL COMMENT 'dUpdate2',
  `F23008` longtext NOT NULL COMMENT 'F23008',
  `F23009` longtext NOT NULL COMMENT 'F23009',
  `F23010` longtext NOT NULL COMMENT 'F23010',
  `F23011` longtext NOT NULL COMMENT 'F23011',
  `F23013` longtext NOT NULL COMMENT 'F23013',
  `F23025` longtext NOT NULL COMMENT 'F23025',
  `F23027` varchar(200) NOT NULL COMMENT 'F23027',
  `F23028` longtext NOT NULL COMMENT 'F23028',
  `F23029` longtext NOT NULL COMMENT 'F23029'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_tabDIYTable2444';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_jcmes_debugging_car`
--

DROP TABLE IF EXISTS `dm_ods_jcmes_debugging_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_jcmes_debugging_car` (
  `GID` varchar(32) NOT NULL COMMENT 'GID',
  `CAR_CODE` varchar(32) DEFAULT NULL COMMENT 'CAR_CODE',
  `STEP_ID` varchar(32) DEFAULT NULL COMMENT '实体项点步骤id',
  `CHK_RESULT` int(11) DEFAULT NULL COMMENT 'CHK_RESULT',
  `CHK_VALUE` varchar(320) DEFAULT NULL COMMENT '检测结果',
  `INSPECTOR` varchar(32) DEFAULT NULL COMMENT '检测人',
  `ORDER_CAR_ID` varchar(32) DEFAULT NULL COMMENT '订单调试步骤列id',
  `CREATE_ID` varchar(32) NOT NULL COMMENT 'CREATE_ID',
  `MODIFY_ID` varchar(32) DEFAULT NULL COMMENT 'MODIFY_ID',
  `MODIFY_DATE` date DEFAULT NULL COMMENT 'MODIFY_DATE',
  `IS_ACTIVE` int(11) NOT NULL DEFAULT 0 COMMENT 'IS_ACTIVE',
  `IS_DELETE` int(11) NOT NULL DEFAULT 0 COMMENT 'IS_DELETE',
  `UDA1` varchar(50) DEFAULT NULL COMMENT 'UDA1',
  `UDA2` varchar(50) DEFAULT NULL COMMENT 'UDA2',
  `UDA3` varchar(50) DEFAULT NULL COMMENT 'UDA3',
  `UDA4` varchar(50) DEFAULT NULL COMMENT 'UDA4',
  `UDA5` varchar(50) DEFAULT NULL COMMENT 'UDA5',
  `UDA6` varchar(50) DEFAULT NULL COMMENT 'UDA6',
  `UDA7` varchar(50) DEFAULT NULL COMMENT 'UDA7',
  `UDA8` varchar(50) DEFAULT NULL COMMENT 'UDA8',
  `UDA9` varchar(50) DEFAULT NULL COMMENT 'UDA9',
  `UDA10` varchar(50) DEFAULT NULL COMMENT 'UDA10',
  `DELETED` varchar(32) DEFAULT NULL COMMENT 'DELETED',
  `DATA_ROLE` varchar(32) NOT NULL DEFAULT '-1 ' COMMENT 'DATA_ROLE',
  `DATA_ROLE1` varchar(32) DEFAULT '-1' COMMENT 'DATA_ROLE1',
  `DATA_ROLE2` varchar(32) DEFAULT '0' COMMENT 'DATA_ROLE2',
  `UDA1C` varchar(100) DEFAULT NULL COMMENT 'UDA1C',
  `UDA1N` varchar(100) DEFAULT NULL COMMENT 'UDA1N',
  `UDA2C` varchar(100) DEFAULT NULL COMMENT 'UDA2C',
  `UDA2N` varchar(100) DEFAULT NULL COMMENT 'UDA2N',
  `UDA3C` varchar(100) DEFAULT NULL COMMENT 'UDA3C',
  `UDA3N` varchar(100) DEFAULT NULL COMMENT 'UDA3N',
  `UDA4C` varchar(100) DEFAULT NULL COMMENT 'UDA4C',
  `UDA4N` varchar(100) DEFAULT NULL COMMENT 'UDA4N',
  `UDA5C` varchar(100) DEFAULT NULL COMMENT 'UDA5C',
  `UDA5N` varchar(100) DEFAULT NULL COMMENT 'UDA5N',
  `CREATE_DATE` varchar(100) DEFAULT NULL COMMENT 'CREATE_DATE',
  PRIMARY KEY (`GID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='实体调试步骤列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_mes_tz_DEBUGGING_CAR`
--

DROP TABLE IF EXISTS `dm_ods_mes_tz_DEBUGGING_CAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_mes_tz_DEBUGGING_CAR` (
  `GID` longtext NOT NULL COMMENT 'GID',
  `CAR_CODE` longtext DEFAULT NULL COMMENT 'CAR_CODE',
  `STEP_ID` longtext DEFAULT NULL COMMENT '实体项点步骤id',
  `CHK_VALUE` longtext DEFAULT NULL COMMENT '检测结果',
  `INSPECTOR` longtext DEFAULT NULL COMMENT '检测人',
  `ORDER_CAR_ID` longtext DEFAULT NULL COMMENT '订单调试步骤列id',
  `CREATE_ID` longtext NOT NULL COMMENT 'CREATE_ID',
  `MODIFY_ID` longtext DEFAULT NULL COMMENT 'MODIFY_ID',
  `MODIFY_DATE` date DEFAULT NULL COMMENT 'MODIFY_DATE',
  `IS_ACTIVE` int(11) NOT NULL DEFAULT 0 COMMENT 'IS_ACTIVE',
  `IS_DELETE` int(11) NOT NULL DEFAULT 0 COMMENT 'IS_DELETE',
  `UDA1` longtext DEFAULT NULL COMMENT 'UDA1',
  `UDA2` longtext DEFAULT NULL COMMENT 'UDA2',
  `UDA3` longtext DEFAULT NULL COMMENT 'UDA3',
  `UDA4` longtext DEFAULT NULL COMMENT 'UDA4',
  `UDA5` longtext DEFAULT NULL COMMENT 'UDA5',
  `UDA6` longtext DEFAULT NULL COMMENT 'UDA6',
  `UDA7` longtext DEFAULT NULL COMMENT 'UDA7',
  `UDA8` longtext DEFAULT NULL COMMENT 'UDA8',
  `UDA9` longtext DEFAULT NULL COMMENT 'UDA9',
  `UDA10` longtext DEFAULT NULL COMMENT 'UDA10',
  `DELETED` longtext DEFAULT NULL COMMENT 'DELETED',
  `DATA_ROLE` longtext NOT NULL DEFAULT '-1 ' COMMENT 'DATA_ROLE',
  `DATA_ROLE1` longtext DEFAULT '-1' COMMENT 'DATA_ROLE1',
  `DATA_ROLE2` longtext DEFAULT '0' COMMENT 'DATA_ROLE2',
  `UDA1C` longtext DEFAULT NULL COMMENT 'UDA1C',
  `UDA1N` longtext DEFAULT NULL COMMENT 'UDA1N',
  `UDA2C` longtext DEFAULT NULL COMMENT 'UDA2C',
  `UDA2N` longtext DEFAULT NULL COMMENT 'UDA2N',
  `UDA3C` longtext DEFAULT NULL COMMENT 'UDA3C',
  `UDA3N` longtext DEFAULT NULL COMMENT 'UDA3N',
  `UDA4C` longtext DEFAULT NULL COMMENT 'UDA4C',
  `UDA4N` longtext DEFAULT NULL COMMENT 'UDA4N',
  `UDA5C` longtext DEFAULT NULL COMMENT 'UDA5C',
  `UDA5N` longtext DEFAULT NULL COMMENT 'UDA5N',
  `CHK_RESULT` int(11) DEFAULT NULL COMMENT 'CHK_RESULT',
  `CREATE_DATE` varchar(100) DEFAULT NULL COMMENT 'CREATE_DATE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='实体调试步骤列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_mis_HB_Track`
--

DROP TABLE IF EXISTS `dm_ods_mis_HB_Track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_mis_HB_Track` (
  `id` varchar(200) NOT NULL COMMENT 'ID',
  `cg_coede` longtext NOT NULL COMMENT 'CG_coede',
  `cg_manu` longtext NOT NULL COMMENT 'CG_manu',
  `cg_photoes` longtext NOT NULL COMMENT 'CG_photoes',
  `cg_remark` longtext NOT NULL COMMENT 'CG_remark',
  `hc_coede` longtext NOT NULL COMMENT 'HC_coede',
  `hc_manu` longtext NOT NULL COMMENT 'HC_manu',
  `hc_photoes` longtext NOT NULL COMMENT 'HC_photoes',
  `hc_remark` longtext NOT NULL COMMENT 'HC_remark',
  `xn_coede` longtext NOT NULL COMMENT 'XN_coede',
  `xn_manu` longtext NOT NULL COMMENT 'XN_manu',
  `xn_photoes` longtext NOT NULL COMMENT 'XN_photoes',
  `xn_remark` longtext NOT NULL COMMENT 'XN_remark',
  `wk_coede` longtext NOT NULL COMMENT 'WK_coede',
  `wk_manu` longtext NOT NULL COMMENT 'WK_manu',
  `wk_photoes` longtext NOT NULL COMMENT 'WK_photoes',
  `wk_remark` longtext NOT NULL COMMENT 'WK_remark',
  `informant` longtext NOT NULL COMMENT 'informant',
  `filltime` longtext NOT NULL COMMENT 'filltime',
  `isdeleted` longtext NOT NULL DEFAULT '((0))' COMMENT 'IsDeleted',
  `isedit` longtext NOT NULL DEFAULT '((1))' COMMENT 'IsEdit',
  `project` longtext NOT NULL COMMENT 'Project',
  `printcode` longtext NOT NULL COMMENT 'Printcode',
  `steelmark` longtext NOT NULL COMMENT 'Steelmark',
  `supervision` longtext NOT NULL COMMENT 'Supervision',
  `strucode` longtext NOT NULL COMMENT 'Strucode',
  `submitime` longtext NOT NULL COMMENT 'Submitime',
  `headtail` longtext NOT NULL COMMENT 'Headtail',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='HB_Track';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_mis_ME_Account`
--

DROP TABLE IF EXISTS `dm_ods_mis_ME_Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_mis_ME_Account` (
  `ID` varchar(11) NOT NULL COMMENT 'ID',
  `MA_Code` longtext NOT NULL COMMENT 'MA_Code',
  `ME_Code` varchar(200) NOT NULL COMMENT 'ME_Code',
  `ME_Name` varchar(200) NOT NULL COMMENT 'ME_Name',
  `ME_Model` varchar(200) NOT NULL COMMENT 'ME_Model',
  `ME_Level` varchar(200) NOT NULL COMMENT 'ME_Level',
  `ME_Class` varchar(200) NOT NULL COMMENT 'ME_Class',
  `ME_Interval` varchar(200) NOT NULL COMMENT 'ME_Interval',
  `Confirm_M1` varchar(200) NOT NULL COMMENT 'Confirm_M1',
  `Confirm_M2` varchar(200) NOT NULL COMMENT 'Confirm_M2',
  `Valid_Time` longtext NOT NULL COMMENT 'Valid_Time',
  `ME_State` varchar(200) NOT NULL COMMENT 'ME_State',
  `Brand` varchar(200) NOT NULL COMMENT 'Brand',
  `Workshop` varchar(200) NOT NULL COMMENT 'Workshop',
  `Remark` varchar(200) NOT NULL COMMENT 'Remark',
  `IsDeleted` varchar(200) NOT NULL DEFAULT '((0))' COMMENT 'IsDeleted',
  `IsEdit` varchar(200) NOT NULL DEFAULT '((1))' COMMENT 'IsEdit',
  `ME_form` varchar(200) NOT NULL COMMENT 'ME_form',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ME_Account';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_mis_NDT_fillrecord`
--

DROP TABLE IF EXISTS `dm_ods_mis_NDT_fillrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_mis_NDT_fillrecord` (
  `id` varchar(200) NOT NULL COMMENT 'ID',
  `project` varchar(200) NOT NULL COMMENT 'Project',
  `re_code` varchar(200) NOT NULL COMMENT 'Re_code',
  `re_name` varchar(200) NOT NULL COMMENT 'Re_name',
  `serialno` varchar(200) NOT NULL COMMENT 'serialNo',
  `assign` varchar(200) NOT NULL COMMENT 'Assign',
  `ndttype` varchar(200) NOT NULL COMMENT 'NDTtype',
  `re_version` varchar(200) NOT NULL COMMENT 'Re_version',
  `fillstate` varchar(200) NOT NULL COMMENT 'Fillstate',
  `headpart` varchar(200) NOT NULL COMMENT 'Headpart',
  `content` varchar(200) NOT NULL COMMENT 'Content',
  `defectno` varchar(200) NOT NULL COMMENT 'DefectNo',
  `repairno` varchar(200) NOT NULL COMMENT 'RepairNo',
  `weldsno` varchar(200) NOT NULL COMMENT 'WeldsNo',
  `informant` varchar(200) NOT NULL COMMENT 'informant',
  `filltime` longtext NOT NULL COMMENT 'filltime',
  `remark` varchar(200) NOT NULL COMMENT 'Remark',
  `isdeleted` varchar(200) NOT NULL DEFAULT '((0))' COMMENT 'IsDeleted',
  `isedit` varchar(200) NOT NULL DEFAULT '((1))' COMMENT 'IsEdit',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='NDT_fillrecord';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_mis_Recordlist_JC_Bazhou`
--

DROP TABLE IF EXISTS `dm_ods_mis_Recordlist_JC_Bazhou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_mis_Recordlist_JC_Bazhou` (
  `ID` varchar(11) DEFAULT NULL COMMENT 'ID',
  `Comp` varchar(50) DEFAULT NULL COMMENT 'Comp',
  `C_item` varchar(50) DEFAULT NULL COMMENT 'C_item',
  `Level` longtext DEFAULT NULL COMMENT 'Level',
  `Type` longtext DEFAULT NULL COMMENT 'Type',
  `Code` longtext DEFAULT NULL COMMENT 'Code',
  `Stand` varchar(50) DEFAULT NULL COMMENT 'Stand',
  `Margin` varchar(200) DEFAULT NULL COMMENT 'Margin',
  `U_toler` varchar(200) DEFAULT NULL COMMENT 'U_toler',
  `L_toler` varchar(200) DEFAULT NULL COMMENT 'L_toler',
  `C_prof` varchar(11) DEFAULT NULL COMMENT 'C_prof',
  `IsDeleted` varchar(11) DEFAULT '((0))' COMMENT 'IsDeleted',
  `IsEdit` varchar(11) DEFAULT '((1))' COMMENT 'IsEdit',
  `CarType` varchar(50) DEFAULT NULL COMMENT 'CarType',
  `S_process` varchar(11) DEFAULT NULL COMMENT 'S_process',
  `S_finish` varchar(11) DEFAULT NULL COMMENT 'S_finish',
  `Lvliitem` varchar(11) DEFAULT NULL COMMENT 'Lvliitem'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Recordlist_JC_Bazhou';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_mis_carbodyrecods`
--

DROP TABLE IF EXISTS `dm_ods_mis_carbodyrecods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_mis_carbodyrecods` (
  `id` varchar(11) NOT NULL COMMENT 'ID',
  `project` varchar(200) NOT NULL COMMENT 'Project',
  `re_code` varchar(200) NOT NULL COMMENT 'Re_code',
  `re_name` varchar(200) NOT NULL COMMENT 'Re_name',
  `serialno` longtext NOT NULL COMMENT 'serialNo',
  `re_type` varchar(11) NOT NULL COMMENT 'Re_type',
  `content` varchar(200) NOT NULL COMMENT 'content',
  `informant` longtext NOT NULL COMMENT 'informant',
  `filltime` longtext NOT NULL COMMENT 'filltime',
  `passperc` varchar(20) NOT NULL COMMENT 'passperc',
  `isdeleted` varchar(11) NOT NULL COMMENT 'IsDeleted',
  `isedit` varchar(11) NOT NULL COMMENT 'IsEdit',
  `formation` longtext NOT NULL COMMENT 'Formation',
  `a_passperc` varchar(20) NOT NULL COMMENT 'A_passperc',
  `b_passperc` varchar(20) NOT NULL COMMENT 'B_passperc',
  `c_passperc` varchar(20) NOT NULL COMMENT 'C_passperc',
  `fillstate` longtext NOT NULL COMMENT 'Fillstate',
  `nqa` varchar(11) NOT NULL COMMENT 'NqA',
  `nqb` varchar(11) NOT NULL COMMENT 'NqB',
  `nqc` varchar(11) NOT NULL COMMENT 'NqC',
  `version` varchar(11) NOT NULL COMMENT 'Version',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ods_mis_carbodyrecods';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_tjg_daily_inspection_item`
--

DROP TABLE IF EXISTS `dm_ods_tjg_daily_inspection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_tjg_daily_inspection_item` (
  `id` longtext DEFAULT NULL COMMENT 'id',
  `status1` longtext DEFAULT NULL COMMENT 'status1',
  `cid` longtext DEFAULT NULL COMMENT 'cId',
  `sid` longtext DEFAULT NULL COMMENT 'sId',
  `rid` longtext DEFAULT NULL COMMENT 'rId',
  `pid` longtext DEFAULT NULL COMMENT 'pId',
  `keyid` longtext DEFAULT NULL COMMENT 'keyId',
  `preventid` longtext DEFAULT NULL COMMENT 'preventId',
  `rname` longtext DEFAULT NULL COMMENT 'rName',
  `rcode` longtext DEFAULT NULL COMMENT 'rCode',
  `ban` longtext DEFAULT NULL COMMENT 'ban',
  `cdept` longtext DEFAULT NULL COMMENT 'cDept',
  `ccls` longtext DEFAULT NULL COMMENT 'cCls',
  `creator` longtext DEFAULT NULL COMMENT 'creator',
  `creatorname` longtext DEFAULT NULL COMMENT 'creatorName',
  `qualified` longtext DEFAULT NULL COMMENT 'qualified',
  `hdept` longtext DEFAULT NULL COMMENT 'hDept',
  `hcls` longtext DEFAULT NULL COMMENT 'hCls',
  `handler` longtext DEFAULT NULL COMMENT 'handler',
  `handlername` longtext DEFAULT NULL COMMENT 'handlerName',
  `handleat` longtext DEFAULT NULL COMMENT 'handleAt',
  `handlemsg` longtext DEFAULT NULL COMMENT 'handleMsg',
  `serialtag` longtext DEFAULT NULL COMMENT '系列号',
  `num` longtext DEFAULT NULL COMMENT 'num',
  `serialno` longtext DEFAULT NULL COMMENT 'serialNo',
  `sourceid` longtext DEFAULT NULL COMMENT 'sourceId',
  `libid` longtext DEFAULT NULL COMMENT 'libId',
  `oat` longtext DEFAULT NULL COMMENT 'oAt',
  `odept` longtext DEFAULT NULL COMMENT 'oDept',
  `ocls` longtext DEFAULT NULL COMMENT 'oCls',
  `detail` longtext DEFAULT NULL COMMENT 'detail',
  `cimgs` longtext DEFAULT NULL COMMENT 'cImgs',
  `rdept` longtext DEFAULT NULL COMMENT 'rDept',
  `rcls` longtext DEFAULT NULL COMMENT 'rCls',
  `plan` longtext DEFAULT NULL COMMENT 'plan',
  `expectdoneat` longtext DEFAULT NULL COMMENT 'expectDoneAt',
  `checker` longtext DEFAULT NULL COMMENT 'checker',
  `checkername` longtext DEFAULT NULL COMMENT 'checkerName',
  `checkat` longtext DEFAULT NULL COMMENT 'checkAt',
  `checkmsg` longtext DEFAULT NULL COMMENT 'checkMsg',
  `receiver` longtext DEFAULT NULL COMMENT 'receiver',
  `receivername` longtext DEFAULT NULL COMMENT 'receiverName',
  `receiveat` longtext DEFAULT NULL COMMENT 'receiveAt',
  `responsors` longtext DEFAULT NULL COMMENT 'responsors',
  `responsorsname` longtext DEFAULT NULL COMMENT 'responsorsName',
  `actor` longtext DEFAULT NULL COMMENT 'actor',
  `actorname` longtext DEFAULT NULL COMMENT 'actorName',
  `adetail` longtext DEFAULT NULL COMMENT 'aDetail',
  `actreachat` longtext DEFAULT NULL COMMENT 'actReachAt',
  `actfillat` longtext DEFAULT NULL COMMENT 'actFillAt',
  `actat` longtext DEFAULT NULL COMMENT 'actAt',
  `actdone` longtext DEFAULT NULL COMMENT 'actDone',
  `aimgs` longtext DEFAULT NULL COMMENT 'aImgs',
  `actconfirmer` longtext DEFAULT NULL COMMENT 'actConfirmer',
  `actconfirmmsg` longtext DEFAULT NULL COMMENT 'actConfirmMsg',
  `actconfirmername` longtext DEFAULT NULL COMMENT 'actConfirmerName',
  `actconfirmat` longtext DEFAULT NULL COMMENT 'actConfirmAt',
  `confirmer` longtext DEFAULT NULL COMMENT 'confirmer',
  `confirmername` longtext DEFAULT NULL COMMENT 'confirmerName',
  `confirmat` longtext DEFAULT NULL COMMENT 'confirmAt',
  `confirmmsg` longtext DEFAULT NULL COMMENT 'confirmMsg',
  `fine` longtext DEFAULT NULL COMMENT 'fine',
  `auto` longtext DEFAULT NULL COMMENT 'auto',
  `autoat` longtext DEFAULT NULL COMMENT 'autoAt',
  `fined` longtext DEFAULT NULL COMMENT 'fined',
  `finedname` longtext DEFAULT NULL COMMENT 'finedName',
  `auditor` longtext DEFAULT NULL COMMENT 'auditor',
  `auditorname` longtext DEFAULT NULL COMMENT 'auditorName',
  `auditat` longtext DEFAULT NULL COMMENT 'auditAt',
  `firstauditat` longtext DEFAULT NULL COMMENT 'firstAuditAt',
  `auditmsg` longtext DEFAULT NULL COMMENT 'auditMsg',
  `olog` longtext DEFAULT NULL COMMENT 'oLog',
  `created_at` longtext DEFAULT NULL COMMENT '创建日期',
  `updated_at` longtext DEFAULT NULL COMMENT '最后更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_ods_tjg_daily_inspection_item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_tjg_open_item`
--

DROP TABLE IF EXISTS `dm_ods_tjg_open_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_tjg_open_item` (
  `id` longtext DEFAULT NULL COMMENT '自增id',
  `year` longtext DEFAULT NULL COMMENT '编号-年(按创建日期)',
  `num` longtext DEFAULT NULL COMMENT '编号',
  `type1` longtext DEFAULT NULL COMMENT '开口项类别',
  `come` longtext DEFAULT NULL COMMENT '开口项发生方',
  `variant` longtext DEFAULT NULL COMMENT '修造类别',
  `has_bogie` longtext DEFAULT NULL COMMENT '是否有转向架',
  `project_item_id` longtext DEFAULT NULL COMMENT '项目号id',
  `v_num_init` longtext DEFAULT NULL COMMENT '初始输入车号',
  `v_num` longtext DEFAULT NULL COMMENT '真实车号(如果没有则使用v_num_init)',
  `m_name` longtext DEFAULT NULL COMMENT '物料名称',
  `m_code` longtext DEFAULT NULL COMMENT '物资编码',
  `m_quantity` longtext DEFAULT NULL COMMENT '物料数量/轮对或/架',
  `product_name` longtext DEFAULT NULL COMMENT '涉及产品名称',
  `product_quantity` longtext DEFAULT NULL COMMENT '涉及产品(轮对/转向架)数量',
  `creator` longtext DEFAULT NULL COMMENT '创建人',
  `creator_name` longtext DEFAULT NULL COMMENT 'creator_name',
  `classno` longtext DEFAULT NULL COMMENT '创建人班组',
  `another` longtext DEFAULT NULL COMMENT '负责人2(质量开口项时为项目',
  `another_name` longtext DEFAULT NULL COMMENT 'another_name',
  `anothercls` longtext DEFAULT NULL COMMENT 'anotherCls',
  `desc1` longtext DEFAULT NULL COMMENT '开口项描述',
  `plan` longtext DEFAULT NULL COMMENT '处置方案',
  `close_date` longtext DEFAULT NULL COMMENT '预计关闭日期',
  `close_date2` longtext DEFAULT NULL COMMENT '修改的预计关闭时间',
  `close_date_history` longtext DEFAULT NULL COMMENT 'close_date_history',
  `close_at` longtext DEFAULT NULL COMMENT '实际关闭日期',
  `check_class` longtext DEFAULT NULL COMMENT '检查班',
  `action_class` longtext DEFAULT NULL COMMENT '执行班组',
  `need_check` longtext DEFAULT NULL COMMENT '是否强制要求检查',
  `flow_item_id` longtext DEFAULT NULL COMMENT '使用的审批流程ID',
  `status1` longtext DEFAULT NULL COMMENT '状态：编辑-从未提交，退回-提交被拒绝，撤回-提交后撤回，审批中',
  `created_at` longtext DEFAULT NULL COMMENT '创建日期',
  `updated_at` longtext DEFAULT NULL COMMENT '最后更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_ods_tjg_open_item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_tjg_open_item_subitem`
--

DROP TABLE IF EXISTS `dm_ods_tjg_open_item_subitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_tjg_open_item_subitem` (
  `id` longtext DEFAULT NULL COMMENT '自增id',
  `open_item_id` longtext DEFAULT NULL COMMENT 'open_item_id',
  `product_num` longtext DEFAULT NULL COMMENT '涉及产品序列号',
  `bogie_num` longtext DEFAULT NULL COMMENT '涉及产品转向架号',
  `close_date` longtext DEFAULT NULL COMMENT '预计关闭日期',
  `close_date2` longtext DEFAULT NULL COMMENT '修改的预计关闭时间',
  `close_at` longtext DEFAULT NULL COMMENT '实际关闭日期',
  `status1` longtext DEFAULT NULL COMMENT 'status1',
  `created_at` longtext DEFAULT NULL COMMENT '创建日期',
  `updated_at` longtext DEFAULT NULL COMMENT '最后更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_ods_tjg_open_item_subitem';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_tjg_project_item`
--

DROP TABLE IF EXISTS `dm_ods_tjg_project_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_tjg_project_item` (
  `id` longtext DEFAULT NULL COMMENT '顺号id',
  `project_id` longtext DEFAULT NULL COMMENT '对应项目的id',
  `variant` longtext DEFAULT NULL COMMENT '类别',
  `name` longtext DEFAULT NULL COMMENT '名称',
  `item_no` longtext DEFAULT NULL COMMENT '具体项目号',
  `start_no` longtext DEFAULT NULL COMMENT '开始车号',
  `end_no` longtext DEFAULT NULL COMMENT '开始车号',
  `status1` longtext DEFAULT NULL COMMENT '状态-有效性',
  `creator` longtext DEFAULT NULL COMMENT '创建人',
  `created_at` longtext DEFAULT NULL COMMENT '创建日期',
  `updated_at` longtext DEFAULT NULL COMMENT '最后更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_ods_tjg_project_item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_tjg_quality_issue_lib`
--

DROP TABLE IF EXISTS `dm_ods_tjg_quality_issue_lib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_tjg_quality_issue_lib` (
  `id` longtext DEFAULT NULL COMMENT 'id',
  `dept` longtext DEFAULT NULL COMMENT 'dept',
  `did` longtext DEFAULT NULL COMMENT 'dId',
  `partid` longtext DEFAULT NULL COMMENT 'partId',
  `type1` longtext DEFAULT NULL COMMENT '分类',
  `name` longtext DEFAULT NULL COMMENT 'name',
  `score` longtext DEFAULT NULL COMMENT 'score',
  `rcls` longtext DEFAULT NULL COMMENT 'rCls',
  `tips` longtext DEFAULT NULL COMMENT 'tips',
  `status1` longtext DEFAULT NULL COMMENT 'status1',
  `created_at` longtext DEFAULT NULL COMMENT 'created_at',
  `updated_at` longtext DEFAULT NULL COMMENT 'updated_at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_ods_tjg_quality_issue_lib';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ods_tjg_quality_issues`
--

DROP TABLE IF EXISTS `dm_ods_tjg_quality_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ods_tjg_quality_issues` (
  `id` longtext DEFAULT NULL COMMENT 'id',
  `yearmonth` longtext DEFAULT NULL COMMENT 'yearMonth',
  `num` longtext DEFAULT NULL COMMENT 'num',
  `prefix1` longtext DEFAULT NULL COMMENT 'prefix1',
  `gid` longtext DEFAULT NULL COMMENT 'gId',
  `status1` longtext DEFAULT NULL COMMENT 'status1',
  `cdept` longtext DEFAULT NULL COMMENT 'cDept',
  `ccls` longtext DEFAULT NULL COMMENT 'cCls',
  `lineid` longtext DEFAULT NULL COMMENT 'lineId',
  `stationid` longtext DEFAULT NULL COMMENT 'stationId',
  `creator` longtext DEFAULT NULL COMMENT 'creator',
  `creatorname` longtext DEFAULT NULL COMMENT 'creatorName',
  `wno` longtext DEFAULT NULL COMMENT '派工单号(可选)',
  `qlibid` longtext DEFAULT NULL COMMENT 'qLibId',
  `projectitemid` longtext DEFAULT NULL COMMENT 'projectItemId',
  `vno` longtext DEFAULT NULL COMMENT '车号(可选)',
  `mname` longtext DEFAULT NULL COMMENT 'mName',
  `mcode` longtext DEFAULT NULL COMMENT '物资编码(可选)',
  `mno` longtext DEFAULT NULL COMMENT '序列号',
  `qdetail` longtext DEFAULT NULL COMMENT 'qDetail',
  `qattach` longtext DEFAULT NULL COMMENT 'qAttach',
  `s3` longtext DEFAULT NULL COMMENT 's3',
  `rcls` longtext DEFAULT NULL COMMENT 'rCls',
  `rreachat` longtext DEFAULT NULL COMMENT 'rReachAt',
  `responsor` longtext DEFAULT NULL COMMENT 'responsor',
  `responsorname` longtext DEFAULT NULL COMMENT 'responsorName',
  `tag` longtext DEFAULT NULL COMMENT 'tag',
  `responseat` longtext DEFAULT NULL COMMENT 'responseAt',
  `rdetail` longtext DEFAULT NULL COMMENT 'rDetail',
  `rlibid` longtext DEFAULT NULL COMMENT 'rLibId',
  `reptype1` longtext DEFAULT NULL COMMENT '责任类型',
  `repsupid` longtext DEFAULT NULL COMMENT '责任方-外部供应商',
  `repinner` longtext DEFAULT NULL COMMENT '责任方-内部',
  `repstaff` longtext DEFAULT NULL COMMENT 'repStaff',
  `repstaffname` longtext DEFAULT NULL COMMENT 'repStaffName',
  `actexpectat` longtext DEFAULT NULL COMMENT '预期执行完毕日期',
  `acls` longtext DEFAULT NULL COMMENT 'aCls',
  `actor` longtext DEFAULT NULL COMMENT 'actor',
  `actorname` longtext DEFAULT NULL COMMENT 'actorName',
  `actat` longtext DEFAULT NULL COMMENT 'actAt',
  `ares` longtext DEFAULT NULL COMMENT 'aRes',
  `adetail` longtext DEFAULT NULL COMMENT 'aDetail',
  `aattach` longtext DEFAULT NULL COMMENT 'aAttach',
  `as3` longtext DEFAULT NULL COMMENT 'aS3',
  `feedbacker` longtext DEFAULT NULL COMMENT 'feedbacker',
  `feedbackername` longtext DEFAULT NULL COMMENT 'feedbackerName',
  `fdetail` longtext DEFAULT NULL COMMENT 'fDetail',
  `feedbackat` longtext DEFAULT NULL COMMENT 'feedbackAt',
  `fattach` longtext DEFAULT NULL COMMENT 'fAttach',
  `fs3` longtext DEFAULT NULL COMMENT 'fS3',
  `tlog` longtext DEFAULT NULL COMMENT '任务移交记录',
  `created_at` longtext DEFAULT NULL COMMENT 'created_at',
  `updated_at` longtext DEFAULT NULL COMMENT 'updated_at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_ods_tjg_quality_issues';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_open_item_action_detail`
--

DROP TABLE IF EXISTS `dm_open_item_action_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_open_item_action_detail` (
  `number` varchar(100) DEFAULT NULL COMMENT '编号',
  `deptname` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `type1` varchar(100) DEFAULT NULL COMMENT '类型1',
  `m_name` varchar(100) DEFAULT NULL COMMENT '负责人名称',
  `product_name` varchar(100) DEFAULT NULL COMMENT '产品名称',
  `come` varchar(100) DEFAULT NULL COMMENT '车间',
  `close_date` varchar(100) DEFAULT NULL COMMENT '关闭日期1',
  `close_date2` varchar(100) DEFAULT NULL COMMENT '关闭日期2',
  `close_at` varchar(100) DEFAULT NULL COMMENT '关闭时间',
  `status1` varchar(100) DEFAULT NULL COMMENT '状态1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='开口项处理情况详表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_open_item_action_temp`
--

DROP TABLE IF EXISTS `dm_open_item_action_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_open_item_action_temp` (
  `number` longtext DEFAULT NULL COMMENT 'number',
  `deptname` longtext DEFAULT NULL COMMENT 'deptname',
  `type1` longtext DEFAULT NULL COMMENT 'type1',
  `m_name` longtext DEFAULT NULL COMMENT 'm_name',
  `product_name` longtext DEFAULT NULL COMMENT 'product_name',
  `come` longtext DEFAULT NULL COMMENT 'come',
  `close_date` longtext DEFAULT NULL COMMENT 'close_date',
  `close_date2` longtext DEFAULT NULL COMMENT 'close_date2',
  `close_at` longtext DEFAULT NULL COMMENT 'close_at',
  `status1` longtext DEFAULT NULL COMMENT 'status1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_开口项处理及时率中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_open_item_processing_rate_total`
--

DROP TABLE IF EXISTS `dm_open_item_processing_rate_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_open_item_processing_rate_total` (
  `time1` varchar(100) DEFAULT NULL COMMENT '月份',
  `total_planned` int(11) DEFAULT NULL COMMENT '计划处理数量',
  `incomplete_count` int(11) DEFAULT NULL COMMENT '未完成处理数量',
  `processing_rate` float(100,0) DEFAULT NULL COMMENT '处理及时率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='开口项处理及时率总表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_openitem_final`
--

DROP TABLE IF EXISTS `dm_openitem_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_openitem_final` (
  `yearmonth` varchar(100) DEFAULT NULL COMMENT '年月',
  `chejian` varchar(100) DEFAULT NULL COMMENT '车间',
  `rate` varchar(100) DEFAULT NULL COMMENT '及时处理率',
  `ontime` varchar(100) DEFAULT NULL COMMENT '及时处理数',
  `fnum` varchar(100) DEFAULT NULL COMMENT '总数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm开口项及时处理率计算';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_pgdsj`
--

DROP TABLE IF EXISTS `dm_pgdsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_pgdsj` (
  `nianfen` varchar(100) DEFAULT NULL COMMENT '年份',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `xm` varchar(100) DEFAULT NULL COMMENT '项目',
  `pgdwcs` int(11) DEFAULT NULL COMMENT '派工单完成数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_派工单数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_pgdxx_xm`
--

DROP TABLE IF EXISTS `dm_pgdxx_xm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_pgdxx_xm` (
  `cj` varchar(100) DEFAULT NULL COMMENT '车间',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `nianfen` varchar(100) DEFAULT NULL COMMENT '年份',
  `xmbm` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `xmmc` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `finish_num` int(11) DEFAULT NULL COMMENT '完成数量',
  `true_num` int(11) DEFAULT NULL COMMENT '实际完成数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_派工单信息带项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_plan_fin_rate_UEX_VTRACK_RECORD_zxj`
--

DROP TABLE IF EXISTS `dm_plan_fin_rate_UEX_VTRACK_RECORD_zxj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_plan_fin_rate_UEX_VTRACK_RECORD_zxj` (
  `FK_CRRC_ZXJ_CJ` varchar(50) NOT NULL DEFAULT ' ' COMMENT '车间',
  `FK_CRRC_ZXJ_CXBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '产线编码',
  `FK_CRRC_ZXJ_CX` varchar(50) NOT NULL DEFAULT ' ' COMMENT '生产线',
  `FK_CRRC_ZXJ_GWBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工位名称',
  `FK_CRRC_ZXJ_GXBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工序编码',
  `FK_CRRC_ZXJ_GXMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工序名称',
  `todaydate` varchar(100) DEFAULT NULL COMMENT '日期',
  `plan_fin_count` int(11) DEFAULT NULL,
  `act_fin_count` int(11) DEFAULT NULL,
  `rijihuawc_rate` double(100,0) DEFAULT NULL COMMENT '日计划完成率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm日计划完成率zxj';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_pms_APP_TASK`
--

DROP TABLE IF EXISTS `dm_pms_APP_TASK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_pms_APP_TASK` (
  `ID` varchar(32) DEFAULT NULL COMMENT 'ID',
  `NAME` varchar(800) DEFAULT NULL COMMENT 'NAME',
  `ENAME` varchar(400) DEFAULT NULL COMMENT 'ENAME',
  `CODE` varchar(400) DEFAULT NULL COMMENT 'CODE',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT 'CREATE_USER',
  `UPDATE_TIME` varchar(200) DEFAULT NULL COMMENT 'UPDATE_TIME',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT 'UPDATE_USER',
  `DELETE_FLAG` varchar(32) DEFAULT NULL COMMENT 'DELETE_FLAG',
  `DESCR` longtext DEFAULT NULL COMMENT 'DESCR',
  `SORT_NO` varchar(11) DEFAULT NULL COMMENT 'SORT_NO',
  `STATUS` varchar(1) DEFAULT NULL COMMENT '1：未开始 2',
  `DURATION` varchar(11) DEFAULT NULL COMMENT '工期',
  `COMPLETE_PERCENT` varchar(11) DEFAULT NULL COMMENT '完成百分比',
  `SRC_TMPL_ID` varchar(32) DEFAULT NULL COMMENT '来源',
  `TASK_TYPE` varchar(1) DEFAULT NULL COMMENT '作业类型',
  `ORIG_TASK_ID` varchar(32) DEFAULT NULL COMMENT '版本',
  `AUTO_FLAG` varchar(1) DEFAULT NULL COMMENT '自动完成标识(所有前置任务完成自动更新自身状)0否1是',
  `KEY_PATH` varchar(30) DEFAULT NULL COMMENT '关键任务，一级、二级、三级',
  `CUT_FLAG` varchar(1) DEFAULT NULL COMMENT '是否可裁剪',
  `WEIGHT` varchar(11) DEFAULT NULL COMMENT '权重',
  `TOTAL_FLOAT` varchar(11) DEFAULT NULL COMMENT '总浮时',
  `PLAN_START_DATE` varchar(200) DEFAULT NULL COMMENT 'PLAN_START_DATE',
  `PLAN_END_DATE` varchar(200) DEFAULT NULL COMMENT 'PLAN_END_DATE',
  `BASE_START_DATE` varchar(200) DEFAULT NULL COMMENT 'BASE_START_DATE',
  `BASE_END_DATE` varchar(200) DEFAULT NULL COMMENT 'BASE_END_DATE',
  `ACTUAL_START_DATE` varchar(200) DEFAULT NULL COMMENT 'ACTUAL_START_DATE',
  `ACTUAL_END_DATE` varchar(200) DEFAULT NULL COMMENT 'ACTUAL_END_DATE',
  `PROJ_ID` varchar(32) DEFAULT NULL COMMENT '项目ID/模板ID',
  `OBJECT_ID` varchar(32) DEFAULT NULL COMMENT 'OBJECT_ID',
  `WBS_ID` varchar(32) DEFAULT NULL COMMENT '所属WBS',
  `UUID` varchar(32) DEFAULT NULL COMMENT 'UUID',
  `T_VERSION` varchar(100) DEFAULT NULL COMMENT 'T_VERSION',
  `G_VERSION` varchar(32) DEFAULT NULL COMMENT 'G_VERSION',
  `IS_PROJ_SOURCE` varchar(1) DEFAULT NULL COMMENT 'IS_PROJ_SOURCE',
  `TASK_LEVEL` varchar(11) DEFAULT NULL COMMENT 'TASK_LEVEL',
  `OFFSET_INFO` longtext DEFAULT NULL COMMENT '偏差说明',
  `STONE_TYPE` varchar(100) DEFAULT NULL COMMENT 'p6分类码',
  `PARENT_ID` varchar(32) DEFAULT NULL COMMENT '父id',
  `ACTUAL_LABOR` varchar(11) DEFAULT NULL COMMENT 'ACTUAL_LABOR',
  `PLAN_LABOR` varchar(11) DEFAULT NULL COMMENT 'PLAN_LABOR',
  `CREATE_TIME` varchar(200) DEFAULT NULL COMMENT 'CREATE_TIME'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='项目计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_pms_APP_TASK_CRRC_EXT`
--

DROP TABLE IF EXISTS `dm_pms_APP_TASK_CRRC_EXT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_pms_APP_TASK_CRRC_EXT` (
  `ID` varchar(32) DEFAULT NULL COMMENT 'id',
  `UUID` varchar(32) DEFAULT NULL COMMENT '升版主键',
  `T_VERSION` varchar(100) DEFAULT NULL COMMENT '业务版本',
  `G_VERSION` varchar(11) DEFAULT NULL COMMENT '默认0',
  `NAME` varchar(800) DEFAULT NULL COMMENT 'NAME',
  `ENAME` varchar(400) DEFAULT NULL COMMENT 'ENAME',
  `CODE` varchar(400) DEFAULT NULL COMMENT 'CODE',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT 'CREATE_USER',
  `UPDATE_TIME` varchar(200) DEFAULT NULL COMMENT 'UPDATE_TIME',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT 'UPDATE_USER',
  `DELETE_FLAG` varchar(32) DEFAULT NULL COMMENT 'DELETE_FLAG',
  `DESCR` varchar(500) DEFAULT NULL COMMENT 'DESCR',
  `SORT_NO` varchar(11) DEFAULT NULL COMMENT 'SORT_NO',
  `PROJ_CONTROL` varchar(400) DEFAULT NULL COMMENT '项目控制',
  `SPECIAL` varchar(400) DEFAULT NULL COMMENT '作业分类码-专业',
  `DELIV` varchar(400) DEFAULT NULL COMMENT '作业分类码-任务输出物',
  `QUALITY_GATE` varchar(400) DEFAULT NULL COMMENT '作业分类码-作业分类',
  `PUBLISH_FLAG` varchar(1) DEFAULT NULL COMMENT '发布标识',
  `RESP_DEPT` varchar(32) DEFAULT NULL COMMENT '责任部门',
  `PLAN_TYPE` varchar(40) DEFAULT NULL COMMENT '计划分类：zjh、cj、zl、sy',
  `PROJ_ID` varchar(32) DEFAULT NULL COMMENT '项目id',
  `PARENT_PROJ_ID` varchar(32) DEFAULT NULL COMMENT '主项目id',
  `EXPENSES` varchar(400) DEFAULT NULL COMMENT '经费报销',
  `START_TRAIN_NUM` varchar(10) DEFAULT NULL COMMENT 'UDF-起始列车数量',
  `END_TRAIN_NUM` varchar(10) DEFAULT NULL COMMENT 'UDF-截止列车数量',
  `DELIV2` varchar(400) DEFAULT NULL COMMENT '作业分类码-任务输出物2',
  `BATCH_NUM` varchar(100) DEFAULT NULL COMMENT '批次号',
  `TURN_OVER_CUSTOMER` varchar(100) DEFAULT NULL COMMENT 'TURN_OVER_CUSTOMER',
  `KEY_JOB` varchar(100) DEFAULT NULL COMMENT 'KEY_JOB',
  `BATCH_DELIV` varchar(400) DEFAULT NULL COMMENT '作业分类码-批量交付',
  `QUALITY` varchar(400) DEFAULT NULL COMMENT '作业分类码-质量门',
  `DRIVING_PATH_FLAG` varchar(100) DEFAULT NULL COMMENT 'DRIVING_PATH_FLAG',
  `CREATE_TIME` varchar(200) DEFAULT NULL COMMENT 'CREATE_TIME'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='作业扩展表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_pms_SYS_DEPT`
--

DROP TABLE IF EXISTS `dm_pms_SYS_DEPT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_pms_SYS_DEPT` (
  `ID` varchar(32) DEFAULT NULL COMMENT 'ID',
  `UUID` varchar(32) DEFAULT NULL COMMENT 'UUID',
  `CODE` varchar(200) DEFAULT NULL COMMENT 'CODE',
  `NAME` varchar(400) DEFAULT NULL COMMENT 'NAME',
  `ENAME` varchar(400) DEFAULT NULL COMMENT 'ENAME',
  `DESCR` varchar(500) DEFAULT NULL COMMENT 'DESCR',
  `T_VERSION` varchar(80) DEFAULT NULL COMMENT 'T_VERSION',
  `G_VERSION` varchar(11) DEFAULT NULL COMMENT 'G_VERSION',
  `SORT_NO` varchar(11) DEFAULT NULL COMMENT 'SORT_NO',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT 'CREATE_USER',
  `CREATE_TIME` varchar(200) DEFAULT NULL COMMENT 'CREATE_TIME',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT 'UPDATE_USER',
  `UPDATE_TIME` varchar(200) DEFAULT NULL COMMENT 'UPDATE_TIME',
  `DELETE_FLAG` varchar(32) DEFAULT NULL COMMENT 'DELETE_FLAG',
  `PARENT_ID` varchar(32) DEFAULT NULL COMMENT 'PARENT_ID',
  `PATH` varchar(500) DEFAULT NULL COMMENT 'PATH',
  `TYPE` varchar(32) DEFAULT NULL COMMENT '组织类型：1手动添加、2OBS组织、3EHR',
  `DEPT_LEVEL` varchar(5) DEFAULT NULL COMMENT '组织等级：1企业级、2项目级',
  `SRC_TMPL_ID` varchar(32) DEFAULT NULL COMMENT '来源ID',
  `TEMPLATE_FLAG` varchar(1) DEFAULT NULL COMMENT '模板标识：1是、0否',
  `TEL` varchar(20) DEFAULT NULL COMMENT '部门电话',
  `BOSS` varchar(32) DEFAULT NULL COMMENT '组织负责人',
  `GROUP_TYPE` varchar(32) DEFAULT NULL COMMENT '业务类型：1株洲所、2业务主体、3业务单元、4职能部门、5（IR',
  `OBJECT_ID` varchar(32) DEFAULT NULL COMMENT 'P6ID',
  `SYN_ID` varchar(100) DEFAULT NULL COMMENT '外部系统ID',
  `PROJ_ID` varchar(32) DEFAULT NULL COMMENT '项目ID/模板ID',
  `EPS_ID` varchar(32) DEFAULT NULL COMMENT '行政组织关联EPS',
  `IS_FROZEN` char(1) DEFAULT NULL COMMENT '是否冻结Y/N',
  `SHORT_NAME` varchar(256) DEFAULT NULL COMMENT '简称',
  `SOURCE_DEPT_ID` varchar(32) DEFAULT NULL COMMENT '一期的dept表的id',
  `FRIST_LEVEL_DEPT` varchar(100) DEFAULT NULL COMMENT 'id',
  `NEW_DEPT_NAME` varchar(200) DEFAULT NULL COMMENT 'NEW_DEPT_NAME'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_pms_crrc_project_code`
--

DROP TABLE IF EXISTS `dm_pms_crrc_project_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_pms_crrc_project_code` (
  `id` longtext DEFAULT NULL COMMENT 'id  PK',
  `name` longtext DEFAULT NULL COMMENT '名称',
  `ename` longtext DEFAULT NULL COMMENT '英文名',
  `code` longtext DEFAULT NULL COMMENT '通知类型',
  `descr` longtext DEFAULT NULL COMMENT '通知人员',
  `create_user` longtext DEFAULT NULL COMMENT '创建人',
  `create_time` varchar(200) DEFAULT NULL COMMENT '创建日期',
  `update_user` longtext DEFAULT NULL COMMENT '更新人',
  `update_time` varchar(200) DEFAULT NULL COMMENT '更新时间',
  `sort_no` varchar(100) DEFAULT NULL COMMENT '排序',
  `delete_flag` longtext DEFAULT NULL COMMENT '删除标识',
  `type` longtext DEFAULT NULL COMMENT '1项目号2跟踪号',
  `proj_id` longtext DEFAULT NULL COMMENT '项目id',
  `parent_id` longtext DEFAULT NULL COMMENT '父级编号',
  `path` longtext DEFAULT NULL COMMENT 'path',
  `status` longtext DEFAULT NULL COMMENT 'STATUS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='EAS项目号和跟踪号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_project_stock`
--

DROP TABLE IF EXISTS `dm_project_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_project_stock` (
  `material_code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `project_code` varchar(100) DEFAULT NULL COMMENT '项目号',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `extend_propc1` varchar(100) DEFAULT NULL COMMENT '车号',
  `quantity` float(126,0) DEFAULT NULL COMMENT '积压数量',
  `unit` varchar(100) DEFAULT NULL COMMENT '单位',
  `glcode` varchar(100) DEFAULT NULL COMMENT '隔离规则',
  `stock_age` bigint(20) DEFAULT NULL COMMENT '库龄',
  `supplier_code` varchar(100) DEFAULT NULL COMMENT '供应商编码',
  `supplier_name` varchar(100) DEFAULT NULL COMMENT '供应商名称',
  `status` varchar(100) DEFAULT NULL COMMENT '库存状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='项目结束后积压库存表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qms2_biz_inspect_plan`
--

DROP TABLE IF EXISTS `dm_qms2_biz_inspect_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qms2_biz_inspect_plan` (
  `inspect_plan_id` varchar(64) NOT NULL COMMENT '主键id',
  `name` varchar(80) DEFAULT NULL COMMENT '检验计划名称',
  `project_id` varchar(64) DEFAULT NULL COMMENT '关联项目id',
  `project_code` varchar(80) DEFAULT NULL COMMENT '关联项目编码',
  `project_name` varchar(255) DEFAULT NULL COMMENT '关联项目名称',
  `complete_time` varchar(80) DEFAULT NULL COMMENT '计划完成编制时间',
  `status` varchar(15) DEFAULT NULL COMMENT '文件状态，草稿/校核/审批/批准',
  `process_id` varchar(16) DEFAULT NULL COMMENT '流程id',
  `sign_people` varchar(128) DEFAULT NULL COMMENT '会签人',
  `check_user` varchar(128) DEFAULT NULL COMMENT '审核人',
  `approver` varchar(128) DEFAULT NULL COMMENT '批准人',
  `root_dept_id` varchar(64) DEFAULT NULL COMMENT '一级业务部门Id',
  `root_dept_name` varchar(64) DEFAULT NULL COMMENT '一级业务部门名称',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(200) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `node` varchar(64) DEFAULT NULL COMMENT '流程节点',
  PRIMARY KEY (`inspect_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_检验计划表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qms2_biz_inspection_record`
--

DROP TABLE IF EXISTS `dm_qms2_biz_inspection_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qms2_biz_inspection_record` (
  `execution_id` varchar(64) NOT NULL COMMENT '检验记录ID',
  `entity_id` varchar(64) DEFAULT NULL COMMENT '检验实体ID',
  `production_code` varchar(64) DEFAULT NULL COMMENT '生产编号',
  `file_id` varchar(64) DEFAULT NULL COMMENT '检验文件id',
  `version` varchar(64) DEFAULT NULL COMMENT '检验文件版本号',
  `project_id` varchar(64) DEFAULT NULL COMMENT '关联项目id',
  `project_code` varchar(64) DEFAULT NULL COMMENT '关联项目编码',
  `train_number` varchar(64) DEFAULT NULL COMMENT '列车号',
  `carriage_number` varchar(64) DEFAULT NULL COMMENT '节车号',
  `quantity` varchar(64) DEFAULT NULL COMMENT '检验数量',
  `tracking_number` varchar(64) DEFAULT NULL COMMENT '项目跟踪号',
  `check_result` char(1) DEFAULT NULL COMMENT '检验结果  1不合格 0 合格',
  `check_status` varchar(64) DEFAULT NULL COMMENT '检验状态',
  `ncr_number` varchar(64) DEFAULT NULL COMMENT 'NCR编码',
  `ncr_result` varchar(20) DEFAULT NULL COMMENT 'ncr评审结果 (1.返修、2.返工、3.报废、4.让步放行、5',
  `auth_dept_id` varchar(64) DEFAULT NULL COMMENT '所属一级权限部门Id',
  `process_id` varchar(64) DEFAULT NULL COMMENT '流程ID',
  `sign_user` varchar(255) DEFAULT NULL COMMENT '会签人员',
  `process_status` varchar(1) DEFAULT NULL COMMENT '审批状态',
  `parent_exe_id` varchar(64) DEFAULT NULL COMMENT '父检验记录id',
  `detail_id` varchar(64) DEFAULT NULL COMMENT 'WMS到货明细id',
  `dispatch_code` varchar(100) DEFAULT NULL COMMENT 'MES派工单号',
  `inspector_id` varchar(32) DEFAULT NULL COMMENT '检验员id',
  `inspector_name` varchar(32) DEFAULT NULL COMMENT '检验员姓名',
  `has_sub` char(1) DEFAULT NULL COMMENT '是否拥有子部件(0是否)',
  `a1` varchar(255) DEFAULT NULL COMMENT '检验工位，支持检验模板配置了多个工位的情况',
  `a2` varchar(255) DEFAULT NULL COMMENT '是否已全部检验完，可以上传数据',
  `a3` varchar(255) DEFAULT NULL COMMENT '返工编码',
  `a4` varchar(255) DEFAULT NULL COMMENT '备用字段4',
  `a5` varchar(255) DEFAULT NULL COMMENT '备用字段5',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(200) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`execution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='检验记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qms2_biz_mes_inspection_record`
--

DROP TABLE IF EXISTS `dm_qms2_biz_mes_inspection_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qms2_biz_mes_inspection_record` (
  `execution_id` varchar(64) NOT NULL COMMENT '检验记录ID',
  `entity_id` varchar(64) DEFAULT NULL COMMENT '检验实体ID',
  `production_code` varchar(64) DEFAULT NULL COMMENT '生产编号',
  `file_id` varchar(64) DEFAULT NULL COMMENT '检验文件id',
  `version` varchar(64) DEFAULT NULL COMMENT '检验文件版本号',
  `project_id` varchar(64) DEFAULT NULL COMMENT '关联项目id',
  `project_code` varchar(64) DEFAULT NULL COMMENT '关联项目编码',
  `project_name` varchar(100) DEFAULT NULL COMMENT '所属项目名称',
  `train_number` varchar(64) DEFAULT NULL COMMENT '列车号',
  `carriage_number` varchar(64) DEFAULT NULL COMMENT '节车号',
  `quantity` varchar(64) DEFAULT NULL COMMENT '检验数量',
  `tracking_number` varchar(64) DEFAULT NULL COMMENT '项目跟踪号',
  `check_result` char(1) DEFAULT NULL COMMENT '检验结果  1不合格 0 合格',
  `check_status` varchar(64) DEFAULT NULL COMMENT '检验状态',
  `ncr_number` varchar(64) DEFAULT NULL COMMENT 'NCR编码',
  `ncr_result` varchar(20) DEFAULT NULL COMMENT 'ncr评审结果 (1.返修、2.返工、3.报废、4.让步放行、5',
  `auth_dept_id` varchar(64) DEFAULT NULL COMMENT '所属一级权限部门Id',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '所属部门名称',
  `process_id` varchar(64) DEFAULT NULL COMMENT '流程ID',
  `sign_user` varchar(255) DEFAULT NULL COMMENT '会签人员',
  `process_status` varchar(1) DEFAULT NULL COMMENT '审批状态',
  `parent_exe_id` varchar(64) DEFAULT NULL COMMENT '父检验记录id',
  `detail_id` varchar(64) DEFAULT NULL COMMENT 'WMS到货明细id',
  `dispatch_code` varchar(100) DEFAULT NULL COMMENT 'MES派工单号',
  `inspector_id` varchar(32) DEFAULT NULL COMMENT '检验员id',
  `inspector_name` varchar(32) DEFAULT NULL COMMENT '检验员姓名',
  `has_sub` char(1) DEFAULT NULL COMMENT '是否拥有子部件(0是否)',
  `a1` varchar(255) DEFAULT NULL COMMENT '检验工位，支持检验模板配置了多个工位的情况',
  `station_name` varchar(85) DEFAULT NULL COMMENT '作业工位名称',
  `a2` varchar(255) DEFAULT NULL COMMENT '是否已全部检验完，可以上传数据',
  `a3` varchar(255) DEFAULT NULL COMMENT '返工编码',
  `a4` varchar(255) DEFAULT NULL COMMENT '备用字段4',
  `a5` varchar(255) DEFAULT NULL COMMENT '备用字段5',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人姓名',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(200) DEFAULT NULL COMMENT '修改时间',
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `material_code` varchar(35) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(85) DEFAULT NULL COMMENT '物料名称',
  `serialnumber` varchar(64) DEFAULT NULL COMMENT 'serialNumber',
  `batchnumber` varchar(64) DEFAULT NULL COMMENT 'batchNumber',
  `producevender` varchar(35) DEFAULT NULL COMMENT '生产厂家编码',
  `producevendername` varchar(55) DEFAULT NULL COMMENT '生产厂家名称',
  `sup_wcord` varchar(64) DEFAULT NULL COMMENT '客户产品标识序列号/单件码',
  `inspect_filename` varchar(100) DEFAULT NULL COMMENT 'inspect_filename',
  `inspect_filecode` varchar(55) DEFAULT NULL COMMENT '检验模板编号',
  `inspect_type_code` varchar(25) DEFAULT NULL COMMENT '检验类型编码',
  `inspect_type_name` varchar(20) DEFAULT NULL COMMENT '检验类型名称',
  `procedure_code` varchar(30) DEFAULT NULL COMMENT '标准工序编码',
  `functree_code` varchar(120) DEFAULT NULL COMMENT '装配构型编码',
  `functree_name` varchar(55) DEFAULT NULL COMMENT '装配构型名称',
  `procedure_name` varchar(55) DEFAULT NULL COMMENT '标准工序名称',
  PRIMARY KEY (`execution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='过程检验记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qms2_biz_t_checkpoint`
--

DROP TABLE IF EXISTS `dm_qms2_biz_t_checkpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qms2_biz_t_checkpoint` (
  `checkpoint_id` varchar(64) NOT NULL COMMENT '检验项点id',
  `code` varchar(50) DEFAULT NULL COMMENT '检验项点编码',
  `name` varchar(64) DEFAULT NULL COMMENT '检验项点名称',
  `procedure_code` varchar(64) DEFAULT NULL COMMENT '工序编码',
  `is_serial` varchar(1) DEFAULT NULL COMMENT '是否产品序列号',
  `scre_cond` varchar(100) DEFAULT NULL COMMENT '补充筛选条件',
  `grade` varchar(15) DEFAULT NULL COMMENT '检验等级',
  `check_type` varchar(25) DEFAULT NULL COMMENT '检验类型分为测量、目测，当为“测量”的需要指定工具类型，指定上下',
  `check_date` varchar(200) DEFAULT NULL,
  `station` varchar(64) DEFAULT NULL COMMENT '作业工位',
  `functree_code` varchar(64) DEFAULT NULL COMMENT '功能构型代码',
  `test_standard` varchar(64) DEFAULT NULL COMMENT '检验标准',
  `test_apparatus` varchar(64) DEFAULT NULL COMMENT '检查器具(游标卡尺、万用表、手电）',
  `test_method` varchar(64) DEFAULT NULL COMMENT '检验方法，例如测量、审核',
  `sampling_plan_id` varchar(64) DEFAULT NULL COMMENT '抽样方案',
  `guide_pdf_file` varchar(500) DEFAULT NULL COMMENT 'pdf文件',
  `guide_file` varchar(500) DEFAULT NULL COMMENT '指导文件',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `auth_dept_id` varchar(64) DEFAULT NULL COMMENT '创建人所属一级权限部门Id',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(200) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `is_quote` char(1) DEFAULT NULL COMMENT '是否可被引用',
  `check_num` varchar(50) DEFAULT NULL COMMENT '检验数量',
  `check_position` varchar(50) DEFAULT NULL COMMENT '检验位置',
  `product_id` varchar(64) DEFAULT NULL COMMENT '检验项点id',
  `version` varchar(16) DEFAULT NULL COMMENT '版本',
  `supplement` varchar(200) DEFAULT NULL COMMENT '补充说明',
  `code_format` varchar(32) DEFAULT NULL COMMENT '检验结果格式',
  `sort` varchar(255) DEFAULT NULL COMMENT '排序',
  `special_sign` varchar(16) DEFAULT NULL COMMENT '特殊标识',
  `check_frequency` char(200) DEFAULT NULL,
  `standard_value` varchar(64) DEFAULT NULL COMMENT '标准值',
  `tolerances_up` varchar(64) DEFAULT NULL COMMENT '上公差',
  `tolerances_down` varchar(64) DEFAULT NULL COMMENT '下公差',
  `check_param` varchar(64) DEFAULT NULL COMMENT '定性规则',
  `work_guidance` varchar(255) DEFAULT NULL COMMENT '作业指导',
  `checkpoint_describe` longtext DEFAULT NULL COMMENT '项点描述',
  `community` varchar(64) DEFAULT NULL COMMENT '质量分类',
  `code_path` varchar(500) DEFAULT NULL COMMENT '编码全路径',
  `create_person` varchar(255) DEFAULT NULL COMMENT '创建人名称',
  `dept_name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `procedure_type_code` varchar(64) DEFAULT NULL COMMENT '工序分类编码',
  `IS_MUTUAL` varchar(1) DEFAULT NULL COMMENT '是否互检（0是，1否）',
  PRIMARY KEY (`checkpoint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='检验项点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qms2_biz_t_ele_resume_collect_result`
--

DROP TABLE IF EXISTS `dm_qms2_biz_t_ele_resume_collect_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qms2_biz_t_ele_resume_collect_result` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `ref_id` varchar(64) DEFAULT NULL COMMENT '实体关联履历标准id（qms2_biz_t_ele_resume',
  `collect_id` varchar(64) DEFAULT NULL COMMENT '采集项id',
  `collect_number` varchar(64) DEFAULT NULL COMMENT '采集项编号',
  `collect_result` varchar(400) DEFAULT NULL COMMENT 'collect_result',
  `file_pdf_name` varchar(64) DEFAULT NULL COMMENT '文件结果pdf文件名',
  `file_save_name` varchar(64) DEFAULT NULL COMMENT '文件结果保存的文件名',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(200) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `row_index` varchar(32) DEFAULT NULL COMMENT '代表是第几个结果值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='实体采集清单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qms2_biz_t_inspect_file`
--

DROP TABLE IF EXISTS `dm_qms2_biz_t_inspect_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qms2_biz_t_inspect_file` (
  `inspect_file_id` varchar(64) NOT NULL COMMENT 'inspect_file_id',
  `title` varchar(64) DEFAULT NULL COMMENT '检验文件标识',
  `name` varchar(64) DEFAULT NULL COMMENT '检验文件名称',
  `version` varchar(8) DEFAULT '1.0' COMMENT '检验文件版本号',
  `inspect_type` varchar(16) DEFAULT NULL COMMENT '检验类别（株机执行、供应商执行）',
  `process_id` varchar(16) DEFAULT NULL COMMENT '流程id',
  `functree_code` varchar(64) DEFAULT NULL COMMENT '功能构型代码',
  `scope` varchar(255) DEFAULT NULL COMMENT '适用范围',
  `test_standard` varchar(255) DEFAULT NULL COMMENT '检验依据',
  `sampling_plan_id` varchar(64) DEFAULT NULL COMMENT '关联的抽样方案',
  `status` varchar(15) DEFAULT NULL COMMENT '文件状态，草稿/校核/审批/批准',
  `sign_people` varchar(64) DEFAULT NULL COMMENT '会签人',
  `check_user` varchar(64) DEFAULT NULL COMMENT '审核人',
  `check_opinion` varchar(16) DEFAULT NULL COMMENT '审核意见（同意、不同意）',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(200) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `project_code` varchar(32) DEFAULT NULL COMMENT '项目代号',
  `inspect_check_type` varchar(32) DEFAULT NULL COMMENT '检验类型',
  `check_time` varchar(32) DEFAULT NULL COMMENT '检测单创建时间点',
  `procedure_code` varchar(64) DEFAULT NULL COMMENT '工序编码',
  `product_id` varchar(32) DEFAULT NULL COMMENT '关联的产品id',
  `value_type` varchar(32) DEFAULT NULL COMMENT '取值类型(人工取值，二维码取值)',
  `IS_SERIAL` char(1) DEFAULT NULL COMMENT '是否关联产品序列号',
  PRIMARY KEY (`inspect_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='检验文件策划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qms2_biz_t_inspect_file_history_precurement`
--

DROP TABLE IF EXISTS `dm_qms2_biz_t_inspect_file_history_precurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qms2_biz_t_inspect_file_history_precurement` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `inspect_file_id` varchar(64) DEFAULT NULL COMMENT '模板id',
  `code` varchar(64) DEFAULT NULL COMMENT '检验文件标识',
  `name` varchar(64) DEFAULT NULL COMMENT '检验文件名称',
  `version` varchar(8) DEFAULT NULL COMMENT '检验文件版本号',
  `inspect_type` varchar(64) DEFAULT NULL COMMENT '检验类别（株机执行、供应商执行）',
  `process_id` varchar(16) DEFAULT NULL COMMENT '流程id',
  `sampling_plan_id` varchar(64) DEFAULT NULL COMMENT '关联的抽样方案',
  `status` varchar(15) DEFAULT NULL COMMENT '文件状态，草稿/校核/审批/批准',
  `sign_people` varchar(64) DEFAULT NULL COMMENT '会签人',
  `check_opinion` varchar(16) DEFAULT NULL COMMENT '审核意见（同意、不同意）',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` varchar(200) DEFAULT NULL,
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(200) DEFAULT NULL COMMENT '修改时间',
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `project_id` varchar(32) DEFAULT NULL COMMENT '项目代号',
  `inspect_check_type` varchar(32) DEFAULT NULL COMMENT '检验类型',
  `product_id` varchar(32) DEFAULT NULL COMMENT '关联的产品id',
  `material_code` varchar(64) DEFAULT NULL COMMENT '物料编码',
  `check_user` varchar(64) DEFAULT NULL COMMENT '审核人',
  `station` varchar(255) DEFAULT NULL COMMENT '工位',
  `functree_code` varchar(64) DEFAULT NULL COMMENT '构型编码',
  `check_time` varchar(32) DEFAULT NULL COMMENT '检测单创建时间点',
  `procedure_code` varchar(64) DEFAULT NULL COMMENT '工序编码',
  `gist` varchar(255) DEFAULT NULL COMMENT '检验依据',
  `approver` varchar(128) DEFAULT NULL COMMENT '批准人',
  `sendway` char(1) DEFAULT NULL COMMENT '发送方式，1全部发布，2局部发布',
  `type` char(1) DEFAULT NULL COMMENT '检验模板类型 0通用，1专用',
  `inspect_check_result` varchar(32) DEFAULT NULL COMMENT '检验结果审批 0走审批 1不用',
  `inspect_check_result_role` varchar(128) DEFAULT NULL COMMENT '检验结果审批角色',
  `frt_number` varchar(64) DEFAULT NULL COMMENT '工艺路线编码',
  `code_path` varchar(500) DEFAULT NULL COMMENT '编码全路径',
  `procedure_material_code` varchar(64) DEFAULT NULL COMMENT '工序物料编码',
  `plan_id` varchar(64) DEFAULT NULL COMMENT '检验计划Id',
  `is_control_file` char(1) DEFAULT NULL COMMENT '是否中控模板',
  `is_send_mes` char(1) DEFAULT NULL COMMENT 'is_send_mes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='检验文件策划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qms2_biz_t_resume_data`
--

DROP TABLE IF EXISTS `dm_qms2_biz_t_resume_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qms2_biz_t_resume_data` (
  `id` varchar(64) NOT NULL COMMENT 'id',
  `inspectfile_id` varchar(64) DEFAULT NULL COMMENT '检验模板id',
  `inspectfile_name` varchar(64) DEFAULT NULL COMMENT '检验模板名称',
  `point_id` varchar(64) DEFAULT NULL COMMENT '检验项点id',
  `point_name` varchar(64) DEFAULT NULL COMMENT '检验项点名称',
  `configu_id` varchar(64) DEFAULT NULL COMMENT '子部件策划的id',
  `group_id` varchar(32) DEFAULT NULL COMMENT '数据集id',
  `type` char(1) DEFAULT NULL COMMENT '项点类型',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(200) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `root_dept_id` varchar(64) DEFAULT NULL COMMENT '所属一级权限部门Id',
  `retroactive_location_mame` varchar(255) DEFAULT NULL COMMENT '别称',
  `global_location_code` varchar(255) DEFAULT NULL COMMENT '全局位置编码，例如：001001-002001-004001',
  `point_code` varchar(64) DEFAULT NULL COMMENT '检验项点Code',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='履历模板数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qms2_biz_t_resume_deliver_log`
--

DROP TABLE IF EXISTS `dm_qms2_biz_t_resume_deliver_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qms2_biz_t_resume_deliver_log` (
  `id` varchar(100) DEFAULT NULL COMMENT 'id',
  `entity_id` varchar(64) DEFAULT NULL COMMENT 'entity_id',
  `project_code` varchar(255) DEFAULT NULL COMMENT 'project_code',
  `resume_id` varchar(100) DEFAULT NULL COMMENT 'resume_id',
  `create_user` varchar(100) DEFAULT NULL COMMENT 'create_user',
  `create_date` varchar(200) DEFAULT NULL COMMENT 'create_date',
  `train_structure_data` longtext DEFAULT NULL COMMENT 'train_structure_data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='qms2_biz_t_resume_deliver_log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_quality_issue_dept_response_rate`
--

DROP TABLE IF EXISTS `dm_quality_issue_dept_response_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_quality_issue_dept_response_rate` (
  `month` varchar(100) DEFAULT NULL COMMENT '月份',
  `Dept` varchar(100) DEFAULT NULL COMMENT '部门',
  `timely_response_count` int(11) DEFAULT NULL COMMENT '异常响应及时数量',
  `total_issues` int(11) DEFAULT NULL COMMENT '异常数量',
  `response_timeliness_rate` float(100,0) DEFAULT NULL COMMENT '质量异常响应及时率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门质量异常响应及时率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_quality_issue_line_response_rate`
--

DROP TABLE IF EXISTS `dm_quality_issue_line_response_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_quality_issue_line_response_rate` (
  `month` varchar(100) DEFAULT NULL COMMENT '月份',
  `Dept` varchar(100) DEFAULT NULL COMMENT '部门',
  `Line` varchar(100) DEFAULT NULL COMMENT '产线',
  `timely_response_count` int(11) DEFAULT NULL COMMENT '异常响应及时数量',
  `total_issues` int(11) DEFAULT NULL COMMENT '异常数量',
  `response_timeliness_rate` float(100,0) DEFAULT NULL COMMENT '质量异常响应及时率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='产线质量异常响应及时率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_quality_issue_overall_response_rate`
--

DROP TABLE IF EXISTS `dm_quality_issue_overall_response_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_quality_issue_overall_response_rate` (
  `month` varchar(100) DEFAULT NULL COMMENT '月份',
  `timely_response_count` int(11) DEFAULT NULL COMMENT '异常响应及时数量',
  `total_issues` int(11) DEFAULT NULL COMMENT '异常数量',
  `response_timeliness_rate` float(100,0) DEFAULT NULL COMMENT '质量异常响应及时率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='总质量异常响应及时率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_quality_issue_station_response_rate`
--

DROP TABLE IF EXISTS `dm_quality_issue_station_response_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_quality_issue_station_response_rate` (
  `month` varchar(100) DEFAULT NULL COMMENT '月份',
  `Dept` varchar(100) DEFAULT NULL COMMENT '部门',
  `Line` varchar(100) DEFAULT NULL COMMENT '产线',
  `Station` varchar(100) DEFAULT NULL COMMENT '工位',
  `timely_response_count` int(11) DEFAULT NULL COMMENT '异常响应及时数量',
  `total_issues` int(11) DEFAULT NULL COMMENT '异常数量',
  `response_timeliness_rate` float(100,0) DEFAULT NULL COMMENT '质量异常响应及时率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工位质量异常响应及时率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_quality_issue_with_response_time`
--

DROP TABLE IF EXISTS `dm_quality_issue_with_response_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_quality_issue_with_response_time` (
  `NUM` varchar(100) DEFAULT NULL COMMENT '编号',
  `CREATED_AT` varchar(100) DEFAULT NULL COMMENT '创建时刻',
  `CREATOR` varchar(100) DEFAULT NULL COMMENT '创建者',
  `DEPTNAME` varchar(100) DEFAULT NULL COMMENT '发生部门名称',
  `LINE` varchar(100) DEFAULT NULL COMMENT '发生生产线',
  `STATION` varchar(100) DEFAULT NULL COMMENT '发生工位',
  `PRODUCT` varchar(100) DEFAULT NULL COMMENT '产品名',
  `RCLSNAME` varchar(100) DEFAULT NULL COMMENT '责任班组',
  `RDEPT` varchar(100) DEFAULT NULL COMMENT '责任部门',
  `RESPONSOR` varchar(100) DEFAULT NULL COMMENT '负责人',
  `RESPONSETIME` varchar(100) DEFAULT NULL COMMENT '响应时刻',
  `DUTYTYPE` varchar(100) DEFAULT NULL COMMENT '责任类型',
  `ACLSNAME` varchar(100) DEFAULT NULL COMMENT '处置班组',
  `ADEPT` varchar(100) DEFAULT NULL COMMENT '处置部门',
  `ACTOR` varchar(100) DEFAULT NULL COMMENT '处理人',
  `ACTTIME` varchar(100) DEFAULT NULL COMMENT '处理时刻',
  `FEEDBACKERNAME` varchar(100) DEFAULT NULL COMMENT '反馈人',
  `FEEDBACKTIME` varchar(100) DEFAULT NULL COMMENT '反馈时刻',
  `PROJECT` varchar(100) DEFAULT NULL COMMENT '项目名',
  `RESPONSE_DURATION` float(100,2) DEFAULT NULL,
  `issue` varchar(100) DEFAULT NULL COMMENT '问题类型',
  `ifontime` varchar(100) DEFAULT NULL COMMENT '是否及时',
  `qdetail` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='质量异常响应时长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qulity_supplier_issue_order`
--

DROP TABLE IF EXISTS `dm_qulity_supplier_issue_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qulity_supplier_issue_order` (
  `SUPPLIER` varchar(100) DEFAULT NULL COMMENT '供应商',
  `SUPPLIER_COUNT` varchar(100) DEFAULT NULL COMMENT '质量问题数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_供应商质量问题排名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qulity_supplier_issue_order2`
--

DROP TABLE IF EXISTS `dm_qulity_supplier_issue_order2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qulity_supplier_issue_order2` (
  `Month1` varchar(100) DEFAULT NULL COMMENT '月份',
  `SUPPLIER` varchar(100) DEFAULT NULL COMMENT '供应商',
  `OCCURRENCE` varchar(100) DEFAULT NULL COMMENT '异常次数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_供应商质量问题排名2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qulity_supplier_issue_orderdept`
--

DROP TABLE IF EXISTS `dm_qulity_supplier_issue_orderdept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qulity_supplier_issue_orderdept` (
  `Month1` varchar(100) DEFAULT NULL COMMENT '月份',
  `Dept` varchar(100) DEFAULT NULL COMMENT '车间',
  `SUPPLIER` varchar(100) DEFAULT NULL COMMENT '供应商',
  `OCCURRENCE` varchar(100) DEFAULT NULL COMMENT '异常次数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='供应商质量问题排名-车间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qulity_supplier_issue_orderline`
--

DROP TABLE IF EXISTS `dm_qulity_supplier_issue_orderline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qulity_supplier_issue_orderline` (
  `Month1` varchar(100) DEFAULT NULL COMMENT '月份',
  `Dept` varchar(100) DEFAULT NULL COMMENT '车间',
  `Line` varchar(100) DEFAULT NULL COMMENT '产线',
  `SUPPLIER` varchar(100) DEFAULT NULL COMMENT '供应商',
  `OCCURRENCE` varchar(100) DEFAULT NULL COMMENT '异常次数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='供应商质量问题排名-产线';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_qulity_supplier_issue_orderstation`
--

DROP TABLE IF EXISTS `dm_qulity_supplier_issue_orderstation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_qulity_supplier_issue_orderstation` (
  `Month1` varchar(100) DEFAULT NULL COMMENT '月份',
  `Dept` varchar(100) DEFAULT NULL COMMENT '车间',
  `Line` varchar(100) DEFAULT NULL COMMENT '产线',
  `Station` varchar(100) DEFAULT NULL COMMENT '工位',
  `SUPPLIER` varchar(100) DEFAULT NULL COMMENT '供应商',
  `OCCURRENCE` varchar(100) DEFAULT NULL COMMENT '异常次数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='供应商质量问题排名-工位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_repair_details`
--

DROP TABLE IF EXISTS `dm_repair_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_repair_details` (
  `month1` varchar(100) DEFAULT NULL COMMENT '月份',
  `num` varchar(100) DEFAULT NULL COMMENT '编号',
  `product` varchar(100) DEFAULT NULL COMMENT '产品',
  `created_at` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `project` varchar(100) DEFAULT NULL COMMENT '项目',
  `qlibname` varchar(100) DEFAULT NULL COMMENT '问题类型',
  `responsor` varchar(100) DEFAULT NULL COMMENT '负责人',
  `rdept` varchar(100) DEFAULT NULL COMMENT '责任部门',
  `rclsname` varchar(100) DEFAULT NULL COMMENT '责任班组',
  `devicename` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `feedbacktime` varchar(100) DEFAULT NULL COMMENT '反馈时间',
  `close_hours` float(100,0) DEFAULT NULL COMMENT '关闭时长（小时）',
  `workshop` varchar(100) DEFAULT NULL COMMENT '车间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='下工序回修详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_rijihuawc_gw_1230`
--

DROP TABLE IF EXISTS `dm_rijihuawc_gw_1230`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_rijihuawc_gw_1230` (
  `FK_CRRC_ZXJ_CJ` varchar(50) DEFAULT ' ' COMMENT '车间',
  `FK_CRRC_ZXJ_CXBM` varchar(50) DEFAULT ' ' COMMENT '产线编码',
  `FK_CRRC_ZXJ_CX` varchar(50) DEFAULT ' ' COMMENT '生产线',
  `FK_CRRC_ZXJ_GWBM` varchar(50) DEFAULT ' ' COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(50) DEFAULT ' ' COMMENT '工位名称',
  `FK_CRRC_ZXJ_GXBM` varchar(50) DEFAULT ' ' COMMENT '工序编码',
  `FK_CRRC_ZXJ_GXMC` varchar(50) DEFAULT ' ' COMMENT '工序名称',
  `todaydate` varchar(100) DEFAULT NULL COMMENT '日期',
  `plan_fin_count` int(11) DEFAULT NULL COMMENT '计划完成数',
  `act_fin_count` int(11) DEFAULT NULL COMMENT '实际完成数',
  `rijihuawc_rate` double(100,0) DEFAULT NULL COMMENT '日计划完成率',
  `XM` varchar(100) DEFAULT NULL COMMENT '项目'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_日计划完成率_1230_gw';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_rijihuawc_gw_1231`
--

DROP TABLE IF EXISTS `dm_rijihuawc_gw_1231`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_rijihuawc_gw_1231` (
  `FK_CRRC_ZXJ_CJ` varchar(50) DEFAULT ' ' COMMENT '车间',
  `FK_CRRC_ZXJ_CXBM` varchar(50) DEFAULT ' ' COMMENT '产线编码',
  `FK_CRRC_ZXJ_CX` varchar(50) DEFAULT ' ' COMMENT '生产线',
  `FK_CRRC_ZXJ_GWBM` varchar(50) DEFAULT ' ' COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(50) DEFAULT ' ' COMMENT '工位名称',
  `FK_CRRC_ZXJ_GXBM` varchar(50) DEFAULT ' ' COMMENT '工序编码',
  `FK_CRRC_ZXJ_GXMC` varchar(50) DEFAULT ' ' COMMENT '工序名称',
  `todaydate` varchar(100) DEFAULT NULL COMMENT '日期',
  `plan_fin_count` int(11) DEFAULT NULL COMMENT '计划完成数',
  `act_fin_count` int(11) DEFAULT NULL COMMENT '实际完成数',
  `rijihuawc_rate` double DEFAULT NULL,
  `XM` varchar(100) DEFAULT NULL COMMENT '项目',
  `rjh_sjwcs` int(11) DEFAULT NULL COMMENT '日计划中的实际完成数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_日计划完成率_1231';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_rijihuawg`
--

DROP TABLE IF EXISTS `dm_rijihuawg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_rijihuawg` (
  `daydate` date DEFAULT NULL COMMENT '日期',
  `dayplan_done_num` int(11) DEFAULT NULL COMMENT '计划完成数量',
  `actual_done_num` int(11) DEFAULT NULL COMMENT '实际完成数量',
  `FK_CRRC_ZXJ_GWBM` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `FK_CRRC_ZXJ_GXMC` varchar(100) DEFAULT NULL COMMENT '工序名称',
  `OPCODE` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `FK_CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `FK_CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT '车间名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='日计划完工率_工位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_rijihuwc_0113_xm`
--

DROP TABLE IF EXISTS `dm_rijihuwc_0113_xm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_rijihuwc_0113_xm` (
  `FK_CRRC_ZXJ_CJ` varchar(50) DEFAULT ' ' COMMENT '车间',
  `FK_CRRC_ZXJ_CXBM` varchar(50) DEFAULT ' ' COMMENT '产线编码',
  `FK_CRRC_ZXJ_CX` varchar(50) DEFAULT ' ' COMMENT '生产线',
  `FK_CRRC_ZXJ_GWBM` varchar(50) DEFAULT ' ' COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(50) DEFAULT ' ' COMMENT '工位名称',
  `FK_CRRC_ZXJ_GXBM` varchar(50) DEFAULT ' ' COMMENT '工序编码',
  `FK_CRRC_ZXJ_GXMC` varchar(50) DEFAULT ' ' COMMENT '工序名称',
  `todaydate` varchar(100) DEFAULT NULL COMMENT '日期',
  `XM` varchar(100) DEFAULT NULL COMMENT '项目',
  `plan_fin_count` int(11) DEFAULT NULL COMMENT '计划完成数',
  `act_fin_count` int(11) DEFAULT NULL COMMENT '实际完成数',
  `rijihuawc_rate` double(100,0) DEFAULT NULL COMMENT '日计划完成率',
  `xm_name` varchar(100) DEFAULT NULL COMMENT '项目名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_日计划完成率_0113_xm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_rizhunshikg_pgd`
--

DROP TABLE IF EXISTS `dm_rizhunshikg_pgd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_rizhunshikg_pgd` (
  `rq` date DEFAULT NULL COMMENT '日期',
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT '车间',
  `FK_CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `FK_CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT '产线',
  `FK_CRRC_ZXJ_GWBM` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `PROJECT_code` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `pgd_state` varchar(100) DEFAULT NULL COMMENT '派工单状态',
  `ACTUAL_BEGIN_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '实际开始时间',
  `PLANNED_START_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '计划开始时间',
  `PLANNED_FINISH_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '计划结束时间',
  `ACTUAL_END_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际结束时间',
  `xm_NAME` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `state_code` int(11) DEFAULT NULL COMMENT '状态编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_日准时开工_pgd';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_rizhunshiwg_0103`
--

DROP TABLE IF EXISTS `dm_rizhunshiwg_0103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_rizhunshiwg_0103` (
  `cj` varchar(100) DEFAULT NULL COMMENT '车间名称',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cx` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `gwbm` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `gw` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `rq` varchar(100) DEFAULT NULL COMMENT '日期',
  `ontime_num` int(11) DEFAULT NULL COMMENT '日准时完工数量',
  `plan_num` int(11) DEFAULT NULL COMMENT '计划完工数量',
  `wanggong_num` int(11) DEFAULT NULL COMMENT '日实际完工数',
  `xm_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `xm` varchar(100) DEFAULT NULL COMMENT '项目号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_日准时完工_0103';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_rizhunshiwg_pgd`
--

DROP TABLE IF EXISTS `dm_rizhunshiwg_pgd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_rizhunshiwg_pgd` (
  `rq` date DEFAULT NULL COMMENT '日期',
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT '车间',
  `FK_CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `FK_CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT '产线',
  `FK_CRRC_ZXJ_GWBM` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `PROJECT_code` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `pgd_state` varchar(100) DEFAULT NULL COMMENT '派工单状态',
  `ACTUAL_BEGIN_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '实际开始时间',
  `PLANNED_START_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '计划开始时间',
  `PLANNED_FINISH_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '计划结束时间',
  `ACTUAL_END_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际结束时间',
  `xm_NAME` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `state_code` int(11) DEFAULT NULL COMMENT '状态编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_日计划准时完工派工单_0121';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_sbdjgd`
--

DROP TABLE IF EXISTS `dm_sbdjgd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_sbdjgd` (
  `fbillno` varchar(100) DEFAULT NULL COMMENT '点检工单号',
  `fbillstatus` varchar(100) DEFAULT NULL COMMENT '工单状态',
  `starttime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '点检开始时间',
  `finishtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '点检结束时间',
  `SFGZBX` varchar(100) DEFAULT NULL COMMENT '是否故障报修',
  `GDRQ` date DEFAULT NULL COMMENT '工单日期',
  `SBBM` varchar(100) DEFAULT NULL COMMENT '设备编码',
  `SBMC` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `CJ` varchar(100) DEFAULT NULL COMMENT '所属车间',
  `CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `CXMC` varchar(100) DEFAULT NULL COMMENT '产线名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm设备点检工单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_sboee`
--

DROP TABLE IF EXISTS `dm_sboee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_sboee` (
  `sbbm` varchar(100) DEFAULT NULL COMMENT '设备编码',
  `sbmc` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `cj` varchar(100) DEFAULT NULL COMMENT '车间',
  `cx` varchar(100) DEFAULT NULL COMMENT '产线',
  `gw` varchar(100) DEFAULT NULL COMMENT '工位',
  `jhkdl` decimal(23,2) DEFAULT NULL,
  `xnxl` decimal(23,2) DEFAULT NULL,
  `zlhgl` decimal(23,2) DEFAULT NULL,
  `rq` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm设备oee';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_sbwxsc`
--

DROP TABLE IF EXISTS `dm_sbwxsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_sbwxsc` (
  `BMDM` longtext DEFAULT NULL COMMENT '编码代码',
  `SBBM` longtext DEFAULT NULL COMMENT '设备编码',
  `SBMC` longtext DEFAULT NULL COMMENT '设备名称',
  `WXDH` longtext DEFAULT NULL COMMENT '维修单号',
  `KSSJ` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '开始时间',
  `JSSJ` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `WXSC` double DEFAULT NULL COMMENT '维修时长',
  `RQ` date DEFAULT NULL COMMENT '日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm设备维修时长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_sjpskkxgblfs`
--

DROP TABLE IF EXISTS `dm_sjpskkxgblfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_sjpskkxgblfs` (
  `month` varchar(100) DEFAULT NULL,
  `rectification_dept` varchar(100) DEFAULT NULL COMMENT '部门',
  `numerator` int(11) DEFAULT NULL,
  `denominator` int(11) DEFAULT NULL,
  `score` float(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='首件评审开口项关闭率分数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_sjpskkxgblzb`
--

DROP TABLE IF EXISTS `dm_sjpskkxgblzb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_sjpskkxgblzb` (
  `ID` int(11) NOT NULL COMMENT 'id',
  `name` varchar(100) DEFAULT NULL COMMENT '项目',
  `report_number` varchar(100) DEFAULT NULL COMMENT '报告编号',
  `unit` varchar(100) DEFAULT NULL COMMENT '首检工序/部件',
  `unit_tip` varchar(100) DEFAULT NULL COMMENT '首检工序/部件附加信息',
  `reason` varchar(100) DEFAULT NULL COMMENT '首检原因',
  `reason_tip` varchar(100) DEFAULT NULL COMMENT '首检原因附加信息',
  `inspection_date` datetime DEFAULT NULL COMMENT '首检时间',
  `created_at` datetime DEFAULT NULL COMMENT '取号时间',
  `applicant` varchar(100) DEFAULT NULL COMMENT '取号人',
  `status` varchar(100) DEFAULT NULL COMMENT '当前状态',
  `conclusion` varchar(100) DEFAULT NULL COMMENT '首检结论',
  `has_open_item` int(11) DEFAULT NULL,
  `open_item_content` varchar(200) DEFAULT NULL COMMENT '不符合项内容',
  `rectification_action` varchar(100) DEFAULT NULL COMMENT '整改要求',
  `rectification_dept` varchar(100) DEFAULT NULL COMMENT '实施部门',
  `expected_close_date` datetime DEFAULT NULL COMMENT '预计关闭时间',
  `rectification_result` varchar(100) DEFAULT NULL COMMENT '整改状态',
  `rectification_verifier` varchar(100) DEFAULT NULL COMMENT '验证人员',
  `rectification_verify_date` datetime DEFAULT NULL COMMENT '验证时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='首件评审开口项关闭率指标';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_station_average_close_duration`
--

DROP TABLE IF EXISTS `dm_station_average_close_duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_station_average_close_duration` (
  `month1` varchar(100) DEFAULT NULL COMMENT '统计月份',
  `department` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `production_line` varchar(100) DEFAULT NULL COMMENT '生产线名称',
  `station_name` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `average` float(100,0) DEFAULT NULL COMMENT '工位平均关闭时长'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='质量异常平均关闭时长-工位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_supplier_qulity_issue`
--

DROP TABLE IF EXISTS `dm_supplier_qulity_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_supplier_qulity_issue` (
  `ID` varchar(100) DEFAULT NULL COMMENT 'ID',
  `DATA` date DEFAULT NULL COMMENT 'DATA',
  `CREATOR` varchar(100) DEFAULT NULL COMMENT 'CREATOR',
  `PRODUCT` varchar(100) DEFAULT NULL COMMENT 'PRODUCT',
  `RESPONSOR` varchar(100) DEFAULT NULL COMMENT 'RESPONSOR',
  `RESPONSETIME` varchar(100) DEFAULT NULL COMMENT 'RESPONSETIME',
  `DUTYTYPE` varchar(100) DEFAULT NULL COMMENT 'DUTYTYPE',
  `ACTOR` varchar(100) DEFAULT NULL COMMENT 'ACTOR',
  `ACTTIME` varchar(100) DEFAULT NULL COMMENT 'ACTTIME',
  `FEEDBACKERNAME` varchar(100) DEFAULT NULL COMMENT 'FEEDBACKERNAME',
  `FEEDBACKTIME` varchar(100) DEFAULT NULL COMMENT 'FEEDBACKTIME',
  `DEPTNAME` varchar(100) DEFAULT NULL COMMENT 'DEPTNAME',
  `LINE` varchar(100) DEFAULT NULL COMMENT 'LINE',
  `STATION` varchar(100) DEFAULT NULL COMMENT 'STATION',
  `PROJECT` varchar(100) DEFAULT NULL COMMENT 'PROJECT',
  `QLIBNAME` varchar(100) DEFAULT NULL COMMENT 'QLIBNAME',
  `PARTNAME` varchar(100) DEFAULT NULL COMMENT 'PARTNAME',
  `DEVICENAME` varchar(100) DEFAULT NULL COMMENT 'DEVICENAME',
  `SUPPLIER` varchar(100) DEFAULT NULL COMMENT 'SUPPLIER',
  `CCLSNAME` varchar(100) DEFAULT NULL COMMENT 'CCLSNAME',
  `RCLSNAME` varchar(100) DEFAULT NULL COMMENT 'RCLSNAME',
  `ACLASENAME` varchar(100) DEFAULT NULL COMMENT 'ACLASENAME',
  `qdetail` varchar(500) DEFAULT NULL COMMENT '问题描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='供应商质量问题排名详表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_supplier_qulity_issue_order_zxj`
--

DROP TABLE IF EXISTS `dm_supplier_qulity_issue_order_zxj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_supplier_qulity_issue_order_zxj` (
  `Month1` varchar(100) DEFAULT NULL,
  `SUPPLIER` varchar(100) DEFAULT NULL COMMENT '供应商',
  `OCCURRENCE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_供应商问题排序事业部';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_t_emm_ncrreport02`
--

DROP TABLE IF EXISTS `dm_t_emm_ncrreport02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_t_emm_ncrreport02` (
  `fstorageorgunitid` longtext DEFAULT NULL COMMENT '库存组织',
  `ftranstypeid` longtext DEFAULT NULL COMMENT '事务类型',
  `fauditlevel` varchar(19) DEFAULT NULL,
  `fversionno` varchar(19) DEFAULT NULL,
  `fprojectid` longtext DEFAULT NULL COMMENT '项目号',
  `ftracknumberid` longtext DEFAULT NULL COMMENT '跟踪号',
  `fserialno` longtext DEFAULT NULL COMMENT '产品编号',
  `foccurdeptid` longtext DEFAULT NULL COMMENT '发生单位',
  `frestype` longtext DEFAULT NULL COMMENT '责任类别',
  `finresdeptid` longtext DEFAULT NULL COMMENT '内部责任单位',
  `foutresdeptid` longtext DEFAULT NULL COMMENT '外部责任单位',
  `foutresdeptmid` longtext DEFAULT NULL COMMENT '代理商对应的制造商',
  `ftype` varchar(19) DEFAULT NULL,
  `fqty` varchar(19) DEFAULT NULL,
  `fisrermaterial` varchar(19) DEFAULT NULL,
  `fmaterialid` longtext DEFAULT NULL COMMENT '物料',
  `fmaninfoid` longtext DEFAULT NULL COMMENT '生产订单',
  `fsaleoutinfoid` longtext DEFAULT NULL COMMENT '销售出库单',
  `fncrhandlerid` longtext DEFAULT NULL COMMENT '处理人',
  `frecorderid` longtext DEFAULT NULL COMMENT '记录人',
  `frecorddate` longtext DEFAULT NULL COMMENT '记录日期',
  `fconandresult` longtext DEFAULT NULL COMMENT '不合格品评审和处置',
  `fauditresult` longtext DEFAULT NULL COMMENT '评审结果及处理意见',
  `fdetailprocess` varchar(19) DEFAULT NULL,
  `fother` varchar(19) DEFAULT NULL,
  `faduitdescription` longtext DEFAULT NULL COMMENT '评审意见',
  `faudithandlerid` longtext DEFAULT NULL COMMENT '评审结果处理人',
  `fifrequiredyes` varchar(19) DEFAULT NULL,
  `fifrequired` varchar(19) DEFAULT NULL,
  `findbefore` longtext DEFAULT NULL COMMENT '在in之前分析原因',
  `fdonebefore` longtext DEFAULT NULL COMMENT '之前实施完毕',
  `foccurdepterid` longtext DEFAULT NULL COMMENT '发生单位签字人',
  `fresdepterid` longtext DEFAULT NULL COMMENT '责任单位签字人',
  `fqmerid` longtext DEFAULT NULL COMMENT '质量技术人员',
  `ftechnicianid` longtext DEFAULT NULL COMMENT '设计人员',
  `fproenginerid` longtext DEFAULT NULL COMMENT '工艺人员',
  `fsuppliermanagerid` longtext DEFAULT NULL COMMENT '供应商管理人员',
  `fchiefweldid` longtext DEFAULT NULL COMMENT '焊接主管监督人员或其代表',
  `fotherpersonid` longtext DEFAULT NULL COMMENT '其他评审人员',
  `fchiefengineerid` longtext DEFAULT NULL COMMENT '总工程师评审',
  `fchiefengdate` longtext DEFAULT NULL COMMENT '总工程师审核时间',
  `fclosedloop` longtext DEFAULT NULL COMMENT '处置措施实施情况',
  `finspectorid` longtext DEFAULT NULL COMMENT '跟踪验证人员',
  `finspecdate` longtext DEFAULT NULL COMMENT '跟踪验证日期',
  `faudittime` longtext DEFAULT NULL COMMENT '审核时间',
  `fbasestatus` varchar(19) DEFAULT NULL,
  `fbiztypeid` longtext DEFAULT NULL COMMENT '业务类型',
  `fsourcebilltypeid` longtext DEFAULT NULL COMMENT '来源单据类型',
  `fbilltypeid` longtext DEFAULT NULL COMMENT '单据类型',
  `fyear` varchar(19) DEFAULT NULL,
  `fperiod` varchar(19) DEFAULT NULL,
  `fmodifierid` longtext DEFAULT NULL COMMENT '修改人',
  `fmodificationtime` longtext DEFAULT NULL COMMENT '修改时间',
  `fnumber` longtext DEFAULT NULL COMMENT '单据编号',
  `fbizdate` longtext DEFAULT NULL COMMENT '业务日期',
  `fhandlerid` longtext DEFAULT NULL COMMENT '经手人',
  `fdescription` longtext DEFAULT NULL COMMENT '参考信息',
  `fhaseffected` varchar(19) DEFAULT NULL,
  `fauditorid` longtext DEFAULT NULL COMMENT '审核人',
  `fsourcebillid` longtext DEFAULT NULL COMMENT '原始单据ID',
  `fsourcefunction` longtext DEFAULT NULL COMMENT '来源功能',
  `fcreatorid` longtext DEFAULT NULL COMMENT '创建者',
  `fcreatetime` longtext DEFAULT NULL COMMENT '创建时间',
  `flastupdateuserid` longtext DEFAULT NULL COMMENT '最后修改者',
  `flastupdatetime` longtext DEFAULT NULL COMMENT '最后修改时间',
  `fcontrolunitid` longtext DEFAULT NULL COMMENT '控制单元',
  `fid` longtext DEFAULT NULL COMMENT 'ID',
  `fmoveoutwareid` longtext DEFAULT NULL COMMENT '调拨出库仓库',
  `faffirmerid` longtext DEFAULT NULL COMMENT '关闭人',
  `faffirmdate` longtext DEFAULT NULL COMMENT '关闭时间',
  `faudithandlerstr` longtext DEFAULT NULL COMMENT '评审结果处理人签字(字符)',
  `foccurdepterstr` longtext DEFAULT NULL COMMENT '发生单位签字人(字符)',
  `fresdepterstr` longtext DEFAULT NULL COMMENT '责任单位签字人',
  `fqmerstr` longtext DEFAULT NULL COMMENT '质量技术人员签字人(字符)',
  `ftechnicianstr` longtext DEFAULT NULL COMMENT '设计人员签字(字符)',
  `fproenginerstr` longtext DEFAULT NULL COMMENT '工艺人员签字(字符)',
  `fsuppliermanagerstr` longtext DEFAULT NULL COMMENT '供应商管理人员签字(字符)',
  `fchiefweldstr` longtext DEFAULT NULL COMMENT '焊接主管监督人员或其代表签字(字符)',
  `fotherpersonstr` longtext DEFAULT NULL COMMENT '其他评审人员签字(字符)',
  `foutsourceissueid` longtext DEFAULT NULL COMMENT '委外出库单',
  `fdepartment1id` longtext DEFAULT NULL COMMENT '相关部门1',
  `fdepartment2id` longtext DEFAULT NULL COMMENT '相关部门2',
  `fdepartment3id` longtext DEFAULT NULL COMMENT '相关部门3',
  `fdepartment4id` longtext DEFAULT NULL COMMENT '相关部门4',
  `fdepartment5id` longtext DEFAULT NULL COMMENT '相关部门5',
  `fdepartment6id` longtext DEFAULT NULL COMMENT '相关部门6',
  `fdepartment7id` longtext DEFAULT NULL COMMENT '相关部门7',
  `fpurchasegroupid` longtext DEFAULT NULL COMMENT '采购组',
  `fpurchasepersonid` longtext DEFAULT NULL COMMENT '采购员',
  `cfallinkid` longtext DEFAULT NULL COMMENT 'CFALLINKID',
  `cfallinkentryid` longtext DEFAULT NULL COMMENT 'CFALLINKENTRYID',
  `fsubmiterid` longtext DEFAULT NULL COMMENT '提交人',
  `fsubmittime` longtext DEFAULT NULL COMMENT '提交时间',
  `fpurorderid` longtext DEFAULT NULL COMMENT '核心单据ID',
  `fpurorderentryid` longtext DEFAULT NULL COMMENT '核心单据分录ID',
  `cfimg1` longtext DEFAULT NULL COMMENT '描述图片1',
  `cfimg2` longtext DEFAULT NULL COMMENT '描述图片2',
  `fqualityhour` varchar(19) DEFAULT NULL,
  `fqualityclass` longtext DEFAULT NULL COMMENT '质量损失类别',
  `fqualityreason` longtext DEFAULT NULL COMMENT '质量损失原因',
  `cfoldauditor` longtext DEFAULT NULL COMMENT '源单审核人',
  `fotherissuebillid` longtext DEFAULT NULL COMMENT '其他出库单',
  `cfpurorgunitid` longtext DEFAULT NULL COMMENT '采购组织',
  `fisslncr` varchar(19) DEFAULT NULL,
  `cflotnumber` longtext DEFAULT NULL COMMENT 'CFLOTNUMBER',
  `funitsource` varchar(19) DEFAULT NULL,
  `flotnumber` longtext DEFAULT NULL COMMENT 'FLOTNUMBER',
  `fworkcenterid` longtext DEFAULT NULL COMMENT '工作中心',
  `cfwmsstatus` varchar(19) DEFAULT NULL,
  `cfsrmprogress` varchar(19) DEFAULT NULL,
  `cfncrmnumber` longtext DEFAULT NULL COMMENT '来源单据编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_t_emm_ncrreport02';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_t_emm_ncrreport1`
--

DROP TABLE IF EXISTS `dm_t_emm_ncrreport1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_t_emm_ncrreport1` (
  `fstorageorgunitid` longtext DEFAULT NULL COMMENT '库存组织',
  `ftranstypeid` longtext DEFAULT NULL COMMENT '事务类型',
  `fauditlevel` bigint(20) DEFAULT NULL COMMENT '评审级别',
  `fversionno` bigint(20) DEFAULT NULL COMMENT '版本号',
  `fprojectid` longtext DEFAULT NULL COMMENT '项目号',
  `ftracknumberid` longtext DEFAULT NULL COMMENT '跟踪号',
  `fserialno` longtext DEFAULT NULL COMMENT '产品编号',
  `foccurdeptid` longtext DEFAULT NULL COMMENT '发生单位',
  `frestype` longtext DEFAULT NULL COMMENT '责任类别',
  `finresdeptid` longtext DEFAULT NULL COMMENT '内部责任单位',
  `foutresdeptid` longtext DEFAULT NULL COMMENT '外部责任单位',
  `foutresdeptmid` longtext DEFAULT NULL COMMENT '代理商对应的制造商',
  `ftype` bigint(20) DEFAULT NULL COMMENT '不合格品类别',
  `fqty` bigint(20) DEFAULT NULL COMMENT '不合格品数量',
  `fisrermaterial` bigint(20) DEFAULT NULL COMMENT '是否退料',
  `fmaterialid` longtext DEFAULT NULL COMMENT '物料',
  `fmaninfoid` longtext DEFAULT NULL COMMENT '生产订单',
  `fsaleoutinfoid` longtext DEFAULT NULL COMMENT '销售出库单',
  `fncrhandlerid` longtext DEFAULT NULL COMMENT '处理人',
  `frecorderid` longtext DEFAULT NULL COMMENT '记录人',
  `frecorddate` longtext DEFAULT NULL COMMENT '记录日期',
  `fconandresult` longtext DEFAULT NULL COMMENT '不合格品评审和处置',
  `fauditresult` longtext DEFAULT NULL COMMENT '评审结果及处理意见',
  `fdetailprocess` bigint(20) DEFAULT NULL COMMENT '下发具体方案',
  `fother` bigint(20) DEFAULT NULL COMMENT '其他',
  `faduitdescription` longtext DEFAULT NULL COMMENT '评审意见',
  `faudithandlerid` longtext DEFAULT NULL COMMENT '评审结果处理人',
  `fifrequiredyes` bigint(20) DEFAULT NULL COMMENT '是否要求制定纠正措施Yes',
  `fifrequired` bigint(20) DEFAULT NULL COMMENT '是否要求制定纠正措施No',
  `findbefore` longtext DEFAULT NULL COMMENT '在in之前分析原因',
  `fdonebefore` longtext DEFAULT NULL COMMENT '之前实施完毕',
  `foccurdepterid` longtext DEFAULT NULL COMMENT '发生单位签字人',
  `fresdepterid` longtext DEFAULT NULL COMMENT '责任单位签字人',
  `fqmerid` longtext DEFAULT NULL COMMENT '质量技术人员',
  `ftechnicianid` longtext DEFAULT NULL COMMENT '设计人员',
  `fproenginerid` longtext DEFAULT NULL COMMENT '工艺人员',
  `fsuppliermanagerid` longtext DEFAULT NULL COMMENT '供应商管理人员',
  `fchiefweldid` longtext DEFAULT NULL COMMENT '焊接主管监督人员或其代表',
  `fotherpersonid` longtext DEFAULT NULL COMMENT '其他评审人员',
  `fchiefengineerid` longtext DEFAULT NULL COMMENT '总工程师评审',
  `fchiefengdate` longtext DEFAULT NULL COMMENT '总工程师审核时间',
  `fclosedloop` longtext DEFAULT NULL COMMENT '处置措施实施情况',
  `finspectorid` longtext DEFAULT NULL COMMENT '跟踪验证人员',
  `finspecdate` longtext DEFAULT NULL COMMENT '跟踪验证日期',
  `faudittime` longtext DEFAULT NULL COMMENT '审核时间',
  `fbasestatus` bigint(20) DEFAULT NULL COMMENT '单据状态',
  `fbiztypeid` longtext DEFAULT NULL COMMENT '业务类型',
  `fsourcebilltypeid` longtext DEFAULT NULL COMMENT '来源单据类型',
  `fbilltypeid` longtext DEFAULT NULL COMMENT '单据类型',
  `fyear` bigint(20) DEFAULT NULL COMMENT '业务年度',
  `fperiod` bigint(20) DEFAULT NULL COMMENT '业务期间',
  `fmodifierid` longtext DEFAULT NULL COMMENT '修改人',
  `fmodificationtime` longtext DEFAULT NULL COMMENT '修改时间',
  `fnumber` longtext DEFAULT NULL COMMENT '单据编号',
  `fbizdate` longtext DEFAULT NULL COMMENT '业务日期',
  `fhandlerid` longtext DEFAULT NULL COMMENT '经手人',
  `fdescription` longtext DEFAULT NULL COMMENT '参考信息',
  `fhaseffected` bigint(20) DEFAULT NULL COMMENT '是否曾经生效',
  `fauditorid` longtext DEFAULT NULL COMMENT '审核人',
  `fsourcebillid` longtext DEFAULT NULL COMMENT '原始单据ID',
  `fsourcefunction` longtext DEFAULT NULL COMMENT '来源功能',
  `fcreatorid` longtext DEFAULT NULL COMMENT '创建者',
  `fcreatetime` longtext DEFAULT NULL COMMENT '创建时间',
  `flastupdateuserid` longtext DEFAULT NULL COMMENT '最后修改者',
  `flastupdatetime` longtext DEFAULT NULL COMMENT '最后修改时间',
  `fcontrolunitid` longtext DEFAULT NULL COMMENT '控制单元',
  `fid` longtext DEFAULT NULL COMMENT 'ID',
  `fmoveoutwareid` longtext DEFAULT NULL COMMENT '调拨出库仓库',
  `faffirmerid` longtext DEFAULT NULL COMMENT '关闭人',
  `faffirmdate` longtext DEFAULT NULL COMMENT '关闭时间',
  `faudithandlerstr` longtext DEFAULT NULL COMMENT '评审结果处理人签字(字符)',
  `foccurdepterstr` longtext DEFAULT NULL COMMENT '发生单位签字人(字符)',
  `fresdepterstr` longtext DEFAULT NULL COMMENT '责任单位签字人',
  `fqmerstr` longtext DEFAULT NULL COMMENT '质量技术人员签字人(字符)',
  `ftechnicianstr` longtext DEFAULT NULL COMMENT '设计人员签字(字符)',
  `fproenginerstr` longtext DEFAULT NULL COMMENT '工艺人员签字(字符)',
  `fsuppliermanagerstr` longtext DEFAULT NULL COMMENT '供应商管理人员签字(字符)',
  `fchiefweldstr` longtext DEFAULT NULL COMMENT '焊接主管监督人员或其代表签字(字符)',
  `fotherpersonstr` longtext DEFAULT NULL COMMENT '其他评审人员签字(字符)',
  `foutsourceissueid` longtext DEFAULT NULL COMMENT '委外出库单',
  `fdepartment1id` longtext DEFAULT NULL COMMENT '相关部门1',
  `fdepartment2id` longtext DEFAULT NULL COMMENT '相关部门2',
  `fdepartment3id` longtext DEFAULT NULL COMMENT '相关部门3',
  `fdepartment4id` longtext DEFAULT NULL COMMENT '相关部门4',
  `fdepartment5id` longtext DEFAULT NULL COMMENT '相关部门5',
  `fdepartment6id` longtext DEFAULT NULL COMMENT '相关部门6',
  `fdepartment7id` longtext DEFAULT NULL COMMENT '相关部门7',
  `fpurchasegroupid` longtext DEFAULT NULL COMMENT '采购组',
  `fpurchasepersonid` longtext DEFAULT NULL COMMENT '采购员',
  `cfallinkid` longtext DEFAULT NULL COMMENT 'CFALLINKID',
  `cfallinkentryid` longtext DEFAULT NULL COMMENT 'CFALLINKENTRYID',
  `fsubmiterid` longtext DEFAULT NULL COMMENT '提交人',
  `fsubmittime` longtext DEFAULT NULL COMMENT '提交时间',
  `fpurorderid` longtext DEFAULT NULL COMMENT '核心单据ID',
  `fpurorderentryid` longtext DEFAULT NULL COMMENT '核心单据分录ID',
  `cfimg1` longtext DEFAULT NULL COMMENT '描述图片1',
  `cfimg2` longtext DEFAULT NULL COMMENT '描述图片2',
  `fqualityhour` bigint(20) DEFAULT NULL COMMENT '质量损失时间',
  `fqualityclass` longtext DEFAULT NULL COMMENT '质量损失类别',
  `fqualityreason` longtext DEFAULT NULL COMMENT '质量损失原因',
  `cfoldauditor` longtext DEFAULT NULL COMMENT '源单审核人',
  `fotherissuebillid` longtext DEFAULT NULL COMMENT '其他出库单',
  `cfpurorgunitid` longtext DEFAULT NULL COMMENT '采购组织',
  `fisslncr` bigint(20) DEFAULT NULL COMMENT '是否产生销售ncr',
  `cflotnumber` longtext DEFAULT NULL COMMENT 'CFLOTNUMBER',
  `funitsource` bigint(20) DEFAULT NULL COMMENT '计量单位来源',
  `flotnumber` longtext DEFAULT NULL COMMENT 'FLOTNUMBER',
  `fworkcenterid` longtext DEFAULT NULL COMMENT '工作中心',
  `cfwmsstatus` bigint(20) DEFAULT NULL COMMENT 'CFWMSSTATUS',
  `cfsrmprogress` bigint(20) DEFAULT NULL COMMENT '同步状态',
  `cfncrmnumber` longtext DEFAULT NULL COMMENT '来源单据编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_t_emm_ncrreport1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_t_mm_project`
--

DROP TABLE IF EXISTS `dm_t_mm_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_t_mm_project` (
  `FTOTALCOST` double(17,4) NOT NULL DEFAULT 0.0000 COMMENT 'FTOTALCOST',
  `FUNITCOST` double(17,4) NOT NULL DEFAULT 0.0000 COMMENT 'FUNITCOST',
  `FTOTALTIME` double(17,4) NOT NULL DEFAULT 0.0000 COMMENT 'FTOTALTIME',
  `FPLANBEGINTIME` datetime DEFAULT NULL COMMENT 'FPLANBEGINTIME',
  `FPLANENDTIME` datetime DEFAULT NULL COMMENT 'FPLANENDTIME',
  `FEARISTBEGINTIME` datetime DEFAULT NULL COMMENT 'FEARISTBEGINTIME',
  `FLASTBEGINTIME` datetime DEFAULT NULL COMMENT 'FLASTBEGINTIME',
  `FEARISTENDTIME` datetime DEFAULT NULL COMMENT 'FEARISTENDTIME',
  `FLASTENDTIME` datetime DEFAULT NULL COMMENT 'FLASTENDTIME',
  `FQTY` double(21,8) NOT NULL DEFAULT 0.00000000 COMMENT 'FQTY',
  `FGROUPID` varchar(44) DEFAULT NULL COMMENT 'FGROUPID',
  `FPERSONID` varchar(44) DEFAULT NULL COMMENT 'FPERSONID',
  `FADMINORGUNITID` varchar(44) DEFAULT NULL COMMENT 'FADMINORGUNITID',
  `FMATERIALID` varchar(44) DEFAULT NULL COMMENT 'FMATERIALID',
  `FISTEMPLATE` int(11) NOT NULL DEFAULT 0 COMMENT 'FISTEMPLATE',
  `FCURRENCYID` varchar(44) DEFAULT NULL COMMENT 'FCURRENCYID',
  `FBASEUNITID` varchar(44) DEFAULT NULL COMMENT 'FBASEUNITID',
  `FACTTOTALCOST` double(17,4) NOT NULL DEFAULT 0.0000 COMMENT 'FACTTOTALCOST',
  `FTOTALQTY` double(21,8) NOT NULL DEFAULT 0.00000000 COMMENT 'FTOTALQTY',
  `FCOMPLETEPERCENT` double(21,8) NOT NULL DEFAULT 0.00000000 COMMENT 'FCOMPLETEPERCENT',
  `FACTUALBEGINTIME` datetime DEFAULT NULL COMMENT 'FACTUALBEGINTIME',
  `FACTUALENDTIME` datetime DEFAULT NULL COMMENT 'FACTUALENDTIME',
  `FACTUALTOTALTIME` double(17,4) NOT NULL DEFAULT 0.0000 COMMENT 'FACTUALTOTALTIME',
  `FBASEQTY` double(21,8) NOT NULL DEFAULT 0.00000000 COMMENT 'FBASEQTY',
  `FPROJECTTYPEID` varchar(44) DEFAULT NULL COMMENT 'FPROJECTTYPEID',
  `FUNITID` varchar(44) DEFAULT NULL COMMENT 'FUNITID',
  `FTOTALBASEQTY` double(21,8) NOT NULL DEFAULT 0.00000000 COMMENT 'FTOTALBASEQTY',
  `FBIZDATE` datetime DEFAULT NULL COMMENT 'FBIZDATE',
  `FHASEFFECTED` int(11) NOT NULL DEFAULT 0 COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(44) DEFAULT NULL COMMENT 'FAUDITORID',
  `FHANDLERID` varchar(44) DEFAULT NULL COMMENT 'FHANDLERID',
  `FAUDITTIME` datetime DEFAULT NULL COMMENT 'FAUDITTIME',
  `FBASESTATUS` int(11) NOT NULL DEFAULT 0 COMMENT 'FBASESTATUS',
  `FADMINCUID` varchar(44) DEFAULT NULL COMMENT 'FADMINCUID',
  `FNAME_L1` varchar(382) DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(382) DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(382) DEFAULT NULL COMMENT 'FNAME_L3',
  `FNUMBER` varchar(120) DEFAULT NULL COMMENT 'FNUMBER',
  `FDESCRIPTION_L1` varchar(1500) DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(1500) DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(1500) DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(120) DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FCREATORID` varchar(44) DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` datetime DEFAULT NULL COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` datetime DEFAULT NULL COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FID` varchar(44) NOT NULL COMMENT 'FID',
  `FCENTRALPURSTGORGID` varchar(44) DEFAULT NULL COMMENT 'FCENTRALPURSTGORGID',
  `FPROJECTASSISTID` varchar(44) DEFAULT NULL COMMENT 'FPROJECTASSISTID',
  `FISCHANGING` int(11) DEFAULT NULL COMMENT 'FISCHANGING',
  `FPRIORITY` int(11) NOT NULL DEFAULT 10 COMMENT 'FPRIORITY',
  `FPROJECTCALENDARID` varchar(44) DEFAULT NULL COMMENT 'FPROJECTCALENDARID',
  `CFPROJECTATTR` int(11) DEFAULT NULL COMMENT 'CFPROJECTATTR',
  `CFNCRPREFIX` varchar(120) DEFAULT NULL COMMENT 'CFNCRPREFIX',
  `CFORDERNUM` int(11) DEFAULT NULL COMMENT 'CFORDERNUM',
  `CFNORECORDERID` varchar(44) DEFAULT NULL COMMENT 'CFNORECORDERID',
  `CFNODATE` datetime DEFAULT NULL COMMENT 'CFNODATE',
  `CFPROJECTAPPID` varchar(44) DEFAULT NULL COMMENT 'CFPROJECTAPPID',
  `CFLCMPROJECTTYPEID` varchar(44) DEFAULT NULL COMMENT 'CFLCMPROJECTTYPEID',
  `CFPROJECTTYPESID` varchar(44) DEFAULT NULL COMMENT 'CFPROJECTTYPESID',
  `CFINEXTENSION` int(11) DEFAULT NULL COMMENT 'CFINEXTENSION',
  `CFISNOHOST` int(11) DEFAULT NULL COMMENT 'CFISNOHOST',
  `FINEXTENSION` int(11) DEFAULT NULL COMMENT 'FINEXTENSION',
  `FISNOHOST` int(11) DEFAULT NULL COMMENT 'FISNOHOST',
  `FPLANINCOME` double(28,10) DEFAULT NULL COMMENT 'FPLANINCOME',
  `FFACTORYCALENDARID` varchar(44) DEFAULT NULL COMMENT 'FFACTORYCALENDARID',
  `FACTUALINCOME` double(28,10) DEFAULT NULL COMMENT 'FACTUALINCOME',
  `FISPREPRODCUT` int(11) DEFAULT NULL COMMENT 'FISPREPRODCUT',
  `FCERTAINTY` int(11) DEFAULT NULL COMMENT 'FCERTAINTY',
  `FREQENDTIME` datetime DEFAULT NULL COMMENT 'FREQENDTIME',
  `FVERSION` varchar(150) DEFAULT NULL COMMENT 'FVERSION',
  `FLASTWORKTIME` double(28,10) DEFAULT NULL COMMENT 'FLASTWORKTIME',
  `FPCONTROLMODE` int(11) DEFAULT NULL COMMENT 'FPCONTROLMODE',
  `FDESCRIPTION` varchar(1500) DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FREQWORKTIME` double(28,10) DEFAULT NULL COMMENT 'FREQWORKTIME',
  `FREQBEGINTIME` datetime DEFAULT NULL COMMENT 'FREQBEGINTIME',
  `FMCONTROLMODE` int(11) DEFAULT NULL COMMENT 'FMCONTROLMODE',
  `FBATCHPROPERTY` int(11) DEFAULT NULL COMMENT 'FBATCHPROPERTY',
  `FEARLIESTWORKTIME` double(28,10) DEFAULT NULL COMMENT 'FEARLIESTWORKTIME',
  `FSOURCE` int(11) DEFAULT NULL COMMENT 'FSOURCE',
  `FCONTROLDIMENSION` int(11) DEFAULT NULL COMMENT 'FCONTROLDIMENSION',
  `FSETUPSTORAGEORGID` varchar(44) DEFAULT NULL COMMENT 'FSETUPSTORAGEORGID',
  `FISINEXTENSION` int(11) DEFAULT NULL COMMENT 'FISINEXTENSION',
  `FPURCHASEPERSONID` varchar(44) DEFAULT 'null\n' COMMENT 'FPURCHASEPERSONID',
  `CFPROTEGORYID` varchar(44) DEFAULT NULL COMMENT 'CFPROTEGORYID',
  `CFPROCONFIGURATION` varchar(44) DEFAULT NULL COMMENT 'CFPROCONFIGURATION',
  `CFSTAGESTATE` varchar(100) DEFAULT NULL COMMENT 'CFSTAGESTATE',
  `CFMARKETSOURCES` varchar(100) DEFAULT NULL COMMENT 'CFMARKETSOURCES',
  `CFPRODUCTVARIETY` varchar(100) DEFAULT NULL COMMENT 'CFPRODUCTVARIETY',
  `CFTYPEWORKORDERID` varchar(44) DEFAULT NULL COMMENT 'CFTYPEWORKORDERID',
  `CFISSYSCREATE` int(11) DEFAULT NULL COMMENT 'CFISSYSCREATE',
  `CFPROJECTVOIPTYPEI` varchar(44) DEFAULT NULL COMMENT 'CFPROJECTVOIPTYPEI',
  `CFCUSTOMERID` varchar(44) DEFAULT NULL COMMENT 'CFCUSTOMERID',
  `CFTHEIRCARID` varchar(44) DEFAULT NULL COMMENT 'CFTHEIRCARID',
  `CFLOTNUMBERID` varchar(44) DEFAULT NULL COMMENT 'CFLOTNUMBERID',
  `CFPROJCH` varchar(75) DEFAULT NULL COMMENT 'CFPROJCH',
  `FISSENDTOESB` int(11) DEFAULT 0 COMMENT 'FISSENDTOESB',
  `CFISSOURCEPMS` int(11) DEFAULT NULL COMMENT 'CFISSOURCEPMS',
  `CFPMSPROID` varchar(75) DEFAULT NULL COMMENT 'CFPMSPROID',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='t_mm_project';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_takt_time`
--

DROP TABLE IF EXISTS `dm_takt_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_takt_time` (
  `dispatch_code` varchar(100) NOT NULL COMMENT '派工单编号',
  `CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `CXMC` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `GXBM` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `GXMC` varchar(100) DEFAULT NULL COMMENT '工序名称',
  `projectname` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `productcode` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `productname` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `serialnumber` varchar(100) DEFAULT NULL COMMENT '序列号',
  `planned_start_time` datetime DEFAULT NULL COMMENT '预计开始时间',
  `planned_finish_time` datetime DEFAULT NULL COMMENT '预计完成时间',
  `plannedtime` int(11) DEFAULT NULL COMMENT '预计所需时间',
  `actual_begin_date` datetime DEFAULT NULL COMMENT '实际开始时间',
  `actual_end_date` datetime DEFAULT NULL COMMENT '实际完成时间',
  `actualtime` int(11) DEFAULT NULL COMMENT '实际用时',
  `actualbingo` int(11) DEFAULT NULL COMMENT '实际完成情况',
  `work_date` int(11) DEFAULT NULL COMMENT 'MES用时',
  `workdatebingo` int(11) DEFAULT NULL COMMENT 'MES用时完成情况',
  KEY `index_5a33` (`CXMC`),
  KEY `index_1b0d` (`GXMC`),
  KEY `index_127f` (`actual_end_date`),
  KEY `index_1e9d` (`actualbingo`),
  KEY `index_7724` (`workdatebingo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_takt_time';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_test`
--

DROP TABLE IF EXISTS `dm_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_test` (
  `wefcerv` varchar(100) DEFAULT NULL COMMENT 'wefcerv',
  `ertyr` varchar(100) DEFAULT NULL COMMENT 'ertyr'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='_测试_';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tjg_first_piece_inspection_report`
--

DROP TABLE IF EXISTS `dm_tjg_first_piece_inspection_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tjg_first_piece_inspection_report` (
  `id` int(11) DEFAULT NULL,
  `firstsendbackat` longtext DEFAULT NULL COMMENT 'firstSendBackAt',
  `sendbackcount` longtext DEFAULT NULL COMMENT 'sendBackCount',
  `handler` longtext DEFAULT NULL COMMENT 'handler',
  `handlername` longtext DEFAULT NULL COMMENT 'handlerName',
  `baseto` longtext DEFAULT NULL COMMENT '用于哪个公司首检',
  `basefrom` longtext DEFAULT NULL COMMENT '用于哪个事业部首检',
  `status` longtext DEFAULT NULL COMMENT '状态',
  `year` longtext DEFAULT NULL COMMENT '年',
  `project_code` longtext DEFAULT NULL COMMENT '项目代号',
  `project_id` longtext DEFAULT NULL COMMENT '项目ID',
  `number` longtext DEFAULT NULL COMMENT '编号(每年重置)',
  `kind` longtext DEFAULT NULL COMMENT '类别',
  `new_or_repair` longtext DEFAULT NULL COMMENT '修造类别',
  `reason` longtext DEFAULT NULL COMMENT '首检原因',
  `reason_tip` longtext DEFAULT NULL COMMENT '首检原因-额外信息',
  `unit` longtext DEFAULT NULL COMMENT '首检工序/部件',
  `unit_tip` longtext DEFAULT NULL COMMENT '工序额外信息',
  `inspection_date` longtext DEFAULT NULL COMMENT '首检时间',
  `applicant` longtext DEFAULT NULL COMMENT '取号人',
  `creatorname` longtext DEFAULT NULL COMMENT 'creatorName',
  `conclusion` longtext DEFAULT NULL COMMENT '首检结论',
  `has_open_item` longtext DEFAULT NULL COMMENT '是否有开口项',
  `open_item` longtext DEFAULT NULL COMMENT 'open_item',
  `attach` longtext DEFAULT NULL COMMENT '报告本体',
  `attaches` longtext DEFAULT NULL COMMENT '附件(原)',
  `records` longtext DEFAULT NULL COMMENT '关联文件',
  `s3` longtext DEFAULT NULL COMMENT 's3',
  `s3h` longtext DEFAULT NULL COMMENT 's3h',
  `clsno` longtext DEFAULT NULL COMMENT 'clsNo',
  `clsname` longtext DEFAULT NULL COMMENT 'clsName',
  `tip` longtext DEFAULT NULL COMMENT '备注(退回时)',
  `created_at` longtext DEFAULT NULL COMMENT '创建日期',
  `updated_at` longtext DEFAULT NULL COMMENT '最后更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='首检报告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tjg_project`
--

DROP TABLE IF EXISTS `dm_tjg_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tjg_project` (
  `id` longtext DEFAULT NULL COMMENT '顺号id',
  `code` longtext DEFAULT NULL COMMENT '项目代号',
  `name` longtext DEFAULT NULL COMMENT '项目名称',
  `nickname` longtext DEFAULT NULL COMMENT '别名',
  `form` longtext DEFAULT NULL COMMENT '类型/形式',
  `status1` longtext DEFAULT NULL COMMENT '状态-有效性',
  `creator` longtext DEFAULT NULL COMMENT '创建人',
  `created_at` longtext DEFAULT NULL COMMENT '创建日期',
  `updated_at` longtext DEFAULT NULL COMMENT '最后更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_tjg_project';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tjg_quality_issues_exp`
--

DROP TABLE IF EXISTS `dm_tjg_quality_issues_exp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tjg_quality_issues_exp` (
  `ID` varchar(20) NOT NULL COMMENT 'id',
  `yearmonth` longtext DEFAULT NULL COMMENT '编号',
  `created_at` longtext DEFAULT NULL COMMENT '创建日期',
  `tcorg` longtext DEFAULT NULL COMMENT '提出组织',
  `tcper` longtext DEFAULT NULL,
  `projectname` longtext DEFAULT NULL COMMENT '项目名称',
  `stationname` longtext DEFAULT NULL COMMENT '产线名称',
  `gongweiname` longtext DEFAULT NULL COMMENT '工位名称',
  `devicename` longtext DEFAULT NULL COMMENT '装置',
  `partname` longtext DEFAULT NULL COMMENT '子部件',
  `qlibid` longtext DEFAULT NULL COMMENT '异常提出id',
  `mcode` longtext DEFAULT NULL COMMENT '物资编码(可选)',
  `mno` longtext DEFAULT NULL COMMENT '产品序列号',
  `slorg` longtext DEFAULT NULL COMMENT '受理组织',
  `shouliper` longtext DEFAULT NULL COMMENT '受理人',
  `shoulidate` longtext DEFAULT NULL COMMENT '受理日期',
  `zgorg` longtext DEFAULT NULL COMMENT '整改组织',
  `zhenggaiper` longtext DEFAULT NULL COMMENT '整改执行人',
  `actat` longtext DEFAULT NULL COMMENT '整改关闭日期',
  `adetail` longtext DEFAULT NULL COMMENT '整改详情',
  `feedbackper` longtext DEFAULT NULL COMMENT '结果回馈人',
  `feedbackat` longtext DEFAULT NULL COMMENT '回馈日期',
  `fdetail` longtext DEFAULT NULL COMMENT '回馈详情',
  `qdetail` longtext DEFAULT NULL COMMENT '异常详情'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工艺差错异常表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tk_crrc_aqsgjl`
--

DROP TABLE IF EXISTS `dm_tk_crrc_aqsgjl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tk_crrc_aqsgjl` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` date DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` date DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` date DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_SGMS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '事故描述',
  `FK_CRRC_SGSJ` date DEFAULT NULL COMMENT '事故时间',
  `FK_CRRC_COMBOFIELD` varchar(50) NOT NULL DEFAULT ' ' COMMENT '部门&车间',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='安全事故记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tk_crrc_aqyhzgqd`
--

DROP TABLE IF EXISTS `dm_tk_crrc_aqyhzgqd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tk_crrc_aqyhzgqd` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` date DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` date DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` date DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_BILLNOFIELD` varchar(30) NOT NULL DEFAULT ' ' COMMENT '隐患编号',
  `FK_CRRC_YHMS` text NOT NULL DEFAULT ' ' COMMENT '隐患描述',
  `FK_CRRC_YHWZ` varchar(100) NOT NULL DEFAULT ' ' COMMENT '隐患位置',
  `FK_CRRC_ZRR1XM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '一级整改责任人姓名',
  `FK_CRRC_BZBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '被检查班组编码',
  `FK_CRRC_BZMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '被检查班组名称',
  `FK_CRRC_BJCDX` varchar(50) NOT NULL DEFAULT ' ' COMMENT '被检查对象',
  `FK_CRRC_YHXZ` text NOT NULL DEFAULT ' ' COMMENT '隐患性质',
  `FK_CRRC_YHZGYQ` text NOT NULL DEFAULT ' ' COMMENT '隐患治理要求',
  `FK_CRRC_ZGYQRGH` varchar(50) NOT NULL DEFAULT ' ' COMMENT '整改要求提出人.工号',
  `FK_CRRC_ZGYQRXM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '整改要求提出人.姓名',
  `FK_CRRC_ZGCS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '隐患治理措施',
  `FK_CRRC_XGSX` date DEFAULT NULL COMMENT '整改时限',
  `FK_CRRC_ZGTJRQ` date DEFAULT NULL COMMENT '隐患整改闭环提交时间',
  `FK_CRRC_YHDQZT` varchar(50) NOT NULL DEFAULT ' ' COMMENT '隐患整改当前状态',
  `FK_CRRC_TBRGH` varchar(50) NOT NULL DEFAULT ' ' COMMENT '提报人工号',
  `FK_CRRC_TBRXM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '提报人姓名',
  `FK_CRRC_BJCGSMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '被检查公司名称名称',
  `FK_CRRC_JCBMMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '检查部门名称',
  `FK_CRRC_CJSJ` date DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_TBSJ` date DEFAULT NULL COMMENT '提报时间',
  `FK_CRRC_XWLX` varchar(50) NOT NULL DEFAULT ' ' COMMENT '行为类型',
  `FK_CRRC_YHZT` varchar(50) NOT NULL DEFAULT ' ' COMMENT '隐患状态',
  `FK_CRRC_SSQYMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '所属企业名称',
  `FK_CRRC_YHCJ` varchar(50) NOT NULL DEFAULT ' ' COMMENT '隐患层级',
  `FK_CRRC_ZGBMBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '整改部门编码',
  `FK_CRRC_ZGBMMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '整改部门名称',
  `FK_CRRC_ZGFZRGH` varchar(50) NOT NULL DEFAULT ' ' COMMENT '整改负责人工号',
  `FK_CRRC_ZGFZRXM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '整改负责人姓名',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm隐患整改详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tk_crrc_bzcmaterial`
--

DROP TABLE IF EXISTS `dm_tk_crrc_bzcmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tk_crrc_bzcmaterial` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` datetime DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_MONTH` datetime DEFAULT NULL COMMENT '日期',
  `FK_CRRC_ORG` varchar(50) NOT NULL DEFAULT ' ' COMMENT '组织',
  `FK_CRRC_MATERIALNUM` decimal(23,2) DEFAULT NULL COMMENT '本月辅料数量',
  `FK_CRRC_SUM` decimal(23,2) DEFAULT NULL COMMENT '累计费',
  `FK_CRRC_MONTHSPEND` decimal(23,2) DEFAULT NULL COMMENT '当月实际花费',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_tk_crrc_bzcmaterial';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tk_crrc_dwjxkhts`
--

DROP TABLE IF EXISTS `dm_tk_crrc_dwjxkhts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tk_crrc_dwjxkhts` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` datetime DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_DATEFIELD` datetime DEFAULT NULL COMMENT '日期',
  `FK_CRRC_KHTS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '考核条数',
  `FK_CRRC_BM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '部门',
  `FK_CRRC_NF` varchar(50) NOT NULL DEFAULT ' ' COMMENT '年份',
  `FK_CRRC_YF` varchar(50) NOT NULL DEFAULT ' ' COMMENT '月份',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='单位绩效考核条数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tk_crrc_dwjxpjf`
--

DROP TABLE IF EXISTS `dm_tk_crrc_dwjxpjf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tk_crrc_dwjxpjf` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` datetime DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_ORGFIELD` bigint(20) DEFAULT NULL COMMENT '组织',
  `FK_CRRC_TEXTFIELD` float(4,3) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD1` varchar(50) NOT NULL COMMENT '部门',
  `FK_CRRC_TEXTFIELD2` varchar(50) NOT NULL COMMENT '文本2',
  `FK_CRRC_DATEFIELD` datetime DEFAULT NULL COMMENT '年份',
  `FK_CRRC_DWMC` varchar(50) NOT NULL COMMENT '单位名称',
  `FK_CRRC_DJJD` varchar(50) NOT NULL COMMENT '季度',
  `FK_CRRC_BGCPCL` float(4,3) DEFAULT NULL,
  `FK_CRRC_XMJHWCL` float(4,3) DEFAULT NULL,
  `FK_CRRC_AQYZYB` float(4,3) DEFAULT NULL,
  `FK_CRRC_XMFXJX` float(4,3) DEFAULT NULL,
  `FK_CRRC_AQHJGBL` float(4,3) DEFAULT NULL,
  `FK_CRRC_CPZLZXPJ` float(4,3) DEFAULT NULL,
  `FK_CRRC_GYGLGZZXPJ` float(4,3) DEFAULT NULL,
  `FK_CRRC_JYSCRWWCL` float(4,3) DEFAULT NULL,
  `FK_CRRC_GSCXGLHD` float(4,3) DEFAULT NULL,
  `FK_CRRC_ZHCBFY` float(4,3) DEFAULT NULL,
  `FK_CRRC_JXDF` varchar(50) DEFAULT NULL COMMENT '绩效得分',
  `FK_CRRC_JXDJ` varchar(50) DEFAULT ' ' COMMENT '绩效等级',
  `FK_CRRC_JDZZJXZZDF` varchar(50) DEFAULT NULL COMMENT '季度组织绩效得分',
  `FK_CRRC_JXZBZZDF` float(4,3) DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_单位绩效评价分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tk_crrc_gjsbqd`
--

DROP TABLE IF EXISTS `dm_tk_crrc_gjsbqd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tk_crrc_gjsbqd` (
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `BMDM` varchar(100) DEFAULT NULL COMMENT '编码代码',
  `FK_CRRC_SBBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '设备编号',
  `FK_CRRC_SBMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '设备名称',
  `FK_CRRC_GJDJ` varchar(50) NOT NULL DEFAULT ' ' COMMENT '关键等级',
  `FK_CRRC_SSCJ` varchar(50) NOT NULL DEFAULT ' ' COMMENT '所属车间',
  `FK_CRRC_CXBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '产线编码',
  `FK_CRRC_SSCX` varchar(50) NOT NULL DEFAULT ' ' COMMENT '所属产线',
  `FK_CRRC_GWBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工位编码',
  `FK_CRRC_SSGW` varchar(50) NOT NULL DEFAULT ' ' COMMENT '所属工位'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_关键设备清单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tk_crrc_gwqd`
--

DROP TABLE IF EXISTS `dm_tk_crrc_gwqd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tk_crrc_gwqd` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` date DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` date DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` date DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_SSCJ` varchar(50) NOT NULL DEFAULT ' ' COMMENT '所属车间',
  `FK_CRRC_SSCX` varchar(50) NOT NULL DEFAULT ' ' COMMENT '所属产线',
  `FK_CRRC_GWBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工位编码',
  `FK_CRRC_SSGW` varchar(50) NOT NULL DEFAULT ' ' COMMENT '所属工位',
  `FK_CRRC_SBDL` varchar(50) NOT NULL DEFAULT ' ' COMMENT '设备大类',
  `FK_CRRC_SBXL` varchar(50) NOT NULL DEFAULT ' ' COMMENT '设备小类',
  `FK_CRRC_SBBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '设备编码',
  `FK_CRRC_SBMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '设备名称',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='设备_工位清单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tk_crrc_project_bgzhjc`
--

DROP TABLE IF EXISTS `dm_tk_crrc_project_bgzhjc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tk_crrc_project_bgzhjc` (
  `FID` bigint(20) NOT NULL COMMENT 'FID',
  `FNUMBER` varchar(30) NOT NULL DEFAULT ' ' COMMENT '项目号',
  `FNAME` varchar(50) NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint(20) DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_tk_crrc_project_bgzhjc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_tk_crrc_zyb`
--

DROP TABLE IF EXISTS `dm_tk_crrc_zyb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tk_crrc_zyb` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` datetime DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_ZYBLX` varchar(50) NOT NULL DEFAULT ' ' COMMENT '职业病类型',
  `FK_CRRC_JLSJ` datetime DEFAULT NULL COMMENT '记录时间',
  `FK_CRRC_COMBOFIELD` varchar(50) NOT NULL DEFAULT ' ' COMMENT '部门&车间',
  `FK_CRRC_GH` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工号',
  `FK_CRRC_XM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '姓名',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm职业病';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_total_average_close_duration`
--

DROP TABLE IF EXISTS `dm_total_average_close_duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_total_average_close_duration` (
  `month1` varchar(100) DEFAULT NULL COMMENT '月份',
  `average` float(100,0) DEFAULT NULL COMMENT '质量异常关闭平均时长'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='质量异常平均关闭时长-事业部';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_wlzb_kb_0315`
--

DROP TABLE IF EXISTS `dm_wlzb_kb_0315`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_wlzb_kb_0315` (
  `ID` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT 'code',
  `DJ_STATE` varchar(100) DEFAULT NULL COMMENT '状态',
  `CREATED_TIME` varchar(100) DEFAULT NULL COMMENT 'CREATED_TIME',
  `REQUIRE_ARRIVE_DATE` varchar(100) DEFAULT NULL COMMENT '需求到达时间',
  `INTEND_SHIP_DATE` varchar(100) DEFAULT NULL COMMENT '预计运送时间',
  `SHIP_NEED_DATE` varchar(100) DEFAULT NULL COMMENT 'SHIP_NEED_DATE',
  `ORDER_DATE` varchar(100) DEFAULT NULL COMMENT 'ORDER_DATE',
  `FINSH_DATE` varchar(100) DEFAULT NULL COMMENT 'FINSH_DATE',
  `UPDATE_TIME` varchar(100) DEFAULT NULL COMMENT 'UPDATE_TIME',
  `WORK_CODE` varchar(100) DEFAULT NULL COMMENT 'WORK_CODE',
  `WORK_CENTER` varchar(100) DEFAULT NULL COMMENT 'WORK_CENTER',
  `WORK_TABLE` varchar(100) DEFAULT NULL COMMENT 'WORK_TABLE',
  `WORK_CENTER2` varchar(100) DEFAULT NULL COMMENT 'WORK_CENTER2',
  `WORK_TABLE2` varchar(100) DEFAULT NULL COMMENT 'WORK_TABLE2',
  `bill_type_NAME` varchar(100) DEFAULT NULL COMMENT 'bill_type_NAME',
  `PICK_TICKET_ID` varchar(100) DEFAULT NULL COMMENT 'PICK_TICKET_ID',
  `item_name` varchar(100) DEFAULT NULL COMMENT 'item_name',
  `PROCESS_LC` varchar(100) DEFAULT NULL COMMENT 'PROCESS_LC',
  `EXPECTED_QUANTITY` float DEFAULT NULL,
  `EXPECTED_QUANTITY_BU` float DEFAULT NULL,
  `ALLOACTED_QUANTITY_BU` float DEFAULT NULL,
  `PICKED_QUANTITY_BU` float DEFAULT NULL,
  `SHIPPED_QUANTITY_BU` float DEFAULT NULL,
  `UPDATE_TIME_1` varchar(100) DEFAULT NULL COMMENT 'UPDATE_TIME_1',
  `WORK_CENTER_1` varchar(100) DEFAULT NULL COMMENT 'WORK_CENTER_1',
  `WORK_STATION` varchar(100) DEFAULT NULL COMMENT 'WORK_STATION',
  `WORK_TABLE_1` varchar(100) DEFAULT NULL COMMENT 'WORK_TABLE_1',
  `WORKCENTERCODE` varchar(100) DEFAULT NULL COMMENT 'WORKCENTERCODE',
  `xm_id` varchar(100) DEFAULT NULL COMMENT 'xm_id',
  `xm_code` varchar(100) DEFAULT NULL COMMENT 'xm_code',
  `xm_name` varchar(100) DEFAULT NULL COMMENT 'xm_name',
  `is_qitao` int(11) DEFAULT NULL COMMENT 'is_qitao',
  `is_peisong` int(11) DEFAULT NULL COMMENT 'is_peisong',
  `is_zhunships` int(11) DEFAULT NULL COMMENT 'is_zhunships',
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT 'FK_CRRC_ZXJ_CJ',
  `FK_CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT 'FK_CRRC_ZXJ_CXBM',
  `FK_CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT 'FK_CRRC_ZXJ_CX',
  `FK_CRRC_ZXJ_GWBM` varchar(100) DEFAULT NULL COMMENT 'FK_CRRC_ZXJ_GWBM',
  `FK_CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT 'FK_CRRC_ZXJ_GWMC',
  `FK_CRRC_ZXJ_GXBM` varchar(100) DEFAULT NULL COMMENT 'FK_CRRC_ZXJ_GXBM',
  `FK_CRRC_ZXJ_GXMC` varchar(100) DEFAULT NULL COMMENT 'FK_CRRC_ZXJ_GXMC',
  `riqi` varchar(100) DEFAULT NULL COMMENT 'riqi',
  `wl_code` varchar(100) DEFAULT NULL COMMENT 'wl_code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_wlzb_kb_0315';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_wms_inventory`
--

DROP TABLE IF EXISTS `dm_wms_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_wms_inventory` (
  `material_code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `project_code` varchar(100) DEFAULT NULL COMMENT '项目号',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `extend_propc1` varchar(100) DEFAULT NULL COMMENT '车号',
  `quantity` float(126,0) DEFAULT NULL COMMENT '积压数量',
  `unit` varchar(100) DEFAULT NULL COMMENT '单位',
  `glcode` varchar(100) DEFAULT NULL COMMENT '隔离规则',
  `stock_age` bigint(20) DEFAULT NULL COMMENT '库龄',
  `supplier_code` varchar(100) DEFAULT NULL COMMENT '供应商编码',
  `supplier_name` varchar(100) DEFAULT NULL COMMENT '供应商名称',
  `status` varchar(100) DEFAULT NULL COMMENT '库存状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_wms_inventory';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_wms_inventory_final`
--

DROP TABLE IF EXISTS `dm_wms_inventory_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_wms_inventory_final` (
  `material_code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `project_code` varchar(100) DEFAULT NULL COMMENT '项目号',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `extend_propc1` varchar(100) DEFAULT NULL COMMENT '车号',
  `quantity` float(126,0) DEFAULT NULL COMMENT '积压数量',
  `unit` varchar(100) DEFAULT NULL COMMENT '单位',
  `glcode` varchar(100) DEFAULT NULL COMMENT '隔离规则',
  `stock_age` bigint(20) DEFAULT NULL COMMENT '库龄',
  `supplier_code` varchar(100) DEFAULT NULL COMMENT '供应商编码',
  `supplier_name` varchar(100) DEFAULT NULL COMMENT '供应商名称',
  `status` varchar(100) DEFAULT NULL COMMENT '库存状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_wms_inventory_final';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_workshop_processing_rate`
--

DROP TABLE IF EXISTS `dm_workshop_processing_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_workshop_processing_rate` (
  `come` varchar(100) DEFAULT NULL COMMENT '车间名称',
  `time1` varchar(100) DEFAULT NULL COMMENT '月份',
  `total_planned` int(11) DEFAULT NULL COMMENT '计划处理数量',
  `incomplete_count` int(11) DEFAULT NULL COMMENT '未完成处理数量',
  `processing_rate` float(100,0) DEFAULT NULL COMMENT '处理及时率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='车间开口项处理及时率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_wuliao_qitao_jishi_fahuo`
--

DROP TABLE IF EXISTS `dm_wuliao_qitao_jishi_fahuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_wuliao_qitao_jishi_fahuo` (
  `todaydate` date DEFAULT NULL COMMENT '日期',
  `fk_crrc_zxj_gwbm` longtext DEFAULT NULL COMMENT '工位编码',
  `fk_crrc_zxj_gwmc` longtext DEFAULT NULL COMMENT '工位名称',
  `count_all` int(11) DEFAULT NULL COMMENT '当天货品总项数',
  `count_qitao` int(11) DEFAULT NULL COMMENT '当天齐套项数',
  `count_peisong` int(11) DEFAULT NULL COMMENT '当天发货项数',
  `count_ontime_peisong` int(11) DEFAULT NULL COMMENT '当天及时发货项数',
  `future_three_days_count_all` int(11) DEFAULT NULL COMMENT '未来三天总项数',
  `future_three_days_count_qitao` int(11) DEFAULT NULL COMMENT '未来三天齐套项数',
  `future_three_days_count_peisong` int(11) DEFAULT NULL COMMENT '未来三天发货项数',
  `future_three_days_count_ontime_peisong` int(11) DEFAULT NULL COMMENT '未来三天及时发货项数',
  `future_three_days_rate_qitao` double DEFAULT NULL COMMENT '三天齐套率',
  `future_three_days_rate_peisong` double DEFAULT NULL COMMENT '三天发货率',
  `future_three_days_rate_ontime_peisong` double DEFAULT NULL COMMENT '三天及时发货率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm物料齐套发货及时';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_wuliao_qitao_jishi_fahuo_v2`
--

DROP TABLE IF EXISTS `dm_wuliao_qitao_jishi_fahuo_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_wuliao_qitao_jishi_fahuo_v2` (
  `todaydate` date DEFAULT NULL COMMENT '日期',
  `fk_crrc_zxj_gwbm` longtext DEFAULT NULL COMMENT '工位编码',
  `fk_crrc_zxj_gwmc` longtext DEFAULT NULL COMMENT '工位名称',
  `count_all` int(11) DEFAULT NULL COMMENT '当天货品总项数',
  `count_qitao` int(11) DEFAULT NULL COMMENT '当天齐套项数',
  `count_peisong` int(11) DEFAULT NULL COMMENT '当天发货项数',
  `count_ontime_peisong` int(11) DEFAULT NULL COMMENT '当天及时发货项数',
  `future_three_days_count_all` int(11) DEFAULT NULL COMMENT '未来三天总项数',
  `future_three_days_count_qitao` int(11) DEFAULT NULL COMMENT '未来三天齐套项数',
  `future_three_days_count_peisong` int(11) DEFAULT NULL COMMENT '未来三天发货项数',
  `future_three_days_count_ontime_peisong` int(11) DEFAULT NULL COMMENT '未来三天及时发货项数',
  `fk_crrc_zxj_cj` varchar(100) DEFAULT NULL COMMENT '车间',
  `fk_crrc_zxj_cx` varchar(100) DEFAULT NULL COMMENT '生产线'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm物料齐套发货及时';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_wuliaopeisong_xiangxi_zxj`
--

DROP TABLE IF EXISTS `dm_wuliaopeisong_xiangxi_zxj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_wuliaopeisong_xiangxi_zxj` (
  `expected_quantity_bu` longtext DEFAULT NULL COMMENT '期待数量',
  `alloacted_quantity_bu` longtext DEFAULT NULL COMMENT '分配数量',
  `shipped_quantity_bu` longtext DEFAULT NULL COMMENT '发货数量',
  `picked_quantity_bu` longtext DEFAULT NULL COMMENT '拣货数量',
  `require_arrive_date` varchar(100) DEFAULT NULL COMMENT '需求时间',
  `name` longtext DEFAULT NULL COMMENT '货品名称',
  `fk_crrc_zxj_cj` varchar(50) DEFAULT ' ' COMMENT '车间',
  `fk_crrc_zxj_cx` varchar(50) DEFAULT ' ' COMMENT '生产线',
  `fk_crrc_zxj_gwmc` varchar(50) DEFAULT ' ' COMMENT '工位名称',
  `todaydate` varchar(100) DEFAULT NULL COMMENT '日期',
  `is_qitao` int(11) DEFAULT NULL COMMENT '是否齐套是1否0',
  `is_ontime_peisong` int(11) DEFAULT NULL COMMENT '是否及时配送',
  `is_peisong` int(11) DEFAULT NULL COMMENT '是否配送',
  `uptime` varchar(100) DEFAULT NULL COMMENT '完成时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm物料配送详细表（齐套配送及时配送）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ycgbpjsc_zxj_result`
--

DROP TABLE IF EXISTS `dm_ycgbpjsc_zxj_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ycgbpjsc_zxj_result` (
  `GID` varchar(100) DEFAULT NULL COMMENT '主键',
  `FK_CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT '车间名称',
  `FK_CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `FK_CRRC_ZXJ_GXMC` varchar(100) DEFAULT NULL COMMENT '工序名称',
  `FK_CRRC_ZXJ_GWBM` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `TODAYDATE` varchar(100) DEFAULT NULL COMMENT '日期',
  `NIANYUE` varchar(100) DEFAULT NULL COMMENT '年月',
  `EXNUM` int(11) DEFAULT NULL COMMENT '月异常数量',
  `HOURTIME` varchar(100) DEFAULT NULL COMMENT '月异常时长',
  `YCGB_PJSC` varchar(100) DEFAULT NULL COMMENT '月异常关闭平均时长',
  `nian` varchar(100) DEFAULT NULL COMMENT '年份'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='异常关闭平均时长结果表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ycjl_kb_0213`
--

DROP TABLE IF EXISTS `dm_ycjl_kb_0213`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ycjl_kb_0213` (
  `CODE` varchar(100) DEFAULT NULL COMMENT '异常记录编码',
  `EXCEPTION_TYPE_GID` varchar(100) DEFAULT NULL COMMENT '异常类型gid',
  `EXCEPTION_TYPE_CODE` varchar(100) DEFAULT NULL COMMENT '异常类型编码',
  `EXCEPTION_TYPE_NAME` varchar(100) DEFAULT NULL COMMENT '异常类型名称',
  `EXCEPTION_CONTENT_GID` varchar(100) DEFAULT NULL COMMENT '异常内容id',
  `EXCEPTION_CONTENT_CODE` varchar(100) DEFAULT NULL COMMENT '异常内容编码',
  `EXCEPTION_CONTENT_NAME` varchar(100) DEFAULT NULL COMMENT '异常内容名称',
  `EXCEPTION_REMARK` varchar(500) DEFAULT NULL,
  `WORKORDER_CODE` varchar(100) DEFAULT NULL COMMENT '工单编码',
  `OP_CODE` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `DEVICE_CODE` varchar(100) DEFAULT NULL COMMENT '机台编码',
  `MRL_CODE` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `LAUNCH_ID` varchar(100) DEFAULT NULL COMMENT '发起人',
  `LAUNCH_DATE` date DEFAULT NULL COMMENT '发起时间',
  `STATE` int(11) DEFAULT NULL COMMENT '异常状态（0待响应，2待处理，4待关闭，8已关闭）',
  `CREATE_ID` varchar(100) DEFAULT NULL COMMENT '创建人',
  `IS_ACTIVE` int(11) DEFAULT 0 COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` int(11) DEFAULT 0 COMMENT '删除标识(0未删除1删除)',
  `WORKCENTER_CODE` varchar(100) DEFAULT NULL COMMENT '工作中心编码',
  `WORKCENTER_NAME` varchar(100) DEFAULT NULL COMMENT '工作中心名称',
  `WORKCELL_CODE` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `WORKCELL_NAME` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `TRACK_ORDER_CODE` varchar(100) DEFAULT NULL COMMENT '派工单号',
  `MRL_NAME` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `DEVICE_NAME` varchar(100) DEFAULT NULL COMMENT '机台名称',
  `RESPONSE_ID` varchar(100) DEFAULT NULL COMMENT '响应人',
  `RESPONSE_DATE` date DEFAULT NULL COMMENT '响应时间',
  `HANDL_ID` varchar(100) DEFAULT NULL COMMENT '处理人',
  `HANDL_DATE` date DEFAULT NULL COMMENT '处理时间',
  `CLOSE_ID` varchar(100) DEFAULT NULL COMMENT '关闭人',
  `CLOSE_DATE` date DEFAULT NULL COMMENT '关闭时间',
  `crrc_zxj_gxmc` varchar(100) DEFAULT NULL COMMENT '工序名称',
  `crrc_zxj_gxbm` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `crrc_zxj_gwmc` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `crrc_zxj_gwbm` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `crrc_zxj_cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `crrc_zxj_cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `crrc_zxj_cj` varchar(100) DEFAULT NULL COMMENT '车间',
  `IS_LET_PASS` int(11) DEFAULT NULL COMMENT '是否放行(0',
  `LET_PASS_DATE` date DEFAULT NULL COMMENT '放行时间',
  `PLAN_PROCESS_DATE` varchar(100) DEFAULT NULL COMMENT '预计处理时长',
  `create_date` date DEFAULT NULL COMMENT '创建日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_异常记录宽表_0213';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ycjl_kb_0214`
--

DROP TABLE IF EXISTS `dm_ycjl_kb_0214`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ycjl_kb_0214` (
  `CODE` varchar(100) DEFAULT NULL COMMENT '异常记录编码',
  `EXCEPTION_TYPE_GID` varchar(100) DEFAULT NULL COMMENT '异常类型gid',
  `EXCEPTION_TYPE_CODE` varchar(100) DEFAULT NULL COMMENT '异常类型编码',
  `EXCEPTION_TYPE_NAME` varchar(100) DEFAULT NULL COMMENT '异常类型名称',
  `EXCEPTION_CONTENT_GID` varchar(100) DEFAULT NULL COMMENT '异常内容id',
  `EXCEPTION_CONTENT_CODE` varchar(100) DEFAULT NULL COMMENT '异常内容编码',
  `EXCEPTION_CONTENT_NAME` varchar(100) DEFAULT NULL COMMENT '异常内容名称',
  `EXCEPTION_REMARK` varchar(500) DEFAULT NULL COMMENT '异常描述',
  `WORKORDER_CODE` varchar(100) DEFAULT NULL COMMENT '工单编码',
  `OP_CODE` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `DEVICE_CODE` varchar(100) DEFAULT NULL COMMENT '机台编码',
  `MRL_CODE` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `LAUNCH_ID` varchar(100) DEFAULT NULL COMMENT '发起人',
  `LAUNCH_DATE` varchar(30) DEFAULT NULL COMMENT '发起时间',
  `STATE` int(11) DEFAULT NULL COMMENT '异常状态（0待响应，2待处理，4待关闭，8已关闭）',
  `CREATE_ID` varchar(100) DEFAULT NULL COMMENT '创建人',
  `IS_ACTIVE` int(11) DEFAULT 0 COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` int(11) DEFAULT 0 COMMENT '删除标识(0未删除1删除)',
  `WORKCENTER_CODE` varchar(100) DEFAULT NULL COMMENT '工作中心编码',
  `WORKCENTER_NAME` varchar(100) DEFAULT NULL COMMENT '工作中心名称',
  `WORKCELL_CODE` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `WORKCELL_NAME` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `TRACK_ORDER_CODE` varchar(100) DEFAULT NULL COMMENT '派工单号',
  `MRL_NAME` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `DEVICE_NAME` varchar(100) DEFAULT NULL COMMENT '机台名称',
  `RESPONSE_ID` varchar(100) DEFAULT NULL COMMENT '响应人',
  `RESPONSE_DATE` varchar(22) DEFAULT NULL COMMENT '响应时间',
  `HANDL_ID` varchar(100) DEFAULT NULL COMMENT '处理人',
  `HANDL_DATE` varchar(30) DEFAULT NULL COMMENT '处理时间',
  `CLOSE_ID` varchar(100) DEFAULT NULL COMMENT '关闭人',
  `CLOSE_DATE` varchar(22) DEFAULT NULL COMMENT '关闭时间',
  `crrc_zxj_gxmc` varchar(100) DEFAULT NULL COMMENT '工序名称',
  `crrc_zxj_gxbm` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `crrc_zxj_gwmc` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `crrc_zxj_gwbm` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `crrc_zxj_cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `crrc_zxj_cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `crrc_zxj_cj` varchar(100) DEFAULT NULL COMMENT '车间',
  `IS_LET_PASS` int(11) DEFAULT NULL COMMENT '是否放行(0',
  `LET_PASS_DATE` varchar(30) DEFAULT NULL COMMENT '放行时间',
  `PLAN_PROCESS_DATE` varchar(100) DEFAULT NULL COMMENT '预计处理时长',
  `create_date` varchar(30) DEFAULT NULL COMMENT '创建日期',
  `nian` varchar(100) DEFAULT NULL COMMENT '年份',
  `nianyue` varchar(100) DEFAULT NULL COMMENT '年月',
  `riqi` varchar(100) DEFAULT NULL COMMENT '日期',
  `lunch_name` varchar(100) DEFAULT NULL COMMENT '发起人姓名',
  `response_name` varchar(100) DEFAULT NULL COMMENT '响应人姓名',
  `zhidingresponse_name` varchar(100) DEFAULT NULL COMMENT '指定响应人姓名',
  `close_name` varchar(100) DEFAULT NULL COMMENT '关闭人姓名',
  `handle_name` varchar(100) DEFAULT NULL COMMENT '处理人姓名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_异常记录详细表0214';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_year_lianhe_XM`
--

DROP TABLE IF EXISTS `dm_year_lianhe_XM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_year_lianhe_XM` (
  `nianyue1` varchar(100) DEFAULT NULL COMMENT '年月1',
  `cxbm1` varchar(100) DEFAULT NULL COMMENT '产线编码1',
  `cxmc1` varchar(100) DEFAULT NULL COMMENT '产线名称1',
  `xmbm1` varchar(100) DEFAULT NULL COMMENT '项目编码1',
  `xmmc1` varchar(100) DEFAULT NULL COMMENT '项目名称1',
  `jhnum` int(11) DEFAULT NULL COMMENT '计划数量',
  `xxsl` int(11) DEFAULT NULL COMMENT '线下数量',
  `nianyue2` varchar(100) DEFAULT NULL COMMENT '年月2',
  `cxbm2` varchar(100) DEFAULT NULL COMMENT '产线编码2',
  `cxmc2` varchar(100) DEFAULT NULL COMMENT '产线名称2',
  `xmbm2` varchar(100) DEFAULT NULL COMMENT '项目编码2',
  `xmmc2` varchar(100) DEFAULT NULL COMMENT '项目名称2',
  `finish_num` int(11) DEFAULT NULL COMMENT '完成数量',
  `true_num` int(11) DEFAULT NULL COMMENT '实际完成数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm年度计划联合表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_year_plan_rate`
--

DROP TABLE IF EXISTS `dm_year_plan_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_year_plan_rate` (
  `year` varchar(100) DEFAULT NULL COMMENT '年',
  `CJ` varchar(100) DEFAULT NULL COMMENT '车间',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `plan_num` int(11) DEFAULT NULL COMMENT '线下总数',
  `online_num` int(11) DEFAULT NULL COMMENT '线上完成数',
  `outline_num` int(11) DEFAULT NULL COMMENT '线下完成数',
  `online_true_num` int(11) DEFAULT NULL COMMENT '线上真实完成数',
  `xm` varchar(100) DEFAULT NULL COMMENT '项目号',
  `xmmc` varchar(100) DEFAULT NULL COMMENT '项目名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_年度计划完成率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_year_planrate_XM`
--

DROP TABLE IF EXISTS `dm_year_planrate_XM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_year_planrate_XM` (
  `year` varchar(100) DEFAULT NULL COMMENT '年份',
  `xmbh` varchar(100) DEFAULT NULL COMMENT '项目编号',
  `xmmc` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `xmdh` varchar(100) DEFAULT NULL COMMENT '项目代号',
  `cj` varchar(100) DEFAULT NULL COMMENT '车间',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `plan_num` int(11) DEFAULT NULL COMMENT '计划总数',
  `outline_num` int(11) DEFAULT NULL COMMENT '线下总数',
  `online_num` int(11) DEFAULT NULL COMMENT '线上总数',
  `online_num_true` int(11) DEFAULT NULL COMMENT '线上实际数',
  `year_pgd` varchar(100) DEFAULT NULL COMMENT '年份_派工单',
  `xmbh_pgd` varchar(100) DEFAULT NULL COMMENT '项目号_派工单',
  `xmmc_pgd` varchar(100) DEFAULT NULL COMMENT '项目名称_派工单',
  `xmdh_pgd` varchar(100) DEFAULT NULL COMMENT '项目代号_派工单',
  `cj_pgd` varchar(100) DEFAULT NULL COMMENT '车间_派工单',
  `cxbm_pgd` varchar(100) DEFAULT NULL COMMENT '产线编码_派工单',
  `cxmc_pgd` varchar(100) DEFAULT NULL COMMENT '产线名称_派工单'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm年度项目计划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_yeliantest`
--

DROP TABLE IF EXISTS `dm_yeliantest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_yeliantest` (
  `year_date` date DEFAULT NULL COMMENT '年度',
  `total_count` int(11) DEFAULT NULL COMMENT '总计',
  `closed_count` int(11) DEFAULT NULL COMMENT '关闭数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='_测试_dm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_yuedujihuawanchlv_cx_1227`
--

DROP TABLE IF EXISTS `dm_yuedujihuawanchlv_cx_1227`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_yuedujihuawanchlv_cx_1227` (
  `nianyue` varchar(100) DEFAULT NULL COMMENT '年月',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `shijishuliang` int(11) DEFAULT NULL COMMENT '实际完成数量',
  `jihuashuliang` int(11) DEFAULT NULL COMMENT '计划完成数量',
  `pgdwcs` int(11) DEFAULT NULL COMMENT '派工单完成数',
  `xxwcs` int(11) DEFAULT NULL COMMENT '线下完成数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_月度计划完成率_1227';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_yuedujihuawclv_1227`
--

DROP TABLE IF EXISTS `dm_yuedujihuawclv_1227`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_yuedujihuawclv_1227` (
  `nianyue` varchar(100) DEFAULT NULL COMMENT '年月',
  `CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `CXMC` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `XXWANCH` int(11) DEFAULT NULL COMMENT '实际完成总数',
  `JHZOSHU` int(11) DEFAULT NULL COMMENT '计划完成总数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='月度计划完成率_1227';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_yuedupgdsj`
--

DROP TABLE IF EXISTS `dm_yuedupgdsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_yuedupgdsj` (
  `nianyue` varchar(100) DEFAULT NULL COMMENT '年月',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `xm` varchar(100) DEFAULT NULL COMMENT '项目',
  `pgdwcs` int(11) DEFAULT NULL COMMENT '派工单完成数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_月度派工单数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_yuejhkbsj`
--

DROP TABLE IF EXISTS `dm_yuejhkbsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_yuejhkbsj` (
  `nianyue` varchar(100) DEFAULT NULL COMMENT '年月',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `xm` varchar(100) DEFAULT NULL COMMENT '项目',
  `jhzs` int(11) DEFAULT NULL COMMENT '计划总数',
  `xxwc` int(11) DEFAULT NULL COMMENT '线下完成数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_月计划看板数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_yuejihuawanchenglv_gjcj`
--

DROP TABLE IF EXISTS `dm_yuejihuawanchenglv_gjcj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_yuejihuawanchenglv_gjcj` (
  `CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `FENMUN` int(11) DEFAULT NULL COMMENT '产线分母',
  `YEARMOUTHOFPLAN` varchar(100) DEFAULT NULL COMMENT '年月',
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT '车间',
  `NUM2` int(11) DEFAULT NULL COMMENT 'NUM2',
  `NUM1` int(11) DEFAULT NULL COMMENT 'NUM1',
  `CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `MOUTHRATE` double(100,0) DEFAULT NULL COMMENT '月度完成率',
  `TOTAL` varchar(100) DEFAULT NULL COMMENT '分子'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_月计划完成率_构架车间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_yuejihuawanchenglv_ldcj`
--

DROP TABLE IF EXISTS `dm_yuejihuawanchenglv_ldcj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_yuejihuawanchenglv_ldcj` (
  `CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `FENMUN` int(11) DEFAULT NULL COMMENT '产线分母',
  `YEARMOUTHOFPLAN` varchar(100) DEFAULT NULL COMMENT '年月',
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT '车间',
  `NUM2` int(11) DEFAULT NULL COMMENT 'NUM2',
  `NUM1` int(11) DEFAULT NULL COMMENT 'NUM1',
  `CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `MOUTHRATE` double(100,0) DEFAULT NULL COMMENT '月度完成率',
  `TOTAL` varchar(100) DEFAULT NULL COMMENT '分子'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_月计划完成率_轮对车间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_yuejihuawanchenglv_syb`
--

DROP TABLE IF EXISTS `dm_yuejihuawanchenglv_syb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_yuejihuawanchenglv_syb` (
  `CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `FENMUN` int(11) DEFAULT NULL COMMENT '产线分母',
  `YEARMOUTHOFPLAN` varchar(100) DEFAULT NULL COMMENT '年月',
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT '车间',
  `NUM2` int(11) DEFAULT NULL COMMENT 'NUM2',
  `NUM1` int(11) DEFAULT NULL COMMENT 'NUM1',
  `CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `MOUTHRATE` double(100,0) DEFAULT NULL COMMENT '月度完成率',
  `TOTAL` varchar(100) DEFAULT NULL COMMENT '分子'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_月计划完成率_事业部';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_yuejihuawanchenglv_zccj`
--

DROP TABLE IF EXISTS `dm_yuejihuawanchenglv_zccj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_yuejihuawanchenglv_zccj` (
  `CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `FENMUN` int(11) DEFAULT NULL COMMENT '产线分母',
  `YEARMOUTHOFPLAN` varchar(100) DEFAULT NULL COMMENT '年月',
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT '车间',
  `NUM2` int(11) DEFAULT NULL COMMENT 'NUM2',
  `NUM1` int(11) DEFAULT NULL COMMENT 'NUM1',
  `CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `MOUTHRATE` double(100,0) DEFAULT NULL COMMENT '月度完成率',
  `TOTAL` varchar(100) DEFAULT NULL COMMENT '分子'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_月计划完成率_总成车间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_zhunshikaigong`
--

DROP TABLE IF EXISTS `dm_zhunshikaigong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_zhunshikaigong` (
  `cj` varchar(100) DEFAULT NULL COMMENT '车间名称',
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cx` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `gwbm` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `gw` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `rq` varchar(100) DEFAULT NULL COMMENT '日期',
  `ontime_num` int(11) DEFAULT NULL COMMENT '日准时开工数量',
  `plan_num` int(11) DEFAULT NULL COMMENT '计划开工数量',
  `kaigong_num` int(11) DEFAULT NULL COMMENT '开工数量',
  `xm_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `xm` varchar(100) DEFAULT NULL COMMENT '项目号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_准时开工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_zhunshikg_pgd_0122`
--

DROP TABLE IF EXISTS `dm_zhunshikg_pgd_0122`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_zhunshikg_pgd_0122` (
  `rq` date DEFAULT NULL COMMENT '日期',
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT '车间',
  `FK_CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `FK_CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT '产线',
  `FK_CRRC_ZXJ_GWBM` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `PROJECT_code` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `pgd_state` varchar(100) DEFAULT NULL COMMENT '派工单状态',
  `ACTUAL_BEGIN_DATE` varchar(100) DEFAULT NULL,
  `PLANNED_START_TIME` varchar(100) DEFAULT NULL,
  `PLANNED_FINISH_TIME` varchar(100) DEFAULT NULL,
  `ACTUAL_END_DATE` varchar(100) DEFAULT NULL,
  `xm_NAME` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `state_code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_准时开工派工单0122';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_zhunshiwg_pgd_0122`
--

DROP TABLE IF EXISTS `dm_zhunshiwg_pgd_0122`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_zhunshiwg_pgd_0122` (
  `rq` date DEFAULT NULL COMMENT '日期',
  `FK_CRRC_ZXJ_CJ` varchar(100) DEFAULT NULL COMMENT '车间',
  `FK_CRRC_ZXJ_CXBM` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `FK_CRRC_ZXJ_CX` varchar(100) DEFAULT NULL COMMENT '产线',
  `FK_CRRC_ZXJ_GWBM` varchar(100) DEFAULT NULL COMMENT '工位编码',
  `FK_CRRC_ZXJ_GWMC` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `PROJECT_code` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `pgd_state` varchar(100) DEFAULT NULL COMMENT '派工单状态',
  `ACTUAL_BEGIN_DATE` varchar(100) DEFAULT NULL COMMENT '实际开始时间',
  `PLANNED_START_TIME` varchar(100) DEFAULT NULL COMMENT '计划开始时间',
  `PLANNED_FINISH_TIME` varchar(100) DEFAULT NULL COMMENT '计划结束时间',
  `ACTUAL_END_DATE` varchar(100) DEFAULT NULL COMMENT '实际结束时间',
  `xm_NAME` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `state_code` varchar(100) DEFAULT NULL COMMENT '状态编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_日准时完工派工单_0122';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_zjeas7_T_SM_PurOrderEntry_info_new`
--

DROP TABLE IF EXISTS `dm_zjeas7_T_SM_PurOrderEntry_info_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_zjeas7_T_SM_PurOrderEntry_info_new` (
  `purorder_fnumber` longtext DEFAULT NULL COMMENT '采购订单编号',
  `purchase_fname` longtext DEFAULT NULL COMMENT '采购组织名称',
  `purchase_fnumber` longtext DEFAULT NULL COMMENT '采购组织编号',
  `purchasegroup_fname` longtext DEFAULT NULL COMMENT '采购组名称',
  `purchasegroup_fnumber` longtext DEFAULT NULL COMMENT '采购组编号',
  `person_fname` longtext DEFAULT NULL COMMENT '采购员名称',
  `person_fnumber` longtext DEFAULT NULL COMMENT '采购员编号',
  `supplier_fname` longtext DEFAULT NULL COMMENT '供应商名称',
  `supplier_fnumber` longtext DEFAULT NULL COMMENT '供应商编号',
  `purorder_fbizdate` longtext DEFAULT NULL COMMENT '采购订单业务日期',
  `fbaseqty` longtext DEFAULT NULL COMMENT '基本数量',
  `project_fname` longtext DEFAULT NULL COMMENT '项目名',
  `project_fnumber` longtext DEFAULT NULL COMMENT '项目编号',
  `tracknumber_fname` longtext DEFAULT NULL COMMENT '跟踪号名称',
  `tracknumber_fnumber` longtext DEFAULT NULL COMMENT '跟踪号编号',
  `purcontract_fname` longtext DEFAULT NULL COMMENT '采购合同名称',
  `purcontract_fnumber` longtext DEFAULT NULL COMMENT '采购合同编号',
  `purorderentry_fbizdate` longtext DEFAULT NULL COMMENT '采购订单分录业务日期',
  `material_fname` longtext DEFAULT NULL COMMENT '物料名称',
  `material_fnumber` longtext DEFAULT NULL COMMENT '物料编码',
  `measureunit_fname` longtext DEFAULT NULL COMMENT '计量单位名称',
  `measureunit_fnumber` longtext DEFAULT NULL COMMENT '计量单位编码',
  `purorder_fpurchaseorgunitid` longtext DEFAULT NULL COMMENT '采购组织id',
  `purorder_fpurchasegroupid` longtext DEFAULT NULL COMMENT '采购组id',
  `purorder_fpurchasepersonid` longtext DEFAULT NULL COMMENT '采购员id',
  `purorder_fsupplierid` longtext DEFAULT NULL COMMENT '供应商id',
  `purorderentry_fprojectid` longtext DEFAULT NULL COMMENT '项目号id',
  `purorderentry_ftracknoid` longtext DEFAULT NULL COMMENT '跟踪号Id',
  `purorderentry_fpurcontractid` longtext DEFAULT NULL COMMENT '采购合同Id',
  `purorderentry_fmaterialid` longtext DEFAULT NULL COMMENT '物料id',
  `purorderentry_funitid` longtext DEFAULT NULL COMMENT '计量单位id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='采购订单分录详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_zuoyepinghenglv`
--

DROP TABLE IF EXISTS `dm_zuoyepinghenglv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_zuoyepinghenglv` (
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `date` date DEFAULT NULL COMMENT '日期',
  `actualfintime` varchar(100) DEFAULT NULL,
  `maxfintime` varchar(100) DEFAULT NULL,
  `rate` varchar(100) DEFAULT NULL COMMENT '作业平衡率',
  `num` int(11) DEFAULT NULL COMMENT '工序数',
  `maxtotaltime` varchar(100) DEFAULT NULL COMMENT '瓶颈总时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_作业平衡率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_zxj_cxbalance`
--

DROP TABLE IF EXISTS `dm_zxj_cxbalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_zxj_cxbalance` (
  `cxbm` varchar(100) DEFAULT NULL COMMENT '产线编码',
  `cxmc` varchar(100) DEFAULT NULL COMMENT '产线名称',
  `gxbm` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `gxmc` varchar(100) DEFAULT NULL COMMENT '工序名称',
  `end_month` date DEFAULT NULL COMMENT '完工时间',
  `min_h` double DEFAULT NULL COMMENT '耗时最小值',
  `max_h` double DEFAULT NULL COMMENT '耗时最大值',
  `avg_h` double DEFAULT NULL COMMENT '耗时平均值',
  `sum_h` double DEFAULT NULL COMMENT '总耗时',
  `DISPATCH_COUNT` int(11) DEFAULT NULL COMMENT '派工单计数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_zxj_cxbalance';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_zxj_pgd`
--

DROP TABLE IF EXISTS `dm_zxj_pgd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_zxj_pgd` (
  `pgdh` longtext DEFAULT NULL COMMENT '派工单号',
  `wlbm` longtext DEFAULT NULL COMMENT '物料编码',
  `ddh` longtext DEFAULT NULL COMMENT '订单号',
  `gdh` longtext DEFAULT NULL COMMENT '工单号',
  `pgdzt` longtext DEFAULT NULL COMMENT '派工单状态',
  `gwbm` longtext DEFAULT NULL COMMENT '工位编码',
  `gw` longtext DEFAULT NULL COMMENT '工位',
  `jhnum` int(11) DEFAULT NULL COMMENT '计划数量',
  `jhkssj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '计划开始时间',
  `jhjssj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '计划结束时间',
  `sjkssj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际开始时间',
  `sjjssj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际结束时间',
  `xm` longtext DEFAULT NULL COMMENT '项目',
  `bj` longtext DEFAULT NULL COMMENT '部件',
  `ch` longtext DEFAULT NULL COMMENT '车号',
  `cxbm` longtext DEFAULT NULL COMMENT '产线编码',
  `cxmc` longtext DEFAULT NULL COMMENT '产线名称',
  `xmmc` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `xm2` varchar(100) DEFAULT NULL COMMENT '看板项目',
  `cxbm2` varchar(100) DEFAULT NULL COMMENT '看板产线',
  `nianyue` varchar(100) DEFAULT NULL COMMENT '年月'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_转向架派工单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_zxj_pgd2`
--

DROP TABLE IF EXISTS `dm_zxj_pgd2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_zxj_pgd2` (
  `pgdh` longtext DEFAULT NULL COMMENT '派工单号',
  `wlbm` longtext DEFAULT NULL COMMENT '物料编码',
  `ddh` longtext DEFAULT NULL COMMENT '订单号',
  `gdh` longtext DEFAULT NULL COMMENT '工单号',
  `pgdzt` longtext DEFAULT NULL COMMENT '派工单状态',
  `gwbm` longtext DEFAULT NULL COMMENT '工位编码',
  `nianyue` longtext DEFAULT NULL COMMENT '年月',
  `gw` longtext DEFAULT NULL COMMENT '工位',
  `jhnum` int(11) DEFAULT NULL COMMENT '计划数量',
  `jhsl` int(11) DEFAULT NULL COMMENT '计划总量',
  `xxsl` int(11) DEFAULT NULL COMMENT '线下数量',
  `jhkssj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '计划开始时间',
  `jhjssj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '计划结束时间',
  `sjkssj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际开始时间',
  `sjjssj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际结束时间',
  `xm` longtext DEFAULT NULL COMMENT '项目',
  `bj` longtext DEFAULT NULL COMMENT '部件',
  `ch` longtext DEFAULT NULL COMMENT '车号',
  `cxbm` longtext DEFAULT NULL COMMENT '产线编码',
  `cxmc` longtext DEFAULT NULL COMMENT '产线名称',
  `xmmc` varchar(100) DEFAULT NULL COMMENT '项目名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_转向架派工单2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_zxj_pgd_day`
--

DROP TABLE IF EXISTS `dm_zxj_pgd_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_zxj_pgd_day` (
  `pgdh` longtext DEFAULT NULL COMMENT '派工单号',
  `wlbm` longtext DEFAULT NULL COMMENT '物料编码',
  `ddh` longtext DEFAULT NULL COMMENT '订单号',
  `gdh` longtext DEFAULT NULL COMMENT '工单号',
  `pgdzt` longtext DEFAULT NULL COMMENT '派工单状态',
  `gwbm` longtext DEFAULT NULL COMMENT '工位编码',
  `gw` longtext DEFAULT NULL COMMENT '工位',
  `jhnum` int(11) DEFAULT NULL COMMENT '计划数量',
  `jhkssj` varchar(100) DEFAULT NULL COMMENT '计划开始时间',
  `jhjssj` varchar(100) DEFAULT NULL COMMENT '计划结束时间',
  `sjkssj` varchar(100) DEFAULT NULL COMMENT '实际开始时间',
  `sjjssj` varchar(100) DEFAULT NULL COMMENT '实际结束时间',
  `xm` longtext DEFAULT NULL COMMENT '项目',
  `bj` longtext DEFAULT NULL COMMENT '部件',
  `ch` longtext DEFAULT NULL COMMENT '车号',
  `cxbm` longtext DEFAULT NULL COMMENT '产线编码',
  `cxmc` longtext DEFAULT NULL COMMENT '产线名称',
  `xmmc` varchar(100) DEFAULT NULL COMMENT '项目名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_转向架派工单（日）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_zxj_pgd_year`
--

DROP TABLE IF EXISTS `dm_zxj_pgd_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_zxj_pgd_year` (
  `pgdh` longtext DEFAULT NULL COMMENT '派工单号',
  `wlbm` longtext DEFAULT NULL COMMENT '物料编码',
  `ddh` longtext DEFAULT NULL COMMENT '订单号',
  `gdh` longtext DEFAULT NULL COMMENT '工单号',
  `pgdzt` longtext DEFAULT NULL COMMENT '派工单状态',
  `gwbm` longtext DEFAULT NULL COMMENT '工位编码',
  `gw` longtext DEFAULT NULL COMMENT '工位',
  `jhnum` int(11) DEFAULT NULL COMMENT '计划数量',
  `jhkssj` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '计划开始时间',
  `jhjssj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '计划结束时间',
  `sjkssj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际开始时间',
  `sjjssj` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际结束时间',
  `xm` longtext DEFAULT NULL COMMENT '项目',
  `bj` longtext DEFAULT NULL COMMENT '部件',
  `ch` longtext DEFAULT NULL COMMENT '车号',
  `cxbm` longtext DEFAULT NULL COMMENT '产线编码',
  `cxmc` longtext DEFAULT NULL COMMENT '产线名称',
  `xmmc` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `xm2` varchar(100) DEFAULT NULL COMMENT '看板项目',
  `cxbm2` varchar(100) DEFAULT NULL COMMENT '看板产线'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='dm_转向架派工单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ndjhwcl_syb`
--

DROP TABLE IF EXISTS `ndjhwcl_syb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ndjhwcl_syb` (
  `date` date DEFAULT NULL COMMENT '日期',
  `Annual_completed_quantity` int(11) DEFAULT NULL COMMENT '本年度实际完成数量',
  `Annual_planed_quantity` int(11) DEFAULT NULL COMMENT '本年度计划完成数量',
  `annual_comp_rate` double(100,0) DEFAULT NULL COMMENT '年度计划完成率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='事业部年度计划完成率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ods_MBF_EQUIPMENT`
--

DROP TABLE IF EXISTS `ods_MBF_EQUIPMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ods_MBF_EQUIPMENT` (
  `GID` varchar(255) NOT NULL COMMENT '主键',
  `CODE` longtext DEFAULT NULL COMMENT '设备编码',
  `NAME` longtext DEFAULT NULL COMMENT '设备名称',
  `MODEL` longtext DEFAULT NULL COMMENT '设备型号',
  `TYPE_GID` longtext DEFAULT NULL COMMENT '设备类型',
  `MANU` longtext DEFAULT NULL COMMENT '制造厂商',
  `DEPT_GID` longtext DEFAULT NULL COMMENT '部门',
  `MADE_DATE` date DEFAULT NULL COMMENT '制造日期',
  `USE_DATE` date DEFAULT NULL COMMENT '使用日期',
  `IMAGE` longtext DEFAULT NULL COMMENT '设备图片',
  `OPERATE_ID` longtext DEFAULT NULL COMMENT '设备操作人',
  `USE_STATUS` longtext DEFAULT NULL COMMENT '设备使用状态',
  `RUN_STATUS` longtext DEFAULT NULL COMMENT '设备运行状态',
  `IS_NC` int(11) DEFAULT 0 COMMENT '是否数控设备',
  `LEADER_ID` longtext DEFAULT NULL COMMENT '设备负责人',
  `WORK_CELL_GID` longtext DEFAULT NULL COMMENT '工位',
  `IS_TOOL` int(11) DEFAULT NULL COMMENT '是否辅助工具',
  `INST_LIST_GID` longtext DEFAULT NULL COMMENT '工作指示',
  `SITE_GID` longtext DEFAULT NULL COMMENT '工厂',
  `PID` longtext DEFAULT NULL COMMENT '父级设备主键',
  `USE_METHOD_GID` longtext DEFAULT NULL COMMENT '使用方式',
  `CAPACITY` int(11) DEFAULT NULL COMMENT '容量',
  `MAX_POWER` int(11) DEFAULT NULL COMMENT '最大功率',
  `MAX_SPEED` int(11) DEFAULT NULL COMMENT '最大速度',
  `MIN_SPEED` int(11) DEFAULT NULL COMMENT '最小速度',
  `MAX_WEIGHT` int(11) DEFAULT NULL COMMENT '最大重量',
  `MAX_SIZE` int(11) DEFAULT NULL COMMENT '最大尺寸(mm)',
  `MAX_FEEDRATE` int(11) DEFAULT NULL COMMENT '速度最大值((r/min)',
  `MIN_FEEDRATE` int(11) DEFAULT NULL COMMENT '速度最小值((r/min)',
  `USE_LIFE` int(11) DEFAULT NULL COMMENT '使用年限',
  `REMARK` longtext DEFAULT NULL COMMENT '备注',
  `CREATE_DATE` date NOT NULL COMMENT '创建日期',
  `MODIFY_DATE` date DEFAULT NULL COMMENT '修改日期',
  `CREATE_ID` longtext NOT NULL COMMENT '创建人',
  `MODIFY_ID` longtext DEFAULT NULL COMMENT '修改人',
  `IS_ACTIVE` int(11) NOT NULL DEFAULT 0 COMMENT '激活标识',
  `IS_DELETE` int(11) NOT NULL DEFAULT 0 COMMENT '删除标识',
  `UDA1` longtext DEFAULT NULL COMMENT '[JS]MBF_EQUIPMENT_EXCEPTION主键',
  `UDA2` longtext DEFAULT NULL COMMENT '[JS]当前状态值',
  `UDA3` longtext DEFAULT NULL COMMENT '预留字段3',
  `UDA4` longtext DEFAULT NULL COMMENT '预留字段4',
  `UDA5` longtext DEFAULT NULL COMMENT '预留字段5',
  `DELETED` longtext DEFAULT NULL COMMENT 'DELETED',
  `DATA_ROLE` longtext NOT NULL COMMENT '工厂GID',
  `MARK_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'MARK_TIME',
  `DATA_ROLE1` longtext DEFAULT NULL COMMENT '工作中心 GID',
  `DATA_ROLE2` longtext DEFAULT '0' COMMENT '工作中心层级权值',
  `WORK_CENTER_GID` longtext DEFAULT NULL COMMENT '工作中心主键',
  `UDA_EQUIP_BELONG_CODE` longtext DEFAULT NULL COMMENT '设备所属系统编码',
  `UDA_EQUIP_BELONG_NAME` longtext DEFAULT NULL COMMENT '设备所属系统名称',
  `UDA1C` longtext DEFAULT NULL COMMENT '备用字段1编码',
  `UDA1N` longtext DEFAULT NULL COMMENT '备用字段1名称',
  `UDA2C` longtext DEFAULT NULL COMMENT '备用字段2编码',
  `UDA2N` longtext DEFAULT NULL COMMENT '备用字段2名称',
  `UDA3C` longtext DEFAULT NULL COMMENT '备用字段3编码',
  `UDA3N` longtext DEFAULT NULL COMMENT '备用字段3名称',
  `UDA4C` longtext DEFAULT NULL COMMENT '备用字段4编码',
  `UDA4N` longtext DEFAULT NULL COMMENT '备用字段4名称',
  `UDA5C` longtext DEFAULT NULL COMMENT '备用字段5编码',
  `UDA5N` longtext DEFAULT NULL COMMENT '备用字段5名称',
  `UEM_EQUIP_BIGTYPEID` longtext DEFAULT NULL COMMENT '设备大类(来自自定义项档案)',
  `UEM_EQUIP_SMALLTYPEID` longtext DEFAULT NULL COMMENT '设备小类(来自自定义项档案)',
  `UEM_EQUIP_BIGTYPENAME` longtext DEFAULT NULL COMMENT '设备大类名称(来自自定义项档案)',
  `UEM_EQUIP_SMALLTYPENAME` longtext DEFAULT NULL COMMENT '设备小类名称(来自自定义项档案)',
  PRIMARY KEY (`GID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='MBF_设备基础信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ods_SBKGSC`
--

DROP TABLE IF EXISTS `ods_SBKGSC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ods_SBKGSC` (
  `DMBM` longtext DEFAULT NULL COMMENT '代码编码',
  `BYDH` longtext DEFAULT NULL COMMENT '保养单号',
  `DJDH` longtext DEFAULT NULL COMMENT '点检单号',
  `DJSJ` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '点检时间',
  `BYSJ` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '保养时间',
  `DJRQ` date DEFAULT NULL COMMENT '点检日期',
  `BYRQ` date DEFAULT NULL COMMENT '保养日期',
  `KGSC` double DEFAULT NULL COMMENT '开工时长'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ods设备开工时长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_car_health`
--

DROP TABLE IF EXISTS `t_car_health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_car_health` (
  `id` varchar(64) NOT NULL,
  `section_name` varchar(255) DEFAULT NULL COMMENT '服务站点',
  `model` varchar(255) DEFAULT NULL COMMENT '车型',
  `train_code` varchar(255) DEFAULT NULL COMMENT '车次代码',
  `score` varchar(255) DEFAULT NULL COMMENT '健康得分区间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id_index` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='车辆健康度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_key_faults`
--

DROP TABLE IF EXISTS `t_key_faults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_key_faults` (
  `id` varchar(64) NOT NULL COMMENT 'ID',
  `date_time` varchar(32) DEFAULT NULL,
  `fault_reason` varchar(255) DEFAULT NULL COMMENT '故障原因',
  `fault_code` varchar(255) DEFAULT NULL COMMENT '故障代码',
  `happen_count` varchar(22) DEFAULT NULL COMMENT '发生次数',
  `system_name` varchar(255) DEFAULT NULL COMMENT '系统名称',
  `focus` varchar(64) DEFAULT NULL COMMENT '是否关注',
  `model` varchar(255) DEFAULT NULL COMMENT '模型',
  `treatment_scheme` text DEFAULT NULL COMMENT '处理方案',
  `fault_source` varchar(255) DEFAULT NULL COMMENT '故障来源',
  `fault_level` varchar(255) DEFAULT NULL COMMENT '故障级别',
  `fault_name` varchar(255) DEFAULT NULL COMMENT '故障名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id_index` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='重点故障表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_warning_fault`
--

DROP TABLE IF EXISTS `t_warning_fault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_warning_fault` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` varchar(64) NOT NULL,
  `handler` varchar(255) DEFAULT NULL,
  `authority_name` varchar(255) DEFAULT NULL,
  `unread` tinyint(1) NOT NULL,
  `train_code` varchar(255) DEFAULT NULL,
  `fault_status` int(11) NOT NULL,
  `is_crrc` tinyint(1) DEFAULT NULL,
  `fault_relate_signal` varchar(255) DEFAULT NULL,
  `fault_level` varchar(255) DEFAULT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `score` tinyint(1) DEFAULT NULL,
  `distinct_id` varchar(255) DEFAULT NULL,
  `real_fault_code` varchar(255) DEFAULT NULL,
  `system_name` varchar(255) DEFAULT NULL,
  `model_code` varchar(255) DEFAULT NULL,
  `fault_part` varchar(255) DEFAULT NULL,
  `start_time` varchar(32) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `fault_source` varchar(255) DEFAULT NULL,
  `ab` varchar(255) DEFAULT NULL,
  `ver` varchar(255) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL,
  `handle_time` varchar(32) DEFAULT NULL,
  `qyvx_pushed` tinyint(1) DEFAULT NULL,
  `velocity` double DEFAULT NULL,
  `fault_name` varchar(255) DEFAULT NULL,
  `push_type` int(11) DEFAULT NULL,
  `fault_reason` text DEFAULT NULL,
  `fault_code` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `end_time` varchar(32) DEFAULT NULL,
  `fault_repair_suggestion` text DEFAULT NULL,
  `pushed` tinyint(1) DEFAULT NULL,
  `fault_push` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id_index` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2928217 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='预警故障';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tk_crrc_dwjxkhts`
--

DROP TABLE IF EXISTS `tk_crrc_dwjxkhts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_crrc_dwjxkhts` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` datetime DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_DATEFIELD` datetime DEFAULT NULL COMMENT '日期',
  `FK_CRRC_KHTS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '考核条数',
  `FK_CRRC_BM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '部门',
  `FK_CRRC_NF` varchar(50) NOT NULL DEFAULT ' ' COMMENT '年份',
  `FK_CRRC_YF` varchar(50) NOT NULL DEFAULT ' ' COMMENT '月份',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tk_crrc_dwjxkhts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tk_crrc_gjsbqd`
--

DROP TABLE IF EXISTS `tk_crrc_gjsbqd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_crrc_gjsbqd` (
  `FK_CRRC_SBBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '设备编号',
  `FK_CRRC_SBMC` varchar(50) NOT NULL DEFAULT ' ' COMMENT '设备名称',
  `FK_CRRC_SYDW` varchar(50) NOT NULL DEFAULT ' ' COMMENT '使用单位',
  `FK_CRRC_GJDJ` varchar(50) NOT NULL DEFAULT ' ' COMMENT '关键等级',
  `FBILLNO` varchar(30) NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FK_CRRC_SSCJ` varchar(50) NOT NULL DEFAULT ' ' COMMENT '所属车间',
  `FK_CRRC_CXBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '产线编码',
  `FK_CRRC_SSCX` varchar(50) NOT NULL DEFAULT ' ' COMMENT '所属产线',
  `FK_CRRC_GWBM` varchar(50) NOT NULL DEFAULT ' ' COMMENT '工位编码',
  `FK_CRRC_SSGW` varchar(50) NOT NULL DEFAULT ' ' COMMENT '所属工位',
  `BMDM` varchar(100) DEFAULT NULL COMMENT '编码代码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tk_crrc_gjsbqd';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tk_crrc_kqjdsj`
--

DROP TABLE IF EXISTS `tk_crrc_kqjdsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tk_crrc_kqjdsj` (
  `FK_CRRC_TEXTFIELD` varchar(50) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD1` varchar(50) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD2` varchar(50) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD3` varchar(50) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD4` varchar(50) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD5` varchar(50) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD6` varchar(50) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD7` varchar(50) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD8` varchar(50) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD9` varchar(50) DEFAULT NULL,
  `FK_CRRC_CHECKBOXFIELD` char(1) DEFAULT NULL,
  `FK_CRRC_CHECKBOXFIELD1` char(1) DEFAULT NULL,
  `FK_CRRC_CHECKBOXFIELD2` char(1) DEFAULT NULL,
  `FK_CRRC_CHECKBOXFIELD3` char(1) DEFAULT NULL,
  `FK_CRRC_AMOUNTFIELD` decimal(23,10) DEFAULT NULL COMMENT '绩效工资',
  `avg` varchar(100) DEFAULT NULL COMMENT '平均工资'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tk_crrc_kqjdsj';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'zj_data'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-06 10:25:50

CREATE DATABASE `crrc_temp`;

USE `crrc_temp`;
-- crrc_temp.EAS_MRL_FULLY_DATA definition

CREATE TABLE `EAS_MRL_FULLY_DATA` (
  `GID` varchar(32) NOT NULL COMMENT '主键',
  `MRL_CODE` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `MRL_NAME` varchar(250) DEFAULT NULL COMMENT '物料名称',
  `MODEL` varchar(100) DEFAULT NULL COMMENT '规格型号',
  `UNIT` varchar(100) DEFAULT NULL COMMENT '计量单位（物料）',
  `PLAN_QTY` varchar(100) DEFAULT NULL COMMENT '计划数量',
  `QUA_QTY` varchar(100) DEFAULT NULL COMMENT '交货时间',
  `STOCK` varchar(100) DEFAULT NULL COMMENT '需求数量',
  `STATE` varchar(100) DEFAULT NULL COMMENT '库存',
  `ORDER_CODE` varchar(100) DEFAULT NULL COMMENT '齐套结果',
  `OP_CODE` varchar(100) DEFAULT NULL COMMENT '工序号',
  `KEY_CODE` text COMMENT '唯一键便于查询删除  订单+工序+物料',
  `CREATE_ID` varchar(32) NOT NULL COMMENT '创建人',
  `CREATE_DATE` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_ID` varchar(32) DEFAULT NULL COMMENT '修改人',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `IS_ACTIVE` decimal(1,0) NOT NULL COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` decimal(1,0) NOT NULL COMMENT '删除标识(0未删除1删除)',
  `DELETED` varchar(32) DEFAULT NULL,
  `DATA_ROLE` varchar(32) NOT NULL COMMENT '工厂GID',
  `UDA1` varchar(50) DEFAULT NULL COMMENT '预留字段1',
  `UDA2` varchar(50) DEFAULT NULL COMMENT '预留字段2',
  `UDA3` varchar(50) DEFAULT NULL COMMENT '预留字段3',
  `UDA4` varchar(50) DEFAULT NULL COMMENT '预留字段4',
  `UDA5` varchar(50) DEFAULT NULL COMMENT '预留字段5',
  `DATA_ROLE1` varchar(32) DEFAULT NULL COMMENT '工作中心 GID',
  `DATA_ROLE2` varchar(32) DEFAULT NULL COMMENT '工作中心层级权值',
  `UDA1C` varchar(100) DEFAULT NULL COMMENT '备用字段1编码',
  `UDA1N` varchar(100) DEFAULT NULL COMMENT '备用字段1名称',
  `UDA2C` varchar(100) DEFAULT NULL COMMENT '备用字段2编码',
  `UDA2N` varchar(100) DEFAULT NULL COMMENT '备用字段2名称',
  `UDA3C` varchar(100) DEFAULT NULL COMMENT '备用字段3编码',
  `UDA3N` varchar(100) DEFAULT NULL COMMENT '备用字段3名称',
  `UDA4C` varchar(100) DEFAULT NULL COMMENT '备用字段4编码',
  `UDA4N` varchar(100) DEFAULT NULL COMMENT '备用字段4名称',
  `UDA5C` varchar(100) DEFAULT NULL COMMENT '备用字段5编码',
  `UDA5N` varchar(100) DEFAULT NULL COMMENT '备用字段5名称',
  PRIMARY KEY (`GID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='项目交期信息表';


-- crrc_temp.MBF_LABOUR_GROUP definition

CREATE TABLE `MBF_LABOUR_GROUP` (
  `GID` varchar(32) NOT NULL COMMENT '主键',
  `GROUP_CODE` varchar(50) NOT NULL COMMENT '班组编码',
  `GROUP_NAME` varchar(100) DEFAULT NULL COMMENT '班组名称',
  `GROUP_LEADER` varchar(32) DEFAULT NULL COMMENT '班组长',
  `WORK_CENTER_GID` varchar(32) DEFAULT NULL COMMENT '工作中心',
  `SITE_GID` varchar(32) DEFAULT NULL COMMENT '工厂',
  `CREATE_ID` varchar(32) NOT NULL COMMENT '创建人',
  `CREATE_DATE` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_ID` varchar(32) DEFAULT NULL COMMENT '修改人',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改日期',
  `IS_ACTIVE` decimal(1,0) NOT NULL COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` decimal(1,0) NOT NULL COMMENT '删除标识(0未删除1删除)',
  `UDA1` varchar(50) DEFAULT NULL COMMENT '备用字段1',
  `UDA2` varchar(50) DEFAULT NULL COMMENT '备用字段2',
  `UDA3` varchar(50) DEFAULT NULL COMMENT '备用字段3',
  `UDA4` varchar(50) DEFAULT NULL COMMENT '备用字段4',
  `UDA5` varchar(50) DEFAULT NULL COMMENT '备用字段5',
  `DELETED` varchar(32) DEFAULT NULL,
  `DATA_ROLE` varchar(32) NOT NULL COMMENT '工厂GID',
  `DATA_ROLE1` varchar(32) DEFAULT NULL COMMENT '工作中心 GID',
  `DATA_ROLE2` varchar(32) DEFAULT NULL COMMENT '工作中心层级权值',
  `SHIFT_CLASS_GID` varchar(32) DEFAULT NULL COMMENT '班制类型主键',
  `GROUP_DIRECTOR` varchar(32) DEFAULT NULL COMMENT '上级管理人',
  `UDA1C` varchar(100) DEFAULT NULL COMMENT '备用字段1编码',
  `UDA1N` varchar(100) DEFAULT NULL COMMENT '备用字段1名称',
  `UDA2C` varchar(100) DEFAULT NULL COMMENT '备用字段2编码',
  `UDA2N` varchar(100) DEFAULT NULL COMMENT '备用字段2名称',
  `UDA3C` varchar(100) DEFAULT NULL COMMENT '备用字段3编码',
  `UDA3N` varchar(100) DEFAULT NULL COMMENT '备用字段3名称',
  `UDA4C` varchar(100) DEFAULT NULL COMMENT '备用字段4编码',
  `UDA4N` varchar(100) DEFAULT NULL COMMENT '备用字段4名称',
  `UDA5C` varchar(100) DEFAULT NULL COMMENT '备用字段5编码',
  `UDA5N` varchar(100) DEFAULT NULL COMMENT '备用字段5名称',
  `DEPT_GID` varchar(100) DEFAULT NULL COMMENT '部门',
  PRIMARY KEY (`GID`),
  KEY `I_MBF_LABOUR_GROUP_1` (`GROUP_CODE`),
  KEY `I_MBF_LABOUR_GROUP_10` (`DATA_ROLE`),
  KEY `I_MBF_LABOUR_GROUP_2` (`GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='MBF_班组表';


-- crrc_temp.MES_EXCEPTION_TYPE definition

CREATE TABLE `MES_EXCEPTION_TYPE` (
  `异常类型编码` text,
  `异常类型名称` text,
  `类型属性名称` text,
  `类型属性编码` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.MES_commissioning_task definition

CREATE TABLE `MES_commissioning_task` (
  `项目号` text,
  `车号` text,
  `文件类型` text,
  `订单号` text,
  `派工单号` text,
  `id` text,
  `计划开始时间` datetime DEFAULT NULL,
  `计划结束时间` datetime DEFAULT NULL,
  `工艺路线` text,
  `工艺名称` text,
  `opCode` text,
  `opName` text,
  `fileCode` text,
  `fileName` text,
  `carTypeCode` text,
  `publishGid` text,
  `prasePercent` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.PMBF_LOCATION definition

CREATE TABLE `PMBF_LOCATION` (
  `GID` varchar(32) NOT NULL COMMENT '主键',
  `PID` varchar(32) DEFAULT NULL COMMENT '父区域主键',
  `CODE` varchar(50) NOT NULL COMMENT '区域编号',
  `NAME` varchar(100) DEFAULT NULL COMMENT '区域名称',
  `LOCATION_CLASS_GID` varchar(32) DEFAULT NULL COMMENT '区域类型主键',
  `SITE_GID` varchar(32) DEFAULT NULL COMMENT '工厂主键',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `CREATE_ID` varchar(32) NOT NULL COMMENT '创建人',
  `CREATE_DATE` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_ID` varchar(32) DEFAULT NULL COMMENT '修改人',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改日期',
  `IS_ACTIVE` decimal(1,0) NOT NULL COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` decimal(1,0) NOT NULL COMMENT '删除标识(0未删除1删除)',
  `UDA1` varchar(50) DEFAULT NULL COMMENT '预留字段1',
  `UDA2` varchar(50) DEFAULT NULL COMMENT '预留字段2',
  `UDA3` varchar(50) DEFAULT NULL COMMENT '预留字段3',
  `UDA4` varchar(50) DEFAULT NULL COMMENT '预留字段4',
  `UDA5` varchar(50) DEFAULT NULL COMMENT '预留字段5',
  `DELETED` varchar(32) DEFAULT NULL,
  `DATA_ROLE` varchar(32) DEFAULT NULL COMMENT '工厂GID',
  `DATA_ROLE1` varchar(32) DEFAULT NULL COMMENT '工作中心 GID',
  `DATA_ROLE2` varchar(32) DEFAULT NULL COMMENT '工作中心层级权值',
  `UDA1C` varchar(100) DEFAULT NULL COMMENT '备用字段1编码',
  `UDA1N` varchar(100) DEFAULT NULL COMMENT '备用字段1名称',
  `UDA2C` varchar(100) DEFAULT NULL COMMENT '备用字段2编码',
  `UDA2N` varchar(100) DEFAULT NULL COMMENT '备用字段2名称',
  `UDA3C` varchar(100) DEFAULT NULL COMMENT '备用字段3编码',
  `UDA3N` varchar(100) DEFAULT NULL COMMENT '备用字段3名称',
  `UDA4C` varchar(100) DEFAULT NULL COMMENT '备用字段4编码',
  `UDA4N` varchar(100) DEFAULT NULL COMMENT '备用字段4名称',
  `UDA5C` varchar(100) DEFAULT NULL COMMENT '备用字段5编码',
  `UDA5N` varchar(100) DEFAULT NULL COMMENT '备用字段5名称',
  PRIMARY KEY (`GID`),
  KEY `IX_PMBF_LOCATION_1` (`LOCATION_CLASS_GID`),
  KEY `IX_PMBF_LOCATION_2` (`SITE_GID`),
  KEY `I_PMBF_LOCATION_3` (`CODE`),
  KEY `I_PMBF_LOCATION_4` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PMBF_区域';


-- crrc_temp.PMBF_WORK_CELL definition

CREATE TABLE `PMBF_WORK_CELL` (
  `GID` varchar(32) NOT NULL COMMENT '主键',
  `CODE` varchar(50) NOT NULL COMMENT '工位编码',
  `NAME` varchar(100) DEFAULT NULL COMMENT '工位名称',
  `WORK_CENTER_GID` varchar(32) DEFAULT NULL COMMENT '所属工作中心',
  `WORK_CELL_CLASS_GID` varchar(32) DEFAULT NULL COMMENT '工位分类',
  `SITE_GID` varchar(32) DEFAULT NULL COMMENT '工厂主键',
  `DEFAULT_EQUIP_GID` varchar(32) DEFAULT NULL COMMENT '默认设备主键',
  `CALENDAR_GID` varchar(32) DEFAULT NULL COMMENT '工作日历主键',
  `ATTIBUTE_FLAG` decimal(1,0) DEFAULT NULL COMMENT '属性标识(0生产/1存储/2生产存储/3道口/4上线工位/5返修工位)',
  `PLAN_CYCLE_TIME` decimal(18,2) DEFAULT NULL COMMENT '计划节拍时间',
  `LAST_CYCLE_TIME` decimal(18,2) DEFAULT NULL COMMENT '实际节拍时间',
  `SETUP_TIME` decimal(18,2) DEFAULT NULL COMMENT '安装准备时间',
  `RUN_TIME` decimal(18,2) DEFAULT NULL COMMENT '运行时间',
  `DAILY_AVAILABLE_TIME` decimal(18,2) DEFAULT NULL COMMENT '日可用时间',
  `TEAR_DOWN_TIME` decimal(18,2) DEFAULT NULL COMMENT '拆卸时间',
  `EXTERNAL_CODE` varchar(50) DEFAULT NULL COMMENT '工位在外部系统(ERP)中的编码',
  `X_AXIS` decimal(5,0) NOT NULL COMMENT 'X轴坐标',
  `Y_AXIS` decimal(5,0) NOT NULL COMMENT 'Y轴坐标',
  `CREATE_ID` varchar(32) NOT NULL COMMENT '创建人',
  `CREATE_DATE` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_ID` varchar(32) DEFAULT NULL COMMENT '修改人',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改日期',
  `IS_ACTIVE` decimal(1,0) NOT NULL COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` decimal(1,0) NOT NULL COMMENT '删除标识(0未删除1删除)',
  `UDA1` varchar(50) DEFAULT NULL COMMENT '预留字段1',
  `UDA2` varchar(50) DEFAULT NULL COMMENT ' 允许最大开工数',
  `UDA3` varchar(50) DEFAULT NULL COMMENT '[JS]工位当前指令：1开机/2停机',
  `UDA4` varchar(50) DEFAULT NULL COMMENT '预留字段4',
  `UDA5` varchar(50) DEFAULT NULL COMMENT '预留字段5',
  `DELETED` varchar(32) DEFAULT NULL,
  `STORAGE_CELL_GID` varchar(32) DEFAULT NULL COMMENT '关联货位',
  `DATA_ROLE` varchar(32) DEFAULT NULL COMMENT '工厂GID',
  `LINE_STATE` decimal(1,0) DEFAULT NULL COMMENT '铺线1、清线2',
  `DATA_ROLE1` varchar(32) DEFAULT NULL COMMENT '工作中心 GID',
  `DATA_ROLE2` varchar(32) DEFAULT NULL COMMENT '工作中心层级权值',
  `UDA_EQUIP_BELONG_CODE` varchar(32) DEFAULT NULL COMMENT '设备所属系统编码',
  `UDA_EQUIP_BELONG_NAME` varchar(32) DEFAULT NULL COMMENT '设备所属系统名称',
  `UDA_SEND_EDITRELSEND_GID` varchar(40) DEFAULT NULL COMMENT '配送方案gid',
  `UDA_SEND_EDITRELSEND_NAME` varchar(40) DEFAULT NULL COMMENT '配送方案名称',
  `UDA_SEND_EDITRELSEND_AHEADTIME` varchar(40) DEFAULT NULL COMMENT '提前配送时间',
  `UDA1C` varchar(100) DEFAULT NULL COMMENT '备用字段1编码',
  `UDA1N` varchar(100) DEFAULT NULL COMMENT '备用字段1名称',
  `UDA2C` varchar(100) DEFAULT NULL COMMENT '备用字段2编码',
  `UDA2N` varchar(100) DEFAULT NULL COMMENT '备用字段2名称',
  `UDA3C` varchar(100) DEFAULT NULL COMMENT '备用字段3编码',
  `UDA3N` varchar(100) DEFAULT NULL COMMENT '备用字段3名称',
  `UDA4C` varchar(100) DEFAULT NULL COMMENT '备用字段4编码',
  `UDA4N` varchar(100) DEFAULT NULL COMMENT '备用字段4名称',
  `UDA5C` varchar(100) DEFAULT NULL COMMENT '备用字段5编码',
  `UDA5N` varchar(100) DEFAULT NULL COMMENT '备用字段5名称',
  `CENTRAL_CONTROL` varchar(50) DEFAULT NULL COMMENT '所属中控 (0:抱轴箱产线中控,1:总成生产线产线中控,2:制动盘线产线中控,3:机车轴箱产线中控)',
  `IS_AGV_TRANSFER` varchar(50) DEFAULT NULL COMMENT '是否AGV转运(0:否,1:是)',
  `REMAKE` varchar(32) DEFAULT NULL COMMENT '备注',
  `IS_APS_PRO_LINE` decimal(1,0) DEFAULT NULL COMMENT '是否排程产线(0否1是默认0)',
  `IS_FROCK_OPERATE` varchar(50) DEFAULT NULL COMMENT '是否工装操作(0：否，1:是)',
  `IS_AUTOMATIC_PROCEDURE` varchar(50) DEFAULT NULL COMMENT '是否自动工序(0：否，1:是)默认不是自动工序，需要在工位配置',
  `IS_RGV` decimal(1,0) DEFAULT NULL COMMENT '是否RGV',
  `IS_FLIP` decimal(1,0) DEFAULT NULL COMMENT '是否翻转',
  PRIMARY KEY (`GID`),
  KEY `IX_PMBF_WORK_CELL_1` (`WORK_CENTER_GID`),
  KEY `IX_PMBF_WORK_CELL_2` (`WORK_CELL_CLASS_GID`),
  KEY `I_PMBF_WORK_CELL_3` (`CODE`),
  KEY `I_PMBF_WORK_CELL_4` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PMBF_工位';


-- crrc_temp.PMBF_WORK_CENTER definition

CREATE TABLE `PMBF_WORK_CENTER` (
  `GID` varchar(32) NOT NULL COMMENT '主键',
  `PID` varchar(32) DEFAULT NULL COMMENT '上级工作中心',
  `CODE` varchar(32) NOT NULL COMMENT '工作中心编码',
  `NAME` varchar(100) DEFAULT NULL COMMENT '工作中心名称',
  `LOCATION_GID` varchar(32) DEFAULT NULL COMMENT '所属区域',
  `SITE_GID` varchar(32) DEFAULT NULL COMMENT '工厂主键',
  `WORK_CENTER_CLASS_GID` varchar(32) NOT NULL COMMENT '工作中心分类',
  `CLASS_FLAG` decimal(1,0) DEFAULT NULL COMMENT '分类标识(0生产/1仓库/2线边/3生产存储)',
  `IS_RUN` decimal(1,0) DEFAULT NULL COMMENT '是否允许',
  `IS_CRITICAL` decimal(1,0) DEFAULT NULL COMMENT '是否关键',
  `IS_OUTSOURCING` decimal(1,0) DEFAULT NULL COMMENT '是否外协',
  `IS_DECOMPOSE` decimal(1,0) DEFAULT NULL COMMENT '是否分解',
  `CALENDAR_GID` varchar(32) DEFAULT NULL COMMENT '工作日历',
  `CYCLE_TIME` decimal(18,2) DEFAULT NULL COMMENT '节拍',
  `PROTECT_QTY` decimal(18,0) NOT NULL COMMENT '保护区数量',
  `STORE_MODE` decimal(1,0) DEFAULT NULL COMMENT '存储标识(1无货位/2有货位不需上下架/3有货位需上下架)',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `CREATE_ID` varchar(32) NOT NULL COMMENT '创建人',
  `CREATE_DATE` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_ID` varchar(32) DEFAULT NULL COMMENT '修改人',
  `MODIFY_DATE` datetime DEFAULT NULL COMMENT '修改日期',
  `IS_ACTIVE` decimal(1,0) NOT NULL COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` decimal(1,0) NOT NULL COMMENT '删除标识(0未删除1删除)',
  `UDA1` varchar(50) DEFAULT NULL COMMENT '预留字段1',
  `UDA2` varchar(50) DEFAULT NULL COMMENT '预留字段2',
  `UDA3` varchar(50) DEFAULT NULL COMMENT '预留字段3',
  `UDA4` varchar(50) DEFAULT NULL COMMENT '预留字段4',
  `UDA5` varchar(50) DEFAULT NULL COMMENT '预留字段5',
  `DELETED` varchar(32) DEFAULT NULL,
  `DATA_ROLE` varchar(32) DEFAULT NULL COMMENT '工厂GID',
  `SHIFT_GROUP_CODE` varchar(50) DEFAULT NULL COMMENT '班次类别分组',
  `LEVEL_CODE` decimal(38,30) DEFAULT NULL COMMENT '层级权值',
  `DATA_ROLE1` varchar(32) DEFAULT NULL COMMENT '工作中心 GID',
  `DATA_ROLE2` varchar(32) DEFAULT NULL COMMENT '工作中心层级权值',
  `UDA1C` varchar(100) DEFAULT NULL COMMENT '备用字段1编码',
  `UDA1N` varchar(100) DEFAULT NULL COMMENT '备用字段1名称',
  `UDA2C` varchar(100) DEFAULT NULL COMMENT '备用字段2编码',
  `UDA2N` varchar(100) DEFAULT NULL COMMENT '备用字段2名称',
  `UDA3C` varchar(100) DEFAULT NULL COMMENT '备用字段3编码',
  `UDA3N` varchar(100) DEFAULT NULL COMMENT '备用字段3名称',
  `UDA4C` varchar(100) DEFAULT NULL COMMENT '备用字段4编码',
  `UDA4N` varchar(100) DEFAULT NULL COMMENT '备用字段4名称',
  `UDA5C` varchar(100) DEFAULT NULL COMMENT '备用字段5编码',
  `UDA5N` varchar(100) DEFAULT NULL COMMENT '备用字段5名称',
  `BELONG_CENTER` varchar(10) DEFAULT NULL COMMENT '所属产线中控',
  `IS_ROBOTIC_ASSEMBLY` decimal(1,0) DEFAULT NULL COMMENT '是否全中控产线  0 否 1  是',
  PRIMARY KEY (`GID`),
  KEY `IX_PMBF_WORK_CENTER_1` (`LOCATION_GID`),
  KEY `IX_PMBF_WORK_CENTER_2` (`WORK_CENTER_CLASS_GID`),
  KEY `I_PMBF_WORK_CENTER_3` (`CODE`),
  KEY `I_PMBF_WORK_CENTER_4` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PMBF_工作中心';


-- crrc_temp.dataframe_travel_department definition

CREATE TABLE `dataframe_travel_department` (
  `index` bigint(20) DEFAULT NULL,
  `部门` text,
  `指标` double DEFAULT NULL,
  `已报销` double DEFAULT NULL,
  `报销中` double DEFAULT NULL,
  `出差中` double DEFAULT NULL,
  `小计` double DEFAULT NULL,
  `指标剩余` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dataframe_travel_month definition

CREATE TABLE `dataframe_travel_month` (
  `index` bigint(20) DEFAULT NULL,
  `月份` text,
  `已报销` double DEFAULT NULL,
  `报销中` double DEFAULT NULL,
  `出差中` double DEFAULT NULL,
  `小计` double DEFAULT NULL,
  `占比` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dataframe_travel_out definition

CREATE TABLE `dataframe_travel_out` (
  `index` bigint(20) DEFAULT NULL,
  `申请部门` text,
  `姓名` text,
  `5位工号` text,
  `出差城市` text,
  `项目名称` text,
  `出发日期` datetime DEFAULT NULL,
  `返回日期` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dataframe_travel_total definition

CREATE TABLE `dataframe_travel_total` (
  `单据编号` text,
  `差旅状态` text,
  `差旅分类` text,
  `月份` bigint(20) DEFAULT NULL,
  `申请部门` text,
  `实际报销金额/预计报销金额` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dataframe_travel_total_all definition

CREATE TABLE `dataframe_travel_total_all` (
  `单据编号` text,
  `差旅状态` text,
  `差旅分类` text,
  `月份` bigint(20) DEFAULT NULL,
  `申请部门` text,
  `实际报销金额/预计报销金额` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dataframe_xiaoxian definition

CREATE TABLE `dataframe_xiaoxian` (
  `项目` longtext,
  `车号` longtext,
  `工序名称` longtext,
  `异常类型` longtext,
  `核实后异常类型` longtext,
  `是否申诉` longtext,
  `异常描述` longtext,
  `指定响应人` longtext,
  `指定响应人工号` longtext,
  `响应人` longtext,
  `响应人工号` longtext,
  `响应人所在部门` longtext,
  `响应人所在班组` longtext,
  `响应日期` datetime DEFAULT NULL,
  `处理人` longtext,
  `处理人工号` longtext,
  `处理日期` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_abnormal definition

CREATE TABLE `dm_abnormal` (
  `id` text,
  `异常类型名称` text,
  `异常类型编码` text,
  `工作中心编码` text,
  `工作中心` text,
  `工位编码` text,
  `工位` text,
  `班组名称` text,
  `车间名称` text,
  `异常状态分类` text,
  `异常状态代号` bigint(20) DEFAULT NULL,
  `异常描述` text,
  `异常备注` text,
  `工序名称` text,
  `工序代号` text,
  `车号` text,
  `节车号` text,
  `计划处理时间/分钟` text,
  `创建人` text,
  `创建日期` datetime DEFAULT NULL,
  `发起人` text,
  `发起日期` datetime DEFAULT NULL,
  `修改人` text,
  `修改日期` datetime DEFAULT NULL,
  `响应人` text,
  `指定响应人` text,
  `响应时间` datetime DEFAULT NULL,
  `处理人` text,
  `处理时间` datetime DEFAULT NULL,
  `关闭人` text,
  `关闭时间` datetime DEFAULT NULL,
  `产品编码` text,
  `产品名称` text,
  `工单编码` text,
  `异常记录编码` text,
  `响应人姓名` text,
  `响应人组织` text,
  `响应人部门` text,
  `响应人组室` text,
  `指定响应人姓名` text,
  `指定响应人组织` text,
  `指定响应人部门` text,
  `指定响应人组室` text,
  `处理人姓名` text,
  `处理人组织` text,
  `处理人部门` text,
  `处理人组室` text,
  `发起人姓名` text,
  `发起人组织` text,
  `发起人部门` text,
  `发起人组室` text,
  `类型属性名称` text,
  `类型属性编码` text,
  `项目号` text,
  `项目名称` text,
  `项目简称` text,
  `项目启动年份` datetime DEFAULT NULL,
  `项目所属节车号` text,
  `响应状态` text,
  `响应时长` bigint(20) DEFAULT NULL,
  `是否及时响应` bigint(20) DEFAULT NULL,
  `是否为正常上报异常` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_abnormal_department definition

CREATE TABLE `dm_abnormal_department` (
  `组织` text,
  `部门` text,
  `每月异常数` bigint(20) DEFAULT NULL,
  `每月响应数` bigint(20) DEFAULT NULL,
  `每月处理数` bigint(20) DEFAULT NULL,
  `每月响应率` double DEFAULT NULL,
  `每月处理率` double DEFAULT NULL,
  `每日异常数` bigint(20) DEFAULT NULL,
  `每日响应数` bigint(20) DEFAULT NULL,
  `每日处理数` bigint(20) DEFAULT NULL,
  `每日响应率` double DEFAULT NULL,
  `每日处理率` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_abnormal_project definition

CREATE TABLE `dm_abnormal_project` (
  `项目号` text,
  `每月异常数` double DEFAULT NULL,
  `每月响应数` double DEFAULT NULL,
  `每月处理数` double DEFAULT NULL,
  `每月响应率` double DEFAULT NULL,
  `每月处理率` double DEFAULT NULL,
  `每日异常数` double DEFAULT NULL,
  `每日响应数` double DEFAULT NULL,
  `每日处理数` double DEFAULT NULL,
  `每日响应率` double DEFAULT NULL,
  `每日处理率` double DEFAULT NULL,
  `项目名称` text,
  `项目简称` text,
  `项目启动年份` datetime DEFAULT NULL,
  `项目所属节车号` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_ameliorate_department definition

CREATE TABLE `dm_ameliorate_department` (
  `部门` text,
  `负责人` text,
  `指标` bigint(20) DEFAULT NULL,
  `已完成数` bigint(20) DEFAULT NULL,
  `差额` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_ameliorate_group definition

CREATE TABLE `dm_ameliorate_group` (
  `组室` text,
  `负责人` text,
  `指标` bigint(20) DEFAULT NULL,
  `已完成数` bigint(20) DEFAULT NULL,
  `差额` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_attendance definition

CREATE TABLE `dm_attendance` (
  `ID` bigint(20) DEFAULT NULL,
  `iOrd` bigint(20) DEFAULT NULL,
  `F48432` text,
  `F48433` text,
  `F48434` text,
  `F48435` double DEFAULT NULL,
  `F48436` double DEFAULT NULL,
  `F48437` double DEFAULT NULL,
  `F48438` double DEFAULT NULL,
  `F48439` double DEFAULT NULL,
  `F48440` double DEFAULT NULL,
  `F48441` double DEFAULT NULL,
  `F48442` double DEFAULT NULL,
  `F48443` double DEFAULT NULL,
  `F48444` double DEFAULT NULL,
  `F48445` double DEFAULT NULL,
  `F48446` double DEFAULT NULL,
  `F48447` double DEFAULT NULL,
  `F48448` double DEFAULT NULL,
  `F48449` double DEFAULT NULL,
  `F48450` double DEFAULT NULL,
  `F48451` double DEFAULT NULL,
  `F48452` double DEFAULT NULL,
  `F48453` double DEFAULT NULL,
  `F48454` double DEFAULT NULL,
  `F48455` double DEFAULT NULL,
  `F48456` double DEFAULT NULL,
  `F48457` double DEFAULT NULL,
  `F48458` double DEFAULT NULL,
  `F48459` double DEFAULT NULL,
  `F48460` double DEFAULT NULL,
  `F48461` double DEFAULT NULL,
  `F48462` double DEFAULT NULL,
  `F48463` double DEFAULT NULL,
  `F48464` double DEFAULT NULL,
  `F48465` double DEFAULT NULL,
  `F48466` double DEFAULT NULL,
  `F48467` double DEFAULT NULL,
  `F48468` double DEFAULT NULL,
  `F48469` double DEFAULT NULL,
  `F48470` double DEFAULT NULL,
  `F48471` double DEFAULT NULL,
  `F48473` text,
  `F48474` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_bgcp definition

CREATE TABLE `dm_bgcp` (
  `ID` bigint(20) DEFAULT NULL,
  `iOrd` bigint(20) DEFAULT NULL,
  `F1893` text,
  `F1894` double DEFAULT NULL,
  `F1895` double DEFAULT NULL,
  `F1896` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_calibration definition

CREATE TABLE `dm_calibration` (
  `id` text,
  `异常类型名称` text,
  `异常类型编码` text,
  `工作中心编码` text,
  `工作中心` text,
  `工位编码` text,
  `工位` text,
  `班组名称` text,
  `车间名称` text,
  `异常状态分类` text,
  `异常状态代号` bigint(20) DEFAULT NULL,
  `异常描述` text,
  `异常备注` text,
  `工序名称` text,
  `工序代号` text,
  `车号` text,
  `节车号` text,
  `计划处理时间/分钟` text,
  `创建人` text,
  `创建日期` datetime DEFAULT NULL,
  `发起人` text,
  `发起日期` datetime DEFAULT NULL,
  `修改人` text,
  `修改日期` datetime DEFAULT NULL,
  `响应人` text,
  `指定响应人` text,
  `响应时间` datetime DEFAULT NULL,
  `处理人` text,
  `处理时间` datetime DEFAULT NULL,
  `关闭人` text,
  `关闭时间` datetime DEFAULT NULL,
  `产品编码` text,
  `产品名称` text,
  `工单编码` text,
  `异常记录编码` text,
  `响应人姓名` text,
  `响应人部门` text,
  `响应人组室` text,
  `指定响应人姓名` text,
  `指定响应人部门` text,
  `指定响应人组室` text,
  `处理人姓名` text,
  `处理人部门` text,
  `处理人组室` text,
  `发起人姓名` text,
  `发起人部门` text,
  `发起人组室` text,
  `类型属性名称` text,
  `类型属性编码` text,
  `项目号` text,
  `项目名称` text,
  `项目简称` text,
  `项目启动年份` datetime DEFAULT NULL,
  `项目所属节车号` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_crrc_swq_phonebook definition

CREATE TABLE `dm_crrc_swq_phonebook` (
  `ID` bigint(20) DEFAULT NULL,
  `iOrd` bigint(20) DEFAULT NULL,
  `RepID` bigint(20) DEFAULT NULL,
  `FillDate` datetime DEFAULT NULL,
  `ModifyDate` datetime DEFAULT NULL,
  `DeptID` bigint(20) DEFAULT NULL,
  `OperID` bigint(20) DEFAULT NULL,
  `sDesc` text,
  `bIsFinish` text,
  `bLocked` text,
  `bCanViewWhenNoFinished` text,
  `OperID2` bigint(20) DEFAULT NULL,
  `dUpdate2` datetime DEFAULT NULL,
  `F2961` text,
  `F2962` text,
  `F2963` text,
  `F2964` text,
  `F2965` text,
  `F2966` text,
  `F2967` text,
  `F2968` text,
  `F2969` text,
  `F2970` text,
  `F2971` text,
  `F3562` text,
  `F3563` text,
  `F10968` text,
  `F11066` text,
  `F14226` text,
  `F14580` text,
  `F14584` text,
  `F14585` text,
  `F15942` datetime DEFAULT NULL,
  `F15943` text,
  `F15944` text,
  `F15945` text,
  `F15946` text,
  `F15947` text,
  `F20595` text,
  `F24116` text,
  `F26392` text,
  `F28227` text,
  `F28938` text,
  `F44210` datetime DEFAULT NULL,
  `F44211` datetime DEFAULT NULL,
  `F44212` datetime DEFAULT NULL,
  `F47346` text,
  `F47347` text,
  `F47348` text,
  `F47848` text,
  `F49878` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_crrc_swq_project_efficiency definition

CREATE TABLE `dm_crrc_swq_project_efficiency` (
  `ID` bigint(20) DEFAULT NULL,
  `iOrd` bigint(20) DEFAULT NULL,
  `F48534` text,
  `F48535` double DEFAULT NULL,
  `F48536` double DEFAULT NULL,
  `F48552` double DEFAULT NULL,
  `F48553` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_crrc_tabDIYTable3183 definition

CREATE TABLE `dm_crrc_tabDIYTable3183` (
  `ID` bigint(20) DEFAULT NULL,
  `iOrd` bigint(20) DEFAULT NULL,
  `RepID` bigint(20) DEFAULT NULL,
  `FillDate` datetime DEFAULT NULL,
  `ModifyDate` datetime DEFAULT NULL,
  `DeptID` bigint(20) DEFAULT NULL,
  `OperID` bigint(20) DEFAULT NULL,
  `sDesc` text,
  `bIsFinish` text,
  `bLocked` text,
  `bCanViewWhenNoFinished` text,
  `OperID2` bigint(20) DEFAULT NULL,
  `dUpdate2` datetime DEFAULT NULL,
  `F27516` text,
  `F27517` double DEFAULT NULL,
  `F27518` double DEFAULT NULL,
  `F27519` double DEFAULT NULL,
  `F27520` double DEFAULT NULL,
  `F27521` double DEFAULT NULL,
  `F27522` double DEFAULT NULL,
  `F27523` double DEFAULT NULL,
  `F27524` double DEFAULT NULL,
  `F48554` double DEFAULT NULL,
  `F48726` double DEFAULT NULL,
  `F48727` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_crrc_tabdiytable3184 definition

CREATE TABLE `dm_crrc_tabdiytable3184` (
  `ID` bigint(20) DEFAULT NULL,
  `iOrd` bigint(20) DEFAULT NULL,
  `F27525` double DEFAULT NULL,
  `F27526` double DEFAULT NULL,
  `F27527` double DEFAULT NULL,
  `F27528` double DEFAULT NULL,
  `F27529` double DEFAULT NULL,
  `F27530` double DEFAULT NULL,
  `F27531` double DEFAULT NULL,
  `F27532` double DEFAULT NULL,
  `F28247` text,
  `F48679` double DEFAULT NULL,
  `F48680` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_delivery definition

CREATE TABLE `dm_delivery` (
  `id_x` text,
  `work_cell_gid` text,
  `节车号_x` text,
  `项目号_x` text,
  `车号` text,
  `物料编码计数` bigint(20) DEFAULT NULL,
  `产品编码` text,
  `产品名称` text,
  `工序编码` text,
  `工序名称_x` text,
  `组编码` text,
  `班组` text,
  `订单类型` bigint(20) DEFAULT NULL,
  `工序类型` bigint(20) DEFAULT NULL,
  `计划开始时间_x` datetime DEFAULT NULL,
  `计划结束时间_x` datetime DEFAULT NULL,
  `实际开始时间` datetime DEFAULT NULL,
  `实际结束时间` datetime DEFAULT NULL,
  `produPlace` text,
  `台位` text,
  `工作人ID` text,
  `项目名称_x` text,
  `issuedChenkPosition` text,
  `issuedChenkDate` datetime DEFAULT NULL,
  `issuedChenkState` bigint(20) DEFAULT NULL,
  `物料需求` bigint(20) DEFAULT NULL,
  `派工单状态` bigint(20) DEFAULT NULL,
  `下达状态` bigint(20) DEFAULT NULL,
  `车间` text,
  `产线` text,
  `cellCode` text,
  `工段` text,
  `工序工时时长` double DEFAULT NULL,
  `是否消耗工时` bigint(20) DEFAULT NULL,
  `有关齐套统计总数` bigint(20) DEFAULT NULL,
  `齐套数量统计包括预计` bigint(20) DEFAULT NULL,
  `备注` text,
  `委外状态` text,
  `未来一周` bigint(20) DEFAULT NULL,
  `项目号_y` text,
  `文件类型` text,
  `订单号` text,
  `派工单号` text,
  `id_y` text,
  `计划开始时间_y` datetime DEFAULT NULL,
  `计划结束时间_y` datetime DEFAULT NULL,
  `工艺路线` text,
  `工艺名称` text,
  `工序名称_y` text,
  `文件编码` text,
  `文件名称` text,
  `carTypeCode` text,
  `publishGid` text,
  `完成度` double DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `项目号` text,
  `项目名称_y` text,
  `使用状态` text,
  `单据状态` text,
  `项目简称` text,
  `项目启动年份` datetime DEFAULT NULL,
  `节车号_y` text,
  `更改时间` datetime DEFAULT NULL,
  `创建人` text,
  `创建人姓名` text,
  `更改人` text,
  `更改人姓名` text,
  `工艺经理` text,
  `工艺经理姓名` text,
  `创建人组织` text,
  `更改人组织` text,
  `工艺经理组织` text,
  `调试产线` text,
  `负责人` text,
  `负责人工号` text,
  `负责人姓名` text,
  `负责人部门` text,
  `负责人组室` text,
  `部门` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_tabDIYTable4565 definition

CREATE TABLE `dm_tabDIYTable4565` (
  `ID` bigint(20) DEFAULT NULL,
  `iOrd` bigint(20) DEFAULT NULL,
  `F48882` text,
  `F48883` text,
  `F48884` text,
  `F48885` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_tabdiytable108 definition

CREATE TABLE `dm_tabdiytable108` (
  `ID` bigint(20) DEFAULT NULL,
  `iOrd` bigint(20) DEFAULT NULL,
  `F1155` text,
  `F1156` text,
  `F1157` text,
  `F1158` text,
  `F1159` text,
  `F1160` double DEFAULT NULL,
  `F1161` double DEFAULT NULL,
  `F1162` double DEFAULT NULL,
  `F1163` double DEFAULT NULL,
  `F1164` double DEFAULT NULL,
  `F1166` double DEFAULT NULL,
  `F1167` double DEFAULT NULL,
  `F1168` double DEFAULT NULL,
  `F1169` double DEFAULT NULL,
  `F1170` double DEFAULT NULL,
  `F1220` double DEFAULT NULL,
  `F1221` double DEFAULT NULL,
  `F1748` double DEFAULT NULL,
  `F1165` datetime DEFAULT NULL,
  `F1877` double DEFAULT NULL,
  `F1878` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.dm_tk_crrc_projectmanager definition

CREATE TABLE `dm_tk_crrc_projectmanager` (
  `FID` bigint(20) DEFAULT NULL,
  `FNUMBER` text,
  `FK_CRRC_SIMPLENAME` text,
  `FK_CRRC_MANAGERID` bigint(20) DEFAULT NULL,
  `FK_CRRC_ADMINORG` bigint(20) DEFAULT NULL,
  `FK_CRRC_FIRSTORG` bigint(20) DEFAULT NULL,
  `FK_CRRC_COMBOFIELD` text,
  `FK_CRRC_PROJECTSTARTYEAR` datetime DEFAULT NULL,
  `FK_CRRC_PROJECTJCH` text,
  `FK_CRRC_PROJECT` bigint(20) DEFAULT NULL,
  `FNAME` text,
  `FSTATUS` text,
  `FCREATORID` bigint(20) DEFAULT NULL,
  `FMODIFIERID` bigint(20) DEFAULT NULL,
  `FENABLE` text,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint(20) DEFAULT NULL,
  `FK_CRRC_PROJECTTYPE` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.ods_alignment_file definition

CREATE TABLE `ods_alignment_file` (
  `id` text,
  `修改时间` text,
  `项目号` text,
  `车号` text,
  `节车号` text,
  `工序id` text,
  `工序名称` text,
  `线号` text,
  `线径` text,
  `颜色` text,
  `线型` text,
  `文件sheet名称` text,
  `文件sheet序号` text,
  `起始位置` text,
  `终止位置` text,
  `连接点1` text,
  `连接点2` text,
  `点位1` text,
  `点位2` text,
  `说明1` text,
  `说明2` text,
  `问题1` text,
  `问题2` text,
  `问题3` text,
  `问题4` text,
  `人员1` text,
  `人员2` text,
  `备注` text,
  `返工确认` text,
  `工艺备注` text,
  `试验结果` text,
  `异常描述` text,
  `排序` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.ry_MAS definition

CREATE TABLE `ry_MAS` (
  `Fxhzgh` char(10) NOT NULL,
  `FZGH` char(20) NOT NULL,
  `FXM` char(20) NOT NULL,
  `Fxb` char(2) NOT NULL COMMENT '性别',
  `FZYLB` char(20) NOT NULL COMMENT '职员类别',
  `FZWMC` char(30) NOT NULL COMMENT '(''职位名称'')',
  `Fbmzw` char(10) NOT NULL COMMENT '班组职务',
  `FZCGZ` char(20) NOT NULL COMMENT '职称工种',
  `FJSCJ` char(30) NOT NULL COMMENT '技术层级',
  `FGLCJ` char(30) NOT NULL COMMENT '管理层级',
  `Fdwh` char(4) NOT NULL COMMENT '车间部门编号',
  `Fdwm` char(30) NOT NULL COMMENT '车间部门名',
  `Fbmh` char(4) NOT NULL COMMENT '部门编号',
  `FBM` char(20) NOT NULL COMMENT '部门名称',
  `Fnf` int(11) NOT NULL COMMENT '增减时间',
  `Fyf` int(11) NOT NULL,
  `Fdcrq` datetime NOT NULL COMMENT '调出日期',
  `FFrom_to` char(30) NOT NULL COMMENT '调进出单位',
  `FZJ` char(1) NOT NULL COMMENT '增减标志',
  `Fsfzh` char(18) NOT NULL COMMENT '身份证号码',
  `Fxl` char(20) NOT NULL COMMENT '学历',
  `Fcsrq` datetime NOT NULL COMMENT '出生日期',
  `Fgzrq` datetime NOT NULL COMMENT '参加工作时间',
  `Fzgys` int(11) NOT NULL COMMENT '员工在岗月数',
  `Fpy` char(4) NOT NULL,
  `Fzwlb` char(26) NOT NULL COMMENT '职位类别',
  `Fbz` decimal(6,1) NOT NULL COMMENT '津贴标准',
  `Fkq` char(10) NOT NULL COMMENT '考勤说明',
  `FPXZZRQ` datetime NOT NULL COMMENT '培训终止日期',
  `Fstart` datetime NOT NULL COMMENT '合同开始时间',
  `Fend` datetime NOT NULL COMMENT '合同结束时间',
  `Fhtcs` int(11) NOT NULL COMMENT '合同次数',
  `Fhtlb` char(10) NOT NULL COMMENT '合同类别',
  `Fsybsj` datetime NOT NULL COMMENT '进事业部时间',
  `Fxx` char(50) NOT NULL,
  `Fzy` char(40) NOT NULL COMMENT '专业',
  `Fgd` char(20) NOT NULL COMMENT '工段',
  `Flg_yy` char(20) NOT NULL COMMENT '离岗原因',
  `Flg_sj` datetime NOT NULL COMMENT '离岗时间',
  `Fhg_sj` datetime NOT NULL COMMENT '回岗时间',
  `Flg_to` char(20) NOT NULL COMMENT '目的地',
  `Flg_czy` char(10) NOT NULL COMMENT '假勤操作者',
  `FMM` char(20) NOT NULL,
  `FGJ_NF` int(11) NOT NULL COMMENT '工具采购申请年份',
  `FGJ_XH` int(11) NOT NULL COMMENT '工具系统性中采购申请单编号中序号',
  `Fdp` char(10) NOT NULL,
  `FKH` char(18) NOT NULL COMMENT '考勤卡内部码',
  `FNXJZB` int(11) NOT NULL COMMENT '年休假指标天数',
  `FNXJTS` int(11) NOT NULL COMMENT '年休假天数',
  `FYDDH` char(20) NOT NULL COMMENT '移动电话',
  `Fczy` char(10) NOT NULL,
  `FCZRQ` datetime NOT NULL COMMENT '记录最后修改日期',
  `FBZZ` char(50) NOT NULL COMMENT '备注说明如令号',
  `Fsystime` datetime NOT NULL,
  `Fzl` char(20) NOT NULL,
  `Fzq` char(20) NOT NULL,
  `Fzz` char(30) NOT NULL,
  `ID` char(20) NOT NULL COMMENT '上岗证编号',
  `L6` int(11) NOT NULL COMMENT 'L6以上人员标记',
  `Fthr_dw` char(30) NOT NULL COMMENT '第三方单位',
  `标识列` int(11) NOT NULL,
  KEY `_WA_Sys_FZJ_3F48CA49` (`FZJ`),
  KEY `_WA_Sys_Flg_sj_3F48CA49` (`Flg_sj`),
  KEY `_WA_Sys_Fdwh_3F48CA49` (`Fdwh`),
  KEY `_WA_Sys_Fbmh_3F48CA49` (`Fbmh`),
  KEY `_WA_Sys_FZYLB_3F48CA49` (`FZYLB`),
  KEY `_WA_Sys_FXM_3F48CA49` (`FXM`),
  KEY `_WA_Sys_FKH_3F48CA49` (`FKH`),
  KEY `_WA_Sys_Fgd_3F48CA49` (`Fgd`),
  KEY `_WA_Sys_Fdwm_3F48CA49` (`Fdwm`),
  KEY `_WA_Sys_Fbmzw_3F48CA49` (`Fbmzw`),
  KEY `_WA_Sys_FZWMC_3F48CA49` (`FZWMC`),
  KEY `_WA_Sys_Fhtlb_3F48CA49` (`Fhtlb`),
  KEY `_WA_Sys_Fdcrq_3F48CA49` (`Fdcrq`),
  KEY `_WA_Sys_Fsfzh_3F48CA49` (`Fsfzh`),
  KEY `_WA_Sys_Fsybsj_3F48CA49` (`Fsybsj`),
  KEY `_WA_Sys_Fxb_3F48CA49` (`Fxb`),
  KEY `_WA_Sys_Fxl_3F48CA49` (`Fxl`),
  KEY `_WA_Sys_Fend_3F48CA49` (`Fend`),
  KEY `_WA_Sys_Fzl_3F48CA49` (`Fzl`),
  KEY `_WA_Sys_FYDDH_3F48CA49` (`FYDDH`),
  KEY `_WA_Sys_Fpy_3F48CA49` (`Fpy`),
  KEY `_WA_Sys_FBM_3F48CA49` (`FBM`),
  KEY `_WA_Sys_FFrom_to_3F48CA49` (`FFrom_to`),
  KEY `_WA_Sys_Fcsrq_3F48CA49` (`Fcsrq`),
  KEY `_WA_Sys_Fgzrq_3F48CA49` (`Fgzrq`),
  KEY `_WA_Sys_FNXJZB_3F48CA49` (`FNXJZB`),
  KEY `_WA_Sys_FPXZZRQ_3F48CA49` (`FPXZZRQ`),
  KEY `_WA_Sys_Fstart_3F48CA49` (`Fstart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.ry_mas_sx definition

CREATE TABLE `ry_mas_sx` (
  `Fxhzgh` char(10) NOT NULL,
  `FZGH` char(20) NOT NULL,
  `FXM` char(20) NOT NULL,
  `Fxb` char(2) NOT NULL,
  `FZYLB` char(20) NOT NULL,
  `FZWMC` char(30) NOT NULL,
  `Fbmzw` char(10) NOT NULL,
  `FZCGZ` char(20) NOT NULL,
  `FJSCJ` char(30) NOT NULL,
  `FGLCJ` char(30) NOT NULL,
  `Fdwh` char(4) NOT NULL,
  `Fdwm` char(30) NOT NULL,
  `Fbmh` char(4) NOT NULL,
  `FBM` char(20) NOT NULL,
  `Fnf` int(11) NOT NULL,
  `Fyf` int(11) NOT NULL,
  `Fdcrq` datetime NOT NULL,
  `FFrom_to` char(30) NOT NULL,
  `FZJ` char(1) NOT NULL,
  `Fsfzh` char(18) NOT NULL,
  `Fxl` char(20) NOT NULL,
  `Fcsrq` datetime NOT NULL,
  `Fgzrq` datetime NOT NULL,
  `Fzgys` int(11) NOT NULL,
  `Fpy` char(4) NOT NULL,
  `Fzwlb` char(26) NOT NULL,
  `Fbz` decimal(6,1) NOT NULL,
  `Fkq` char(10) NOT NULL,
  `FPXZZRQ` datetime NOT NULL,
  `Fstart` datetime NOT NULL,
  `Fend` datetime NOT NULL,
  `Fhtcs` int(11) NOT NULL,
  `Fhtlb` char(10) NOT NULL,
  `Fsybsj` datetime NOT NULL,
  `Fxx` char(50) NOT NULL,
  `Fzy` char(20) NOT NULL,
  `Fgd` char(20) NOT NULL,
  `Flg_yy` char(20) NOT NULL,
  `Flg_sj` datetime NOT NULL,
  `Fhg_sj` datetime NOT NULL,
  `Flg_to` char(20) NOT NULL,
  `Flg_czy` char(10) NOT NULL,
  `FMM` char(20) NOT NULL,
  `FGJ_NF` int(11) NOT NULL,
  `FGJ_XH` int(11) NOT NULL,
  `Fdp` char(10) NOT NULL,
  `FKH` char(18) NOT NULL,
  `FNXJZB` int(11) NOT NULL,
  `FNXJTS` int(11) NOT NULL,
  `FYDDH` char(20) NOT NULL,
  `Fczy` char(10) NOT NULL,
  `FCZRQ` datetime NOT NULL,
  `FBZZ` char(50) NOT NULL,
  `Fsystime` datetime NOT NULL,
  `Fzl` char(20) NOT NULL,
  `Fzq` char(20) NOT NULL,
  `Fzz` char(30) NOT NULL,
  `ID` char(20) NOT NULL COMMENT '上岗证编码',
  `L6` int(11) NOT NULL,
  `Fthr_dw` char(30) NOT NULL,
  `标识列` int(11) NOT NULL,
  KEY `_WA_Sys_FZJ_2C00EBAB` (`FZJ`),
  KEY `_WA_Sys_Fhtlb_2C00EBAB` (`Fhtlb`),
  KEY `_WA_Sys_FFrom_to_2C00EBAB` (`FFrom_to`),
  KEY `_WA_Sys_Fdwm_2C00EBAB` (`Fdwm`),
  KEY `_WA_Sys_Fdcrq_2C00EBAB` (`Fdcrq`),
  KEY `_WA_Sys_FXM_2C00EBAB` (`FXM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_abnormal_data definition

CREATE TABLE `swq_abnormal_data` (
  `异常类型` text,
  `异常类型编码` text,
  `异常描述` text,
  `项目` text,
  `节车号` text,
  `车号` text,
  `工作中心` text,
  `工位` text,
  `工序名称` text,
  `工序编码` text,
  `异常内容描述` text,
  `指定响应人` text,
  `工位主键` text,
  `异常状态分类` text,
  `发起人` text,
  `发起日期` datetime DEFAULT NULL,
  `创建日期` datetime DEFAULT NULL,
  `修改日期` datetime DEFAULT NULL,
  `响应人` text,
  `响应日期` datetime DEFAULT NULL,
  `处理人` text,
  `处理日期` datetime DEFAULT NULL,
  `关闭人` text,
  `关闭日期` datetime DEFAULT NULL,
  `未响应时长-秒` double DEFAULT NULL,
  `未处理时长-秒` double DEFAULT NULL,
  `未关闭时长-秒` double DEFAULT NULL,
  `预计处理时间` bigint(20) DEFAULT NULL,
  `响应状态` text,
  `处理状态` text,
  `关闭状态` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_business_trip definition

CREATE TABLE `swq_business_trip` (
  `shenqing_FID` varchar(500) DEFAULT NULL,
  `constcenter_shenqing_FNAME_L2` varchar(500) DEFAULT NULL,
  `constcenter_baoxiao_FNAME_L2` varchar(500) DEFAULT NULL,
  `baoxiao_FCreateTime` datetime DEFAULT NULL,
  `traveltype_shenqing_FNAME_L2` varchar(500) DEFAULT NULL,
  `project_FNAME_L2` varchar(500) DEFAULT NULL,
  `project_FNUMBER` varchar(500) DEFAULT NULL,
  `shenqinge_FTo` varchar(500) DEFAULT NULL,
  `bd_person_FNAME_L2` varchar(500) DEFAULT NULL,
  `shenqing_FCause` varchar(2000) DEFAULT NULL,
  `bd_person_FIDNUM` varchar(500) DEFAULT NULL,
  `post_FNAME_L2` varchar(500) DEFAULT NULL,
  `B_FNAME_L2` varchar(500) DEFAULT NULL,
  `baoxiaoe_FStartDate` datetime DEFAULT NULL,
  `baoxiaoe_FEndDate` datetime DEFAULT NULL,
  `baoxiaoe_FRoomDays` int(11) DEFAULT NULL,
  `baoxiao_FAmount` float DEFAULT NULL,
  `shenqing_FNumber` varchar(500) DEFAULT NULL,
  `baoxiao_FNumber` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_daily_plan definition

CREATE TABLE `swq_daily_plan` (
  `id` text,
  `work_cell_gid` text,
  `节车号` text,
  `项目号` text,
  `车号` text,
  `物料计数编码` bigint(20) DEFAULT NULL,
  `产品编码` text,
  `产品名称` text,
  `工序编码` text,
  `工序名称` text,
  `组编码` text,
  `班组` text,
  `订单类型` bigint(20) DEFAULT NULL,
  `工序类型` bigint(20) DEFAULT NULL,
  `计划开始时间` datetime DEFAULT NULL,
  `计划结束时间` datetime DEFAULT NULL,
  `实际开始时间` datetime DEFAULT NULL,
  `实际结束时间` datetime DEFAULT NULL,
  `produPlace` text,
  `台位` text,
  `工作人ID` text,
  `项目名称` text,
  `issuedChenkPosition` text,
  `issuedChenkDate` datetime DEFAULT NULL,
  `issuedChenkState` bigint(20) DEFAULT NULL,
  `物料需求` bigint(20) DEFAULT NULL,
  `派工单状态` bigint(20) DEFAULT NULL,
  `下达状态` bigint(20) DEFAULT NULL,
  `车间` text,
  `产线` text,
  `cellCode` text,
  `工段` text,
  `工序工时时长` double DEFAULT NULL,
  `是否消耗工时` bigint(20) DEFAULT NULL,
  `有关齐套统计总数` bigint(20) DEFAULT NULL,
  `齐套数量统计包括预计` bigint(20) DEFAULT NULL,
  `备注` text,
  `委外状态` text,
  `未来一周` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_hr_attendance definition

CREATE TABLE `swq_hr_attendance` (
  `ID` int(11) NOT NULL,
  `iOrd` int(11) NOT NULL,
  `F48432` varchar(100) NOT NULL,
  `F48433` varchar(100) NOT NULL,
  `F48434` varchar(100) NOT NULL,
  `F48435` decimal(20,2) DEFAULT NULL,
  `F48436` decimal(20,2) DEFAULT NULL,
  `F48437` decimal(20,2) DEFAULT NULL,
  `F48438` decimal(20,2) DEFAULT NULL,
  `F48439` decimal(20,2) DEFAULT NULL,
  `F48440` decimal(20,2) DEFAULT NULL,
  `F48441` decimal(20,2) DEFAULT NULL,
  `F48442` decimal(20,2) DEFAULT NULL,
  `F48443` decimal(20,2) DEFAULT NULL,
  `F48444` decimal(20,2) DEFAULT NULL,
  `F48445` decimal(20,2) DEFAULT NULL,
  `F48446` decimal(20,2) DEFAULT NULL,
  `F48447` decimal(20,2) DEFAULT NULL,
  `F48448` decimal(20,2) DEFAULT NULL,
  `F48449` decimal(20,2) DEFAULT NULL,
  `F48450` decimal(20,2) DEFAULT NULL,
  `F48451` decimal(20,2) DEFAULT NULL,
  `F48452` decimal(20,2) DEFAULT NULL,
  `F48453` decimal(20,2) DEFAULT NULL,
  `F48454` decimal(20,2) DEFAULT NULL,
  `F48455` decimal(20,2) DEFAULT NULL,
  `F48456` decimal(20,2) DEFAULT NULL,
  `F48457` decimal(20,2) DEFAULT NULL,
  `F48458` decimal(20,2) DEFAULT NULL,
  `F48459` decimal(20,2) DEFAULT NULL,
  `F48460` decimal(20,2) DEFAULT NULL,
  `F48461` decimal(20,2) DEFAULT NULL,
  `F48462` decimal(20,2) DEFAULT NULL,
  `F48463` decimal(20,2) DEFAULT NULL,
  `F48464` decimal(20,2) DEFAULT NULL,
  `F48465` decimal(20,2) DEFAULT NULL,
  `F48466` decimal(20,2) DEFAULT NULL,
  `F48467` decimal(20,2) DEFAULT NULL,
  `F48468` decimal(20,2) DEFAULT NULL,
  `F48469` decimal(20,2) DEFAULT NULL,
  `F48470` decimal(20,2) DEFAULT NULL,
  `F48471` decimal(20,2) DEFAULT NULL,
  `F48473` varchar(50) NOT NULL,
  `F48474` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_hr_workinghours_m definition

CREATE TABLE `swq_hr_workinghours_m` (
  `ID` int(11) NOT NULL,
  `iOrd` int(11) NOT NULL,
  `F28273` varchar(50) NOT NULL,
  `F28274` varchar(20) NOT NULL,
  `F28277` decimal(20,2) NOT NULL,
  `F28278` decimal(20,2) NOT NULL,
  `F34256` varchar(50) NOT NULL,
  `F34267` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_hr_workinghours_z definition

CREATE TABLE `swq_hr_workinghours_z` (
  `ID` int(11) NOT NULL,
  `iOrd` int(11) NOT NULL,
  `RepID` int(11) NOT NULL,
  `FillDate` datetime NOT NULL,
  `ModifyDate` datetime NOT NULL,
  `DeptID` int(11) NOT NULL,
  `OperID` int(11) NOT NULL,
  `sDesc` varchar(100) DEFAULT NULL,
  `bIsFinish` char(1) NOT NULL,
  `bLocked` char(1) NOT NULL,
  `bCanViewWhenNoFinished` char(1) NOT NULL,
  `OperID2` int(11) NOT NULL,
  `dUpdate2` datetime DEFAULT NULL,
  `F28263` varchar(50) NOT NULL,
  `F28264` datetime NOT NULL,
  `F28265` varchar(50) NOT NULL,
  `F28266` varchar(50) NOT NULL,
  `F28267` varchar(50) NOT NULL,
  `F28268` varchar(200) NOT NULL,
  `F28269` varchar(50) NOT NULL,
  `F28270` varchar(50) NOT NULL,
  `F28279` text NOT NULL,
  `F28280` varchar(50) NOT NULL,
  `F28281` text NOT NULL,
  `F28282` datetime NOT NULL,
  `F28283` varchar(50) NOT NULL,
  `F28284` text NOT NULL,
  `F28285` datetime NOT NULL,
  `F28286` varchar(50) NOT NULL,
  `F34254` datetime NOT NULL,
  `F34255` datetime NOT NULL,
  `F34257` varchar(50) NOT NULL,
  `F34258` varchar(50) NOT NULL,
  `F34259` datetime NOT NULL,
  `F34262` varchar(50) NOT NULL,
  `F34263` varchar(50) NOT NULL,
  `F34264` decimal(20,2) NOT NULL,
  `F34265` decimal(20,2) NOT NULL,
  `F34266` decimal(20,2) NOT NULL,
  `F34283` varchar(50) NOT NULL,
  `F34555` varchar(50) NOT NULL,
  `F34643` varchar(200) NOT NULL,
  `F34644` varchar(50) NOT NULL,
  `F40609` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_in_out_car definition

CREATE TABLE `swq_in_out_car` (
  `column_not_exist_in_db` int(11) NOT NULL,
  `所属项目号` longtext,
  `所属项目名称` longtext,
  `所属车号` longtext,
  `所属节车号` longtext,
  `进车起始日期` datetime DEFAULT NULL,
  `进车截止日期` datetime DEFAULT NULL,
  `落车起始日期` datetime DEFAULT NULL,
  PRIMARY KEY (`column_not_exist_in_db`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_person_worktime definition

CREATE TABLE `swq_person_worktime` (
  `p_fnumber` longtext,
  `t_fnumber` longtext,
  `jch_fnumber` longtext,
  `o_fnumber` longtext,
  `o_fname_l2` longtext,
  `s_fnumber` longtext,
  `s_fname_l2` longtext,
  `rt_cfworkTimeHS` double DEFAULT NULL,
  `total_worktime` double DEFAULT NULL,
  `rt_CFreplenishTime` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_person_worktime_back definition

CREATE TABLE `swq_person_worktime_back` (
  `p_fnumber` longtext,
  `t_fnumber` longtext,
  `jch_fnumber` longtext,
  `o_fnumber` longtext,
  `o_fname_l2` longtext,
  `s_fnumber` longtext,
  `s_fname_l2` longtext,
  `rt_cfworkTimeHS` double DEFAULT NULL,
  `total_worktime` double DEFAULT NULL,
  `rt_CFreplenishTime` double DEFAULT NULL,
  `r_fbizdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_person_worktime_new definition

CREATE TABLE `swq_person_worktime_new` (
  `s_fnumber` varchar(2000) DEFAULT NULL,
  `s_fname_l2` varchar(2000) DEFAULT NULL,
  `r_fbizdate` datetime DEFAULT NULL,
  `rt_cfworkTimeHS` float DEFAULT NULL,
  `rt_CFreplenishTime` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_phonebook definition

CREATE TABLE `swq_phonebook` (
  `ID` int(11) NOT NULL,
  `iOrd` int(11) NOT NULL,
  `RepID` int(11) NOT NULL,
  `FillDate` datetime NOT NULL,
  `ModifyDate` datetime NOT NULL,
  `DeptID` int(11) NOT NULL,
  `OperID` int(11) NOT NULL,
  `sDesc` varchar(100) DEFAULT NULL,
  `bIsFinish` char(1) NOT NULL,
  `bLocked` char(1) NOT NULL,
  `bCanViewWhenNoFinished` char(1) NOT NULL,
  `OperID2` int(11) NOT NULL,
  `dUpdate2` datetime DEFAULT NULL,
  `F2961` varchar(50) NOT NULL,
  `F2962` varchar(20) NOT NULL,
  `F2963` varchar(50) NOT NULL,
  `F2964` varchar(50) NOT NULL,
  `F2965` varchar(50) NOT NULL,
  `F2966` varchar(50) NOT NULL,
  `F2967` varchar(50) NOT NULL,
  `F2968` varchar(50) NOT NULL,
  `F2969` varchar(50) NOT NULL,
  `F2970` varchar(50) NOT NULL,
  `F2971` varchar(50) NOT NULL,
  `F3562` varchar(50) NOT NULL,
  `F3563` varchar(50) NOT NULL,
  `F10968` varchar(50) NOT NULL,
  `F11066` varchar(50) NOT NULL,
  `F14226` varchar(50) NOT NULL,
  `F14580` varchar(50) NOT NULL,
  `F14584` varchar(50) NOT NULL,
  `F14585` varchar(50) NOT NULL,
  `F15942` datetime NOT NULL,
  `F15943` varchar(50) NOT NULL,
  `F15944` varchar(50) NOT NULL,
  `F15945` varchar(50) NOT NULL,
  `F15946` varchar(20) NOT NULL,
  `F15947` varchar(50) NOT NULL,
  `F20595` varchar(50) NOT NULL,
  `F24116` varchar(20) NOT NULL,
  `F26392` varchar(50) NOT NULL,
  `F28227` varchar(50) NOT NULL,
  `F28938` varchar(50) NOT NULL,
  `F44210` datetime NOT NULL,
  `F44211` datetime NOT NULL,
  `F44212` datetime NOT NULL,
  `F47346` varchar(50) NOT NULL,
  `F47347` varchar(50) NOT NULL,
  `F47348` varchar(50) NOT NULL,
  `F47848` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_plan definition

CREATE TABLE `swq_plan` (
  `column_not_exist_in_db` int(11) NOT NULL,
  `唯一标识` longtext,
  `所属项目号` longtext,
  `所属项目名称` longtext,
  `所属车号` longtext,
  `所属节车号` longtext,
  `所属车间名称` longtext,
  `所属产线名称` longtext,
  `所属班组名称` longtext,
  `工序编码` longtext,
  `工序名称` longtext,
  `物料个数` int(11) DEFAULT NULL,
  `物料齐套个数` int(11) DEFAULT NULL,
  `计划开始时间` datetime DEFAULT NULL,
  `计划结束时间` datetime DEFAULT NULL,
  `实际开始时间` datetime DEFAULT NULL,
  `实际结束时间` datetime DEFAULT NULL,
  `项目是否下达` longtext,
  `生产及时状态` longtext,
  `生产完成状态` longtext,
  PRIMARY KEY (`column_not_exist_in_db`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_plan_analyze definition

CREATE TABLE `swq_plan_analyze` (
  `column_not_exist_in_db` int(11) NOT NULL,
  `所属项目号` longtext,
  `所属项目名称` longtext,
  `所属车号` longtext,
  `所属节车号` longtext,
  `所属车间名称` longtext,
  `所属班组名称` longtext,
  `计划开工总数` double DEFAULT NULL,
  `计划准时开工数` double DEFAULT NULL,
  `计划完工总数` double DEFAULT NULL,
  `计划准时完工数` double DEFAULT NULL,
  `物料齐套个数` double DEFAULT NULL,
  `分析日期` datetime DEFAULT NULL,
  PRIMARY KEY (`column_not_exist_in_db`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_process_task_delivery definition

CREATE TABLE `swq_process_task_delivery` (
  `id` text,
  `work_cell_gid` text,
  `节车号` text,
  `项目号` text,
  `车号` text,
  `物料计数编码` bigint(20) DEFAULT NULL,
  `产品编码` text,
  `产品名称` text,
  `工序编码` text,
  `工序名称` text,
  `组编码` text,
  `班组` text,
  `订单类型` bigint(20) DEFAULT NULL,
  `工序类型` bigint(20) DEFAULT NULL,
  `计划开始时间` datetime DEFAULT NULL,
  `计划结束时间` datetime DEFAULT NULL,
  `实际开始时间` datetime DEFAULT NULL,
  `实际结束时间` datetime DEFAULT NULL,
  `produPlace` text,
  `台位` text,
  `工作人ID` text,
  `项目名称` text,
  `issuedChenkPosition` text,
  `issuedChenkDate` datetime DEFAULT NULL,
  `issuedChenkState` bigint(20) DEFAULT NULL,
  `物料需求` bigint(20) DEFAULT NULL,
  `派工单状态` bigint(20) DEFAULT NULL,
  `下达状态` bigint(20) DEFAULT NULL,
  `车间` text,
  `产线` text,
  `cellCode` text,
  `工段` text,
  `工序工时时长` double DEFAULT NULL,
  `是否消耗工时` bigint(20) DEFAULT NULL,
  `有关齐套统计总数` bigint(20) DEFAULT NULL,
  `齐套数量统计包括预计` bigint(20) DEFAULT NULL,
  `备注` text,
  `委外状态` text,
  `未来一周` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_process_time definition

CREATE TABLE `swq_process_time` (
  `id` text,
  `carProduct` text,
  `carCode` text,
  `everyCarCode` text,
  `opCode` text,
  `班组` text,
  `车间` text,
  `实际结束时间` datetime DEFAULT NULL,
  `workHourCheckEmpName` text,
  `workHourCheckDate` datetime DEFAULT NULL,
  `workHourDownEmpName` text,
  `workHourDownDate` datetime DEFAULT NULL,
  `workHourDownCause` text,
  `opName` text,
  `stdTime` double DEFAULT NULL,
  `isManHourRpt` bigint(20) DEFAULT NULL,
  `carProductName` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_project_efficiency definition

CREATE TABLE `swq_project_efficiency` (
  `ID` int(11) NOT NULL,
  `iOrd` int(11) NOT NULL,
  `F48534` varchar(50) NOT NULL,
  `F48535` decimal(20,0) NOT NULL,
  `F48536` decimal(20,2) NOT NULL,
  `F48552` decimal(20,2) NOT NULL,
  `F48553` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_project_hours definition

CREATE TABLE `swq_project_hours` (
  `ID` int(11) NOT NULL,
  `iOrd` int(11) NOT NULL,
  `RepID` int(11) NOT NULL,
  `FillDate` datetime NOT NULL,
  `ModifyDate` datetime NOT NULL,
  `DeptID` int(11) NOT NULL,
  `OperID` int(11) NOT NULL,
  `sDesc` varchar(100) DEFAULT NULL,
  `bIsFinish` char(1) NOT NULL,
  `bLocked` char(1) NOT NULL,
  `bCanViewWhenNoFinished` char(1) NOT NULL,
  `OperID2` int(11) NOT NULL,
  `dUpdate2` datetime DEFAULT NULL,
  `F48484` text NOT NULL,
  `F48485` text NOT NULL,
  `F48486` text NOT NULL,
  `F48487` text NOT NULL,
  `F48488` decimal(20,2) NOT NULL,
  `F48494` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_reward_record_personal definition

CREATE TABLE `swq_reward_record_personal` (
  `bill_num` text,
  `reward_year` int(11) DEFAULT NULL,
  `reward_month` int(11) DEFAULT NULL,
  `reward_level` int(11) DEFAULT NULL,
  `reward_type` text,
  `reward_name` text,
  `reward_grade` int(11) DEFAULT NULL,
  `rewarder_type` int(11) DEFAULT NULL,
  `rewarder_name` text,
  `rewarder_id` text,
  `title_skill_level` int(11) DEFAULT NULL,
  `title_name` text,
  `group_title_name` text,
  `skill_level` text,
  `manage_level` text,
  `join_com_date` datetime DEFAULT NULL,
  `political_status` text,
  `sex` text,
  `degree` text,
  `birth_day` datetime DEFAULT NULL,
  `length_of_work` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `group_name` text,
  `department` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_temp_plan definition

CREATE TABLE `swq_temp_plan` (
  `index` bigint(20) DEFAULT NULL,
  `id` text,
  `项目号` text,
  `项目名称` text,
  `车号` text,
  `节车号` text,
  `物料个数` bigint(20) DEFAULT NULL,
  `物料编码` text,
  `物料名称` text,
  `工序编码` text,
  `工序名称` text,
  `班组编码` text,
  `班组名称` text,
  `订单类型` bigint(20) DEFAULT NULL,
  `计划开始时间` datetime DEFAULT NULL,
  `计划结束时间` datetime DEFAULT NULL,
  `实际开始时间` datetime DEFAULT NULL,
  `实际结束时间` datetime DEFAULT NULL,
  `派工单状态` bigint(20) DEFAULT NULL,
  `项目是否下达` bigint(20) DEFAULT NULL,
  `所在车间名称` text,
  `所在产线名称` text,
  `工位编码` text,
  `工位名称` text,
  `申请物料单数` bigint(20) DEFAULT NULL,
  `物料单齐套数` bigint(20) DEFAULT NULL,
  `委外状态` text,
  KEY `ix_swq_temp_plan_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_travel_application definition

CREATE TABLE `swq_travel_application` (
  `shenqing_fnumber` varchar(500) DEFAULT NULL,
  `shenqing_fcreatetime` varchar(500) DEFAULT NULL,
  `shenqing_fto` varchar(500) DEFAULT NULL,
  `person_fname` varchar(500) DEFAULT NULL,
  `person_fnumber` varchar(500) DEFAULT NULL,
  `traveltype_fname` varchar(500) DEFAULT NULL,
  `baoxiao_level` varchar(100) DEFAULT NULL,
  `shenqing_fstartdate` datetime DEFAULT NULL,
  `shenqing_fenddate` datetime DEFAULT NULL,
  `travel_days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_travel_export definition

CREATE TABLE `swq_travel_export` (
  `ogad_FNAME_L2` varchar(500) DEFAULT NULL,
  `constcenter_shenqing_FNAME_L2` varchar(500) DEFAULT NULL,
  `shenqing_FCause` varchar(2000) DEFAULT NULL,
  `traveltype_shenqing_FNAME_L2` varchar(500) DEFAULT NULL,
  `project_FNAME_L2` varchar(500) DEFAULT NULL,
  `project_FNUMBER` varchar(500) DEFAULT NULL,
  `shenqinge_FTo` varchar(500) DEFAULT NULL,
  `bd_person_FNAME_L2` varchar(500) DEFAULT NULL,
  `bd_person_FIDNUM` varchar(500) DEFAULT NULL,
  `B_FNAME_L2` varchar(500) DEFAULT NULL,
  `bd_person_Fpostname` varchar(500) DEFAULT NULL,
  `bu_FNAME_L2` varchar(500) DEFAULT NULL,
  `shenqinge_FStartDate` date DEFAULT NULL,
  `shenqinge_FEndDate` date DEFAULT NULL,
  `baoxiaoe_FRoomDays` int(11) DEFAULT NULL,
  `baoxiao_FAmount` float DEFAULT NULL,
  `shenqing_fstate` varchar(500) DEFAULT NULL,
  `baoxiao_fstate` varchar(500) DEFAULT NULL,
  `start_day` int(11) DEFAULT NULL,
  `shenqing_FNumber` varchar(500) DEFAULT NULL,
  `baoxiao_FNumber` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_travel_quota definition

CREATE TABLE `swq_travel_quota` (
  `F48718` varchar(200) DEFAULT NULL,
  `F48719` float DEFAULT NULL,
  `F48720` float DEFAULT NULL,
  `F48721` float DEFAULT NULL,
  `F48722` float DEFAULT NULL,
  `F48723` float DEFAULT NULL,
  `F48799` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_travel_reimbursement definition

CREATE TABLE `swq_travel_reimbursement` (
  `baoxiao_fdays` int(11) DEFAULT NULL,
  `baoxiao_famount` float DEFAULT NULL,
  `shenqing_fnumber` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_travel_reimbursement_rated definition

CREATE TABLE `swq_travel_reimbursement_rated` (
  `reim_area` text,
  `reim_type` text,
  `reim_days` int(11) DEFAULT NULL,
  `reim_level` text,
  `reim_FAMOUNT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_xiaoxian_anomaly definition

CREATE TABLE `swq_xiaoxian_anomaly` (
  `p_gid` varchar(500) DEFAULT NULL,
  `p_project` varchar(500) DEFAULT NULL,
  `p_singer_car_code` varchar(500) DEFAULT NULL,
  `p_car_code` varchar(500) DEFAULT NULL,
  `p_workcenter_name` varchar(500) DEFAULT NULL,
  `p_workcell_name` varchar(500) DEFAULT NULL,
  `p_op_name` varchar(500) DEFAULT NULL,
  `p_exception_type_name` varchar(500) DEFAULT NULL,
  `p_exception_content_name` varchar(2000) DEFAULT NULL,
  `p_exception_remark` varchar(2000) DEFAULT NULL,
  `error_statue` varchar(500) DEFAULT NULL,
  `u0_name` varchar(500) DEFAULT NULL,
  `p_launch_date` datetime DEFAULT NULL,
  `u1_name` varchar(500) DEFAULT NULL,
  `u4_name` varchar(500) DEFAULT NULL,
  `pbdp_name` varchar(500) DEFAULT NULL,
  `mbgroup_group_name` varchar(500) DEFAULT NULL,
  `p_response_date` datetime DEFAULT NULL,
  `u2_name` varchar(500) DEFAULT NULL,
  `p_handl_date` datetime DEFAULT NULL,
  `u3_name` varchar(500) DEFAULT NULL,
  `p_close_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- crrc_temp.swq_year_plan definition

CREATE TABLE `swq_year_plan` (
  `F27516` varchar(2000) DEFAULT NULL,
  `F27517` int(11) DEFAULT NULL,
  `F27518` int(11) DEFAULT NULL,
  `F48726` int(11) DEFAULT NULL,
  `F27519` int(11) DEFAULT NULL,
  `F27520` int(11) DEFAULT NULL,
  `F27521` int(11) DEFAULT NULL,
  `F27522` int(11) DEFAULT NULL,
  `F48727` int(11) DEFAULT NULL,
  `F27523` int(11) DEFAULT NULL,
  `F27524` int(11) DEFAULT NULL,
  `F48554` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
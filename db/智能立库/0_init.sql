CREATE DATABASE `nj_test`;

USE `nj_test`;

-- nj_test.control_cabinet definition

CREATE TABLE `control_cabinet` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `NAME` varchar(100) NOT NULL COMMENT '名称',
  `SERIAL` varchar(100) DEFAULT NULL COMMENT '柜子序列号，用于打开柜子',
  `STATION_ID` varchar(100) DEFAULT NULL COMMENT '工位ID',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `HANDLE_CLOSE` varchar(10) DEFAULT NULL COMMENT '是否可以关柜 1可以关柜 其他不显示关柜',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='控制柜表';


-- nj_test.controller_technology definition

CREATE TABLE `controller_technology` (
  `ID` bigint(100) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `APPLICATION_ID` varchar(100) NOT NULL COMMENT '应用ID',
  `APPLICATION_NAME` varchar(200) NOT NULL COMMENT '应用名称',
  `APPLICATION_NUMBER` varchar(200) DEFAULT NULL COMMENT '应用编码',
  `IP` varchar(30) DEFAULT NULL COMMENT '控制器IP',
  `PORT` varchar(10) DEFAULT NULL COMMENT '扳手端口',
  `ROTATION_DIRECTION` varchar(100) DEFAULT NULL COMMENT '旋转方向',
  `BATCH_SIZE` varchar(200) DEFAULT NULL COMMENT '批次',
  `MIN_TORQUE` varchar(10) DEFAULT NULL COMMENT '最小扭矩',
  `MAX_TORQUE` varchar(10) DEFAULT NULL COMMENT '最大扭矩',
  `TARGET_TORQUE` varchar(10) DEFAULT NULL COMMENT '目标扭矩',
  `TARGET_ANGLE` varchar(10) DEFAULT NULL COMMENT '目标角度',
  `MIN_ANGLE` varchar(10) DEFAULT NULL COMMENT '最小角度',
  `MAX_ANGLE` varchar(10) DEFAULT NULL COMMENT '最大角度',
  `STATUS` varchar(1) DEFAULT '1' COMMENT '状态（0=未启用，1=启用，2=报废，3=异常，4=其他 ）',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_ip_port_id` (`IP`,`PORT`,`APPLICATION_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1521 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='控制器工艺信息表';


-- nj_test.device definition

CREATE TABLE `device` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `STATION_ID` varchar(100) DEFAULT NULL COMMENT '工位ID',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `NAME` varchar(200) NOT NULL COMMENT '名称',
  `SERIAL` varchar(100) DEFAULT NULL COMMENT '序列号',
  `BRAND` varchar(200) DEFAULT NULL COMMENT '品牌',
  `MIX_TORQUE` varchar(10) DEFAULT NULL COMMENT '最小扭矩',
  `MAX_TORQUE` varchar(10) DEFAULT NULL COMMENT '最大扭矩',
  `RESOLVING_POWER` varchar(50) DEFAULT NULL COMMENT '分辨率',
  `ATTRIBUTE` text COMMENT '属性值',
  `TYPE` varchar(10) NOT NULL COMMENT '类型',
  `DESCR` text COMMENT '描述',
  `IP_ADDRESS` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `PORT` varchar(10) DEFAULT NULL COMMENT '扳手端口',
  `IMAGE_PATH` varchar(500) DEFAULT NULL COMMENT '图片地址',
  `USE_STATUS` varchar(1) DEFAULT NULL COMMENT '使用中状态（正在充电/休眠中/电源已连接）',
  `VOLTAGE_BATTERY` varchar(10) DEFAULT NULL COMMENT '电池电压(mV)',
  `ELECTRIC` varchar(100) DEFAULT NULL COMMENT '电流/电池',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态（0=未启用，1=启用，2=报废，3=异常，4=其他 ）',
  `CREATE_BUY` datetime DEFAULT NULL COMMENT '购买时间',
  `REPAIR_DAY` varchar(10) DEFAULT NULL COMMENT '定期维护时间(天)',
  `REPAIR_DATE` datetime DEFAULT NULL COMMENT '维修时间',
  `USE_TIME` varchar(10) DEFAULT NULL COMMENT '使用时长(时)',
  `USE_NUM` varchar(10) DEFAULT NULL COMMENT '使用次数',
  `USE_USER_ID` varchar(100) DEFAULT NULL COMMENT '当前使用者',
  `WRENCH_TYPE` varchar(100) DEFAULT NULL COMMENT '扳手类型，1.数显手动扳手，2.电动扳手',
  `HARDWARE_SERIAL` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `REMARK` varchar(1000) DEFAULT NULL COMMENT '备注',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_device_code` (`CODE`) USING BTREE,
  UNIQUE KEY `uni_device_name` (`NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='设备基础信息表';


-- nj_test.ele_label definition

CREATE TABLE `ele_label` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `TRAIN_MODEL` varchar(100) NOT NULL COMMENT '车型',
  `TRAIN_NUMBER` varchar(100) NOT NULL COMMENT '车号',
  `PROCESS_ID` varchar(100) NOT NULL COMMENT '工序',
  `EXTEND1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXTEND2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `REMARK` varchar(1000) DEFAULT NULL COMMENT '备注',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='二维码标签表';


-- nj_test.exception_info definition

CREATE TABLE `exception_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) NOT NULL COMMENT '消息ID',
  `TITLE` varchar(1000) NOT NULL COMMENT '标题',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `DETAIL` text NOT NULL COMMENT '详细信息',
  `TYPE` varchar(1) NOT NULL COMMENT '类型',
  `LEVEL` varchar(1) NOT NULL COMMENT '级别',
  `START_DATE` datetime NOT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `TIME` varchar(10) DEFAULT NULL COMMENT '耗时(时)',
  `HANDLE_BY` varchar(100) DEFAULT NULL COMMENT '处理人',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态（0=待处理，1=已处理，2=观察/监控, 3=其他）',
  `REMARK` text COMMENT '备注',
  `DEL_FLAG` int(11) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='异常信息表';


-- nj_test.ods_device definition

CREATE TABLE `ods_device` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `STATION_ID` varchar(100) DEFAULT NULL COMMENT '工位ID',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `NAME` varchar(200) NOT NULL COMMENT '名称',
  `SERIAL` varchar(100) DEFAULT NULL COMMENT '序列号',
  `BRAND` varchar(200) DEFAULT NULL COMMENT '品牌',
  `MIX_TORQUE` varchar(10) DEFAULT NULL COMMENT '最小扭矩',
  `MAX_TORQUE` varchar(10) DEFAULT NULL COMMENT '最大扭矩',
  `RESOLVING_POWER` varchar(50) DEFAULT NULL COMMENT '分辨率',
  `ATTRIBUTE` text COMMENT '属性值',
  `TYPE` varchar(10) NOT NULL COMMENT '类型',
  `DESCR` text COMMENT '描述',
  `IP_ADDRESS` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `PORT` varchar(10) DEFAULT NULL COMMENT '扳手端口',
  `IMAGE_PATH` varchar(500) DEFAULT NULL COMMENT '图片地址',
  `USE_STATUS` varchar(1) DEFAULT NULL COMMENT '使用中状态（正在充电/休眠中/电源已连接）',
  `VOLTAGE_BATTERY` varchar(10) DEFAULT NULL COMMENT '电池电压(mV)',
  `ELECTRIC` varchar(100) DEFAULT NULL COMMENT '电流/电池',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态（0=未启用，1=启用，2=报废，3=异常，4=其他 ）',
  `CREATE_BUY` datetime DEFAULT NULL COMMENT '购买时间',
  `REPAIR_DAY` varchar(10) DEFAULT NULL COMMENT '定期维护时间(天)',
  `REPAIR_DATE` datetime DEFAULT NULL COMMENT '维修时间',
  `USE_TIME` varchar(10) DEFAULT NULL COMMENT '使用时长(时)',
  `USE_NUM` varchar(10) DEFAULT NULL COMMENT '使用次数',
  `USE_USER_ID` varchar(100) DEFAULT NULL COMMENT '当前使用者',
  `WRENCH_TYPE` varchar(100) DEFAULT NULL COMMENT '扳手类型，1.数显手动扳手，2.电动扳手',
  `HARDWARE_SERIAL` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `REMARK` varchar(1000) DEFAULT NULL COMMENT '备注',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='设备基础信息表';


-- nj_test.order_detail definition

CREATE TABLE `order_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `PROJECT_ID` varchar(100) NOT NULL COMMENT '项目ID',
  `ORDER_CODE` varchar(100) NOT NULL COMMENT '生产订单编码',
  `TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车号',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '节车号',
  `WORK_NO` varchar(100) NOT NULL COMMENT '工单号',
  `PRODUCT_ID` varchar(100) DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_SERIAL` varchar(200) DEFAULT NULL COMMENT '产品序列号',
  `ORDER_NO` varchar(100) DEFAULT NULL COMMENT '序号',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `EXTEND1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXTEND2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_work_no` (`WORK_NO`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='订单明细信息';


-- nj_test.position_detail definition

CREATE TABLE `position_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `POSITION` varchar(600) NOT NULL COMMENT '位置名称',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_position_code` (`CODE`) USING BTREE,
  UNIQUE KEY `uni_position_position` (`POSITION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='位置明细表';


-- nj_test.process_detail definition

CREATE TABLE `process_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `ORDER_NO` int(11) DEFAULT NULL COMMENT '序号',
  `PROCESS_ID` varchar(100) NOT NULL COMMENT '工序ID',
  `TECHNOLOGY_ID` varchar(100) NOT NULL COMMENT '工艺ID',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备扳手ID',
  `VISUALIZING_ID` varchar(100) DEFAULT NULL COMMENT '可视化ID',
  `POSITION_ID` varchar(100) DEFAULT NULL COMMENT '部位ID',
  `BOLT_NUM` int(11) DEFAULT NULL COMMENT '螺栓数量',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工序明细表';


-- nj_test.process_info definition

CREATE TABLE `process_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `EXTERNAL_CODE` varchar(100) NOT NULL COMMENT '外部工序编码，用作与外部系统联系',
  `EXTERNAL_NAME` varchar(200) DEFAULT NULL COMMENT '外部工序名称',
  `NAME` varchar(200) NOT NULL COMMENT '名称',
  `EXE_TEAM_CODE` varchar(200) DEFAULT NULL COMMENT '执行班组编码',
  `EXE_TEAM_NAME` varchar(200) DEFAULT NULL COMMENT '执行班组名称',
  `DEPARTMENT_CODE` varchar(200) DEFAULT NULL COMMENT '事业部编码',
  `DEPARTMENT_NAME` varchar(200) DEFAULT NULL COMMENT '事业部名称',
  `STATION_ID` varchar(100) NOT NULL COMMENT '工位ID',
  `GREASE` varchar(100) DEFAULT NULL COMMENT '胶脂',
  `RISK` varchar(10) DEFAULT NULL COMMENT '螺栓风险等级',
  `BE_SEND` varchar(1) DEFAULT '0' COMMENT '是否发送工序结果，0：发送，1：不发送',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `code_index` (`CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工序表';


-- nj_test.product_info definition

CREATE TABLE `product_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(200) NOT NULL COMMENT '编码(图号)',
  `NAME` varchar(200) NOT NULL COMMENT '名称',
  `MODEL` varchar(200) DEFAULT NULL COMMENT '型号',
  `NUMBER` varchar(200) DEFAULT NULL COMMENT '数量',
  `UNIT` varchar(200) DEFAULT NULL COMMENT '单位',
  `DESCR` text COMMENT '产品描述',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_product_code` (`CODE`) USING BTREE,
  UNIQUE KEY `uni_product_model` (`MODEL`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='产品信息表';


-- nj_test.project_detail definition

CREATE TABLE `project_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `PROJECT_CODE` varchar(100) NOT NULL COMMENT '项目编码',
  `PROJECT_NAME` varchar(200) NOT NULL COMMENT '项目名称',
  `DESCR` text COMMENT '描述',
  `START` varchar(10) DEFAULT NULL COMMENT '列车编号开始序号',
  `END` varchar(10) DEFAULT NULL COMMENT '列车编号结束序号',
  `PREFIX` varchar(10) DEFAULT NULL COMMENT '列车编号前缀',
  `CARS_MODEL` varchar(500) DEFAULT NULL COMMENT '车型，多个用“|” 进行分割',
  `TRAIN_NO` varchar(1000) DEFAULT NULL COMMENT '车号，多个使用逗号分割',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `IS_SELECT` varchar(2) DEFAULT '0' COMMENT '是否领用可选：0=不可选、1=可选',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_project_code` (`PROJECT_CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='项目明细信息';


-- nj_test.project_detail1 definition

CREATE TABLE `project_detail1` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `PROJECT_CODE` varchar(100) NOT NULL COMMENT '项目编码',
  `PROJECT_NAME` varchar(200) NOT NULL COMMENT '项目名称',
  `DESCR` text COMMENT '描述',
  `EXTEND1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXTEND2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_project_code` (`PROJECT_CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='项目明细信息';


-- nj_test.project_process definition

CREATE TABLE `project_process` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `PROJECT_ID` varchar(100) NOT NULL COMMENT '项目ID',
  `PROCESS_ID` varchar(100) NOT NULL COMMENT '工序ID',
  `PRODUCT_ID` varchar(100) DEFAULT NULL COMMENT '产品ID',
  `EXTERNAL_PROCESS_CODE` varchar(100) NOT NULL COMMENT '外部工序编码',
  `TRAIN_NO` varchar(500) DEFAULT NULL COMMENT '车号',
  `TRAIN_NO_DESC` varchar(200) DEFAULT NULL COMMENT '车号简写',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '节车号/车型',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  `SYNC_STATUS` varchar(1) DEFAULT '0' COMMENT '同步状态',
  `STATUS` varchar(255) NOT NULL COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='项目工序关系表';


-- nj_test.qrtz_calendars definition

CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.qrtz_fired_triggers definition

CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.qrtz_job_details definition

CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.qrtz_locks definition

CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.qrtz_paused_trigger_grps definition

CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.qrtz_scheduler_state definition

CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.quality_detail definition

CREATE TABLE `quality_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `QUALITY_ID` varchar(100) DEFAULT NULL COMMENT '质检报告ID',
  `ORDER_NO` varchar(10) DEFAULT NULL COMMENT '序号',
  `CHECK_PROCESS` varchar(200) DEFAULT NULL COMMENT '检查工序',
  `CONN_POSITION` varchar(500) DEFAULT NULL COMMENT '连接部位',
  `RISK` varchar(100) DEFAULT NULL COMMENT '螺栓风险等级',
  `GREASE` varchar(100) DEFAULT NULL COMMENT '胶脂',
  `TECHNOLOGY_NAME` varchar(200) DEFAULT NULL COMMENT '工艺名称',
  `FASTENER_SPECIFICATION` varchar(200) DEFAULT NULL COMMENT '紧固件规格',
  `NUM` varchar(10) DEFAULT NULL COMMENT '数量',
  `TORQUE` varchar(10) DEFAULT NULL COMMENT '力距',
  `WRENCH_SERIAL` varchar(100) DEFAULT NULL COMMENT '扳手序列号',
  `CHECK_RESULT` varchar(100) DEFAULT NULL COMMENT '检查结果',
  `SELF_CHECK_DATE` varchar(100) DEFAULT NULL COMMENT '自检日期',
  `MUTUAL_CHECK_DATE` varchar(100) DEFAULT NULL COMMENT '互检日期',
  `SPECIAL_CHECK_DATE` varchar(100) DEFAULT NULL COMMENT '专检日期',
  `CHECK_RESULT_DESC` varchar(1000) DEFAULT NULL COMMENT '检查结果描述',
  `SELF_CHECK_NAME` varchar(100) DEFAULT NULL COMMENT '自检人员',
  `MUTUAL_CHECK_NAME` varchar(100) DEFAULT NULL COMMENT '互检人员',
  `SPECIAL_CHECK_NAME` varchar(100) DEFAULT NULL COMMENT '专检人员',
  `STATUS` varchar(1) DEFAULT NULL COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='质检报告明细表';


-- nj_test.quality_report definition

CREATE TABLE `quality_report` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `ORDER_ID` varchar(100) NOT NULL COMMENT '订单ID',
  `PROJECT_CODE` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `TITLE` varchar(500) DEFAULT NULL COMMENT '报告标题',
  `MODEL` varchar(500) DEFAULT NULL COMMENT '型号',
  `PRODUCT_SERIAL` varchar(200) DEFAULT NULL COMMENT '产品序列号',
  `ORDER_NO` varchar(100) DEFAULT NULL COMMENT '序号',
  `CHECK_BY` varchar(200) DEFAULT NULL COMMENT '检查员',
  `TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '列车编号',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车型',
  `EXTEND3` varchar(100) DEFAULT NULL COMMENT '扩展字段3',
  `CHECK_DESC` varchar(1000) DEFAULT NULL COMMENT '检查描述',
  `TIME` datetime DEFAULT NULL COMMENT '日期',
  `STATUS` varchar(1) DEFAULT NULL COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='质检报告';


-- nj_test.station_info definition

CREATE TABLE `station_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `NAME` varchar(200) NOT NULL COMMENT '名称',
  `TYPE` varchar(1) DEFAULT NULL COMMENT '类型（1=总装 ，2=分装,3=试验）',
  `DEVICE_ID` varchar(2000) DEFAULT NULL COMMENT '设备ID',
  `PERSONNEL` varchar(3000) DEFAULT NULL COMMENT '工位所有员工',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态（0=未启用，1=启用，2=报废，3=异常，4=其他 ）',
  `PERSON_LIABLE` varchar(1000) DEFAULT NULL COMMENT '责任人',
  `IP` varchar(100) DEFAULT NULL COMMENT '控制器IP',
  `STATION_IP` varchar(100) DEFAULT NULL COMMENT '工位MAC地址',
  `REMARK` text COMMENT '备注',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_station_code` (`CODE`) USING BTREE,
  UNIQUE KEY `uni_station_name` (`NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工位信息表';


-- nj_test.sync_esb definition

CREATE TABLE `sync_esb` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `TITLE` varchar(100) NOT NULL COMMENT '标题',
  `TYPE` varchar(10) NOT NULL COMMENT '类型',
  `DATA` text NOT NULL COMMENT '内容',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `MSG` varchar(2000) DEFAULT NULL COMMENT '错误信息',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='ESB数据同步';


-- nj_test.sync_mes definition

CREATE TABLE `sync_mes` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `TITLE` varchar(1000) DEFAULT NULL COMMENT '标题',
  `TYPE` varchar(10) DEFAULT NULL COMMENT '数据类型(任务数据)',
  `FLOW_TO` varchar(1) DEFAULT NULL COMMENT '数据流向(0=上行/1=下行)',
  `DATA` text COMMENT '数据内容JSON格式',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `MSG` text COMMENT '错误信息',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='同步MES数据';


-- nj_test.sync_task_detail definition

CREATE TABLE `sync_task_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键ID',
  `TASK_INFO_ID` varchar(100) NOT NULL COMMENT '任务ID',
  `PROCESS_DETAIL_ID` varchar(100) DEFAULT NULL COMMENT '子工序ID',
  `MARK` varchar(22) DEFAULT NULL COMMENT '标记当前任务更换了扳手，目前更换扳手只有电枪换成指定扳手的业务',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '任务状态',
  `START_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(时)',
  `CANCEL_OPERATOR_BY` varchar(100) DEFAULT NULL COMMENT '取消作业任务的操作人',
  `OPERATOR_NAME` varchar(30) DEFAULT NULL COMMENT '操作人名称',
  `OPERATOR_WORK_NO` varchar(100) DEFAULT NULL COMMENT '操作人工号',
  `OPERATOR_BY` varchar(100) DEFAULT NULL COMMENT '操作人',
  `MSG_ID` varchar(100) DEFAULT NULL COMMENT '发送消息ID',
  `MSG` text COMMENT '错误信息',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='子任务信息表';


-- nj_test.sync_task_info definition

CREATE TABLE `sync_task_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `ORDER_ID` varchar(100) NOT NULL COMMENT '订单ID',
  `WORK_DETAIL_ID` varchar(100) NOT NULL COMMENT '派工单ID',
  `PROJECT_CODE` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `STATION_ID` varchar(100) NOT NULL COMMENT '工位ID',
  `TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车号',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '节车号',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '任务状态',
  `START_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(时)',
  `OPERATOR_BY` text COMMENT '操作人',
  `MSG_ID` varchar(700) DEFAULT NULL COMMENT '发送消息ID',
  `MSG` text COMMENT '错误信息',
  `PRODUCT_SERIAL` varchar(200) DEFAULT NULL COMMENT '产品序列号',
  `SYNC_STATUS` varchar(1) DEFAULT '0' COMMENT '同步状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'LOCAL' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_work_id` (`WORK_DETAIL_ID`) USING BTREE,
  KEY `ind_order_id` (`ORDER_ID`) USING BTREE,
  KEY `ind_device_id` (`DEVICE_ID`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='任务信息表';


-- nj_test.sync_work_station definition

CREATE TABLE `sync_work_station` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '工位编码',
  `name` varchar(100) NOT NULL COMMENT '工位名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ws_code_uniq` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工位表';


-- nj_test.sync_work_station_copy definition

CREATE TABLE `sync_work_station_copy` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '工位编码',
  `name` varchar(100) NOT NULL COMMENT '工位名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工位表';


-- nj_test.sys_announcement definition

CREATE TABLE `sys_announcement` (
  `id` varchar(32) NOT NULL,
  `titile` varchar(100) DEFAULT NULL COMMENT '标题',
  `msg_content` text COMMENT '内容',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `sender` varchar(100) DEFAULT NULL COMMENT '发布人',
  `priority` varchar(255) DEFAULT NULL COMMENT '优先级（L低，M中，H高）',
  `msg_category` varchar(10) NOT NULL DEFAULT '2' COMMENT '消息类型1:通知公告2:系统消息',
  `msg_type` varchar(10) DEFAULT NULL COMMENT '通告对象类型（USER:指定用户，ALL:全体用户）',
  `send_status` varchar(10) DEFAULT NULL COMMENT '发布状态（0未发布，1已发布，2已撤销）',
  `send_time` datetime DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '撤销时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除状态（0，正常，1已删除）',
  `bus_type` varchar(20) DEFAULT NULL COMMENT '业务类型(email:邮件 bpm:流程)',
  `bus_id` varchar(50) DEFAULT NULL COMMENT '业务id',
  `open_type` varchar(20) DEFAULT NULL COMMENT '打开方式(组件：component 路由：url)',
  `open_page` varchar(255) DEFAULT NULL COMMENT '组件/路由 地址',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_ids` text COMMENT '指定用户',
  `msg_abstract` text COMMENT '摘要',
  `dt_task_id` varchar(100) DEFAULT NULL COMMENT '钉钉task_id，用于撤回消息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统通告表';


-- nj_test.sys_announcement_send definition

CREATE TABLE `sys_announcement_send` (
  `id` varchar(32) DEFAULT NULL,
  `annt_id` varchar(32) DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `read_flag` varchar(10) DEFAULT NULL COMMENT '阅读状态（0未读，1已读）',
  `read_time` datetime DEFAULT NULL COMMENT '阅读时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `star_flag` varchar(10) DEFAULT NULL COMMENT '标星状态( 1为标星 空/0没有标星)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户通告阅读标记表';


-- nj_test.sys_category definition

CREATE TABLE `sys_category` (
  `id` varchar(36) NOT NULL,
  `pid` varchar(36) DEFAULT NULL COMMENT '父级节点',
  `name` varchar(100) DEFAULT NULL COMMENT '类型名称',
  `code` varchar(100) DEFAULT NULL COMMENT '类型编码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `has_child` varchar(3) DEFAULT NULL COMMENT '是否有子节点',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_code` (`code`) USING BTREE,
  KEY `idx_sc_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_check_rule definition

CREATE TABLE `sys_check_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键id',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_json` varchar(1024) DEFAULT NULL COMMENT '规则JSON',
  `rule_description` varchar(200) DEFAULT NULL COMMENT '规则描述',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_scr_rule_code` (`rule_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_comment definition

CREATE TABLE `sys_comment` (
  `id` varchar(32) NOT NULL,
  `table_name` varchar(50) NOT NULL COMMENT '表名',
  `table_data_id` varchar(32) NOT NULL COMMENT '数据id',
  `from_user_id` varchar(32) NOT NULL COMMENT '来源用户id',
  `to_user_id` varchar(32) DEFAULT NULL COMMENT '发送给用户id(允许为空)',
  `comment_id` varchar(32) DEFAULT NULL COMMENT '评论id(允许为空，不为空时，则为回复)',
  `comment_content` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '回复内容',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_table_data_id` (`table_name`,`table_data_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统评论回复表';


-- nj_test.sys_data_log definition

CREATE TABLE `sys_data_log` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `data_table` varchar(32) DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) DEFAULT NULL COMMENT '数据ID',
  `data_content` text COMMENT '数据内容',
  `data_version` int(11) DEFAULT NULL COMMENT '版本号',
  `type` varchar(20) DEFAULT 'json' COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdl_data_table_id` (`data_table`,`data_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_data_source definition

CREATE TABLE `sys_data_source` (
  `id` varchar(36) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '数据源编码',
  `name` varchar(100) DEFAULT NULL COMMENT '数据源名称',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `db_type` varchar(10) DEFAULT NULL COMMENT '数据库类型',
  `db_driver` varchar(100) DEFAULT NULL COMMENT '驱动类',
  `db_url` varchar(500) DEFAULT NULL COMMENT '数据源地址',
  `db_name` varchar(100) DEFAULT NULL COMMENT '数据库名称',
  `db_username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `db_password` varchar(100) DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sdc_rule_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_depart definition

CREATE TABLE `sys_depart` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父机构ID',
  `depart_name` varchar(100) NOT NULL COMMENT '机构/部门名称',
  `depart_name_en` varchar(500) DEFAULT NULL COMMENT '英文名',
  `depart_name_abbr` varchar(500) DEFAULT NULL COMMENT '缩写',
  `depart_order` int(11) DEFAULT '0' COMMENT '排序',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `org_category` varchar(10) NOT NULL DEFAULT '1' COMMENT '机构类别 1公司，2组织机构，2岗位',
  `org_type` varchar(10) DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) NOT NULL COMMENT '机构编码',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) DEFAULT NULL COMMENT '传真',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `memo` varchar(500) DEFAULT NULL COMMENT '备注',
  `status` varchar(1) DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除状态（0，正常，1已删除）',
  `qywx_identifier` varchar(100) DEFAULT NULL COMMENT '对接企业微信的ID',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_depart_org_code` (`org_code`) USING BTREE,
  KEY `idx_sd_parent_id` (`parent_id`) USING BTREE,
  KEY `idx_sd_depart_order` (`depart_order`) USING BTREE,
  KEY `idx_sd_org_code` (`org_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组织机构表';


-- nj_test.sys_depart_permission definition

CREATE TABLE `sys_depart_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据规则id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门权限表';


-- nj_test.sys_depart_role definition

CREATE TABLE `sys_depart_role` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '部门角色名称',
  `role_code` varchar(100) DEFAULT NULL COMMENT '部门角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色表';


-- nj_test.sys_depart_role_permission definition

CREATE TABLE `sys_depart_role_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(20) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdrp_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  KEY `idx_sdrp_role_id` (`role_id`) USING BTREE,
  KEY `idx_sdrp_per_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部门角色权限表';


-- nj_test.sys_depart_role_user definition

CREATE TABLE `sys_depart_role_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `drole_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色用户表';


-- nj_test.sys_dict definition

CREATE TABLE `sys_dict` (
  `id` varchar(32) NOT NULL,
  `dict_name` varchar(100) NOT NULL COMMENT '字典名称',
  `dict_code` varchar(100) NOT NULL COMMENT '字典编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除状态',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `type` int(1) unsigned zerofill DEFAULT '0' COMMENT '字典类型0为string,1为number',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sd_dict_code` (`dict_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_dict_item definition

CREATE TABLE `sys_dict_item` (
  `id` varchar(32) NOT NULL,
  `dict_id` varchar(32) DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) NOT NULL COMMENT '字典项文本',
  `item_value` varchar(100) NOT NULL COMMENT '字典项值',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_order` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdi_role_dict_id` (`dict_id`) USING BTREE,
  KEY `idx_sdi_role_sort_order` (`sort_order`) USING BTREE,
  KEY `idx_sdi_status` (`status`) USING BTREE,
  KEY `idx_sdi_dict_val` (`dict_id`,`item_value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_files definition

CREATE TABLE `sys_files` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `url` varchar(1000) DEFAULT NULL COMMENT '文件地址',
  `file_type` varchar(20) DEFAULT NULL COMMENT '文档类型（folder:文件夹 excel:excel doc:word ppt:ppt image:图片  archive:其他文档 video:视频 pdf:pdf）',
  `store_type` varchar(20) DEFAULT NULL COMMENT '文件上传类型(temp/本地上传(临时文件) manage/知识库)',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级id',
  `tenant_id` varchar(100) DEFAULT NULL COMMENT '租户id',
  `file_size` double(13,2) DEFAULT NULL COMMENT '文件大小（kb）',
  `iz_folder` varchar(2) DEFAULT NULL COMMENT '是否文件夹(1：是  0：否)',
  `iz_root_folder` varchar(2) DEFAULT NULL COMMENT '是否为1级文件夹，允许为空 (1：是 )',
  `iz_star` varchar(2) DEFAULT NULL COMMENT '是否标星(1：是  0：否)',
  `down_count` int(11) DEFAULT NULL COMMENT '下载次数',
  `read_count` int(11) DEFAULT NULL COMMENT '阅读次数',
  `share_url` varchar(255) DEFAULT NULL COMMENT '分享链接',
  `share_perms` varchar(2) DEFAULT NULL COMMENT '分享权限(1.关闭分享 2.允许所有联系人查看 3.允许任何人查看)',
  `enable_down` varchar(2) DEFAULT NULL COMMENT '是否允许下载(1：是  0：否)',
  `enable_updat` varchar(2) DEFAULT NULL COMMENT '是否允许修改(1：是  0：否)',
  `del_flag` varchar(2) DEFAULT '0' COMMENT '删除状态(0-正常,1-删除至回收站)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_tenant_id` (`tenant_id`) USING BTREE,
  KEY `index_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='知识库-文档管理';


-- nj_test.sys_fill_rule definition

CREATE TABLE `sys_fill_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键ID',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_class` varchar(100) DEFAULT NULL COMMENT '规则实现类',
  `rule_params` varchar(200) DEFAULT NULL COMMENT '规则参数',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sfr_rule_code` (`rule_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_form_file definition

CREATE TABLE `sys_form_file` (
  `id` varchar(32) NOT NULL,
  `table_name` varchar(50) NOT NULL COMMENT '表名',
  `table_data_id` varchar(32) NOT NULL COMMENT '数据id',
  `file_id` varchar(32) DEFAULT NULL COMMENT '关联文件id',
  `file_type` varchar(20) DEFAULT NULL COMMENT '文件类型(text:文本, excel:excel doc:word ppt:ppt image:图片  archive:其他文档 video:视频 pdf:pdf）)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_table_form` (`table_name`,`table_data_id`) USING BTREE,
  KEY `index_file_id` (`file_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_gateway_route definition

CREATE TABLE `sys_gateway_route` (
  `id` varchar(36) NOT NULL,
  `router_id` varchar(50) DEFAULT NULL COMMENT '路由ID',
  `name` varchar(32) DEFAULT NULL COMMENT '服务名',
  `uri` varchar(32) DEFAULT NULL COMMENT '服务地址',
  `predicates` text COMMENT '断言',
  `filters` text COMMENT '过滤器',
  `retryable` int(3) DEFAULT NULL COMMENT '是否重试:0-否 1-是',
  `strip_prefix` int(3) DEFAULT NULL COMMENT '是否忽略前缀0-否 1-是',
  `persistable` int(3) DEFAULT NULL COMMENT '是否为保留数据:0-否 1-是',
  `show_api` int(3) DEFAULT NULL COMMENT '是否在接口文档中展示:0-否 1-是',
  `status` int(3) DEFAULT NULL COMMENT '状态:0-无效 1-有效',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


-- nj_test.sys_log definition

CREATE TABLE `sys_log` (
  `id` varchar(32) NOT NULL,
  `log_type` int(2) DEFAULT NULL COMMENT '日志类型（1登录日志，2操作日志）',
  `log_content` varchar(1000) DEFAULT NULL COMMENT '日志内容',
  `operate_type` int(2) DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) DEFAULT NULL COMMENT '操作用户账号',
  `username` varchar(100) DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext COMMENT '请求参数',
  `request_type` varchar(10) DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sl_userid` (`userid`) USING BTREE,
  KEY `idx_sl_log_type` (`log_type`) USING BTREE,
  KEY `idx_sl_operate_type` (`operate_type`) USING BTREE,
  KEY `idx_sl_create_time` (`create_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统日志表';


-- nj_test.sys_permission definition

CREATE TABLE `sys_permission` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父id',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) DEFAULT NULL COMMENT '路径',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `component_name` varchar(255) DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8,2) DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `is_leaf` tinyint(1) DEFAULT NULL COMMENT '是否叶子节点:    1是0否',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` int(2) DEFAULT '0' COMMENT '是否隐藏路由: 0否,1是',
  `hide_tab` int(2) DEFAULT NULL COMMENT '是否隐藏tab: 0否,1是',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT '0' COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int(3) DEFAULT '0' COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_menu_type` (`menu_type`) USING BTREE,
  KEY `index_menu_hidden` (`hidden`) USING BTREE,
  KEY `index_menu_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';


-- nj_test.sys_permission_data_rule definition

CREATE TABLE `sys_permission_data_rule` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `rule_name` varchar(50) DEFAULT NULL COMMENT '规则名称',
  `rule_column` varchar(50) DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(50) DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) DEFAULT NULL COMMENT '规则值',
  `status` varchar(3) DEFAULT NULL COMMENT '权限有效状态1有0否',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_spdr_permission_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_position definition

CREATE TABLE `sys_position` (
  `id` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '职务编码',
  `name` varchar(100) DEFAULT NULL COMMENT '职务名称',
  `post_rank` varchar(2) DEFAULT NULL COMMENT '职级',
  `company_id` varchar(255) DEFAULT NULL COMMENT '公司id',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '组织机构编码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_quartz_job definition

CREATE TABLE `sys_quartz_job` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除状态',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `job_class_name` varchar(255) DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) DEFAULT NULL COMMENT '参数',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` int(1) DEFAULT NULL COMMENT '状态 0正常 -1停止',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_role definition

CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) NOT NULL COMMENT '角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_role_role_code` (`role_code`) USING BTREE,
  KEY `idx_sr_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';


-- nj_test.sys_role_index definition

CREATE TABLE `sys_role_index` (
  `id` varchar(32) NOT NULL,
  `role_code` varchar(50) DEFAULT NULL COMMENT '角色编码',
  `url` varchar(100) DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '组件',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `priority` int(11) DEFAULT '0' COMMENT '优先级',
  `status` varchar(2) CHARACTER SET utf8 DEFAULT '0' COMMENT '状态0:无效 1:有效',
  `create_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色首页表';


-- nj_test.sys_role_permission definition

CREATE TABLE `sys_role_permission` (
  `id` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(100) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_srp_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  KEY `idx_srp_role_id` (`role_id`) USING BTREE,
  KEY `idx_srp_permission_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色权限表';


-- nj_test.sys_sms definition

CREATE TABLE `sys_sms` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `es_title` varchar(100) DEFAULT NULL COMMENT '消息标题',
  `es_type` varchar(50) DEFAULT NULL COMMENT '发送方式：参考枚举MessageTypeEnum',
  `es_receiver` varchar(50) DEFAULT NULL COMMENT '接收人',
  `es_param` varchar(1000) DEFAULT NULL COMMENT '发送所需参数Json格式',
  `es_content` longtext COMMENT '推送内容',
  `es_send_time` datetime DEFAULT NULL COMMENT '推送时间',
  `es_send_status` varchar(1) DEFAULT NULL COMMENT '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
  `es_send_num` int(11) DEFAULT NULL COMMENT '发送次数 超过5次不再发送',
  `es_result` varchar(255) DEFAULT NULL COMMENT '推送失败原因',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_ss_es_type` (`es_type`) USING BTREE,
  KEY `idx_ss_es_receiver` (`es_receiver`) USING BTREE,
  KEY `idx_ss_es_send_time` (`es_send_time`) USING BTREE,
  KEY `idx_ss_es_send_status` (`es_send_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_sms_template definition

CREATE TABLE `sys_sms_template` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `template_name` varchar(50) DEFAULT NULL COMMENT '模板标题',
  `template_code` varchar(32) NOT NULL COMMENT '模板CODE',
  `template_type` varchar(1) NOT NULL COMMENT '模板类型：1短信 2邮件 3微信',
  `template_content` varchar(1000) NOT NULL COMMENT '模板内容',
  `template_test_json` varchar(1000) DEFAULT NULL COMMENT '模板测试json',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `use_status` varchar(1) DEFAULT NULL COMMENT '是否使用中 1是0否',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sst_template_code` (`template_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_tenant definition

CREATE TABLE `sys_tenant` (
  `id` int(5) NOT NULL COMMENT '租户编码',
  `name` varchar(100) DEFAULT NULL COMMENT '租户名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `status` int(1) DEFAULT NULL COMMENT '状态 1正常 0冻结',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='多租户信息表';


-- nj_test.sys_third_account definition

CREATE TABLE `sys_third_account` (
  `id` varchar(32) NOT NULL COMMENT '编号',
  `sys_user_id` varchar(32) DEFAULT NULL COMMENT '第三方登录id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态(1-正常,2-冻结)',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态(0-正常,1-已删除)',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `third_user_uuid` varchar(100) DEFAULT NULL COMMENT '第三方账号',
  `third_user_id` varchar(100) DEFAULT NULL COMMENT '第三方app用户账号',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `third_type` varchar(50) DEFAULT NULL COMMENT '登录来源',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_third_account_third_type_third_user_id` (`third_type`,`third_user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_user definition

CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `username` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `avatar` varchar(255) DEFAULT '111_1690166283555.png' COMMENT '头像',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `org_code` varchar(64) DEFAULT NULL COMMENT '登录会话的机构编码',
  `status` tinyint(1) DEFAULT '1' COMMENT '性别(1-正常,2-冻结)',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态(0-正常,1-已删除)',
  `third_id` varchar(100) DEFAULT NULL COMMENT '第三方登录的唯一标识',
  `third_type` varchar(100) DEFAULT NULL COMMENT '第三方类型',
  `activiti_sync` tinyint(1) DEFAULT NULL COMMENT '同步工作流引擎(1-同步,0-不同步)',
  `work_no` varchar(100) DEFAULT NULL COMMENT '工号，唯一键',
  `card_no` varchar(100) DEFAULT NULL COMMENT '卡号',
  `post` varchar(100) DEFAULT NULL COMMENT '职务，关联职务表',
  `telephone` varchar(45) DEFAULT NULL COMMENT '座机号',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_identity` tinyint(1) DEFAULT NULL COMMENT '身份（1普通成员 2上级）',
  `depart_ids` longtext COMMENT '负责部门',
  `rel_tenant_ids` varchar(100) DEFAULT NULL COMMENT '多租户标识',
  `client_id` varchar(64) DEFAULT NULL COMMENT '设备ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_work_no` (`work_no`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_username` (`username`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_phone` (`phone`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_email` (`email`) USING BTREE,
  KEY `idx_su_username` (`username`) USING BTREE,
  KEY `idx_su_status` (`status`) USING BTREE,
  KEY `idx_su_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';


-- nj_test.sys_user_agent definition

CREATE TABLE `sys_user_agent` (
  `id` varchar(32) NOT NULL COMMENT '序号',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `agent_user_name` varchar(100) DEFAULT NULL COMMENT '代理人用户名',
  `start_time` datetime DEFAULT NULL COMMENT '代理开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '代理结束时间',
  `status` varchar(2) DEFAULT NULL COMMENT '状态0无效1有效',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sug_user_name` (`user_name`) USING BTREE,
  KEY `idx_sug_status` (`status`) USING BTREE,
  KEY `idx_sug_start_time` (`start_time`) USING BTREE,
  KEY `idx_sug_end_time` (`end_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户代理人设置';


-- nj_test.sys_user_depart definition

CREATE TABLE `sys_user_depart` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `dep_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `idx_sud_user_id` (`user_id`) USING BTREE,
  KEY `idx_sud_dep_id` (`dep_id`) USING BTREE,
  KEY `idx_sud_user_dep_id` (`user_id`,`dep_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- nj_test.sys_user_role definition

CREATE TABLE `sys_user_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sur_user_id` (`user_id`) USING BTREE,
  KEY `idx_sur_role_id` (`role_id`) USING BTREE,
  KEY `idx_sur_user_role_id` (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';


-- nj_test.task_detail definition

CREATE TABLE `task_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键ID',
  `TASK_INFO_ID` varchar(100) NOT NULL COMMENT '任务ID',
  `PROCESS_DETAIL_ID` varchar(100) DEFAULT NULL COMMENT '子工序ID',
  `MARK` varchar(22) DEFAULT NULL COMMENT '标记当前任务更换了扳手，目前更换扳手只有电枪换成指定扳手的业务',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '任务状态',
  `START_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(时)',
  `CANCEL_OPERATOR_BY` varchar(100) DEFAULT NULL COMMENT '取消作业任务的操作人',
  `OPERATOR_NAME` varchar(30) DEFAULT NULL COMMENT '操作人名称',
  `OPERATOR_WORK_NO` varchar(100) DEFAULT NULL COMMENT '操作人工号',
  `OPERATOR_BY` varchar(100) DEFAULT NULL COMMENT '操作人',
  `MSG_ID` varchar(100) DEFAULT NULL COMMENT '发送消息ID',
  `MSG` text COMMENT '错误信息',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='子任务信息表';


-- nj_test.task_info definition

CREATE TABLE `task_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `ORDER_ID` varchar(100) NOT NULL COMMENT '订单ID',
  `WORK_DETAIL_ID` varchar(100) NOT NULL COMMENT '派工单ID',
  `PROJECT_CODE` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `STATION_ID` varchar(100) NOT NULL COMMENT '工位ID',
  `TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车号',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '节车号',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '任务状态',
  `START_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(时)',
  `OPERATOR_BY` text COMMENT '操作人',
  `MSG_ID` varchar(700) DEFAULT NULL COMMENT '发送消息ID',
  `MSG` text COMMENT '错误信息',
  `PRODUCT_SERIAL` varchar(200) DEFAULT NULL COMMENT '产品序列号',
  `SYNC_STATUS` varchar(1) DEFAULT '0' COMMENT '同步状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'LOCAL' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_work_id` (`WORK_DETAIL_ID`) USING BTREE,
  KEY `ind_order_id` (`ORDER_ID`) USING BTREE,
  KEY `ind_device_id` (`DEVICE_ID`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='任务信息表';


-- nj_test.technology_info definition

CREATE TABLE `technology_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(100) DEFAULT NULL COMMENT '工艺编码',
  `NAME` varchar(200) DEFAULT NULL COMMENT '工艺名称',
  `BOLT_MODEL` varchar(100) DEFAULT NULL COMMENT '螺栓规格',
  `APPLICATION_NUMBER` varchar(10) DEFAULT NULL COMMENT '对应拧紧小车控制器内的工艺编码',
  `CONTROL_MODE` varchar(1) DEFAULT '0' COMMENT '控制方式（扭矩，角色，扭矩+角度，角度+扭矩）',
  `TARGET` varchar(10) DEFAULT NULL COMMENT '目标',
  `MONITOR` varchar(10) DEFAULT NULL COMMENT '监控',
  `WORK_MODE` varchar(1) DEFAULT '0' COMMENT '工作模式(脱扣模式 峰值模式，追踪模式)',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '当前工艺配置的设备ID',
  `TORQUE` varchar(10) DEFAULT NULL COMMENT '扭矩',
  `TORQUE_DEVIATION` decimal(5,2) DEFAULT '5.00' COMMENT '扭力偏差值，百分比数字',
  `TORQUE_DEVIATION_UP` varchar(10) DEFAULT NULL COMMENT '上偏差',
  `TORQUE_DEVIATION_DOWN` varchar(10) DEFAULT NULL COMMENT '下偏差',
  `TORQUE_ANGLE_START` varchar(10) DEFAULT NULL COMMENT '扭矩角度启始值',
  `ANGLE` varchar(10) DEFAULT NULL COMMENT '角度',
  `ANGLE_DEVIATION_UP` varchar(10) DEFAULT NULL COMMENT '上偏差',
  `ANGLE_DEVIATION_DOWN` varchar(10) DEFAULT NULL COMMENT '下偏差',
  `UNIT` varchar(1) DEFAULT '0' COMMENT '单位',
  `DESCR` text COMMENT '描述',
  `REPEAT_COUNT` int(11) DEFAULT NULL COMMENT '重复次数',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态（0=未启用，1=启用，2=报废，3=异常，4=其他 ）',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_technology_code` (`CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工艺信息表';


-- nj_test.test_user definition

CREATE TABLE `test_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `username` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态(0-正常,1-已删除)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='测试用户表';


-- nj_test.torque_test_data definition

CREATE TABLE `torque_test_data` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `brand` varchar(50) DEFAULT NULL COMMENT '扳手品牌',
  `max_torque` varchar(30) DEFAULT NULL COMMENT '扳手最大扭矩',
  `min_torque` varchar(30) DEFAULT NULL COMMENT '扳手最小扭矩',
  `mod` varchar(100) DEFAULT NULL COMMENT '扳手型号',
  `mod_id` varchar(100) DEFAULT NULL COMMENT '扳手型号ID',
  `pass` varchar(10) DEFAULT NULL COMMENT '测试结果：0 未完成 1 合格 2 不合格',
  `points` varchar(30) DEFAULT NULL COMMENT '测试点位数',
  `serial_no` varchar(50) DEFAULT NULL COMMENT '扳手序列号',
  `test_id` varchar(50) DEFAULT NULL COMMENT '测试ID',
  `times` varchar(30) DEFAULT NULL COMMENT '每个点位测试次数',
  `tol` varchar(50) DEFAULT NULL COMMENT '扭矩精度',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `wrench_id` varchar(50) DEFAULT NULL COMMENT '扳手ID',
  `wrench_type` varchar(10) DEFAULT NULL COMMENT '扳手类型（1 咔哒扳手  2数显扳手  3电动扳手 ）',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扭矩台测试数据表';


-- nj_test.torque_test_data_detail definition

CREATE TABLE `torque_test_data_detail` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `data_id` varchar(100) NOT NULL COMMENT '主测试数据ID',
  `pass` varchar(10) DEFAULT NULL COMMENT '测试结果：0 未完成 1 合格 2 不合格',
  `point` varchar(30) DEFAULT NULL COMMENT '测试点位数',
  `serial` varchar(50) DEFAULT NULL COMMENT '测试序号',
  `target` varchar(50) DEFAULT NULL COMMENT '目标扭矩',
  `test_id` varchar(50) DEFAULT NULL COMMENT '测试ID',
  `test_tol` varchar(50) DEFAULT NULL COMMENT '测试精度',
  `tol` varchar(50) DEFAULT NULL COMMENT '合格精度',
  `torque` varchar(50) DEFAULT NULL COMMENT '测试仪扭矩',
  `torque_wrench` varchar(50) DEFAULT NULL COMMENT '扳手扭矩',
  `wrench_id` varchar(50) DEFAULT NULL COMMENT '扳手ID',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扭矩台测试数据详情表';


-- nj_test.unimas_nt00529002_126 definition

CREATE TABLE `unimas_nt00529002_126` (
  `SEQNO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DBNAME` varchar(255) NOT NULL,
  `TBLNAME` varchar(255) NOT NULL,
  `PKS` varchar(4000) DEFAULT NULL,
  `OLDPKS` varchar(4000) DEFAULT NULL,
  `MARK` tinyint(4) NOT NULL DEFAULT '1',
  `ACT` varchar(2) NOT NULL,
  `ACT_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DEAL_TIME` timestamp NULL DEFAULT NULL,
  `UNIMAS_STATUS` smallint(6) DEFAULT '0',
  `UNIMAS_BRENEW` tinyint(4) DEFAULT '0',
  `UNIMAS_TARGETS` varchar(255) DEFAULT NULL,
  `UNIMAS_MAXPKS` mediumtext,
  PRIMARY KEY (`SEQNO`),
  KEY `IDX_UNIMAS_NT00529002_126` (`TBLNAME`,`UNIMAS_BRENEW`,`SEQNO`,`UNIMAS_STATUS`,`MARK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- nj_test.visualizing_detail definition

CREATE TABLE `visualizing_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `VISUALIZING_ID` varchar(100) NOT NULL COMMENT '可视化ID',
  `ORDER_NO` int(11) NOT NULL COMMENT '序号',
  `POSITION_X` varchar(10) NOT NULL COMMENT 'X坐标',
  `POSITION_Y` varchar(10) NOT NULL COMMENT 'Y坐标',
  `POSITION_Z` varchar(10) DEFAULT NULL COMMENT 'Z坐标',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='可视化明细数据';


-- nj_test.visualizing_info definition

CREATE TABLE `visualizing_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `NAME` varchar(200) NOT NULL COMMENT '名称',
  `VISUALIZING_PATH` varchar(500) NOT NULL COMMENT '可视化图片地址',
  `POSITION_NUM` int(11) NOT NULL COMMENT '标记数量',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `REMARK` text COMMENT '备注',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_visualizing_code` (`CODE`) USING BTREE,
  UNIQUE KEY `uni_visualizing_name` (`NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='可视化信息表';


-- nj_test.work_detail definition

CREATE TABLE `work_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `ORDER_ID` varchar(100) NOT NULL COMMENT '订单ID',
  `WORK_ORDER_NO` varchar(100) NOT NULL COMMENT '派工单号',
  `PROCESS_ID` varchar(255) NOT NULL COMMENT '工序ID',
  `ORDER_NO` int(11) NOT NULL COMMENT '顺序',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'LOCAL' COMMENT '来源',
  `EXTEND1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXTEND2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `work_order_no_index` (`WORK_ORDER_NO`) USING BTREE,
  UNIQUE KEY `uni_work_orderno` (`WORK_ORDER_NO`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='派工单信息';


-- nj_test.wrench_base_config definition

CREATE TABLE `wrench_base_config` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `TITLE` varchar(255) NOT NULL COMMENT '标题',
  `TYPE` varchar(255) NOT NULL COMMENT '类型',
  `PARAM` text NOT NULL COMMENT '参数',
  `EXTEND1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXTEND2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `DEVICE_ID` text NOT NULL COMMENT '设备',
  `STATUS` varchar(1) NOT NULL COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扳手的基本设置';


-- nj_test.wrench_collection_back_log definition

CREATE TABLE `wrench_collection_back_log` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) NOT NULL COMMENT '消息ID',
  `HANDLER_NAME` varchar(100) DEFAULT NULL COMMENT '处理的TOPIC名称或类ID',
  `MSG_TXT` text COMMENT '业务内容',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE,
  KEY `ind_handler_name` (`HANDLER_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扳手采集回写日志';


-- nj_test.wrench_collection_curve_data definition

CREATE TABLE `wrench_collection_curve_data` (
  `ID` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '消息ID',
  `TYPE` varchar(5) CHARACTER SET utf8mb4 NOT NULL COMMENT '数据类型1.角度，2.扭矩',
  `TIME` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '拧紧点位间隔耗时(s)',
  `DATA` text COLLATE utf8mb4_unicode_ci COMMENT '拧紧曲线内容',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='扳手拧紧曲线数据';


-- nj_test.wrench_collection_detail definition

CREATE TABLE `wrench_collection_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) NOT NULL COMMENT '消息ID',
  `TASK_ID` varchar(100) NOT NULL COMMENT '任务ID',
  `TASK_DETAIL_ID` varchar(100) NOT NULL COMMENT '子任务ID',
  `PROCESS_ID` varchar(50) DEFAULT NULL COMMENT '工序ID',
  `STATION_ID` varchar(50) DEFAULT NULL COMMENT '工位ID',
  `PROJECT_CODE` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `PROCESS_DETAIL_ID` varchar(100) DEFAULT NULL COMMENT '子工序ID',
  `TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车号',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车型',
  `PRODUCT_SERIAL` varchar(200) DEFAULT NULL COMMENT '产品序列号',
  `SERIAL` varchar(100) DEFAULT NULL COMMENT '序列号',
  `TARGET_TORQUE` varchar(10) DEFAULT NULL COMMENT '目标扭矩',
  `TARGET_ANGLE` varchar(10) DEFAULT NULL COMMENT '目标角度',
  `ACTUAL_TORQUE` varchar(10) DEFAULT NULL COMMENT '实际扭矩',
  `ACTUAL_ANGLE` varchar(10) DEFAULT NULL COMMENT '实际角度',
  `ORDER_NO` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增长数据',
  `START_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(毫秒)',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `OPERATOR_WORK_NO` varchar(50) DEFAULT NULL COMMENT '操作人工号',
  `OPERATOR_NAME` varchar(30) DEFAULT NULL COMMENT '操作人名称',
  `ORDER_CODE` varchar(50) DEFAULT NULL COMMENT '生产订单编码',
  `WORK_NO` varchar(50) DEFAULT NULL COMMENT '工单号',
  `WORK_ORDER_NO` varchar(50) DEFAULT NULL COMMENT '派工单号',
  `PROCESS_DESC` varchar(100) DEFAULT NULL COMMENT '工序名称',
  `TECHNOLOGY_DESC` varchar(100) DEFAULT NULL COMMENT '工艺说明',
  `COLLECTION_DATE` datetime DEFAULT NULL COMMENT '采集时间',
  `REMARK` text COMMENT '备注',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `unq_order_no` (`ORDER_NO`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE,
  KEY `ind_task_id` (`TASK_ID`) USING BTREE,
  KEY `ind_taskd_id` (`TASK_DETAIL_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22354 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扳手数据采集明细';


-- nj_test.wrench_collection_log definition

CREATE TABLE `wrench_collection_log` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) NOT NULL COMMENT '消息ID',
  `HANDLER_NAME` varchar(100) DEFAULT NULL COMMENT '处理的TOPIC名称或类ID',
  `MSG_TXT` text COMMENT '业务内容',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE,
  KEY `ind_handler_name` (`HANDLER_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扳手采集日志信息';


-- nj_test.wrench_up_detail definition

CREATE TABLE `wrench_up_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) DEFAULT NULL,
  `TASK_ID` varchar(100) NOT NULL COMMENT '任务ID',
  `TASK_DETAIL_ID` varchar(100) NOT NULL COMMENT '子任务ID',
  `SERIAL` varchar(100) NOT NULL COMMENT '扳手序列号',
  `TORQUE` varchar(10) NOT NULL COMMENT '扭矩',
  `TORQUE_DEVIATION_UP` varchar(10) DEFAULT NULL COMMENT '扭矩上偏差',
  `TORQUE_DEVIATION_DOWN` varchar(10) DEFAULT NULL COMMENT '扭矩下偏差',
  `ANGLE` varchar(10) DEFAULT NULL COMMENT '角度',
  `ANGLE_DEVIATION_UP` varchar(10) DEFAULT NULL COMMENT '角度上偏差',
  `ANGLE_DEVIATION_DOWN` varchar(10) DEFAULT NULL COMMENT '角度下偏差',
  `CONTROL_MODE` varchar(1) DEFAULT NULL COMMENT '控制方式',
  `WORK_MODE` varchar(1) DEFAULT NULL COMMENT '工作模式(脱扣模式 峰值模式，追踪模式)',
  `REPEAT_COUNT` int(11) DEFAULT NULL COMMENT '重复次数',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态（0=已发送，1=已接受）',
  `START_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(毫秒)',
  `MSG` text COMMENT '错误信息',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE,
  KEY `ind_task_id` (`TASK_ID`) USING BTREE,
  KEY `ind_taskd_id` (`TASK_DETAIL_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扳手数据上行明细';


-- nj_test.qrtz_triggers definition

CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.qrtz_blob_triggers definition

CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.qrtz_cron_triggers definition

CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.qrtz_simple_triggers definition

CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- nj_test.qrtz_simprop_triggers definition

CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

CREATE DATABASE `smart_warehouse`;

USE `smart_warehouse`;

-- smart_warehouse.apply_depart definition

CREATE TABLE `apply_depart` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `apply_id` varchar(32) NOT NULL COMMENT '物料申请id',
  `dep_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `flag` int(1) DEFAULT NULL COMMENT '标识：1=用于物料申请，2=用于物料申请计划申报详情',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `idx_ap_apply_id` (`apply_id`) USING BTREE,
  KEY `idx_ap_dep_id` (`dep_id`) USING BTREE,
  KEY `idx_ap_apply_dep_id` (`apply_id`,`dep_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='物料申请部门关联表';


-- smart_warehouse.cabinet_cell definition

CREATE TABLE `cabinet_cell` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `cell_no` varchar(100) NOT NULL COMMENT '格子编码',
  `cell_id` int(5) DEFAULT NULL COMMENT '格子ID',
  `cell_index` int(5) NOT NULL DEFAULT '0' COMMENT '格子排序',
  `cell_name` varchar(100) NOT NULL COMMENT '格子名称',
  `goods_id` varchar(100) DEFAULT NULL COMMENT '物品ID',
  `goods_code` varchar(100) DEFAULT NULL COMMENT '物品编码',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `goods_spec` varchar(200) DEFAULT NULL COMMENT '物品规格',
  `in_quantity` int(10) DEFAULT NULL COMMENT '入数量',
  `in_time` varchar(100) DEFAULT NULL COMMENT '入时间',
  `out_quantity` int(10) DEFAULT NULL COMMENT '出数量',
  `out_time` varchar(100) DEFAULT NULL COMMENT '出时间',
  `current_quantity` int(10) DEFAULT NULL COMMENT '当前数量',
  `threshold_quantity` int(10) DEFAULT NULL COMMENT '缺料阈值',
  `current_weight` decimal(8,3) DEFAULT NULL COMMENT '当前重量',
  `unit_weight` decimal(8,3) DEFAULT NULL COMMENT '单位重量',
  `status` varchar(1) DEFAULT '0' COMMENT '格子状态：1=充足、2=缺料、3=空柜',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_cell_no` (`cell_no`),
  UNIQUE KEY `uniq_cell_id` (`cell_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能工具柜柜格表';


-- smart_warehouse.crimping_measure definition

CREATE TABLE `crimping_measure` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `erp_no` varchar(50) DEFAULT NULL COMMENT 'ERP编码',
  `crimping_name` varchar(200) DEFAULT NULL COMMENT '名称',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `brand_name` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `expire_time` datetime DEFAULT NULL COMMENT '有效期',
  `cycle` varchar(20) DEFAULT NULL COMMENT '周期',
  `crimping_code` varchar(50) DEFAULT NULL COMMENT '总代码',
  `org_code` varchar(50) DEFAULT NULL COMMENT '部门代码',
  `company_code` varchar(50) DEFAULT NULL COMMENT '公司代码',
  `connector_type` varchar(200) DEFAULT NULL COMMENT '接线头类型',
  `storage_time` datetime DEFAULT NULL COMMENT '入库时间',
  `controlled_state` varchar(1) DEFAULT '0' COMMENT '管理状态：1=借领、2=送检、3=在库、4=维修、5=待检、6=禁用、7=报废、8=遗失、9=封存',
  `status` varchar(1) DEFAULT '0' COMMENT '状态：0=正常、1=当月到期、2=已到期',
  `remark` text COMMENT '备注',
  `work_no` varchar(50) DEFAULT NULL COMMENT '工号',
  `borrower` varchar(50) DEFAULT NULL COMMENT '借领人',
  `workshop` varchar(50) DEFAULT NULL COMMENT '车间',
  `class_group` varchar(50) DEFAULT NULL COMMENT '班组',
  `give_time` datetime DEFAULT NULL COMMENT '送检时间',
  `signature1` varchar(50) DEFAULT NULL COMMENT '送检签名',
  `take_time` datetime DEFAULT NULL COMMENT '取回时间',
  `signature2` varchar(50) DEFAULT NULL COMMENT '取回签名',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='压线钳计量表';


-- smart_warehouse.demo definition

CREATE TABLE `demo` (
  `id` varchar(50) NOT NULL COMMENT '主键ID',
  `name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `key_word` varchar(255) DEFAULT NULL COMMENT '关键词',
  `punch_time` datetime DEFAULT NULL COMMENT '打卡时间',
  `salary_money` decimal(10,3) DEFAULT NULL COMMENT '工资',
  `bonus_money` double(10,2) DEFAULT NULL COMMENT '奖金',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别 {男:1,女:2}',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `content` varchar(1000) DEFAULT NULL COMMENT '个人简介',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门编码',
  `tenant_id` int(10) DEFAULT '0',
  `update_count` int(11) DEFAULT NULL COMMENT '乐观锁测试',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.imp_classgroup definition

CREATE TABLE `imp_classgroup` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) DEFAULT NULL COMMENT '班组编码',
  `name` varchar(100) DEFAULT NULL COMMENT '班组名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_classgroup_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库班组表';


-- smart_warehouse.imp_location definition

CREATE TABLE `imp_location` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `warehouse_id` varchar(100) NOT NULL COMMENT '仓库ID',
  `warehouse_code` varchar(50) NOT NULL COMMENT '仓位编码',
  `warehouse_name` varchar(100) NOT NULL COMMENT '仓库名称',
  `code` varchar(50) NOT NULL COMMENT '仓位编码',
  `name` varchar(100) DEFAULT NULL COMMENT '仓位名称',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库仓位';


-- smart_warehouse.imp_material definition

CREATE TABLE `imp_material` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `model` varchar(100) DEFAULT NULL COMMENT '物料规格',
  `unit` varchar(20) DEFAULT NULL COMMENT '物料单位',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_material_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库物料表';


-- smart_warehouse.imp_ordini definition

CREATE TABLE `imp_ordini` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `ord_ordine` varchar(50) NOT NULL COMMENT '指令号 （主键）',
  `ord_des` varchar(50) DEFAULT NULL COMMENT '拣货单据号',
  `ord_tipoop` varchar(5) DEFAULT NULL COMMENT '指令类别：（P=出库；V=入库；I=直接修改库存/盘点）',
  `ord_cliente` varchar(50) DEFAULT NULL COMMENT '项目名称',
  `ord_project_code` varchar(50) DEFAULT NULL COMMENT '项目号',
  `source` varchar(10) DEFAULT NULL COMMENT '数据来源：wms=WMS系统、mes=MES系统、user=用户手动添加',
  `location_no` varchar(50) DEFAULT NULL COMMENT '仓位编码',
  `location_name` varchar(50) DEFAULT NULL COMMENT '仓位名称',
  `operator` varchar(50) DEFAULT NULL COMMENT '出入库操作人',
  `status` varchar(1) DEFAULT '0' COMMENT '0=待确认，1=已确认',
  `is_completed` varchar(5) DEFAULT '0' COMMENT '是否已整单出库：0=否，1=是',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_ord_ordine` (`ord_ordine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='出入库单据';


-- smart_warehouse.imp_ordini_inventory definition

CREATE TABLE `imp_ordini_inventory` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `rig_ordine` varchar(50) NOT NULL COMMENT '指令号 （与指令头关联）',
  `rig_tipoop` varchar(5) DEFAULT NULL COMMENT '指令类别：（P=出库；V=入库；I=直接修改库存/盘点）',
  `rig_project_code` varchar(50) DEFAULT NULL COMMENT '项目号',
  `rig_project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `rig_articolo` varchar(50) DEFAULT NULL COMMENT '物料编码',
  `rig_articolo_name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `rig_sub1` varchar(50) DEFAULT NULL COMMENT '车号',
  `train_name` varchar(100) DEFAULT NULL COMMENT '车名称',
  `rig_sub2` varchar(50) DEFAULT NULL COMMENT '节车号',
  `rig_tipoconf` varchar(50) DEFAULT NULL COMMENT '工作中心',
  `rig_tipoconf_name` varchar(100) DEFAULT NULL COMMENT '工作中心名称',
  `rig_qtar` decimal(11,3) DEFAULT NULL COMMENT '数量',
  `rig_stamate` varchar(50) DEFAULT NULL COMMENT '班组',
  `rig_hostinf` varchar(50) DEFAULT NULL COMMENT '工序编码',
  `rig_req_note` varchar(50) DEFAULT NULL COMMENT '工序',
  `location_no` varchar(50) DEFAULT NULL COMMENT '仓位编码',
  `location_name` varchar(100) DEFAULT NULL COMMENT '仓位名称',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库库存明细表';


-- smart_warehouse.imp_ordini_righe definition

CREATE TABLE `imp_ordini_righe` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `rig_ordine` varchar(50) NOT NULL COMMENT '指令号 （与指令头关联）',
  `rig_articolo` varchar(50) DEFAULT NULL COMMENT '项目号/物料编码',
  `rig_articolo_name` varchar(50) DEFAULT NULL COMMENT '项目/物料名称',
  `rig_sub1` varchar(50) DEFAULT NULL COMMENT '车号',
  `train_name` varchar(100) DEFAULT NULL COMMENT '车名称',
  `rig_sub2` varchar(50) DEFAULT NULL COMMENT '节车号',
  `rig_tipoconf` varchar(50) DEFAULT NULL COMMENT '工作中心',
  `rig_tipoconf_name` varchar(100) DEFAULT NULL COMMENT '工作中心名称',
  `rig_qtar` decimal(11,3) DEFAULT NULL COMMENT '要求数量',
  `rig_conferma_auto` varchar(5) DEFAULT NULL COMMENT '确认标识(第一行填0；其他行填1)',
  `rig_putin_tiposco` varchar(20) DEFAULT NULL COMMENT '库位类型：项目=SC001，物料=SC999',
  `rig_stamate` varchar(50) DEFAULT NULL,
  `rig_req_note` varchar(50) DEFAULT NULL COMMENT '工序',
  `rig_hostinf` varchar(50) DEFAULT NULL COMMENT '工序编码',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='出入库单据明细';


-- smart_warehouse.imp_process definition

CREATE TABLE `imp_process` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) DEFAULT NULL COMMENT '工序编码',
  `name` varchar(100) DEFAULT NULL COMMENT '工序名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_process_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库工序表';


-- smart_warehouse.imp_project definition

CREATE TABLE `imp_project` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `status` varchar(5) DEFAULT NULL COMMENT '状态：1=在产项目、2=积压项目',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_project_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库项目表';


-- smart_warehouse.imp_train definition

CREATE TABLE `imp_train` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '车号编码',
  `name` varchar(100) DEFAULT NULL COMMENT '车号名称',
  `alias` varchar(100) DEFAULT NULL COMMENT '别名',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_train_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库车号表';


-- smart_warehouse.imp_train_node definition

CREATE TABLE `imp_train_node` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '节车编码',
  `name` varchar(100) DEFAULT NULL COMMENT '节车名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_train_node_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库节车表';


-- smart_warehouse.imp_warehouse definition

CREATE TABLE `imp_warehouse` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT '仓库编码',
  `name` varchar(100) DEFAULT NULL COMMENT '仓库名称',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库仓库';


-- smart_warehouse.inventory definition

CREATE TABLE `inventory` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `inventory_no` varchar(100) NOT NULL COMMENT '库存号',
  `goods_id` varchar(100) DEFAULT NULL COMMENT '物品ID',
  `goods_code` varchar(100) NOT NULL COMMENT '物品编码',
  `goods_name` varchar(200) NOT NULL COMMENT '物品名称',
  `in_quantity` int(10) DEFAULT NULL COMMENT '入库数量',
  `in_time` datetime DEFAULT NULL COMMENT '入库时间',
  `out_quantity` int(10) DEFAULT NULL COMMENT '出库数量',
  `out_time` datetime DEFAULT NULL COMMENT '出库时间',
  `current_stock` int(10) DEFAULT NULL COMMENT '当前库存',
  `threshold_quantity` int(10) DEFAULT NULL COMMENT '库存阈值',
  `status` varchar(1) DEFAULT '0' COMMENT '物料状态：1=库存充足、2=库存不足',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料库存表';


-- smart_warehouse.jeecg_order_main definition

CREATE TABLE `jeecg_order_main` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `order_code` varchar(50) DEFAULT NULL COMMENT '订单号',
  `ctype` varchar(500) DEFAULT NULL COMMENT '订单类型',
  `order_date` datetime DEFAULT NULL COMMENT '订单日期',
  `order_money` double(10,3) DEFAULT NULL COMMENT '订单金额',
  `content` varchar(500) DEFAULT NULL COMMENT '订单备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `bpm_status` varchar(3) DEFAULT NULL COMMENT '流程状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.material_apply_record definition

CREATE TABLE `material_apply_record` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `material_id` varchar(100) DEFAULT NULL COMMENT '物料信息ID',
  `material_code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '中文名称',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `quantity` int(10) NOT NULL COMMENT '数量',
  `unit_name` varchar(100) DEFAULT NULL COMMENT '物料单位',
  `applicant_id` varchar(100) NOT NULL COMMENT '申请人用户ID',
  `applicant_name` varchar(100) NOT NULL COMMENT '申请人姓名',
  `depart_ids` varchar(2000) DEFAULT NULL COMMENT '领用班组id列表',
  `depart_names` varchar(2000) DEFAULT NULL COMMENT '领用班组',
  `apply_time` datetime NOT NULL COMMENT '申请时间',
  `use_time` datetime NOT NULL COMMENT '需求时间',
  `price` decimal(15,3) DEFAULT NULL COMMENT '申请时的物料价格',
  `use_desc` varchar(2000) DEFAULT NULL COMMENT '用途说明',
  `tech_desc` varchar(2000) DEFAULT NULL COMMENT '技术要求说明',
  `next_quarter_output` int(10) DEFAULT NULL COMMENT '下季度产量',
  `create_flag` varchar(5) DEFAULT '1' COMMENT '创建标识：1-申请时创建、2-计划时创建',
  `user_id` varchar(50) DEFAULT NULL COMMENT '使用人ID',
  `real_name` varchar(50) DEFAULT NULL COMMENT '使用人姓名',
  `work_station_code` varchar(20) DEFAULT NULL COMMENT '工位编码',
  `work_station` varchar(50) DEFAULT NULL COMMENT '工位',
  `project_code` varchar(20) DEFAULT NULL COMMENT '项目编码',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `opinion` varchar(2000) DEFAULT NULL COMMENT '审核意见',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '1' COMMENT '申请状态：1-申请中、2-已提审、3-采购中、4-已完成',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料申请记录';


-- smart_warehouse.material_brand definition

CREATE TABLE `material_brand` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `brand_name` varchar(200) NOT NULL COMMENT '品牌名称',
  `vendor_name` varchar(200) NOT NULL COMMENT '供应商或厂家名称',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料品牌';


-- smart_warehouse.material_category definition

CREATE TABLE `material_category` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `category_code` varchar(100) NOT NULL COMMENT '分类编码',
  `category_name` varchar(200) NOT NULL COMMENT '分类名称',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料类别';


-- smart_warehouse.material_history_price definition

CREATE TABLE `material_history_price` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `material_id` varchar(100) NOT NULL COMMENT '物料信息ID',
  `material_code` varchar(100) NOT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '物料名称',
  `spec_model` varchar(100) DEFAULT NULL COMMENT '规格型号',
  `price` decimal(15,3) DEFAULT NULL COMMENT '价格',
  `price_tax` decimal(15,3) DEFAULT NULL COMMENT '含税价格',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料历史价格表';


-- smart_warehouse.material_info definition

CREATE TABLE `material_info` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '物料编码',
  `name` varchar(200) NOT NULL COMMENT '中文名称',
  `name_en` varchar(200) DEFAULT NULL COMMENT '名称',
  `alias` varchar(200) DEFAULT NULL COMMENT '别名',
  `price` decimal(15,3) DEFAULT NULL COMMENT '价格',
  `price_tax` decimal(15,3) DEFAULT NULL COMMENT '含税价格',
  `category_id` varchar(100) DEFAULT NULL COMMENT '所属分类',
  `category_name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `spec_id` varchar(100) DEFAULT NULL COMMENT '所属规格',
  `spec_model` varchar(100) DEFAULT NULL COMMENT '规格型号',
  `unit_id` varchar(100) DEFAULT NULL COMMENT '所属单位',
  `unit_name` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `brand_id` varchar(100) DEFAULT NULL COMMENT '所属品牌',
  `brand_name` varchar(100) DEFAULT NULL COMMENT '品牌名称',
  `product_code` varchar(100) DEFAULT NULL COMMENT '商品编码',
  `picking_frequency` varchar(1) DEFAULT NULL COMMENT '领用频率: 0-低、1-中、2-高',
  `price_source` varchar(200) DEFAULT NULL COMMENT '预算价格来源',
  `apply_source` varchar(200) DEFAULT NULL COMMENT '申报来源',
  `purchase_source` varchar(200) DEFAULT NULL COMMENT '采购途径',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '状态：0-启用、1-禁用',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_mi_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料信息表';


-- smart_warehouse.material_picking_record definition

CREATE TABLE `material_picking_record` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `material_id` varchar(100) NOT NULL COMMENT '物料信息ID',
  `material_code` varchar(100) NOT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '中文名称',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '物料规格',
  `unit_name` varchar(100) DEFAULT NULL COMMENT '物料单位',
  `quantity` int(10) DEFAULT NULL COMMENT '数量',
  `cell_no` varchar(100) DEFAULT NULL COMMENT '柜格编码',
  `picking_before_quantity` int(10) DEFAULT NULL COMMENT '领取前数量',
  `picking_after_quantity` int(10) DEFAULT NULL COMMENT '领取后数量',
  `user_id` varchar(100) DEFAULT NULL COMMENT '领料人ID',
  `username` varchar(100) DEFAULT NULL COMMENT '领料人姓名',
  `work_station` varchar(50) DEFAULT NULL COMMENT '工位',
  `picking_time` datetime DEFAULT NULL COMMENT '领料时间',
  `price` decimal(15,3) DEFAULT NULL COMMENT '物料价格',
  `status` varchar(10) DEFAULT '0' COMMENT '状态：0=未归还、1=已归还',
  `source` varchar(3) DEFAULT NULL COMMENT '领用来源：1=当前系统，2=智能工具柜',
  `request_id` varchar(50) DEFAULT NULL COMMENT '请求ID：工具柜回调判重',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='领料记录表';


-- smart_warehouse.material_picking_rule definition

CREATE TABLE `material_picking_rule` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `rule_name` varchar(200) NOT NULL COMMENT '规则名称',
  `project_id` varchar(100) NOT NULL COMMENT '项目ID',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `train_model_id` varchar(100) NOT NULL COMMENT '车型ID',
  `train_model_name` varchar(100) DEFAULT NULL COMMENT '车型名称',
  `train_node_id` varchar(100) NOT NULL COMMENT '节车ID',
  `train_node_name` varchar(100) DEFAULT NULL COMMENT '节车名称',
  `once_quantity` int(10) DEFAULT '-1' COMMENT '单次领取数量：-1=无限制',
  `max_quantity` int(10) DEFAULT '-1' COMMENT '最大领取数量：-1=无限制',
  `status` varchar(1) DEFAULT '0' COMMENT '规则状态：1=启用、2=取消',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_rule_pmn` (`project_id`,`train_model_id`,`train_node_id`),
  UNIQUE KEY `uniq_rule_name` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='领料规则表';


-- smart_warehouse.material_placement_record definition

CREATE TABLE `material_placement_record` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `material_id` varchar(100) NOT NULL COMMENT '物料信息表ID',
  `material_code` varchar(100) NOT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '物料名称',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '物料规格',
  `quantity` int(10) DEFAULT NULL COMMENT '放料数量',
  `cell_no` varchar(100) DEFAULT NULL COMMENT '柜格编码',
  `in_before_quantity` int(10) DEFAULT NULL COMMENT '入柜前数量',
  `in_after_quantity` int(10) DEFAULT NULL COMMENT '入柜后数量',
  `user_id` varchar(100) DEFAULT NULL COMMENT '放料人ID',
  `username` varchar(100) DEFAULT NULL COMMENT '放料人姓名',
  `placement_time` datetime DEFAULT NULL COMMENT '放料时间',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='放料记录表';


-- smart_warehouse.material_spec definition

CREATE TABLE `material_spec` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `spec_model` varchar(200) NOT NULL COMMENT '规格型号',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料规格';


-- smart_warehouse.material_unit definition

CREATE TABLE `material_unit` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `unit_name` varchar(200) NOT NULL COMMENT '单位中文名称',
  `unit_name_en` varchar(200) DEFAULT NULL COMMENT '单位英文名称',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料单位';


-- smart_warehouse.plan_report definition

CREATE TABLE `plan_report` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `report_no` varchar(200) NOT NULL COMMENT '申报表编号',
  `report_name` varchar(200) NOT NULL COMMENT '申报表名称',
  `report_time` datetime DEFAULT NULL COMMENT '申报日期',
  `depart_id` varchar(100) DEFAULT NULL COMMENT '申报部门id',
  `depart_name` varchar(200) DEFAULT NULL COMMENT '申报部门/单位名称',
  `author_id` varchar(100) DEFAULT NULL COMMENT '编制人ID',
  `author` varchar(100) DEFAULT NULL COMMENT '编制人姓名',
  `proofreader_id` varchar(100) DEFAULT NULL COMMENT '校对人ID',
  `proofreader` varchar(100) DEFAULT NULL COMMENT '校对人姓名',
  `auditor_id` varchar(100) DEFAULT NULL COMMENT '审核人ID',
  `auditor` varchar(100) DEFAULT NULL COMMENT '审核人姓名',
  `approver_id` varchar(100) DEFAULT NULL COMMENT '批准人ID',
  `approver` varchar(100) DEFAULT NULL COMMENT '批准人姓名',
  `tech_dep_id` varchar(2000) DEFAULT NULL COMMENT '工艺部意见人ID',
  `tech_dep_name` varchar(2000) DEFAULT NULL COMMENT '工艺部意见人姓名',
  `tech_dep_opinion` varchar(2000) DEFAULT NULL COMMENT '工艺部意见',
  `tech_group_id` varchar(100) DEFAULT NULL COMMENT '工艺组审核人ID',
  `tech_group` varchar(100) DEFAULT NULL COMMENT '工艺组审核人姓名',
  `tech_equipment_group_id` varchar(100) DEFAULT NULL COMMENT '工艺装备组审核人ID',
  `tech_equipment_group` varchar(100) DEFAULT NULL COMMENT '工艺装备组审核人姓名',
  `supervisor_id` varchar(100) DEFAULT NULL COMMENT '主管领导ID',
  `supervisor` varchar(100) DEFAULT NULL COMMENT '主管领导',
  `description` text COMMENT '申报说明',
  `total_quantity` int(10) DEFAULT NULL COMMENT '总数量',
  `total_price` decimal(15,3) DEFAULT NULL COMMENT '总价',
  `remark` text COMMENT '备注',
  `business_key` varchar(20) DEFAULT NULL COMMENT '业务key',
  `status` varchar(1) DEFAULT '0' COMMENT '状态：1-已申报、2-已审核、3-已完成、4-已取消',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_pr_report_no` (`report_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='计划申报表';


-- smart_warehouse.plan_report_approve definition

CREATE TABLE `plan_report_approve` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `sn` int(5) NOT NULL COMMENT '序号',
  `report_id` varchar(100) NOT NULL COMMENT '计划申报表ID',
  `report_no` varchar(100) NOT NULL COMMENT '计划申报表编码',
  `report_name` varchar(100) NOT NULL COMMENT '计划申报表名称',
  `flow_no` varchar(100) NOT NULL COMMENT '流程号',
  `flow_name` varchar(100) NOT NULL COMMENT '流程名称',
  `flow_node_id` varchar(100) NOT NULL COMMENT '流程节点ID',
  `flow_node_name` varchar(100) NOT NULL COMMENT '流程节点名称',
  `flow_node_type` varchar(5) NOT NULL DEFAULT '2' COMMENT '流程节点类型：1=起始节点、2=普通节点、3=结束节点',
  `approver_id` varchar(100) DEFAULT NULL COMMENT '审批人ID',
  `approver` varchar(100) DEFAULT NULL COMMENT '审批人姓名',
  `approval_time` datetime DEFAULT NULL COMMENT '审批日期',
  `opinion` varchar(2000) DEFAULT NULL COMMENT '审批意见',
  `status` varchar(1) DEFAULT '1' COMMENT '状态：1：审核中；2：待审核；3：通过；4：驳回',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='计划申报审批表';


-- smart_warehouse.plan_report_detail definition

CREATE TABLE `plan_report_detail` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `plan_report_id` varchar(100) NOT NULL COMMENT '计划申报ID',
  `sn` int(10) NOT NULL COMMENT '序号',
  `material_id` varchar(100) DEFAULT NULL COMMENT '物料信息ID',
  `material_code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '物料名称',
  `spec_id` varchar(100) DEFAULT NULL COMMENT '规格型号ID',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `brand_id` varchar(100) DEFAULT NULL COMMENT '品牌ID',
  `brand_name` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `unit_id` varchar(100) DEFAULT NULL COMMENT '单位ID',
  `unit_name` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `product_code` varchar(200) DEFAULT NULL COMMENT '商品编码',
  `quantity` int(10) DEFAULT NULL COMMENT '数量',
  `unit_price` decimal(15,3) DEFAULT NULL COMMENT '预算单价',
  `total_price` decimal(15,3) DEFAULT NULL COMMENT '预算总价',
  `inventory_quantity` int(10) DEFAULT NULL COMMENT '库存数量',
  `current_quarter_scrap` int(10) DEFAULT NULL COMMENT '本季度报废',
  `next_quarter_ration` int(10) DEFAULT NULL COMMENT '下季度定额',
  `ration_desc` varchar(2000) DEFAULT NULL COMMENT '定额说明',
  `next_quarter_output` int(10) DEFAULT NULL COMMENT '下季度产量',
  `use_time` datetime DEFAULT NULL COMMENT '需求时间',
  `use_desc` varchar(2000) DEFAULT NULL COMMENT '用途说明',
  `price_source` varchar(500) DEFAULT NULL COMMENT '预算价格来源',
  `apply_source` varchar(500) DEFAULT NULL COMMENT '申报来源',
  `apply_id` varchar(100) DEFAULT NULL COMMENT '申报来源ID',
  `purchase_source` varchar(500) DEFAULT NULL COMMENT '采购途径',
  `tech_desc` varchar(2000) DEFAULT NULL COMMENT '技术要求说明',
  `applicant_id` varchar(100) DEFAULT NULL COMMENT '申报人ID',
  `applicant_name` varchar(100) NOT NULL COMMENT '申报人姓名',
  `depart_ids` varchar(2000) DEFAULT NULL COMMENT '领用班组ID列表',
  `depart_names` varchar(2000) DEFAULT NULL COMMENT '领用班组',
  `project_code` varchar(20) DEFAULT NULL COMMENT '项目编码',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `plan_report_id` (`plan_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='计划申报详情表';


-- smart_warehouse.purchase_plan definition

CREATE TABLE `purchase_plan` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '采购计划单编码',
  `report_id` varchar(100) NOT NULL COMMENT '计划申报单ID',
  `report_no` varchar(200) NOT NULL COMMENT '申报表编号',
  `report_name` varchar(200) NOT NULL COMMENT '计划申报单名称',
  `total_quantity` int(10) DEFAULT NULL COMMENT '总数量',
  `total_price` decimal(15,3) DEFAULT NULL COMMENT '总价',
  `action_type` varchar(2) NOT NULL DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `msg` varchar(2000) DEFAULT NULL COMMENT '同步消息',
  `status` varchar(1) DEFAULT '0' COMMENT '同步状态：0=待同步、1=成功、2=失败',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='采购计划单表';


-- smart_warehouse.purchase_plan_detail definition

CREATE TABLE `purchase_plan_detail` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `purchase_plan_id` varchar(100) NOT NULL COMMENT '采购计划单ID',
  `sn` int(10) NOT NULL COMMENT '序号',
  `material_id` varchar(100) DEFAULT NULL COMMENT '物料信息ID',
  `material_code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '物料名称',
  `spec_id` varchar(100) DEFAULT NULL COMMENT '规格型号ID',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `brand_id` varchar(100) DEFAULT NULL COMMENT '品牌ID',
  `brand_name` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `unit_id` varchar(100) DEFAULT NULL COMMENT '单位ID',
  `unit_name` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `product_code` varchar(200) DEFAULT NULL COMMENT '商品编码',
  `quantity` int(10) DEFAULT NULL COMMENT '数量',
  `unit_price` decimal(15,3) DEFAULT NULL COMMENT '预算单价',
  `total_price` decimal(15,3) DEFAULT NULL COMMENT '预算总价',
  `use_time` datetime DEFAULT NULL COMMENT '需求时间',
  `realname` varchar(50) DEFAULT NULL COMMENT '申请人姓名',
  `work_no` varchar(50) NOT NULL COMMENT '申请人工号',
  `use_desc` text COMMENT '用途说明',
  `project_code` varchar(20) DEFAULT NULL COMMENT '项目编码',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='采购计划单详情表';


-- smart_warehouse.qrtz_calendars definition

CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.qrtz_fired_triggers definition

CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.qrtz_job_details definition

CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.qrtz_locks definition

CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.qrtz_paused_trigger_grps definition

CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.qrtz_scheduler_state definition

CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sync_inbound_order definition

CREATE TABLE `sync_inbound_order` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `inventory_no` varchar(100) NOT NULL COMMENT '库存号',
  `goods_id` varchar(100) DEFAULT NULL COMMENT '物品ID',
  `goods_code` varchar(100) NOT NULL COMMENT '物品编码',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `in_quantity` int(10) DEFAULT NULL COMMENT '入库数量',
  `in_time` datetime DEFAULT NULL COMMENT '入库时间',
  `current_stock` int(10) DEFAULT NULL COMMENT '当前库存',
  `action_type` varchar(2) NOT NULL DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `msg` varchar(2000) DEFAULT NULL COMMENT '同步消息',
  `status` varchar(1) DEFAULT '0' COMMENT '同步状态：0=待同步、1=成功、2=失败',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='入库单同步表';


-- smart_warehouse.sync_outbound_order definition

CREATE TABLE `sync_outbound_order` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `inventory_no` varchar(100) NOT NULL COMMENT '库存号',
  `goods_id` varchar(100) DEFAULT NULL COMMENT '物品ID',
  `goods_code` varchar(100) NOT NULL COMMENT '物品编码',
  `goods_name` varchar(200) NOT NULL COMMENT '物品名称',
  `out_quantity` int(10) DEFAULT NULL COMMENT '出库数量',
  `out_time` datetime DEFAULT NULL COMMENT '出库时间',
  `current_stock` int(10) DEFAULT NULL COMMENT '当前库存',
  `out_number` varchar(50) DEFAULT NULL COMMENT '出库单单号',
  `work_no` varchar(100) DEFAULT NULL COMMENT '领料人工号',
  `realname` varchar(50) DEFAULT NULL COMMENT '领料人姓名',
  `action_type` varchar(2) NOT NULL DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `picking_record_id` varchar(100) DEFAULT NULL COMMENT '领料记录ID',
  `order_status` varchar(2) DEFAULT '1' COMMENT '单据状态：1=保存、4=审核',
  `work_center_number` varchar(50) DEFAULT NULL COMMENT 'EAS工作中心编码',
  `msg` text COMMENT '同步消息',
  `executions` int(5) DEFAULT '0' COMMENT '同步任务执行次数',
  `status` varchar(1) DEFAULT '0' COMMENT '同步状态：0=待同步、1=成功、2=失败',
  `source` varchar(3) DEFAULT NULL COMMENT '数据来源：1=当前系统，2=智能工具柜',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='出库单同步表';


-- smart_warehouse.sync_rail_project definition

CREATE TABLE `sync_rail_project` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `action_type` varchar(2) DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_project_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='城轨项目表';


-- smart_warehouse.sync_train_model definition

CREATE TABLE `sync_train_model` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) DEFAULT NULL COMMENT '车型编码',
  `name` varchar(100) DEFAULT NULL COMMENT '车型名称',
  `action_type` varchar(2) DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_train_model_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='城轨车型表';


-- smart_warehouse.sync_train_node definition

CREATE TABLE `sync_train_node` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) DEFAULT NULL COMMENT '节车编码',
  `name` varchar(100) DEFAULT NULL COMMENT '节车名称',
  `train_model_id` varchar(100) NOT NULL COMMENT '所属车型',
  `train_model_name` varchar(100) DEFAULT NULL COMMENT '车型名称',
  `action_type` varchar(2) DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_train_node_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='城轨节车表';


-- smart_warehouse.sync_work_station definition

CREATE TABLE `sync_work_station` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '工位编码',
  `name` varchar(100) NOT NULL COMMENT '工位名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `work_station_code_uniq` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工位表';


-- smart_warehouse.sys_announcement definition

CREATE TABLE `sys_announcement` (
  `id` varchar(32) NOT NULL,
  `titile` varchar(100) DEFAULT NULL COMMENT '标题',
  `msg_content` text COMMENT '内容',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `sender` varchar(100) DEFAULT NULL COMMENT '发布人',
  `priority` varchar(255) DEFAULT NULL COMMENT '优先级（L低，M中，H高）',
  `msg_category` varchar(10) NOT NULL DEFAULT '2' COMMENT '消息类型1:通知公告2:系统消息',
  `msg_type` varchar(10) DEFAULT NULL COMMENT '通告对象类型（USER:指定用户，ALL:全体用户）',
  `send_status` varchar(10) DEFAULT NULL COMMENT '发布状态（0未发布，1已发布，2已撤销）',
  `send_time` datetime DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '撤销时间',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `bus_type` varchar(20) DEFAULT NULL COMMENT '业务类型(email:邮件 bpm:流程)',
  `bus_id` varchar(50) DEFAULT NULL COMMENT '业务id',
  `open_type` varchar(20) DEFAULT NULL COMMENT '打开方式(组件：component 路由：url)',
  `open_page` varchar(255) DEFAULT NULL COMMENT '组件/路由 地址',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_ids` text COMMENT '指定用户',
  `msg_abstract` text COMMENT '摘要',
  `dt_task_id` varchar(100) DEFAULT NULL COMMENT '钉钉task_id，用于撤回消息',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统通告表';


-- smart_warehouse.sys_announcement_send definition

CREATE TABLE `sys_announcement_send` (
  `id` varchar(32) DEFAULT NULL,
  `annt_id` varchar(32) DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `read_flag` varchar(10) DEFAULT NULL COMMENT '阅读状态（0未读，1已读）',
  `read_time` datetime DEFAULT NULL COMMENT '阅读时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `star_flag` varchar(10) DEFAULT NULL COMMENT '标星状态( 1为标星 空/0没有标星)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户通告阅读标记表';


-- smart_warehouse.sys_category definition

CREATE TABLE `sys_category` (
  `id` varchar(36) NOT NULL,
  `pid` varchar(36) DEFAULT NULL COMMENT '父级节点',
  `name` varchar(100) DEFAULT NULL COMMENT '类型名称',
  `code` varchar(100) DEFAULT NULL COMMENT '类型编码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `has_child` varchar(3) DEFAULT NULL COMMENT '是否有子节点',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_code` (`code`) USING BTREE,
  KEY `idx_sc_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_check_rule definition

CREATE TABLE `sys_check_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键id',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_json` varchar(1024) DEFAULT NULL COMMENT '规则JSON',
  `rule_description` varchar(200) DEFAULT NULL COMMENT '规则描述',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_scr_rule_code` (`rule_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_comment definition

CREATE TABLE `sys_comment` (
  `id` varchar(32) NOT NULL,
  `table_name` varchar(50) NOT NULL COMMENT '表名',
  `table_data_id` varchar(32) NOT NULL COMMENT '数据id',
  `from_user_id` varchar(32) NOT NULL COMMENT '来源用户id',
  `to_user_id` varchar(32) DEFAULT NULL COMMENT '发送给用户id(允许为空)',
  `comment_id` varchar(32) DEFAULT NULL COMMENT '评论id(允许为空，不为空时，则为回复)',
  `comment_content` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '回复内容',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_table_data_id` (`table_name`,`table_data_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统评论回复表';


-- smart_warehouse.sys_data_log definition

CREATE TABLE `sys_data_log` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `data_table` varchar(32) DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) DEFAULT NULL COMMENT '数据ID',
  `data_content` text COMMENT '数据内容',
  `data_version` int(11) DEFAULT NULL COMMENT '版本号',
  `type` varchar(20) DEFAULT 'json' COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdl_data_table_id` (`data_table`,`data_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_data_source definition

CREATE TABLE `sys_data_source` (
  `id` varchar(36) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '数据源编码',
  `name` varchar(100) DEFAULT NULL COMMENT '数据源名称',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `db_type` varchar(10) DEFAULT NULL COMMENT '数据库类型',
  `db_driver` varchar(100) DEFAULT NULL COMMENT '驱动类',
  `db_url` varchar(500) DEFAULT NULL COMMENT '数据源地址',
  `db_name` varchar(100) DEFAULT NULL COMMENT '数据库名称',
  `db_username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `db_password` varchar(100) DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sdc_rule_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_depart definition

CREATE TABLE `sys_depart` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父机构ID',
  `depart_name` varchar(100) NOT NULL COMMENT '机构/部门名称',
  `depart_name_en` varchar(500) DEFAULT NULL COMMENT '英文名',
  `depart_name_abbr` varchar(500) DEFAULT NULL COMMENT '缩写',
  `depart_order` int(11) DEFAULT '0' COMMENT '排序',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `org_category` varchar(10) NOT NULL DEFAULT '1' COMMENT '机构类别 1公司，2组织机构，2岗位',
  `org_type` varchar(10) DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) NOT NULL COMMENT '机构编码',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) DEFAULT NULL COMMENT '传真',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `memo` varchar(500) DEFAULT NULL COMMENT '备注',
  `status` varchar(1) DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `qywx_identifier` varchar(100) DEFAULT NULL COMMENT '对接企业微信的ID',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  `iz_leaf` tinyint(1) DEFAULT '0' COMMENT '是否有叶子节点: 1是0否',
  `work_center_number` varchar(50) DEFAULT NULL COMMENT 'EAS工作中心编码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_depart_org_code` (`org_code`) USING BTREE,
  KEY `idx_sd_parent_id` (`parent_id`) USING BTREE,
  KEY `idx_sd_depart_order` (`depart_order`) USING BTREE,
  KEY `idx_sd_org_code` (`org_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组织机构表';


-- smart_warehouse.sys_depart_permission definition

CREATE TABLE `sys_depart_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据规则id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门权限表';


-- smart_warehouse.sys_depart_role definition

CREATE TABLE `sys_depart_role` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '部门角色名称',
  `role_code` varchar(100) DEFAULT NULL COMMENT '部门角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色表';


-- smart_warehouse.sys_depart_role_permission definition

CREATE TABLE `sys_depart_role_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(20) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdrp_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  KEY `idx_sdrp_role_id` (`role_id`) USING BTREE,
  KEY `idx_sdrp_per_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部门角色权限表';


-- smart_warehouse.sys_depart_role_user definition

CREATE TABLE `sys_depart_role_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `drole_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色用户表';


-- smart_warehouse.sys_dict definition

CREATE TABLE `sys_dict` (
  `id` varchar(32) NOT NULL,
  `dict_name` varchar(100) NOT NULL COMMENT '字典名称',
  `dict_code` varchar(100) NOT NULL COMMENT '字典编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `del_flag` int(1) DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `type` int(1) unsigned zerofill DEFAULT '0' COMMENT '字典类型0为string,1为number',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  `low_app_id` varchar(32) DEFAULT NULL COMMENT '低代码应用ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sd_dict_code` (`dict_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_dict_item definition

CREATE TABLE `sys_dict_item` (
  `id` varchar(32) NOT NULL,
  `dict_id` varchar(32) DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) NOT NULL COMMENT '字典项文本',
  `item_value` varchar(100) NOT NULL COMMENT '字典项值',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_order` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdi_role_dict_id` (`dict_id`) USING BTREE,
  KEY `idx_sdi_role_sort_order` (`sort_order`) USING BTREE,
  KEY `idx_sdi_status` (`status`) USING BTREE,
  KEY `idx_sdi_dict_val` (`dict_id`,`item_value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_files definition

CREATE TABLE `sys_files` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `url` varchar(1000) DEFAULT NULL COMMENT '文件地址',
  `file_type` varchar(20) DEFAULT NULL COMMENT '文档类型（folder:文件夹 excel:excel doc:word ppt:ppt image:图片  archive:其他文档 video:视频 pdf:pdf）',
  `store_type` varchar(20) DEFAULT NULL COMMENT '文件上传类型(temp/本地上传(临时文件) manage/知识库)',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级id',
  `tenant_id` varchar(100) DEFAULT NULL COMMENT '租户id',
  `file_size` double(13,2) DEFAULT NULL COMMENT '文件大小（kb）',
  `iz_folder` varchar(2) DEFAULT NULL COMMENT '是否文件夹(1：是  0：否)',
  `iz_root_folder` varchar(2) DEFAULT NULL COMMENT '是否为1级文件夹，允许为空 (1：是 )',
  `iz_star` varchar(2) DEFAULT NULL COMMENT '是否标星(1：是  0：否)',
  `down_count` int(11) DEFAULT NULL COMMENT '下载次数',
  `read_count` int(11) DEFAULT NULL COMMENT '阅读次数',
  `share_url` varchar(255) DEFAULT NULL COMMENT '分享链接',
  `share_perms` varchar(2) DEFAULT NULL COMMENT '分享权限(1.关闭分享 2.允许所有联系人查看 3.允许任何人查看)',
  `enable_down` varchar(2) DEFAULT NULL COMMENT '是否允许下载(1：是  0：否)',
  `enable_updat` varchar(2) DEFAULT NULL COMMENT '是否允许修改(1：是  0：否)',
  `del_flag` varchar(2) DEFAULT NULL COMMENT '删除状态(0-正常,1-删除至回收站)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_tenant_id` (`tenant_id`) USING BTREE,
  KEY `index_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='知识库-文档管理';


-- smart_warehouse.sys_fill_rule definition

CREATE TABLE `sys_fill_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键ID',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_class` varchar(100) DEFAULT NULL COMMENT '规则实现类',
  `rule_params` varchar(200) DEFAULT NULL COMMENT '规则参数',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sfr_rule_code` (`rule_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_flow definition

CREATE TABLE `sys_flow` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `flow_no` varchar(100) NOT NULL COMMENT '流程号',
  `flow_name` varchar(200) NOT NULL COMMENT '流程名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='流程表';


-- smart_warehouse.sys_flow_approve_record definition

CREATE TABLE `sys_flow_approve_record` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `approve_id` varchar(100) NOT NULL COMMENT '审批ID',
  `business_id` varchar(50) NOT NULL COMMENT '业务ID',
  `prev_node_id` varchar(200) NOT NULL COMMENT '上一步流程节点ID',
  `current_node_id` varchar(200) NOT NULL COMMENT '当前流程节点ID',
  `node_action` varchar(100) NOT NULL COMMENT '动作：1=通过，2=驳回',
  `approver_id` varchar(100) NOT NULL COMMENT '审批人ID',
  `approver` varchar(100) NOT NULL COMMENT '审批人姓名',
  `approval_time` datetime DEFAULT NULL COMMENT '审批日期',
  `opinion` varchar(2000) DEFAULT NULL COMMENT '审批意见',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='审批操作记录表';


-- smart_warehouse.sys_flow_line definition

CREATE TABLE `sys_flow_line` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `sn` int(5) NOT NULL COMMENT '序号',
  `flow_no` varchar(100) NOT NULL COMMENT '流程号',
  `prev_node_id` varchar(200) NOT NULL COMMENT '上一步流程节点ID',
  `current_node_id` varchar(200) NOT NULL COMMENT '当前流程节点ID',
  `current_node_name` varchar(100) NOT NULL COMMENT '当前流程节点名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='流程线表';


-- smart_warehouse.sys_flow_node definition

CREATE TABLE `sys_flow_node` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `sn` int(3) DEFAULT NULL COMMENT '排序',
  `flow_no` varchar(100) NOT NULL COMMENT '流程号',
  `flow_name` varchar(100) NOT NULL COMMENT '流程名称',
  `flow_node_name` varchar(200) NOT NULL COMMENT '流程节点名称',
  `flow_node_role` varchar(200) NOT NULL COMMENT '流程节点角色名称',
  `flow_node_type` varchar(5) NOT NULL DEFAULT '2' COMMENT '流程节点类型：1=起始节点、2=普通节点、3=结束节点',
  `default_approver_id` varchar(50) NOT NULL COMMENT '默认审批人ID',
  `default_approver` varchar(50) DEFAULT NULL COMMENT '默认审批人',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='流程节点表';


-- smart_warehouse.sys_flow_role_user definition

CREATE TABLE `sys_flow_role_user` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `flow_role_name` varchar(200) NOT NULL COMMENT '流程角色名称',
  `user_id` varchar(100) NOT NULL COMMENT '用户ID',
  `dep_id` varchar(100) NOT NULL COMMENT '部门ID',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='流程角色用户表';


-- smart_warehouse.sys_form_file definition

CREATE TABLE `sys_form_file` (
  `id` varchar(32) NOT NULL,
  `table_name` varchar(50) NOT NULL COMMENT '表名',
  `table_data_id` varchar(32) NOT NULL COMMENT '数据id',
  `file_id` varchar(32) DEFAULT NULL COMMENT '关联文件id',
  `file_type` varchar(20) DEFAULT NULL COMMENT '文件类型(text:文本, excel:excel doc:word ppt:ppt image:图片  archive:其他文档 video:视频 pdf:pdf）)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_table_form` (`table_name`,`table_data_id`) USING BTREE,
  KEY `index_file_id` (`file_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_gateway_route definition

CREATE TABLE `sys_gateway_route` (
  `id` varchar(36) NOT NULL,
  `router_id` varchar(50) DEFAULT NULL COMMENT '路由ID',
  `name` varchar(32) DEFAULT NULL COMMENT '服务名',
  `uri` varchar(32) DEFAULT NULL COMMENT '服务地址',
  `predicates` text COMMENT '断言',
  `filters` text COMMENT '过滤器',
  `retryable` int(3) DEFAULT NULL COMMENT '是否重试:0-否 1-是',
  `strip_prefix` int(3) DEFAULT NULL COMMENT '是否忽略前缀0-否 1-是',
  `persistable` int(3) DEFAULT NULL COMMENT '是否为保留数据:0-否 1-是',
  `show_api` int(3) DEFAULT NULL COMMENT '是否在接口文档中展示:0-否 1-是',
  `status` int(3) DEFAULT NULL COMMENT '状态:0-无效 1-有效',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


-- smart_warehouse.sys_log definition

CREATE TABLE `sys_log` (
  `id` varchar(32) NOT NULL,
  `log_type` int(3) DEFAULT NULL COMMENT '日志类型（1登录日志，2操作日志, 3.租户操作日志）',
  `log_content` varchar(1000) DEFAULT NULL COMMENT '日志内容',
  `operate_type` int(2) DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) DEFAULT NULL COMMENT '操作用户账号',
  `username` varchar(100) DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext COMMENT '请求参数',
  `request_type` varchar(10) DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `tenant_id` int(10) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sl_userid` (`userid`) USING BTREE,
  KEY `idx_sl_log_type` (`log_type`) USING BTREE,
  KEY `idx_sl_operate_type` (`operate_type`) USING BTREE,
  KEY `idx_sl_create_time` (`create_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统日志表';


-- smart_warehouse.sys_permission definition

CREATE TABLE `sys_permission` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父id',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) DEFAULT NULL COMMENT '路径',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `component_name` varchar(255) DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8,2) DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `is_leaf` tinyint(1) DEFAULT NULL COMMENT '是否叶子节点:    1是0否',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` int(2) DEFAULT '0' COMMENT '是否隐藏路由: 0否,1是',
  `hide_tab` int(2) DEFAULT NULL COMMENT '是否隐藏tab: 0否,1是',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT '0' COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int(3) DEFAULT '0' COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_menu_type` (`menu_type`) USING BTREE,
  KEY `index_menu_hidden` (`hidden`) USING BTREE,
  KEY `index_menu_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';


-- smart_warehouse.sys_permission_data_rule definition

CREATE TABLE `sys_permission_data_rule` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `rule_name` varchar(50) DEFAULT NULL COMMENT '规则名称',
  `rule_column` varchar(50) DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(50) DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) DEFAULT NULL COMMENT '规则值',
  `status` varchar(3) DEFAULT NULL COMMENT '权限有效状态1有0否',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_spdr_permission_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_permission_v2 definition

CREATE TABLE `sys_permission_v2` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父id',
  `name` varchar(100) DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) DEFAULT NULL COMMENT '路径',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `component_name` varchar(100) DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8,2) DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `is_leaf` tinyint(1) DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` tinyint(1) DEFAULT '0' COMMENT '是否隐藏路由: 0否,1是',
  `hide_tab` tinyint(1) DEFAULT NULL COMMENT '是否隐藏tab: 0否,1是',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int(3) DEFAULT '0' COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sp_parent_id` (`parent_id`) USING BTREE,
  KEY `idx_sp_is_route` (`is_route`) USING BTREE,
  KEY `idx_sp_is_leaf` (`is_leaf`) USING BTREE,
  KEY `idx_sp_sort_no` (`sort_no`) USING BTREE,
  KEY `idx_sp_del_flag` (`del_flag`) USING BTREE,
  KEY `idx_sp_menu_type` (`menu_type`) USING BTREE,
  KEY `idx_sp_hidden` (`hidden`) USING BTREE,
  KEY `idx_sp_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';


-- smart_warehouse.sys_position definition

CREATE TABLE `sys_position` (
  `id` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '职务编码',
  `name` varchar(100) DEFAULT NULL COMMENT '职务名称',
  `post_rank` varchar(2) DEFAULT NULL COMMENT '职级',
  `company_id` varchar(255) DEFAULT NULL COMMENT '公司id',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '组织机构编码',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_quartz_job definition

CREATE TABLE `sys_quartz_job` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(1) DEFAULT NULL COMMENT '删除状态',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `job_class_name` varchar(255) DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) DEFAULT NULL COMMENT '参数',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` int(1) DEFAULT NULL COMMENT '状态 0正常 -1停止',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_role definition

CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) NOT NULL COMMENT '角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_role_role_code` (`role_code`) USING BTREE,
  KEY `idx_sr_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';


-- smart_warehouse.sys_role_index definition

CREATE TABLE `sys_role_index` (
  `id` varchar(32) NOT NULL,
  `role_code` varchar(50) DEFAULT NULL COMMENT '角色编码',
  `url` varchar(100) DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '组件',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `priority` int(11) DEFAULT '0' COMMENT '优先级',
  `status` varchar(2) CHARACTER SET utf8 DEFAULT '0' COMMENT '状态0:无效 1:有效',
  `create_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色首页表';


-- smart_warehouse.sys_role_permission definition

CREATE TABLE `sys_role_permission` (
  `id` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(100) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_srp_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  KEY `idx_srp_role_id` (`role_id`) USING BTREE,
  KEY `idx_srp_permission_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色权限表';


-- smart_warehouse.sys_sms definition

CREATE TABLE `sys_sms` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `es_title` varchar(100) DEFAULT NULL COMMENT '消息标题',
  `es_type` varchar(50) DEFAULT NULL COMMENT '发送方式：参考枚举MessageTypeEnum',
  `es_receiver` varchar(50) DEFAULT NULL COMMENT '接收人',
  `es_param` varchar(1000) DEFAULT NULL COMMENT '发送所需参数Json格式',
  `es_content` longtext COMMENT '推送内容',
  `es_send_time` datetime DEFAULT NULL COMMENT '推送时间',
  `es_send_status` varchar(1) DEFAULT NULL COMMENT '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
  `es_send_num` int(11) DEFAULT NULL COMMENT '发送次数 超过5次不再发送',
  `es_result` varchar(255) DEFAULT NULL COMMENT '推送失败原因',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_ss_es_type` (`es_type`) USING BTREE,
  KEY `idx_ss_es_receiver` (`es_receiver`) USING BTREE,
  KEY `idx_ss_es_send_time` (`es_send_time`) USING BTREE,
  KEY `idx_ss_es_send_status` (`es_send_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_sms_template definition

CREATE TABLE `sys_sms_template` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `template_name` varchar(50) DEFAULT NULL COMMENT '模板标题',
  `template_code` varchar(32) NOT NULL COMMENT '模板CODE',
  `template_type` varchar(1) NOT NULL COMMENT '模板类型：1短信 2邮件 3微信',
  `template_content` varchar(1000) NOT NULL COMMENT '模板内容',
  `template_test_json` varchar(1000) DEFAULT NULL COMMENT '模板测试json',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `use_status` varchar(1) DEFAULT NULL COMMENT '是否使用中 1是0否',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sst_template_code` (`template_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_tenant definition

CREATE TABLE `sys_tenant` (
  `id` int(10) NOT NULL COMMENT '租户编码',
  `name` varchar(100) DEFAULT NULL COMMENT '租户名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `status` int(1) DEFAULT NULL COMMENT '状态 1正常 0冻结',
  `trade` varchar(10) DEFAULT NULL COMMENT '所属行业',
  `company_size` varchar(10) DEFAULT NULL COMMENT '公司规模',
  `company_address` varchar(100) DEFAULT NULL COMMENT '公司地址',
  `company_logo` varchar(200) DEFAULT NULL COMMENT '公司logo',
  `house_number` varchar(10) DEFAULT NULL COMMENT '门牌号',
  `work_place` varchar(100) CHARACTER SET utf32 DEFAULT NULL COMMENT '工作地点',
  `secondary_domain` varchar(50) DEFAULT NULL COMMENT '二级域名',
  `login_bkgd_img` varchar(200) DEFAULT NULL COMMENT '登录背景图片',
  `position` varchar(10) DEFAULT NULL COMMENT '职级',
  `department` varchar(10) DEFAULT NULL COMMENT '部门',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态(0-正常,1-已删除)',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `apply_status` int(3) DEFAULT NULL COMMENT '允许申请管理员 1允许 0不允许',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='多租户信息表';


-- smart_warehouse.sys_tenant_pack definition

CREATE TABLE `sys_tenant_pack` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `tenant_id` int(10) DEFAULT NULL COMMENT '租户id',
  `pack_name` varchar(20) DEFAULT NULL COMMENT '产品包名',
  `status` varchar(1) DEFAULT NULL COMMENT '开启状态(0 未开启 1开启)',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` date DEFAULT NULL COMMENT '更新时间',
  `pack_code` varchar(50) DEFAULT NULL COMMENT '编码,默认添加的三个管理员需要设置编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='租户产品包';


-- smart_warehouse.sys_tenant_pack_perms definition

CREATE TABLE `sys_tenant_pack_perms` (
  `id` varchar(32) NOT NULL COMMENT '主键编号',
  `pack_id` varchar(32) DEFAULT NULL COMMENT '租户产品包名称',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '菜单id',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='租户产品包和菜单关系表';


-- smart_warehouse.sys_tenant_pack_user definition

CREATE TABLE `sys_tenant_pack_user` (
  `id` varchar(32) NOT NULL,
  `pack_id` varchar(32) DEFAULT NULL COMMENT '租户产品包ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `tenant_id` int(10) DEFAULT NULL COMMENT '租户ID',
  `create_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(3) DEFAULT NULL COMMENT '状态 正常状态1 申请状态0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='租户套餐人员表';


-- smart_warehouse.sys_third_account definition

CREATE TABLE `sys_third_account` (
  `id` varchar(32) NOT NULL COMMENT '编号',
  `sys_user_id` varchar(32) DEFAULT NULL COMMENT '第三方登录id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态(1-正常,2-冻结)',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `third_user_uuid` varchar(100) DEFAULT NULL COMMENT '第三方账号',
  `third_user_id` varchar(100) DEFAULT NULL COMMENT '第三方app用户账号',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `third_type` varchar(50) DEFAULT NULL COMMENT '登录来源',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_third_account_third_type_third_user_id` (`third_type`,`third_user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_user definition

CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `username` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户数字ID',
  `card_no` varchar(100) DEFAULT NULL COMMENT '用户卡号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `org_code` varchar(64) DEFAULT NULL COMMENT '登录会话的机构编码',
  `status` tinyint(1) DEFAULT NULL COMMENT '性别(1-正常,2-冻结)',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `third_id` varchar(100) DEFAULT NULL COMMENT '第三方登录的唯一标识',
  `third_type` varchar(100) DEFAULT NULL COMMENT '第三方类型',
  `activiti_sync` tinyint(1) DEFAULT NULL COMMENT '同步工作流引擎(1-同步,0-不同步)',
  `work_no` varchar(100) DEFAULT NULL COMMENT '工号，唯一键',
  `post` varchar(100) DEFAULT NULL COMMENT '职务，关联职务表',
  `telephone` varchar(45) DEFAULT NULL COMMENT '座机号',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_identity` tinyint(1) DEFAULT NULL COMMENT '身份（1普通成员 2上级）',
  `depart_ids` varchar(1000) DEFAULT NULL COMMENT '负责部门',
  `client_id` varchar(64) DEFAULT NULL COMMENT '设备ID',
  `login_tenant_id` int(11) DEFAULT NULL COMMENT '上次登录选择租户ID',
  `bpm_status` varchar(2) DEFAULT NULL COMMENT '流程入职离职状态',
  `sync_status` varchar(3) NOT NULL DEFAULT '0' COMMENT '同步状态：0=未同步，1=已同步用户信息，2=已同步用户信息并设置柜格权限',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_work_no` (`work_no`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_username` (`username`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_phone` (`phone`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_email` (`email`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_card_no` (`card_no`),
  KEY `idx_su_username` (`username`) USING BTREE,
  KEY `idx_su_status` (`status`) USING BTREE,
  KEY `idx_su_del_flag` (`del_flag`) USING BTREE,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10965 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';


-- smart_warehouse.sys_user_agent definition

CREATE TABLE `sys_user_agent` (
  `id` varchar(32) NOT NULL COMMENT '序号',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `agent_user_name` varchar(100) DEFAULT NULL COMMENT '代理人用户名',
  `start_time` datetime DEFAULT NULL COMMENT '代理开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '代理结束时间',
  `status` varchar(2) DEFAULT NULL COMMENT '状态0无效1有效',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sug_user_name` (`user_name`) USING BTREE,
  KEY `idx_sug_status` (`status`) USING BTREE,
  KEY `idx_sug_start_time` (`start_time`) USING BTREE,
  KEY `idx_sug_end_time` (`end_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户代理人设置';


-- smart_warehouse.sys_user_depart definition

CREATE TABLE `sys_user_depart` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `dep_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `idx_sud_user_id` (`user_id`) USING BTREE,
  KEY `idx_sud_dep_id` (`dep_id`) USING BTREE,
  KEY `idx_sud_user_dep_id` (`user_id`,`dep_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.sys_user_role definition

CREATE TABLE `sys_user_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sur_user_id` (`user_id`) USING BTREE,
  KEY `idx_sur_role_id` (`role_id`) USING BTREE,
  KEY `idx_sur_user_role_id` (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';


-- smart_warehouse.sys_user_tenant definition

CREATE TABLE `sys_user_tenant` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `tenant_id` int(10) DEFAULT NULL COMMENT '租户id',
  `status` varchar(1) DEFAULT NULL COMMENT '状态(1 正常 2 离职 3 待审核 4 审核未通过)',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sut_user_id` (`user_id`) USING BTREE,
  KEY `idx_sut_tenant_id` (`tenant_id`) USING BTREE,
  KEY `uniq_sut_user_rel_tenant` (`user_id`,`tenant_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户租户关系表';


-- smart_warehouse.tool_measure definition

CREATE TABLE `tool_measure` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `erp_no` varchar(50) DEFAULT NULL COMMENT 'ERP编码',
  `tool_name` varchar(200) DEFAULT NULL COMMENT '名称',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `brand_name` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `expire_time` datetime DEFAULT NULL COMMENT '有效期',
  `gap` int(3) unsigned NOT NULL COMMENT '确认间隔',
  `tool_code` varchar(50) DEFAULT NULL COMMENT '编码',
  `check_month` varchar(50) DEFAULT NULL COMMENT '校检月份',
  `category` varchar(50) DEFAULT NULL COMMENT '类别',
  `warehouse` varchar(50) DEFAULT NULL COMMENT '所属库房',
  `picking_time` datetime DEFAULT NULL COMMENT '领用日期',
  `check_org` varchar(50) DEFAULT NULL COMMENT '校准部门',
  `accuracy` varchar(100) DEFAULT NULL COMMENT '准确度：等级或分度值',
  `location` varchar(100) DEFAULT NULL COMMENT '设备位置',
  `controlled_state` varchar(1) DEFAULT '0' COMMENT '管理状态：1=借领、2=送检、3=在库、4=维修、5=待检、6=禁用、7=报废、8=遗失、9=封存',
  `status` varchar(1) DEFAULT '0' COMMENT '状态：0=正常、1=当月到期、2=已到期',
  `remark` text COMMENT '备注',
  `work_no` varchar(50) DEFAULT NULL COMMENT '工号',
  `borrower` varchar(50) DEFAULT NULL COMMENT '借领人',
  `workshop` varchar(50) DEFAULT NULL COMMENT '车间',
  `class_group` varchar(50) DEFAULT NULL COMMENT '班组',
  `give_time` datetime DEFAULT NULL COMMENT '送检时间',
  `signature1` varchar(50) DEFAULT NULL COMMENT '送检签名',
  `take_time` datetime DEFAULT NULL COMMENT '取回时间',
  `signature2` varchar(50) DEFAULT NULL COMMENT '取回签名',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工具计量表';


-- smart_warehouse.qrtz_triggers definition

CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.qrtz_blob_triggers definition

CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.qrtz_cron_triggers definition

CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.qrtz_simple_triggers definition

CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- smart_warehouse.qrtz_simprop_triggers definition

CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

CREATE DATABASE `stcm`;

USE `stcm`;

-- stcm.apply_depart definition

CREATE TABLE `apply_depart` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `apply_id` varchar(32) NOT NULL COMMENT '物料申请id',
  `dep_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `flag` int(1) DEFAULT NULL COMMENT '标识：1=用于物料申请，2=用于物料申请计划申报详情',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `idx_ap_apply_id` (`apply_id`) USING BTREE,
  KEY `idx_ap_dep_id` (`dep_id`) USING BTREE,
  KEY `idx_ap_apply_dep_id` (`apply_id`,`dep_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='物料申请部门关联表';


-- stcm.cabinet_cell definition

CREATE TABLE `cabinet_cell` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `cell_no` varchar(100) NOT NULL COMMENT '格子编码',
  `cell_id` int(5) DEFAULT NULL COMMENT '格子ID',
  `cell_index` int(5) NOT NULL DEFAULT '0' COMMENT '格子排序',
  `cell_name` varchar(100) NOT NULL COMMENT '格子名称',
  `goods_id` varchar(100) DEFAULT NULL COMMENT '物品ID',
  `goods_code` varchar(100) DEFAULT NULL COMMENT '物品编码',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `goods_spec` varchar(200) DEFAULT NULL COMMENT '物品规格',
  `goods_brand_name` varchar(100) DEFAULT NULL COMMENT '物品品牌名称',
  `goods_image` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `in_quantity` int(10) DEFAULT NULL COMMENT '入数量',
  `in_time` varchar(100) DEFAULT NULL COMMENT '入时间',
  `out_quantity` int(10) DEFAULT NULL COMMENT '出数量',
  `out_time` varchar(100) DEFAULT NULL COMMENT '出时间',
  `current_quantity` int(10) DEFAULT NULL COMMENT '当前数量',
  `threshold_quantity` int(10) DEFAULT NULL COMMENT '缺料阈值',
  `current_weight` decimal(8,3) DEFAULT NULL COMMENT '当前重量',
  `unit_weight` decimal(8,3) DEFAULT NULL COMMENT '单位重量',
  `status` varchar(1) DEFAULT '0' COMMENT '格子状态：1=充足、2=缺料、3=空柜',
  `send_lack_flag` tinyint(2) DEFAULT '0' COMMENT '发送不足消息，0=不发送、1=待发送、2=已发送',
  `send_empty_flag` tinyint(2) DEFAULT '0' COMMENT '发送已空消息，0=不发送、1=待发送、2=已发送',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_cell_no` (`cell_no`),
  UNIQUE KEY `uniq_cell_id` (`cell_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能工具柜柜格表';


-- stcm.cabinet_msg_log definition

CREATE TABLE `cabinet_msg_log` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `cell_no` varchar(20) NOT NULL COMMENT '格子编码',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `flag` tinyint(2) NOT NULL COMMENT '发送标记【1=不足、2=已空】',
  `receiver` text COMMENT '接收者',
  `message` text COMMENT '消息内容',
  `extra` varchar(500) DEFAULT NULL COMMENT '附加信息',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能工具柜消息日志表';


-- stcm.crimping_measure definition

CREATE TABLE `crimping_measure` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `erp_no` varchar(50) DEFAULT NULL COMMENT 'ERP编码',
  `crimping_name` varchar(200) DEFAULT NULL COMMENT '名称',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `brand_name` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `expire_time` datetime DEFAULT NULL COMMENT '有效期',
  `cycle` varchar(20) DEFAULT NULL COMMENT '周期',
  `crimping_code` varchar(50) DEFAULT NULL COMMENT '总代码',
  `org_code` varchar(50) DEFAULT NULL COMMENT '部门代码',
  `company_code` varchar(50) DEFAULT NULL COMMENT '公司代码',
  `connector_type` varchar(200) DEFAULT NULL COMMENT '接线头类型',
  `storage_time` datetime DEFAULT NULL COMMENT '入库时间',
  `controlled_state` varchar(1) DEFAULT '0' COMMENT '管理状态：1=借领、2=送检、3=在库、4=维修、5=待检、6=禁用、7=报废、8=遗失、9=封存',
  `status` varchar(1) DEFAULT '0' COMMENT '状态：0=正常、1=当月到期、2=已到期',
  `remark` text COMMENT '备注',
  `work_no` varchar(50) DEFAULT NULL COMMENT '工号',
  `borrower` varchar(50) DEFAULT NULL COMMENT '借领人',
  `workshop` varchar(50) DEFAULT NULL COMMENT '车间',
  `class_group` varchar(50) DEFAULT NULL COMMENT '班组',
  `give_time` datetime DEFAULT NULL COMMENT '送检时间',
  `signature1` varchar(50) DEFAULT NULL COMMENT '送检签名',
  `take_time` datetime DEFAULT NULL COMMENT '取回时间',
  `signature2` varchar(50) DEFAULT NULL COMMENT '取回签名',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='压线钳计量表';


-- stcm.demo definition

CREATE TABLE `demo` (
  `id` varchar(50) NOT NULL COMMENT '主键ID',
  `name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `key_word` varchar(255) DEFAULT NULL COMMENT '关键词',
  `punch_time` datetime DEFAULT NULL COMMENT '打卡时间',
  `salary_money` decimal(10,3) DEFAULT NULL COMMENT '工资',
  `bonus_money` double(10,2) DEFAULT NULL COMMENT '奖金',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别 {男:1,女:2}',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `content` varchar(1000) DEFAULT NULL COMMENT '个人简介',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门编码',
  `tenant_id` int(10) DEFAULT '0',
  `update_count` int(11) DEFAULT NULL COMMENT '乐观锁测试',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.imp_location definition

CREATE TABLE `imp_location` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `warehouse_id` varchar(100) NOT NULL COMMENT '仓库ID',
  `warehouse_code` varchar(50) NOT NULL COMMENT '仓位编码',
  `warehouse_name` varchar(100) NOT NULL COMMENT '仓库名称',
  `code` varchar(50) NOT NULL COMMENT '仓位编码',
  `name` varchar(100) DEFAULT NULL COMMENT '仓位名称',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库仓位';


-- stcm.imp_ordini definition

CREATE TABLE `imp_ordini` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `ord_ordine` varchar(50) NOT NULL COMMENT '指令号 （主键）',
  `ord_des` varchar(50) DEFAULT NULL COMMENT '拣货单据号',
  `ord_tipoop` varchar(5) DEFAULT NULL COMMENT '指令类别：（P=出库；V=入库；I=直接修改库存/盘点）',
  `ord_cliente` varchar(50) DEFAULT NULL COMMENT '项目名称',
  `ord_project_code` varchar(50) DEFAULT NULL COMMENT '项目号',
  `source` varchar(10) DEFAULT NULL COMMENT '数据来源：wms=WMS系统、mes=MES系统、user=用户手动添加',
  `location_no` varchar(50) DEFAULT NULL COMMENT '仓位编码',
  `location_name` varchar(50) DEFAULT NULL COMMENT '仓位名称',
  `status` varchar(1) DEFAULT '0' COMMENT '0=待确认，1=已确认',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_ord_ordine` (`ord_ordine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='出入库单据';


-- stcm.imp_ordini_inventory definition

CREATE TABLE `imp_ordini_inventory` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `rig_ordine` varchar(50) NOT NULL COMMENT '指令号 （与指令头关联）',
  `rig_tipoop` varchar(5) DEFAULT NULL COMMENT '指令类别：（P=出库；V=入库；I=直接修改库存/盘点）',
  `rig_project_code` varchar(50) DEFAULT NULL COMMENT '项目号',
  `rig_articolo` varchar(50) DEFAULT NULL COMMENT '物料编码',
  `rig_sub1` varchar(50) DEFAULT NULL COMMENT '车号',
  `rig_sub2` varchar(50) DEFAULT NULL COMMENT '节车号',
  `rig_tipoconf` varchar(50) DEFAULT NULL COMMENT '工作中心',
  `rig_qtar` decimal(11,3) DEFAULT NULL COMMENT '数量',
  `rig_stamate` varchar(50) DEFAULT NULL COMMENT '班组',
  `rig_hostinf` varchar(50) DEFAULT NULL COMMENT '工序编码',
  `rig_req_note` varchar(50) DEFAULT NULL COMMENT '工序',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库库存明细表';


-- stcm.imp_ordini_righe definition

CREATE TABLE `imp_ordini_righe` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `rig_ordine` varchar(50) NOT NULL COMMENT '指令号 （与指令头关联）',
  `rig_articolo` varchar(50) DEFAULT NULL COMMENT '物料编码',
  `rig_sub1` varchar(50) DEFAULT NULL COMMENT '车号',
  `rig_sub2` varchar(50) DEFAULT NULL COMMENT '项目号',
  `rig_tipoconf` varchar(50) DEFAULT NULL COMMENT '节车号',
  `rig_qtar` decimal(11,3) DEFAULT NULL COMMENT '要求数量',
  `rig_conferma_auto` varchar(5) DEFAULT NULL COMMENT '确认标识(第一行填0；其他行填1)',
  `rig_putin_tiposco` varchar(20) DEFAULT NULL COMMENT '库位类型：项目=SC001，物料=SC999',
  `rig_stamate` varchar(50) DEFAULT NULL COMMENT '班组',
  `rig_req_note` varchar(50) DEFAULT NULL COMMENT '工序',
  `rig_hostinf` varchar(50) DEFAULT NULL COMMENT '工序编码',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='出入库单据明细';


-- stcm.imp_warehouse definition

CREATE TABLE `imp_warehouse` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT '仓库编码',
  `name` varchar(100) DEFAULT NULL COMMENT '仓库名称',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='智能立库仓库';


-- stcm.inventory definition

CREATE TABLE `inventory` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `inventory_no` varchar(100) NOT NULL COMMENT '库存号',
  `goods_id` varchar(100) DEFAULT NULL COMMENT '物品ID',
  `goods_code` varchar(100) NOT NULL COMMENT '物品编码',
  `goods_name` varchar(200) NOT NULL COMMENT '物品名称',
  `in_quantity` int(10) DEFAULT NULL COMMENT '入库数量',
  `in_time` datetime DEFAULT NULL COMMENT '入库时间',
  `out_quantity` int(10) DEFAULT NULL COMMENT '出库数量',
  `out_time` datetime DEFAULT NULL COMMENT '出库时间',
  `current_stock` int(10) DEFAULT NULL COMMENT '当前库存',
  `threshold_quantity` int(10) DEFAULT NULL COMMENT '库存阈值',
  `status` varchar(1) DEFAULT '0' COMMENT '物料状态：1=库存充足、2=库存不足',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料库存表';


-- stcm.jeecg_order_main definition

CREATE TABLE `jeecg_order_main` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `order_code` varchar(50) DEFAULT NULL COMMENT '订单号',
  `ctype` varchar(500) DEFAULT NULL COMMENT '订单类型',
  `order_date` datetime DEFAULT NULL COMMENT '订单日期',
  `order_money` double(10,3) DEFAULT NULL COMMENT '订单金额',
  `content` varchar(500) DEFAULT NULL COMMENT '订单备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `bpm_status` varchar(3) DEFAULT NULL COMMENT '流程状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.material_apply_record definition

CREATE TABLE `material_apply_record` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `material_id` varchar(100) DEFAULT NULL COMMENT '物料信息ID',
  `material_code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '中文名称',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `quantity` int(10) NOT NULL COMMENT '数量',
  `unit_name` varchar(100) DEFAULT NULL COMMENT '物料单位',
  `applicant_id` varchar(100) NOT NULL COMMENT '申请人用户ID',
  `applicant_name` varchar(100) NOT NULL COMMENT '申请人姓名',
  `depart_ids` varchar(2000) DEFAULT NULL COMMENT '领用班组id列表',
  `depart_names` varchar(2000) DEFAULT NULL COMMENT '领用班组',
  `apply_time` datetime NOT NULL COMMENT '申请时间',
  `use_time` datetime NOT NULL COMMENT '需求时间',
  `price` decimal(15,3) DEFAULT NULL COMMENT '申请时的物料价格',
  `use_desc` varchar(2000) DEFAULT NULL COMMENT '用途说明',
  `tech_desc` varchar(2000) DEFAULT NULL COMMENT '技术要求说明',
  `next_quarter_output` int(10) DEFAULT NULL COMMENT '下季度产量',
  `create_flag` varchar(5) DEFAULT '1' COMMENT '创建标识：1-申请时创建、2-计划时创建',
  `user_id` varchar(50) DEFAULT NULL COMMENT '使用人ID',
  `real_name` varchar(50) DEFAULT NULL COMMENT '使用人姓名',
  `work_station_code` varchar(20) DEFAULT NULL COMMENT '工位编码',
  `work_station` varchar(50) DEFAULT NULL COMMENT '工位',
  `project_code` varchar(20) DEFAULT NULL COMMENT '项目编码',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `opinion` varchar(2000) DEFAULT NULL COMMENT '审核意见',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '1' COMMENT '申请状态：1-申请中、2-已提审、3-采购中、4-已完成',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料申请记录';


-- stcm.material_brand definition

CREATE TABLE `material_brand` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `brand_name` varchar(200) NOT NULL COMMENT '品牌名称',
  `vendor_name` varchar(200) NOT NULL COMMENT '供应商或厂家名称',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料品牌';


-- stcm.material_category definition

CREATE TABLE `material_category` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `category_code` varchar(100) NOT NULL COMMENT '分类编码',
  `category_name` varchar(200) NOT NULL COMMENT '分类名称',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料类别';


-- stcm.material_history_price definition

CREATE TABLE `material_history_price` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `material_id` varchar(100) NOT NULL COMMENT '物料信息ID',
  `material_code` varchar(100) NOT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '物料名称',
  `spec_model` varchar(100) DEFAULT NULL COMMENT '规格型号',
  `price` decimal(15,3) DEFAULT NULL COMMENT '价格',
  `price_tax` decimal(15,3) DEFAULT NULL COMMENT '含税价格',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料历史价格表';


-- stcm.material_info definition

CREATE TABLE `material_info` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '物料编码',
  `name` varchar(200) NOT NULL COMMENT '中文名称',
  `name_en` varchar(200) DEFAULT NULL COMMENT '名称',
  `alias` varchar(200) DEFAULT NULL COMMENT '别名',
  `price` decimal(15,3) DEFAULT NULL COMMENT '价格',
  `price_tax` decimal(15,3) DEFAULT NULL COMMENT '含税价格',
  `category_id` varchar(100) DEFAULT NULL COMMENT '所属分类',
  `category_name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `spec_id` varchar(100) DEFAULT NULL COMMENT '所属规格',
  `spec_model` varchar(100) DEFAULT NULL COMMENT '规格型号',
  `unit_id` varchar(100) DEFAULT NULL COMMENT '所属单位',
  `unit_name` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `brand_id` varchar(100) DEFAULT NULL COMMENT '所属品牌',
  `brand_name` varchar(100) DEFAULT NULL COMMENT '品牌名称',
  `product_code` varchar(100) DEFAULT NULL COMMENT '商品编码',
  `picking_frequency` varchar(1) DEFAULT NULL COMMENT '领用频率: 0-低、1-中、2-高',
  `price_source` varchar(200) DEFAULT NULL COMMENT '预算价格来源',
  `apply_source` varchar(200) DEFAULT NULL COMMENT '申报来源',
  `purchase_source` varchar(200) DEFAULT NULL COMMENT '采购途径',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '状态：0-启用、1-禁用',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_mi_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料信息表';


-- stcm.material_picking_record definition

CREATE TABLE `material_picking_record` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `material_id` varchar(100) NOT NULL COMMENT '物料信息ID',
  `material_code` varchar(100) NOT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '中文名称',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '物料规格',
  `unit_name` varchar(100) DEFAULT NULL COMMENT '物料单位',
  `quantity` int(10) DEFAULT NULL COMMENT '数量',
  `cell_no` varchar(100) DEFAULT NULL COMMENT '柜格编码',
  `project_code` varchar(100) DEFAULT NULL COMMENT '项目号',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `train_model_code` varchar(100) DEFAULT NULL COMMENT '车号',
  `train_node_code` varchar(100) DEFAULT NULL COMMENT '节车号',
  `picking_before_quantity` int(10) DEFAULT NULL COMMENT '领取前数量',
  `picking_after_quantity` int(10) DEFAULT NULL COMMENT '领取后数量',
  `user_id` varchar(100) DEFAULT NULL COMMENT '领料人ID',
  `username` varchar(100) DEFAULT NULL COMMENT '领料人姓名',
  `work_no` varchar(20) DEFAULT NULL COMMENT '工号',
  `work_station_code` varchar(50) DEFAULT NULL COMMENT '工位编码',
  `work_station` varchar(50) DEFAULT NULL COMMENT '工位',
  `picking_time` datetime DEFAULT NULL COMMENT '领料时间',
  `price` decimal(15,3) DEFAULT NULL COMMENT '物料价格',
  `status` varchar(10) DEFAULT '0' COMMENT '状态：0=未归还、1=已归还',
  `source` varchar(3) DEFAULT NULL COMMENT '领用来源：1=当前系统，2=智能工具柜',
  `request_id` varchar(50) DEFAULT NULL COMMENT '请求ID：工具柜回调判重',
  `picking_rule_id` varchar(32) DEFAULT NULL COMMENT '领用规则ID',
  `picking_rule_info` varchar(500) DEFAULT NULL COMMENT '领用规则信息',
  `single_exceed` int(10) DEFAULT '0' COMMENT '单次领用是否超过限额：0=未超过、1<=超过',
  `total_exceed` int(10) DEFAULT '0' COMMENT '领用总数超过限额：0=未超过、1<=超过',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `request_id_unq` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='领料记录表';


-- stcm.material_picking_rule definition

CREATE TABLE `material_picking_rule` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `project_code` varchar(100) NOT NULL COMMENT '项目编号',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `train_node_code` varchar(100) NOT NULL COMMENT '节车号',
  `train_model_code` varchar(100) DEFAULT NULL COMMENT '车型编号',
  `material_code` varchar(50) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `once_quantity` int(10) DEFAULT '-1' COMMENT '单次领取数量：-1=无限制',
  `max_quantity` int(10) DEFAULT '-1' COMMENT '最大领取数量：-1=无限制',
  `status` varchar(1) DEFAULT '0' COMMENT '规则状态：1=启用、2=取消',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_rule_pmn` (`project_code`,`train_model_code`,`train_node_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='领料规则表';


-- stcm.material_placement_record definition

CREATE TABLE `material_placement_record` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `material_id` varchar(100) NOT NULL COMMENT '物料信息表ID',
  `material_code` varchar(100) NOT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '物料名称',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '物料规格',
  `quantity` int(10) DEFAULT NULL COMMENT '放料数量',
  `cell_no` varchar(100) DEFAULT NULL COMMENT '柜格编码',
  `in_before_quantity` int(10) DEFAULT NULL COMMENT '入柜前数量',
  `in_after_quantity` int(10) DEFAULT NULL COMMENT '入柜后数量',
  `user_id` varchar(100) DEFAULT NULL COMMENT '放料人ID',
  `username` varchar(100) DEFAULT NULL COMMENT '放料人姓名',
  `placement_time` datetime DEFAULT NULL COMMENT '放料时间',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='放料记录表';


-- stcm.material_recycle_record definition

CREATE TABLE `material_recycle_record` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `material_id` varchar(100) NOT NULL COMMENT '工具信息ID',
  `material_code` varchar(100) NOT NULL COMMENT '工具编码',
  `material_name` varchar(200) NOT NULL COMMENT '中文名称',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '规格',
  `unit_name` varchar(100) DEFAULT NULL COMMENT '单位',
  `quantity` int(10) DEFAULT NULL COMMENT '数量',
  `cell_no` varchar(100) DEFAULT NULL COMMENT '柜格编码',
  `user_id` varchar(100) DEFAULT NULL COMMENT '操作人ID',
  `username` varchar(100) DEFAULT NULL COMMENT '操作人姓名',
  `work_no` varchar(20) DEFAULT NULL COMMENT '工号',
  `work_station_code` varchar(50) DEFAULT NULL COMMENT '工位编码',
  `work_station` varchar(50) DEFAULT NULL COMMENT '工位',
  `recycle_time` datetime DEFAULT NULL COMMENT '回收时间',
  `remark` text COMMENT '备注',
  `request_id` varchar(50) NOT NULL COMMENT '请求ID',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `sync_status` tinyint(2) DEFAULT '0' COMMENT '同步状态：0=未同步、1=已同步',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='耗材回收记录表';


-- stcm.material_spec definition

CREATE TABLE `material_spec` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `spec_model` varchar(200) NOT NULL COMMENT '规格型号',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料规格';


-- stcm.material_unit definition

CREATE TABLE `material_unit` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `unit_name` varchar(200) NOT NULL COMMENT '单位中文名称',
  `unit_name_en` varchar(200) DEFAULT NULL COMMENT '单位英文名称',
  `remark` text COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '状态',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物料单位';


-- stcm.plan_report definition

CREATE TABLE `plan_report` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `report_no` varchar(200) NOT NULL COMMENT '申报表编号',
  `report_name` varchar(200) NOT NULL COMMENT '申报表名称',
  `report_time` datetime DEFAULT NULL COMMENT '申报日期',
  `depart_id` varchar(100) DEFAULT NULL COMMENT '申报部门id',
  `depart_name` varchar(200) DEFAULT NULL COMMENT '申报部门/单位名称',
  `author_id` varchar(100) DEFAULT NULL COMMENT '编制人ID',
  `author` varchar(100) DEFAULT NULL COMMENT '编制人姓名',
  `proofreader_id` varchar(100) DEFAULT NULL COMMENT '校对人ID',
  `proofreader` varchar(100) DEFAULT NULL COMMENT '校对人姓名',
  `auditor_id` varchar(100) DEFAULT NULL COMMENT '审核人ID',
  `auditor` varchar(100) DEFAULT NULL COMMENT '审核人姓名',
  `approver_id` varchar(100) DEFAULT NULL COMMENT '批准人ID',
  `approver` varchar(100) DEFAULT NULL COMMENT '批准人姓名',
  `tech_dep_id` varchar(2000) DEFAULT NULL COMMENT '工艺部意见人ID',
  `tech_dep_name` varchar(2000) DEFAULT NULL COMMENT '工艺部意见人姓名',
  `tech_dep_opinion` varchar(2000) DEFAULT NULL COMMENT '工艺部意见',
  `tech_group_id` varchar(100) DEFAULT NULL COMMENT '工艺组审核人ID',
  `tech_group` varchar(100) DEFAULT NULL COMMENT '工艺组审核人姓名',
  `tech_equipment_group_id` varchar(100) DEFAULT NULL COMMENT '工艺装备组审核人ID',
  `tech_equipment_group` varchar(100) DEFAULT NULL COMMENT '工艺装备组审核人姓名',
  `supervisor_id` varchar(100) DEFAULT NULL COMMENT '主管领导ID',
  `supervisor` varchar(100) DEFAULT NULL COMMENT '主管领导',
  `description` text COMMENT '申报说明',
  `total_quantity` int(10) DEFAULT NULL COMMENT '总数量',
  `total_price` decimal(15,3) DEFAULT NULL COMMENT '总价',
  `remark` text COMMENT '备注',
  `business_key` varchar(20) DEFAULT NULL COMMENT '业务key',
  `status` varchar(1) DEFAULT '0' COMMENT '状态：1-已申报、2-已审核、3-已完成、4-已取消',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_pr_report_no` (`report_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='计划申报表';


-- stcm.plan_report_approve definition

CREATE TABLE `plan_report_approve` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `sn` int(5) NOT NULL COMMENT '序号',
  `report_id` varchar(100) NOT NULL COMMENT '计划申报表ID',
  `report_no` varchar(100) NOT NULL COMMENT '计划申报表编码',
  `report_name` varchar(100) NOT NULL COMMENT '计划申报表名称',
  `flow_no` varchar(100) NOT NULL COMMENT '流程号',
  `flow_name` varchar(100) NOT NULL COMMENT '流程名称',
  `flow_node_id` varchar(100) NOT NULL COMMENT '流程节点ID',
  `flow_node_name` varchar(100) NOT NULL COMMENT '流程节点名称',
  `flow_node_type` varchar(5) NOT NULL DEFAULT '2' COMMENT '流程节点类型：1=起始节点、2=普通节点、3=结束节点',
  `approver_id` varchar(100) DEFAULT NULL COMMENT '审批人ID',
  `approver` varchar(100) DEFAULT NULL COMMENT '审批人姓名',
  `approval_time` datetime DEFAULT NULL COMMENT '审批日期',
  `opinion` varchar(2000) DEFAULT NULL COMMENT '审批意见',
  `status` varchar(1) DEFAULT '1' COMMENT '状态：1：审核中；2：待审核；3：通过；4：驳回',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='计划申报审批表';


-- stcm.plan_report_detail definition

CREATE TABLE `plan_report_detail` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `plan_report_id` varchar(100) NOT NULL COMMENT '计划申报ID',
  `sn` int(10) NOT NULL COMMENT '序号',
  `material_id` varchar(100) DEFAULT NULL COMMENT '物料信息ID',
  `material_code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '物料名称',
  `spec_id` varchar(100) DEFAULT NULL COMMENT '规格型号ID',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `brand_id` varchar(100) DEFAULT NULL COMMENT '品牌ID',
  `brand_name` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `unit_id` varchar(100) DEFAULT NULL COMMENT '单位ID',
  `unit_name` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `product_code` varchar(200) DEFAULT NULL COMMENT '商品编码',
  `quantity` int(10) DEFAULT NULL COMMENT '数量',
  `unit_price` decimal(15,3) DEFAULT NULL COMMENT '预算单价',
  `total_price` decimal(15,3) DEFAULT NULL COMMENT '预算总价',
  `inventory_quantity` int(10) DEFAULT NULL COMMENT '库存数量',
  `current_quarter_scrap` int(10) DEFAULT NULL COMMENT '本季度报废',
  `next_quarter_ration` int(10) DEFAULT NULL COMMENT '下季度定额',
  `ration_desc` varchar(2000) DEFAULT NULL COMMENT '定额说明',
  `next_quarter_output` int(10) DEFAULT NULL COMMENT '下季度产量',
  `use_time` datetime DEFAULT NULL COMMENT '需求时间',
  `use_desc` varchar(2000) DEFAULT NULL COMMENT '用途说明',
  `price_source` varchar(500) DEFAULT NULL COMMENT '预算价格来源',
  `apply_source` varchar(500) DEFAULT NULL COMMENT '申报来源',
  `apply_id` varchar(100) DEFAULT NULL COMMENT '申报来源ID',
  `purchase_source` varchar(500) DEFAULT NULL COMMENT '采购途径',
  `tech_desc` varchar(2000) DEFAULT NULL COMMENT '技术要求说明',
  `applicant_id` varchar(100) DEFAULT NULL COMMENT '申报人ID',
  `applicant_name` varchar(100) NOT NULL COMMENT '申报人姓名',
  `depart_ids` varchar(2000) DEFAULT NULL COMMENT '领用班组ID列表',
  `depart_names` varchar(2000) DEFAULT NULL COMMENT '领用班组',
  `project_code` varchar(20) DEFAULT NULL COMMENT '项目编码',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `plan_report_id` (`plan_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='计划申报详情表';


-- stcm.project_detail definition

CREATE TABLE `project_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `PROJECT_CODE` varchar(100) NOT NULL COMMENT '项目编码',
  `PROJECT_NAME` varchar(200) NOT NULL COMMENT '项目名称',
  `DESCR` text COMMENT '描述',
  `START` varchar(10) DEFAULT NULL COMMENT '列车编号开始序号',
  `END` varchar(10) DEFAULT NULL COMMENT '列车编号结束序号',
  `PREFIX` varchar(10) DEFAULT NULL COMMENT '列车编号前缀',
  `CARS_MODEL` varchar(500) DEFAULT NULL COMMENT '车型，多个用“,” 进行分割',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `IS_SELECT` varchar(2) DEFAULT '0' COMMENT '是否领用可选：0=不可选、1=可选',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `SIMPLE_NAME` varchar(50) DEFAULT NULL COMMENT '项目简称',
  `START_TIME` datetime DEFAULT NULL COMMENT '项目启动时间',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_project_code` (`PROJECT_CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='项目明细信息';


-- stcm.purchase_plan definition

CREATE TABLE `purchase_plan` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '采购计划单编码',
  `report_id` varchar(100) NOT NULL COMMENT '计划申报单ID',
  `report_no` varchar(200) NOT NULL COMMENT '申报表编号',
  `report_name` varchar(200) NOT NULL COMMENT '计划申报单名称',
  `total_quantity` int(10) DEFAULT NULL COMMENT '总数量',
  `total_price` decimal(15,3) DEFAULT NULL COMMENT '总价',
  `action_type` varchar(2) NOT NULL DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `msg` varchar(2000) DEFAULT NULL COMMENT '同步消息',
  `status` varchar(1) DEFAULT '0' COMMENT '同步状态：0=待同步、1=成功、2=失败',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='采购计划单表';


-- stcm.purchase_plan_detail definition

CREATE TABLE `purchase_plan_detail` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `purchase_plan_id` varchar(100) NOT NULL COMMENT '采购计划单ID',
  `sn` int(10) NOT NULL COMMENT '序号',
  `material_id` varchar(100) DEFAULT NULL COMMENT '物料信息ID',
  `material_code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(200) NOT NULL COMMENT '物料名称',
  `spec_id` varchar(100) DEFAULT NULL COMMENT '规格型号ID',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `brand_id` varchar(100) DEFAULT NULL COMMENT '品牌ID',
  `brand_name` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `unit_id` varchar(100) DEFAULT NULL COMMENT '单位ID',
  `unit_name` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `product_code` varchar(200) DEFAULT NULL COMMENT '商品编码',
  `quantity` int(10) DEFAULT NULL COMMENT '数量',
  `unit_price` decimal(15,3) DEFAULT NULL COMMENT '预算单价',
  `total_price` decimal(15,3) DEFAULT NULL COMMENT '预算总价',
  `use_time` datetime DEFAULT NULL COMMENT '需求时间',
  `realname` varchar(50) DEFAULT NULL COMMENT '申请人姓名',
  `work_no` varchar(50) NOT NULL COMMENT '申请人工号',
  `use_desc` text COMMENT '用途说明',
  `project_code` varchar(20) DEFAULT NULL COMMENT '项目编码',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='采购计划单详情表';


-- stcm.qrtz_calendars definition

CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.qrtz_fired_triggers definition

CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.qrtz_job_details definition

CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.qrtz_locks definition

CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.qrtz_paused_trigger_grps definition

CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.qrtz_scheduler_state definition

CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.sync_inbound_order definition

CREATE TABLE `sync_inbound_order` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `inventory_no` varchar(100) NOT NULL COMMENT '库存号',
  `goods_id` varchar(100) DEFAULT NULL COMMENT '物品ID',
  `goods_code` varchar(100) NOT NULL COMMENT '物品编码',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `in_quantity` int(10) DEFAULT NULL COMMENT '入库数量',
  `in_time` datetime DEFAULT NULL COMMENT '入库时间',
  `current_stock` int(10) DEFAULT NULL COMMENT '当前库存',
  `action_type` varchar(2) NOT NULL DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `msg` varchar(2000) DEFAULT NULL COMMENT '同步消息',
  `status` varchar(1) DEFAULT '0' COMMENT '同步状态：0=待同步、1=成功、2=失败',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='入库单同步表';


-- stcm.sync_outbound_order definition

CREATE TABLE `sync_outbound_order` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `inventory_no` varchar(100) NOT NULL COMMENT '库存号',
  `goods_id` varchar(100) DEFAULT NULL COMMENT '物品ID',
  `goods_code` varchar(100) NOT NULL COMMENT '物品编码',
  `goods_name` varchar(200) NOT NULL COMMENT '物品名称',
  `out_quantity` int(10) DEFAULT NULL COMMENT '出库数量',
  `out_time` datetime DEFAULT NULL COMMENT '出库时间',
  `current_stock` int(10) DEFAULT NULL COMMENT '当前库存',
  `out_number` varchar(50) DEFAULT NULL COMMENT '出库单单号',
  `work_no` varchar(100) DEFAULT NULL COMMENT '领料人工号',
  `realname` varchar(50) DEFAULT NULL COMMENT '领料人姓名',
  `action_type` varchar(2) NOT NULL DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `picking_record_id` varchar(100) DEFAULT NULL COMMENT '领料记录ID',
  `order_status` varchar(2) DEFAULT '1' COMMENT '单据状态：1=保存、4=审核',
  `work_center_number` varchar(50) DEFAULT NULL COMMENT 'EAS工作中心编码',
  `msg` text COMMENT '同步消息',
  `executions` int(5) DEFAULT '0' COMMENT '同步任务执行次数',
  `status` varchar(1) DEFAULT '0' COMMENT '同步状态：0=待同步、1=成功、2=失败',
  `source` varchar(3) DEFAULT NULL COMMENT '数据来源：1=当前系统，2=智能工具柜',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='出库单同步表';


-- stcm.sync_rail_project definition

CREATE TABLE `sync_rail_project` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `action_type` varchar(2) DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_project_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='城轨项目表';


-- stcm.sync_train_model definition

CREATE TABLE `sync_train_model` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) DEFAULT NULL COMMENT '车型编码',
  `name` varchar(100) DEFAULT NULL COMMENT '车型名称',
  `action_type` varchar(2) DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_train_model_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='城轨车型表';


-- stcm.sync_train_node definition

CREATE TABLE `sync_train_node` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) DEFAULT NULL COMMENT '节车编码',
  `name` varchar(100) DEFAULT NULL COMMENT '节车名称',
  `train_model_id` varchar(100) NOT NULL COMMENT '所属车型',
  `train_model_name` varchar(100) DEFAULT NULL COMMENT '车型名称',
  `action_type` varchar(2) DEFAULT '1' COMMENT '操作类型：1=手动、2=同步',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_train_node_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='城轨节车表';


-- stcm.sync_work_station definition

CREATE TABLE `sync_work_station` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '工位编码',
  `name` varchar(100) NOT NULL COMMENT '工位名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `work_station_code_uniq` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工位表';


-- stcm.sys_announcement definition

CREATE TABLE `sys_announcement` (
  `id` varchar(32) NOT NULL,
  `titile` varchar(100) DEFAULT NULL COMMENT '标题',
  `msg_content` text COMMENT '内容',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `sender` varchar(100) DEFAULT NULL COMMENT '发布人',
  `priority` varchar(255) DEFAULT NULL COMMENT '优先级（L低，M中，H高）',
  `msg_category` varchar(10) NOT NULL DEFAULT '2' COMMENT '消息类型1:通知公告2:系统消息',
  `msg_type` varchar(10) DEFAULT NULL COMMENT '通告对象类型（USER:指定用户，ALL:全体用户）',
  `send_status` varchar(10) DEFAULT NULL COMMENT '发布状态（0未发布，1已发布，2已撤销）',
  `send_time` datetime DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '撤销时间',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `bus_type` varchar(20) DEFAULT NULL COMMENT '业务类型(email:邮件 bpm:流程)',
  `bus_id` varchar(50) DEFAULT NULL COMMENT '业务id',
  `open_type` varchar(20) DEFAULT NULL COMMENT '打开方式(组件：component 路由：url)',
  `open_page` varchar(255) DEFAULT NULL COMMENT '组件/路由 地址',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_ids` text COMMENT '指定用户',
  `msg_abstract` text COMMENT '摘要',
  `dt_task_id` varchar(100) DEFAULT NULL COMMENT '钉钉task_id，用于撤回消息',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统通告表';


-- stcm.sys_announcement_send definition

CREATE TABLE `sys_announcement_send` (
  `id` varchar(32) DEFAULT NULL,
  `annt_id` varchar(32) DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `read_flag` varchar(10) DEFAULT NULL COMMENT '阅读状态（0未读，1已读）',
  `read_time` datetime DEFAULT NULL COMMENT '阅读时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `star_flag` varchar(10) DEFAULT NULL COMMENT '标星状态( 1为标星 空/0没有标星)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户通告阅读标记表';


-- stcm.sys_category definition

CREATE TABLE `sys_category` (
  `id` varchar(36) NOT NULL,
  `pid` varchar(36) DEFAULT NULL COMMENT '父级节点',
  `name` varchar(100) DEFAULT NULL COMMENT '类型名称',
  `code` varchar(100) DEFAULT NULL COMMENT '类型编码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `has_child` varchar(3) DEFAULT NULL COMMENT '是否有子节点',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_code` (`code`) USING BTREE,
  KEY `idx_sc_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.sys_check_rule definition

CREATE TABLE `sys_check_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键id',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_json` varchar(1024) DEFAULT NULL COMMENT '规则JSON',
  `rule_description` varchar(200) DEFAULT NULL COMMENT '规则描述',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_scr_rule_code` (`rule_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.sys_comment definition

CREATE TABLE `sys_comment` (
  `id` varchar(32) NOT NULL,
  `table_name` varchar(50) NOT NULL COMMENT '表名',
  `table_data_id` varchar(32) NOT NULL COMMENT '数据id',
  `from_user_id` varchar(32) NOT NULL COMMENT '来源用户id',
  `to_user_id` varchar(32) DEFAULT NULL COMMENT '发送给用户id(允许为空)',
  `comment_id` varchar(32) DEFAULT NULL COMMENT '评论id(允许为空，不为空时，则为回复)',
  `comment_content` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '回复内容',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_table_data_id` (`table_name`,`table_data_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统评论回复表';


-- stcm.sys_data_log definition

CREATE TABLE `sys_data_log` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `data_table` varchar(32) DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) DEFAULT NULL COMMENT '数据ID',
  `data_content` text COMMENT '数据内容',
  `data_version` int(11) DEFAULT NULL COMMENT '版本号',
  `type` varchar(20) DEFAULT 'json' COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdl_data_table_id` (`data_table`,`data_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.sys_data_source definition

CREATE TABLE `sys_data_source` (
  `id` varchar(36) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '数据源编码',
  `name` varchar(100) DEFAULT NULL COMMENT '数据源名称',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `db_type` varchar(10) DEFAULT NULL COMMENT '数据库类型',
  `db_driver` varchar(100) DEFAULT NULL COMMENT '驱动类',
  `db_url` varchar(500) DEFAULT NULL COMMENT '数据源地址',
  `db_name` varchar(100) DEFAULT NULL COMMENT '数据库名称',
  `db_username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `db_password` varchar(100) DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sdc_rule_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.sys_depart definition

CREATE TABLE `sys_depart` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父机构ID',
  `depart_name` varchar(100) NOT NULL COMMENT '机构/部门名称',
  `depart_name_en` varchar(500) DEFAULT NULL COMMENT '英文名',
  `depart_name_abbr` varchar(500) DEFAULT NULL COMMENT '缩写',
  `depart_order` int(11) DEFAULT '0' COMMENT '排序',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `org_category` varchar(10) NOT NULL DEFAULT '1' COMMENT '机构类别 1公司，2组织机构，2岗位',
  `org_type` varchar(10) DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) NOT NULL COMMENT '机构编码',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) DEFAULT NULL COMMENT '传真',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `memo` varchar(500) DEFAULT NULL COMMENT '备注',
  `status` varchar(1) DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `qywx_identifier` varchar(100) DEFAULT NULL COMMENT '对接企业微信的ID',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  `iz_leaf` tinyint(1) DEFAULT '0' COMMENT '是否有叶子节点: 1是0否',
  `work_center_number` varchar(50) DEFAULT NULL COMMENT 'EAS工作中心编码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_depart_org_code` (`org_code`) USING BTREE,
  KEY `idx_sd_parent_id` (`parent_id`) USING BTREE,
  KEY `idx_sd_depart_order` (`depart_order`) USING BTREE,
  KEY `idx_sd_org_code` (`org_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组织机构表';


-- stcm.sys_depart_permission definition

CREATE TABLE `sys_depart_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据规则id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门权限表';


-- stcm.sys_depart_role definition

CREATE TABLE `sys_depart_role` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '部门角色名称',
  `role_code` varchar(100) DEFAULT NULL COMMENT '部门角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色表';


-- stcm.sys_depart_role_permission definition

CREATE TABLE `sys_depart_role_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(20) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdrp_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  KEY `idx_sdrp_role_id` (`role_id`) USING BTREE,
  KEY `idx_sdrp_per_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部门角色权限表';


-- stcm.sys_depart_role_user definition

CREATE TABLE `sys_depart_role_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `drole_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色用户表';


-- stcm.sys_dict definition

CREATE TABLE `sys_dict` (
  `id` varchar(32) NOT NULL,
  `dict_name` varchar(100) NOT NULL COMMENT '字典名称',
  `dict_code` varchar(100) NOT NULL COMMENT '字典编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `del_flag` int(1) DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `type` int(1) unsigned zerofill DEFAULT '0' COMMENT '字典类型0为string,1为number',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  `low_app_id` varchar(32) DEFAULT NULL COMMENT '低代码应用ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sd_dict_code` (`dict_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.sys_dict_item definition

CREATE TABLE `sys_dict_item` (
  `id` varchar(32) NOT NULL,
  `dict_id` varchar(32) DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) NOT NULL COMMENT '字典项文本',
  `item_value` varchar(100) NOT NULL COMMENT '字典项值',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_order` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdi_role_dict_id` (`dict_id`) USING BTREE,
  KEY `idx_sdi_role_sort_order` (`sort_order`) USING BTREE,
  KEY `idx_sdi_status` (`status`) USING BTREE,
  KEY `idx_sdi_dict_val` (`dict_id`,`item_value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.sys_files definition

CREATE TABLE `sys_files` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `url` varchar(1000) DEFAULT NULL COMMENT '文件地址',
  `file_type` varchar(20) DEFAULT NULL COMMENT '文档类型（folder:文件夹 excel:excel doc:word ppt:ppt image:图片  archive:其他文档 video:视频 pdf:pdf）',
  `store_type` varchar(20) DEFAULT NULL COMMENT '文件上传类型(temp/本地上传(临时文件) manage/知识库)',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级id',
  `tenant_id` varchar(100) DEFAULT NULL COMMENT '租户id',
  `file_size` double(13,2) DEFAULT NULL COMMENT '文件大小（kb）',
  `iz_folder` varchar(2) DEFAULT NULL COMMENT '是否文件夹(1：是  0：否)',
  `iz_root_folder` varchar(2) DEFAULT NULL COMMENT '是否为1级文件夹，允许为空 (1：是 )',
  `iz_star` varchar(2) DEFAULT NULL COMMENT '是否标星(1：是  0：否)',
  `down_count` int(11) DEFAULT NULL COMMENT '下载次数',
  `read_count` int(11) DEFAULT NULL COMMENT '阅读次数',
  `share_url` varchar(255) DEFAULT NULL COMMENT '分享链接',
  `share_perms` varchar(2) DEFAULT NULL COMMENT '分享权限(1.关闭分享 2.允许所有联系人查看 3.允许任何人查看)',
  `enable_down` varchar(2) DEFAULT NULL COMMENT '是否允许下载(1：是  0：否)',
  `enable_updat` varchar(2) DEFAULT NULL COMMENT '是否允许修改(1：是  0：否)',
  `del_flag` varchar(2) DEFAULT NULL COMMENT '删除状态(0-正常,1-删除至回收站)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_tenant_id` (`tenant_id`) USING BTREE,
  KEY `index_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='知识库-文档管理';


-- stcm.sys_fill_rule definition

CREATE TABLE `sys_fill_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键ID',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_class` varchar(100) DEFAULT NULL COMMENT '规则实现类',
  `rule_params` varchar(200) DEFAULT NULL COMMENT '规则参数',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sfr_rule_code` (`rule_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.sys_flow definition

CREATE TABLE `sys_flow` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `flow_no` varchar(100) NOT NULL COMMENT '流程号',
  `flow_name` varchar(200) NOT NULL COMMENT '流程名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='流程表';


-- stcm.sys_flow_approve_record definition

CREATE TABLE `sys_flow_approve_record` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `approve_id` varchar(100) NOT NULL COMMENT '审批ID',
  `business_id` varchar(50) NOT NULL COMMENT '业务ID',
  `prev_node_id` varchar(200) NOT NULL COMMENT '上一步流程节点ID',
  `current_node_id` varchar(200) NOT NULL COMMENT '当前流程节点ID',
  `node_action` varchar(100) NOT NULL COMMENT '动作：1=通过，2=驳回',
  `approver_id` varchar(100) NOT NULL COMMENT '审批人ID',
  `approver` varchar(100) NOT NULL COMMENT '审批人姓名',
  `approval_time` datetime DEFAULT NULL COMMENT '审批日期',
  `opinion` varchar(2000) DEFAULT NULL COMMENT '审批意见',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='审批操作记录表';


-- stcm.sys_flow_line definition

CREATE TABLE `sys_flow_line` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `sn` int(5) NOT NULL COMMENT '序号',
  `flow_no` varchar(100) NOT NULL COMMENT '流程号',
  `prev_node_id` varchar(200) NOT NULL COMMENT '上一步流程节点ID',
  `current_node_id` varchar(200) NOT NULL COMMENT '当前流程节点ID',
  `current_node_name` varchar(100) NOT NULL COMMENT '当前流程节点名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='流程线表';


-- stcm.sys_flow_node definition

CREATE TABLE `sys_flow_node` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `sn` int(3) DEFAULT NULL COMMENT '排序',
  `flow_no` varchar(100) NOT NULL COMMENT '流程号',
  `flow_name` varchar(100) NOT NULL COMMENT '流程名称',
  `flow_node_name` varchar(200) NOT NULL COMMENT '流程节点名称',
  `flow_node_role` varchar(200) NOT NULL COMMENT '流程节点角色名称',
  `flow_node_type` varchar(5) NOT NULL DEFAULT '2' COMMENT '流程节点类型：1=起始节点、2=普通节点、3=结束节点',
  `default_approver_id` varchar(50) NOT NULL COMMENT '默认审批人ID',
  `default_approver` varchar(50) DEFAULT NULL COMMENT '默认审批人',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='流程节点表';


-- stcm.sys_flow_role_user definition

CREATE TABLE `sys_flow_role_user` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `flow_role_name` varchar(200) NOT NULL COMMENT '流程角色名称',
  `user_id` varchar(100) NOT NULL COMMENT '用户ID',
  `dep_id` varchar(100) NOT NULL COMMENT '部门ID',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='流程角色用户表';


-- stcm.sys_form_file definition

CREATE TABLE `sys_form_file` (
  `id` varchar(32) NOT NULL,
  `table_name` varchar(50) NOT NULL COMMENT '表名',
  `table_data_id` varchar(32) NOT NULL COMMENT '数据id',
  `file_id` varchar(32) DEFAULT NULL COMMENT '关联文件id',
  `file_type` varchar(20) DEFAULT NULL COMMENT '文件类型(text:文本, excel:excel doc:word ppt:ppt image:图片  archive:其他文档 video:视频 pdf:pdf）)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_table_form` (`table_name`,`table_data_id`) USING BTREE,
  KEY `index_file_id` (`file_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.sys_gateway_route definition

CREATE TABLE `sys_gateway_route` (
  `id` varchar(36) NOT NULL,
  `router_id` varchar(50) DEFAULT NULL COMMENT '路由ID',
  `name` varchar(32) DEFAULT NULL COMMENT '服务名',
  `uri` varchar(32) DEFAULT NULL COMMENT '服务地址',
  `predicates` text COMMENT '断言',
  `filters` text COMMENT '过滤器',
  `retryable` int(3) DEFAULT NULL COMMENT '是否重试:0-否 1-是',
  `strip_prefix` int(3) DEFAULT NULL COMMENT '是否忽略前缀0-否 1-是',
  `persistable` int(3) DEFAULT NULL COMMENT '是否为保留数据:0-否 1-是',
  `show_api` int(3) DEFAULT NULL COMMENT '是否在接口文档中展示:0-否 1-是',
  `status` int(3) DEFAULT NULL COMMENT '状态:0-无效 1-有效',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


-- stcm.sys_log definition

CREATE TABLE `sys_log` (
  `id` varchar(32) NOT NULL,
  `log_type` int(3) DEFAULT NULL COMMENT '日志类型（1登录日志，2操作日志, 3.租户操作日志）',
  `log_content` varchar(1000) DEFAULT NULL COMMENT '日志内容',
  `operate_type` int(2) DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) DEFAULT NULL COMMENT '操作用户账号',
  `username` varchar(100) DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext COMMENT '请求参数',
  `request_type` varchar(10) DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `tenant_id` int(10) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sl_userid` (`userid`) USING BTREE,
  KEY `idx_sl_log_type` (`log_type`) USING BTREE,
  KEY `idx_sl_operate_type` (`operate_type`) USING BTREE,
  KEY `idx_sl_create_time` (`create_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统日志表';


-- stcm.sys_permission definition

CREATE TABLE `sys_permission` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父id',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) DEFAULT NULL COMMENT '路径',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `component_name` varchar(255) DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8,2) DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `is_leaf` tinyint(1) DEFAULT NULL COMMENT '是否叶子节点:    1是0否',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` int(2) DEFAULT '0' COMMENT '是否隐藏路由: 0否,1是',
  `hide_tab` int(2) DEFAULT NULL COMMENT '是否隐藏tab: 0否,1是',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT '0' COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int(3) DEFAULT '0' COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_menu_type` (`menu_type`) USING BTREE,
  KEY `index_menu_hidden` (`hidden`) USING BTREE,
  KEY `index_menu_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';


-- stcm.sys_permission_data_rule definition

CREATE TABLE `sys_permission_data_rule` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `rule_name` varchar(50) DEFAULT NULL COMMENT '规则名称',
  `rule_column` varchar(50) DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(50) DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) DEFAULT NULL COMMENT '规则值',
  `status` varchar(3) DEFAULT NULL COMMENT '权限有效状态1有0否',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_spdr_permission_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.sys_permission_v2 definition

CREATE TABLE `sys_permission_v2` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父id',
  `name` varchar(100) DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) DEFAULT NULL COMMENT '路径',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `component_name` varchar(100) DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8,2) DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `is_leaf` tinyint(1) DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` tinyint(1) DEFAULT '0' COMMENT '是否隐藏路由: 0否,1是',
  `hide_tab` tinyint(1) DEFAULT NULL COMMENT '是否隐藏tab: 0否,1是',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int(3) DEFAULT '0' COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sp_parent_id` (`parent_id`) USING BTREE,
  KEY `idx_sp_is_route` (`is_route`) USING BTREE,
  KEY `idx_sp_is_leaf` (`is_leaf`) USING BTREE,
  KEY `idx_sp_sort_no` (`sort_no`) USING BTREE,
  KEY `idx_sp_del_flag` (`del_flag`) USING BTREE,
  KEY `idx_sp_menu_type` (`menu_type`) USING BTREE,
  KEY `idx_sp_hidden` (`hidden`) USING BTREE,
  KEY `idx_sp_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';


-- stcm.sys_position definition

CREATE TABLE `sys_position` (
  `id` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '职务编码',
  `name` varchar(100) DEFAULT NULL COMMENT '职务名称',
  `post_rank` varchar(2) DEFAULT NULL COMMENT '职级',
  `company_id` varchar(255) DEFAULT NULL COMMENT '公司id',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '组织机构编码',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.sys_quartz_job definition

CREATE TABLE `sys_quartz_job` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(1) DEFAULT NULL COMMENT '删除状态',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `job_class_name` varchar(255) DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) DEFAULT NULL COMMENT '参数',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` int(1) DEFAULT NULL COMMENT '状态 0正常 -1停止',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.sys_role definition

CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) NOT NULL COMMENT '角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_role_role_code` (`role_code`) USING BTREE,
  KEY `idx_sr_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';


-- stcm.sys_role_index definition

CREATE TABLE `sys_role_index` (
  `id` varchar(32) NOT NULL,
  `role_code` varchar(50) DEFAULT NULL COMMENT '角色编码',
  `url` varchar(100) DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '组件',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `priority` int(11) DEFAULT '0' COMMENT '优先级',
  `status` varchar(2) CHARACTER SET utf8 DEFAULT '0' COMMENT '状态0:无效 1:有效',
  `create_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色首页表';


-- stcm.sys_role_permission definition

CREATE TABLE `sys_role_permission` (
  `id` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(100) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_srp_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  KEY `idx_srp_role_id` (`role_id`) USING BTREE,
  KEY `idx_srp_permission_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色权限表';


-- stcm.sys_sms definition

CREATE TABLE `sys_sms` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `es_title` varchar(100) DEFAULT NULL COMMENT '消息标题',
  `es_type` varchar(50) DEFAULT NULL COMMENT '发送方式：参考枚举MessageTypeEnum',
  `es_receiver` varchar(50) DEFAULT NULL COMMENT '接收人',
  `es_param` varchar(1000) DEFAULT NULL COMMENT '发送所需参数Json格式',
  `es_content` longtext COMMENT '推送内容',
  `es_send_time` datetime DEFAULT NULL COMMENT '推送时间',
  `es_send_status` varchar(1) DEFAULT NULL COMMENT '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
  `es_send_num` int(11) DEFAULT NULL COMMENT '发送次数 超过5次不再发送',
  `es_result` varchar(255) DEFAULT NULL COMMENT '推送失败原因',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_ss_es_type` (`es_type`) USING BTREE,
  KEY `idx_ss_es_receiver` (`es_receiver`) USING BTREE,
  KEY `idx_ss_es_send_time` (`es_send_time`) USING BTREE,
  KEY `idx_ss_es_send_status` (`es_send_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.sys_sms_template definition

CREATE TABLE `sys_sms_template` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `template_name` varchar(50) DEFAULT NULL COMMENT '模板标题',
  `template_code` varchar(32) NOT NULL COMMENT '模板CODE',
  `template_type` varchar(1) NOT NULL COMMENT '模板类型：1短信 2邮件 3微信',
  `template_content` varchar(1000) NOT NULL COMMENT '模板内容',
  `template_test_json` varchar(1000) DEFAULT NULL COMMENT '模板测试json',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `use_status` varchar(1) DEFAULT NULL COMMENT '是否使用中 1是0否',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sst_template_code` (`template_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.sys_tenant definition

CREATE TABLE `sys_tenant` (
  `id` int(10) NOT NULL COMMENT '租户编码',
  `name` varchar(100) DEFAULT NULL COMMENT '租户名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `status` int(1) DEFAULT NULL COMMENT '状态 1正常 0冻结',
  `trade` varchar(10) DEFAULT NULL COMMENT '所属行业',
  `company_size` varchar(10) DEFAULT NULL COMMENT '公司规模',
  `company_address` varchar(100) DEFAULT NULL COMMENT '公司地址',
  `company_logo` varchar(200) DEFAULT NULL COMMENT '公司logo',
  `house_number` varchar(10) DEFAULT NULL COMMENT '门牌号',
  `work_place` varchar(100) CHARACTER SET utf32 DEFAULT NULL COMMENT '工作地点',
  `secondary_domain` varchar(50) DEFAULT NULL COMMENT '二级域名',
  `login_bkgd_img` varchar(200) DEFAULT NULL COMMENT '登录背景图片',
  `position` varchar(10) DEFAULT NULL COMMENT '职级',
  `department` varchar(10) DEFAULT NULL COMMENT '部门',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态(0-正常,1-已删除)',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `apply_status` int(3) DEFAULT NULL COMMENT '允许申请管理员 1允许 0不允许',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='多租户信息表';


-- stcm.sys_tenant_pack definition

CREATE TABLE `sys_tenant_pack` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `tenant_id` int(10) DEFAULT NULL COMMENT '租户id',
  `pack_name` varchar(20) DEFAULT NULL COMMENT '产品包名',
  `status` varchar(1) DEFAULT NULL COMMENT '开启状态(0 未开启 1开启)',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` date DEFAULT NULL COMMENT '更新时间',
  `pack_code` varchar(50) DEFAULT NULL COMMENT '编码,默认添加的三个管理员需要设置编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='租户产品包';


-- stcm.sys_tenant_pack_perms definition

CREATE TABLE `sys_tenant_pack_perms` (
  `id` varchar(32) NOT NULL COMMENT '主键编号',
  `pack_id` varchar(32) DEFAULT NULL COMMENT '租户产品包名称',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '菜单id',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='租户产品包和菜单关系表';


-- stcm.sys_tenant_pack_user definition

CREATE TABLE `sys_tenant_pack_user` (
  `id` varchar(32) NOT NULL,
  `pack_id` varchar(32) DEFAULT NULL COMMENT '租户产品包ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `tenant_id` int(10) DEFAULT NULL COMMENT '租户ID',
  `create_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(3) DEFAULT NULL COMMENT '状态 正常状态1 申请状态0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='租户套餐人员表';


-- stcm.sys_third_account definition

CREATE TABLE `sys_third_account` (
  `id` varchar(32) NOT NULL COMMENT '编号',
  `sys_user_id` varchar(32) DEFAULT NULL COMMENT '第三方登录id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态(1-正常,2-冻结)',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `third_user_uuid` varchar(100) DEFAULT NULL COMMENT '第三方账号',
  `third_user_id` varchar(100) DEFAULT NULL COMMENT '第三方app用户账号',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `third_type` varchar(50) DEFAULT NULL COMMENT '登录来源',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_third_account_third_type_third_user_id` (`third_type`,`third_user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.sys_user definition

CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `username` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户数字ID',
  `card_no` varchar(100) DEFAULT NULL COMMENT '用户卡号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `org_code` varchar(64) DEFAULT NULL COMMENT '登录会话的机构编码',
  `status` tinyint(1) DEFAULT NULL COMMENT '性别(1-正常,2-冻结)',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `third_id` varchar(100) DEFAULT NULL COMMENT '第三方登录的唯一标识',
  `third_type` varchar(100) DEFAULT NULL COMMENT '第三方类型',
  `activiti_sync` tinyint(1) DEFAULT NULL COMMENT '同步工作流引擎(1-同步,0-不同步)',
  `work_no` varchar(100) DEFAULT NULL COMMENT '工号，唯一键',
  `work_station_code` varchar(200) DEFAULT NULL COMMENT '工位编码',
  `work_station` varchar(300) DEFAULT NULL COMMENT '工位',
  `post` varchar(100) DEFAULT NULL COMMENT '职务，关联职务表',
  `telephone` varchar(45) DEFAULT NULL COMMENT '座机号',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_identity` tinyint(1) DEFAULT NULL COMMENT '身份（1普通成员 2上级）',
  `depart_ids` varchar(1000) DEFAULT NULL COMMENT '负责部门',
  `client_id` varchar(64) DEFAULT NULL COMMENT '设备ID',
  `login_tenant_id` int(11) DEFAULT NULL COMMENT '上次登录选择租户ID',
  `bpm_status` varchar(2) DEFAULT NULL COMMENT '流程入职离职状态',
  `sync_status` varchar(3) NOT NULL DEFAULT '0' COMMENT '同步状态：0=未同步，1=已同步用户信息，2=已同步用户信息并设置柜格权限',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_work_no` (`work_no`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_username` (`username`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_phone` (`phone`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_email` (`email`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_card_no` (`card_no`),
  KEY `idx_su_username` (`username`) USING BTREE,
  KEY `idx_su_status` (`status`) USING BTREE,
  KEY `idx_su_del_flag` (`del_flag`) USING BTREE,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10960 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';


-- stcm.sys_user_agent definition

CREATE TABLE `sys_user_agent` (
  `id` varchar(32) NOT NULL COMMENT '序号',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `agent_user_name` varchar(100) DEFAULT NULL COMMENT '代理人用户名',
  `start_time` datetime DEFAULT NULL COMMENT '代理开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '代理结束时间',
  `status` varchar(2) DEFAULT NULL COMMENT '状态0无效1有效',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sug_user_name` (`user_name`) USING BTREE,
  KEY `idx_sug_status` (`status`) USING BTREE,
  KEY `idx_sug_start_time` (`start_time`) USING BTREE,
  KEY `idx_sug_end_time` (`end_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户代理人设置';


-- stcm.sys_user_depart definition

CREATE TABLE `sys_user_depart` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `dep_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `idx_sud_user_id` (`user_id`) USING BTREE,
  KEY `idx_sud_dep_id` (`dep_id`) USING BTREE,
  KEY `idx_sud_user_dep_id` (`user_id`,`dep_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- stcm.sys_user_role definition

CREATE TABLE `sys_user_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `tenant_id` int(10) DEFAULT '0' COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sur_user_id` (`user_id`) USING BTREE,
  KEY `idx_sur_role_id` (`role_id`) USING BTREE,
  KEY `idx_sur_user_role_id` (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';


-- stcm.sys_user_tenant definition

CREATE TABLE `sys_user_tenant` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `tenant_id` int(10) DEFAULT NULL COMMENT '租户id',
  `status` varchar(1) DEFAULT NULL COMMENT '状态(1 正常 2 离职 3 待审核 4 审核未通过)',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sut_user_id` (`user_id`) USING BTREE,
  KEY `idx_sut_tenant_id` (`tenant_id`) USING BTREE,
  KEY `uniq_sut_user_rel_tenant` (`user_id`,`tenant_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户租户关系表';


-- stcm.tool_measure definition

CREATE TABLE `tool_measure` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `erp_no` varchar(50) DEFAULT NULL COMMENT 'ERP编码',
  `tool_name` varchar(200) DEFAULT NULL COMMENT '名称',
  `spec_model` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `brand_name` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `expire_time` datetime DEFAULT NULL COMMENT '有效期',
  `gap` int(3) unsigned NOT NULL COMMENT '确认间隔',
  `tool_code` varchar(50) DEFAULT NULL COMMENT '编码',
  `check_month` varchar(50) DEFAULT NULL COMMENT '校检月份',
  `category` varchar(50) DEFAULT NULL COMMENT '类别',
  `warehouse` varchar(50) DEFAULT NULL COMMENT '所属库房',
  `picking_time` datetime DEFAULT NULL COMMENT '领用日期',
  `check_org` varchar(50) DEFAULT NULL COMMENT '校准部门',
  `accuracy` varchar(100) DEFAULT NULL COMMENT '准确度：等级或分度值',
  `location` varchar(100) DEFAULT NULL COMMENT '设备位置',
  `controlled_state` varchar(1) DEFAULT '0' COMMENT '管理状态：1=借领、2=送检、3=在库、4=维修、5=待检、6=禁用、7=报废、8=遗失、9=封存',
  `status` varchar(1) DEFAULT '0' COMMENT '状态：0=正常、1=当月到期、2=已到期',
  `remark` text COMMENT '备注',
  `work_no` varchar(50) DEFAULT NULL COMMENT '工号',
  `borrower` varchar(50) DEFAULT NULL COMMENT '借领人',
  `workshop` varchar(50) DEFAULT NULL COMMENT '车间',
  `class_group` varchar(50) DEFAULT NULL COMMENT '班组',
  `give_time` datetime DEFAULT NULL COMMENT '送检时间',
  `signature1` varchar(50) DEFAULT NULL COMMENT '送检签名',
  `take_time` datetime DEFAULT NULL COMMENT '取回时间',
  `signature2` varchar(50) DEFAULT NULL COMMENT '取回签名',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工具计量表';


-- stcm.qrtz_triggers definition

CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.qrtz_blob_triggers definition

CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.qrtz_cron_triggers definition

CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.qrtz_simple_triggers definition

CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- stcm.qrtz_simprop_triggers definition

CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

CREATE DATABASE `track_tighten`;

USE `track_tighten`;

-- track_tighten.control_cabinet definition

CREATE TABLE `control_cabinet` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `NAME` varchar(100) NOT NULL COMMENT '名称',
  `SERIAL` varchar(100) DEFAULT NULL COMMENT '柜子序列号，用于打开柜子',
  `STATION_ID` varchar(100) DEFAULT NULL COMMENT '工位ID',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `HANDLE_CLOSE` varchar(10) DEFAULT NULL COMMENT '是否可以关柜 1可以关柜 其他不显示关柜',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='控制柜表';


-- track_tighten.controller_technology definition

CREATE TABLE `controller_technology` (
  `ID` bigint(100) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `APPLICATION_ID` varchar(100) NOT NULL COMMENT '应用ID',
  `APPLICATION_NAME` varchar(200) NOT NULL COMMENT '应用名称',
  `APPLICATION_NUMBER` varchar(200) DEFAULT NULL COMMENT '应用编码',
  `IP` varchar(30) DEFAULT NULL COMMENT '控制器IP',
  `PORT` varchar(10) DEFAULT NULL COMMENT '扳手端口',
  `ROTATION_DIRECTION` varchar(100) DEFAULT NULL COMMENT '旋转方向',
  `BATCH_SIZE` varchar(200) DEFAULT NULL COMMENT '批次',
  `MIN_TORQUE` varchar(10) DEFAULT NULL COMMENT '最小扭矩',
  `MAX_TORQUE` varchar(10) DEFAULT NULL COMMENT '最大扭矩',
  `TARGET_TORQUE` varchar(10) DEFAULT NULL COMMENT '目标扭矩',
  `TARGET_ANGLE` varchar(10) DEFAULT NULL COMMENT '目标角度',
  `MIN_ANGLE` varchar(10) DEFAULT NULL COMMENT '最小角度',
  `MAX_ANGLE` varchar(10) DEFAULT NULL COMMENT '最大角度',
  `STATUS` varchar(1) DEFAULT '1' COMMENT '状态（0=未启用，1=启用，2=报废，3=异常，4=其他 ）',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_ip_port_id` (`IP`,`PORT`,`APPLICATION_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1916 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='控制器工艺信息表';


-- track_tighten.device definition

CREATE TABLE `device` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `STATION_ID` varchar(100) DEFAULT NULL COMMENT '工位ID',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `NAME` varchar(200) NOT NULL COMMENT '名称',
  `SERIAL` varchar(100) DEFAULT NULL COMMENT '序列号',
  `BRAND` varchar(200) DEFAULT NULL COMMENT '品牌',
  `MIX_TORQUE` varchar(10) DEFAULT NULL COMMENT '最小扭矩',
  `MAX_TORQUE` varchar(10) DEFAULT NULL COMMENT '最大扭矩',
  `RESOLVING_POWER` varchar(50) DEFAULT NULL COMMENT '分辨率',
  `ATTRIBUTE` text COMMENT '属性值',
  `TYPE` varchar(10) NOT NULL COMMENT '类型',
  `DESCR` text COMMENT '描述',
  `IP_ADDRESS` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `PORT` varchar(10) DEFAULT NULL COMMENT '扳手端口',
  `IMAGE_PATH` varchar(500) DEFAULT NULL COMMENT '图片地址',
  `USE_STATUS` varchar(1) DEFAULT NULL COMMENT '使用中状态（正在充电/休眠中/电源已连接）',
  `VOLTAGE_BATTERY` varchar(10) DEFAULT NULL COMMENT '电池电压(mV)',
  `ELECTRIC` varchar(100) DEFAULT NULL COMMENT '电流/电池',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态（0=未启用，1=启用，2=报废，3=异常，4=其他 ）',
  `CREATE_BUY` datetime DEFAULT NULL COMMENT '购买时间',
  `REPAIR_DAY` varchar(10) DEFAULT NULL COMMENT '定期维护时间(天)',
  `REPAIR_DATE` datetime DEFAULT NULL COMMENT '维修时间',
  `USE_TIME` varchar(10) DEFAULT NULL COMMENT '使用时长(时)',
  `USE_NUM` varchar(10) DEFAULT NULL COMMENT '使用次数',
  `USE_USER_ID` varchar(100) DEFAULT NULL COMMENT '当前使用者',
  `WRENCH_TYPE` varchar(100) DEFAULT NULL COMMENT '扳手类型，1.数显手动扳手，2.电动扳手',
  `HARDWARE_SERIAL` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `REMARK` varchar(1000) DEFAULT NULL COMMENT '备注',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_device_code` (`CODE`) USING BTREE,
  UNIQUE KEY `uni_device_name` (`NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='设备基础信息表';


-- track_tighten.ele_label definition

CREATE TABLE `ele_label` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `TRAIN_MODEL` varchar(100) NOT NULL COMMENT '车型',
  `TRAIN_NUMBER` varchar(100) NOT NULL COMMENT '车号',
  `PROCESS_ID` varchar(100) NOT NULL COMMENT '工序',
  `EXTEND1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXTEND2` varchar(200) DEFAULT NULL COMMENT '扩展字段2',
  `REMARK` varchar(1000) DEFAULT NULL COMMENT '备注',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='二维码标签表';


-- track_tighten.exception_info definition

CREATE TABLE `exception_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) NOT NULL COMMENT '消息ID',
  `TITLE` varchar(1000) NOT NULL COMMENT '标题',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `DETAIL` text NOT NULL COMMENT '详细信息',
  `TYPE` varchar(1) NOT NULL COMMENT '类型',
  `LEVEL` varchar(1) NOT NULL COMMENT '级别',
  `START_DATE` datetime NOT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `TIME` varchar(10) DEFAULT NULL COMMENT '耗时(时)',
  `HANDLE_BY` varchar(100) DEFAULT NULL COMMENT '处理人',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态（0=待处理，1=已处理，2=观察/监控, 3=其他）',
  `REMARK` text COMMENT '备注',
  `DEL_FLAG` int(11) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='异常信息表';


-- track_tighten.order_detail definition

CREATE TABLE `order_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `PROJECT_ID` varchar(100) NOT NULL COMMENT '项目ID',
  `ORDER_CODE` varchar(100) NOT NULL COMMENT '生产订单编码',
  `TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车号',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '节车号',
  `WORK_NO` varchar(100) NOT NULL COMMENT '工单号',
  `PRODUCT_ID` varchar(100) DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_SERIAL` varchar(200) DEFAULT NULL COMMENT '产品序列号',
  `ORDER_NO` varchar(100) DEFAULT NULL COMMENT '序号',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `EXTEND1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXTEND2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_work_no` (`WORK_NO`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='订单明细信息';


-- track_tighten.position_detail definition

CREATE TABLE `position_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `POSITION` varchar(600) NOT NULL COMMENT '位置名称',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_position_code` (`CODE`) USING BTREE,
  UNIQUE KEY `uni_position_position` (`POSITION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='位置明细表';


-- track_tighten.process_detail definition

CREATE TABLE `process_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `ORDER_NO` int(11) DEFAULT NULL COMMENT '序号',
  `PROCESS_ID` varchar(100) NOT NULL COMMENT '工序ID',
  `TECHNOLOGY_ID` varchar(100) NOT NULL COMMENT '工艺ID',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备扳手ID',
  `VISUALIZING_ID` varchar(100) DEFAULT NULL COMMENT '可视化ID',
  `POSITION_ID` varchar(100) DEFAULT NULL COMMENT '部位ID',
  `BOLT_NUM` int(11) DEFAULT NULL COMMENT '螺栓数量',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工序明细表';


-- track_tighten.process_info definition

CREATE TABLE `process_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `EXTERNAL_CODE` varchar(100) NOT NULL COMMENT '外部工序编码，用作与外部系统联系',
  `EXTERNAL_NAME` varchar(200) DEFAULT NULL COMMENT '外部工序名称',
  `NAME` varchar(200) NOT NULL COMMENT '名称',
  `EXE_TEAM_CODE` varchar(200) DEFAULT NULL COMMENT '执行班组编码',
  `EXE_TEAM_NAME` varchar(200) DEFAULT NULL COMMENT '执行班组名称',
  `DEPARTMENT_CODE` varchar(200) DEFAULT NULL COMMENT '事业部编码',
  `DEPARTMENT_NAME` varchar(200) DEFAULT NULL COMMENT '事业部名称',
  `STATION_ID` varchar(100) NOT NULL COMMENT '工位ID',
  `GREASE` varchar(100) DEFAULT NULL COMMENT '胶脂',
  `RISK` varchar(10) DEFAULT NULL COMMENT '螺栓风险等级',
  `BE_SEND` varchar(1) DEFAULT '0' COMMENT '是否发送工序结果，0：发送，1：不发送',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `code_index` (`CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工序表';


-- track_tighten.product_info definition

CREATE TABLE `product_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(200) NOT NULL COMMENT '编码(图号)',
  `NAME` varchar(200) NOT NULL COMMENT '名称',
  `MODEL` varchar(200) DEFAULT NULL COMMENT '型号',
  `NUMBER` varchar(200) DEFAULT NULL COMMENT '数量',
  `UNIT` varchar(200) DEFAULT NULL COMMENT '单位',
  `DESCR` text COMMENT '产品描述',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_product_code` (`CODE`) USING BTREE,
  UNIQUE KEY `uni_product_model` (`MODEL`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='产品信息表';


-- track_tighten.project_detail definition

CREATE TABLE `project_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `PROJECT_CODE` varchar(100) NOT NULL COMMENT '项目编码',
  `PROJECT_NAME` varchar(200) NOT NULL COMMENT '项目名称',
  `DESCR` text COMMENT '描述',
  `START` varchar(10) DEFAULT NULL COMMENT '列车编号开始序号',
  `END` varchar(10) DEFAULT NULL COMMENT '列车编号结束序号',
  `PREFIX` varchar(10) DEFAULT NULL COMMENT '列车编号前缀',
  `CARS_MODEL` varchar(500) DEFAULT NULL COMMENT '车型，多个用“|” 进行分割',
  `TRAIN_NO` varchar(1000) DEFAULT NULL COMMENT '车号，多个使用逗号分割',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `IS_SELECT` varchar(2) DEFAULT '0' COMMENT '是否领用可选：0=不可选、1=可选',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_project_code` (`PROJECT_CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='项目明细信息';


-- track_tighten.project_detail1 definition

CREATE TABLE `project_detail1` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `PROJECT_CODE` varchar(100) NOT NULL COMMENT '项目编码',
  `PROJECT_NAME` varchar(200) NOT NULL COMMENT '项目名称',
  `DESCR` text COMMENT '描述',
  `EXTEND1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXTEND2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_project_code` (`PROJECT_CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='项目明细信息';


-- track_tighten.project_process definition

CREATE TABLE `project_process` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `PROJECT_ID` varchar(100) NOT NULL COMMENT '项目ID',
  `PROCESS_ID` varchar(100) NOT NULL COMMENT '工序ID',
  `PRODUCT_ID` varchar(100) DEFAULT NULL COMMENT '产品ID',
  `EXTERNAL_PROCESS_CODE` varchar(100) NOT NULL COMMENT '外部工序编码',
  `TRAIN_NO` varchar(500) DEFAULT NULL COMMENT '车号',
  `TRAIN_NO_DESC` varchar(200) DEFAULT NULL COMMENT '车号简写',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '节车号/车型',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  `SYNC_STATUS` varchar(1) DEFAULT '0' COMMENT '同步状态',
  `STATUS` varchar(255) NOT NULL COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='项目工序关系表';


-- track_tighten.qrtz_calendars definition

CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.qrtz_fired_triggers definition

CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.qrtz_job_details definition

CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.qrtz_locks definition

CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.qrtz_paused_trigger_grps definition

CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.qrtz_scheduler_state definition

CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.quality_detail definition

CREATE TABLE `quality_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `QUALITY_ID` varchar(100) DEFAULT NULL COMMENT '质检报告ID',
  `ORDER_NO` varchar(10) DEFAULT NULL COMMENT '序号',
  `CHECK_PROCESS` varchar(200) DEFAULT NULL COMMENT '检查工序',
  `CONN_POSITION` varchar(500) DEFAULT NULL COMMENT '连接部位',
  `RISK` varchar(100) DEFAULT NULL COMMENT '螺栓风险等级',
  `GREASE` varchar(100) DEFAULT NULL COMMENT '胶脂',
  `TECHNOLOGY_NAME` varchar(200) DEFAULT NULL COMMENT '工艺名称',
  `FASTENER_SPECIFICATION` varchar(200) DEFAULT NULL COMMENT '紧固件规格',
  `NUM` varchar(10) DEFAULT NULL COMMENT '数量',
  `TORQUE` varchar(10) DEFAULT NULL COMMENT '力距',
  `WRENCH_SERIAL` varchar(100) DEFAULT NULL COMMENT '扳手序列号',
  `CHECK_RESULT` varchar(100) DEFAULT NULL COMMENT '检查结果',
  `SELF_CHECK_DATE` varchar(100) DEFAULT NULL COMMENT '自检日期',
  `MUTUAL_CHECK_DATE` varchar(100) DEFAULT NULL COMMENT '互检日期',
  `SPECIAL_CHECK_DATE` varchar(100) DEFAULT NULL COMMENT '专检日期',
  `CHECK_RESULT_DESC` varchar(1000) DEFAULT NULL COMMENT '检查结果描述',
  `SELF_CHECK_NAME` varchar(100) DEFAULT NULL COMMENT '自检人员',
  `MUTUAL_CHECK_NAME` varchar(100) DEFAULT NULL COMMENT '互检人员',
  `SPECIAL_CHECK_NAME` varchar(100) DEFAULT NULL COMMENT '专检人员',
  `STATUS` varchar(1) DEFAULT NULL COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='质检报告明细表';


-- track_tighten.quality_report definition

CREATE TABLE `quality_report` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `ORDER_ID` varchar(100) NOT NULL COMMENT '订单ID',
  `PROJECT_CODE` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `TITLE` varchar(500) DEFAULT NULL COMMENT '报告标题',
  `MODEL` varchar(500) DEFAULT NULL COMMENT '型号',
  `PRODUCT_SERIAL` varchar(200) DEFAULT NULL COMMENT '产品序列号',
  `ORDER_NO` varchar(100) DEFAULT NULL COMMENT '序号',
  `CHECK_BY` varchar(200) DEFAULT NULL COMMENT '检查员',
  `TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '列车编号',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车型',
  `EXTEND3` varchar(100) DEFAULT NULL COMMENT '扩展字段3',
  `CHECK_DESC` varchar(1000) DEFAULT NULL COMMENT '检查描述',
  `TIME` datetime DEFAULT NULL COMMENT '日期',
  `STATUS` varchar(1) DEFAULT NULL COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='质检报告';


-- track_tighten.station_info definition

CREATE TABLE `station_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `NAME` varchar(200) NOT NULL COMMENT '名称',
  `TYPE` varchar(1) DEFAULT NULL COMMENT '类型（1=总装 ，2=分装,3=试验）',
  `DEVICE_ID` varchar(2000) DEFAULT NULL COMMENT '设备ID',
  `PERSONNEL` varchar(3000) DEFAULT NULL COMMENT '工位所有员工',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态（0=未启用，1=启用，2=报废，3=异常，4=其他 ）',
  `PERSON_LIABLE` varchar(1000) DEFAULT NULL COMMENT '责任人',
  `IP` varchar(100) DEFAULT NULL COMMENT '控制器IP',
  `STATION_IP` varchar(100) DEFAULT NULL COMMENT '工位MAC地址',
  `REMARK` text COMMENT '备注',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'ESB' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_station_code` (`CODE`) USING BTREE,
  UNIQUE KEY `uni_station_name` (`NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工位信息表';


-- track_tighten.sync_esb definition

CREATE TABLE `sync_esb` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `TITLE` varchar(100) NOT NULL COMMENT '标题',
  `TYPE` varchar(10) NOT NULL COMMENT '类型',
  `DATA` text NOT NULL COMMENT '内容',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `MSG` varchar(2000) DEFAULT NULL COMMENT '错误信息',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='ESB数据同步';


-- track_tighten.sync_mes definition

CREATE TABLE `sync_mes` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `INCR` int(8) NOT NULL AUTO_INCREMENT COMMENT '自增字段',
  `TITLE` varchar(1000) DEFAULT NULL COMMENT '标题',
  `TYPE` varchar(10) DEFAULT NULL COMMENT '数据类型(任务数据)',
  `FLOW_TO` varchar(1) DEFAULT NULL COMMENT '数据流向(0=上行/1=下行)',
  `DATA` text COMMENT '数据内容JSON格式',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `MSG` text COMMENT '错误信息',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_incr` (`INCR`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13395 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='同步MES数据';


-- track_tighten.sync_mes_copy definition

CREATE TABLE `sync_mes_copy` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `INCR` int(8) NOT NULL AUTO_INCREMENT COMMENT '自增字段',
  `TITLE` varchar(1000) DEFAULT NULL COMMENT '标题',
  `TYPE` varchar(10) DEFAULT NULL COMMENT '数据类型(任务数据)',
  `FLOW_TO` varchar(1) DEFAULT NULL COMMENT '数据流向(0=上行/1=下行)',
  `DATA` text COMMENT '数据内容JSON格式',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `MSG` text COMMENT '错误信息',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_incr` (`INCR`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2685 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='同步MES数据';


-- track_tighten.sync_task_detail definition

CREATE TABLE `sync_task_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键ID',
  `TASK_INFO_ID` varchar(100) NOT NULL COMMENT '任务ID',
  `PROCESS_DETAIL_ID` varchar(100) DEFAULT NULL COMMENT '子工序ID',
  `MARK` varchar(22) DEFAULT NULL COMMENT '标记当前任务更换了扳手，目前更换扳手只有电枪换成指定扳手的业务',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '任务状态',
  `START_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(时)',
  `CANCEL_OPERATOR_BY` varchar(100) DEFAULT NULL COMMENT '取消作业任务的操作人',
  `OPERATOR_NAME` varchar(30) DEFAULT NULL COMMENT '操作人名称',
  `OPERATOR_WORK_NO` varchar(100) DEFAULT NULL COMMENT '操作人工号',
  `OPERATOR_BY` varchar(100) DEFAULT NULL COMMENT '操作人',
  `MSG_ID` varchar(100) DEFAULT NULL COMMENT '发送消息ID',
  `MSG` text COMMENT '错误信息',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='子任务信息表';


-- track_tighten.sync_task_info definition

CREATE TABLE `sync_task_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `ORDER_ID` varchar(100) NOT NULL COMMENT '订单ID',
  `WORK_DETAIL_ID` varchar(100) NOT NULL COMMENT '派工单ID',
  `PROJECT_CODE` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `STATION_ID` varchar(100) NOT NULL COMMENT '工位ID',
  `TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车号',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '节车号',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '任务状态',
  `START_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(时)',
  `OPERATOR_BY` text COMMENT '操作人',
  `MSG_ID` varchar(700) DEFAULT NULL COMMENT '发送消息ID',
  `MSG` text COMMENT '错误信息',
  `PRODUCT_SERIAL` varchar(200) DEFAULT NULL COMMENT '产品序列号',
  `SYNC_STATUS` varchar(1) DEFAULT '0' COMMENT '同步状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'LOCAL' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_work_id` (`WORK_DETAIL_ID`) USING BTREE,
  KEY `ind_order_id` (`ORDER_ID`) USING BTREE,
  KEY `ind_device_id` (`DEVICE_ID`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='任务信息表';


-- track_tighten.sync_work_station definition

CREATE TABLE `sync_work_station` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '工位编码',
  `name` varchar(100) NOT NULL COMMENT '工位名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ws_code_uniq` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工位表';


-- track_tighten.sync_work_station_copy definition

CREATE TABLE `sync_work_station_copy` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `code` varchar(100) NOT NULL COMMENT '工位编码',
  `name` varchar(100) NOT NULL COMMENT '工位名称',
  `remark` text COMMENT '备注',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(100) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工位表';


-- track_tighten.sys_announcement definition

CREATE TABLE `sys_announcement` (
  `id` varchar(32) NOT NULL,
  `titile` varchar(100) DEFAULT NULL COMMENT '标题',
  `msg_content` text COMMENT '内容',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `sender` varchar(100) DEFAULT NULL COMMENT '发布人',
  `priority` varchar(255) DEFAULT NULL COMMENT '优先级（L低，M中，H高）',
  `msg_category` varchar(10) NOT NULL DEFAULT '2' COMMENT '消息类型1:通知公告2:系统消息',
  `msg_type` varchar(10) DEFAULT NULL COMMENT '通告对象类型（USER:指定用户，ALL:全体用户）',
  `send_status` varchar(10) DEFAULT NULL COMMENT '发布状态（0未发布，1已发布，2已撤销）',
  `send_time` datetime DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '撤销时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除状态（0，正常，1已删除）',
  `bus_type` varchar(20) DEFAULT NULL COMMENT '业务类型(email:邮件 bpm:流程)',
  `bus_id` varchar(50) DEFAULT NULL COMMENT '业务id',
  `open_type` varchar(20) DEFAULT NULL COMMENT '打开方式(组件：component 路由：url)',
  `open_page` varchar(255) DEFAULT NULL COMMENT '组件/路由 地址',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_ids` text COMMENT '指定用户',
  `msg_abstract` text COMMENT '摘要',
  `dt_task_id` varchar(100) DEFAULT NULL COMMENT '钉钉task_id，用于撤回消息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统通告表';


-- track_tighten.sys_announcement_send definition

CREATE TABLE `sys_announcement_send` (
  `id` varchar(32) DEFAULT NULL,
  `annt_id` varchar(32) DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `read_flag` varchar(10) DEFAULT NULL COMMENT '阅读状态（0未读，1已读）',
  `read_time` datetime DEFAULT NULL COMMENT '阅读时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `star_flag` varchar(10) DEFAULT NULL COMMENT '标星状态( 1为标星 空/0没有标星)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户通告阅读标记表';


-- track_tighten.sys_category definition

CREATE TABLE `sys_category` (
  `id` varchar(36) NOT NULL,
  `pid` varchar(36) DEFAULT NULL COMMENT '父级节点',
  `name` varchar(100) DEFAULT NULL COMMENT '类型名称',
  `code` varchar(100) DEFAULT NULL COMMENT '类型编码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `has_child` varchar(3) DEFAULT NULL COMMENT '是否有子节点',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_code` (`code`) USING BTREE,
  KEY `idx_sc_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_check_rule definition

CREATE TABLE `sys_check_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键id',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_json` varchar(1024) DEFAULT NULL COMMENT '规则JSON',
  `rule_description` varchar(200) DEFAULT NULL COMMENT '规则描述',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_scr_rule_code` (`rule_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_comment definition

CREATE TABLE `sys_comment` (
  `id` varchar(32) NOT NULL,
  `table_name` varchar(50) NOT NULL COMMENT '表名',
  `table_data_id` varchar(32) NOT NULL COMMENT '数据id',
  `from_user_id` varchar(32) NOT NULL COMMENT '来源用户id',
  `to_user_id` varchar(32) DEFAULT NULL COMMENT '发送给用户id(允许为空)',
  `comment_id` varchar(32) DEFAULT NULL COMMENT '评论id(允许为空，不为空时，则为回复)',
  `comment_content` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '回复内容',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_table_data_id` (`table_name`,`table_data_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统评论回复表';


-- track_tighten.sys_data_log definition

CREATE TABLE `sys_data_log` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `data_table` varchar(32) DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) DEFAULT NULL COMMENT '数据ID',
  `data_content` text COMMENT '数据内容',
  `data_version` int(11) DEFAULT NULL COMMENT '版本号',
  `type` varchar(20) DEFAULT 'json' COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdl_data_table_id` (`data_table`,`data_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_data_source definition

CREATE TABLE `sys_data_source` (
  `id` varchar(36) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '数据源编码',
  `name` varchar(100) DEFAULT NULL COMMENT '数据源名称',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `db_type` varchar(10) DEFAULT NULL COMMENT '数据库类型',
  `db_driver` varchar(100) DEFAULT NULL COMMENT '驱动类',
  `db_url` varchar(500) DEFAULT NULL COMMENT '数据源地址',
  `db_name` varchar(100) DEFAULT NULL COMMENT '数据库名称',
  `db_username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `db_password` varchar(100) DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sdc_rule_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_depart definition

CREATE TABLE `sys_depart` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父机构ID',
  `depart_name` varchar(100) NOT NULL COMMENT '机构/部门名称',
  `depart_name_en` varchar(500) DEFAULT NULL COMMENT '英文名',
  `depart_name_abbr` varchar(500) DEFAULT NULL COMMENT '缩写',
  `depart_order` int(11) DEFAULT '0' COMMENT '排序',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `org_category` varchar(10) NOT NULL DEFAULT '1' COMMENT '机构类别 1公司，2组织机构，2岗位',
  `org_type` varchar(10) DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) NOT NULL COMMENT '机构编码',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) DEFAULT NULL COMMENT '传真',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `memo` varchar(500) DEFAULT NULL COMMENT '备注',
  `status` varchar(1) DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除状态（0，正常，1已删除）',
  `qywx_identifier` varchar(100) DEFAULT NULL COMMENT '对接企业微信的ID',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_depart_org_code` (`org_code`) USING BTREE,
  KEY `idx_sd_parent_id` (`parent_id`) USING BTREE,
  KEY `idx_sd_depart_order` (`depart_order`) USING BTREE,
  KEY `idx_sd_org_code` (`org_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组织机构表';


-- track_tighten.sys_depart_permission definition

CREATE TABLE `sys_depart_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据规则id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门权限表';


-- track_tighten.sys_depart_role definition

CREATE TABLE `sys_depart_role` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '部门角色名称',
  `role_code` varchar(100) DEFAULT NULL COMMENT '部门角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色表';


-- track_tighten.sys_depart_role_permission definition

CREATE TABLE `sys_depart_role_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(20) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdrp_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  KEY `idx_sdrp_role_id` (`role_id`) USING BTREE,
  KEY `idx_sdrp_per_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部门角色权限表';


-- track_tighten.sys_depart_role_user definition

CREATE TABLE `sys_depart_role_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `drole_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色用户表';


-- track_tighten.sys_dict definition

CREATE TABLE `sys_dict` (
  `id` varchar(32) NOT NULL,
  `dict_name` varchar(100) NOT NULL COMMENT '字典名称',
  `dict_code` varchar(100) NOT NULL COMMENT '字典编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除状态',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `type` int(1) unsigned zerofill DEFAULT '0' COMMENT '字典类型0为string,1为number',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sd_dict_code` (`dict_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_dict_item definition

CREATE TABLE `sys_dict_item` (
  `id` varchar(32) NOT NULL,
  `dict_id` varchar(32) DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) NOT NULL COMMENT '字典项文本',
  `item_value` varchar(100) NOT NULL COMMENT '字典项值',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_order` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sdi_role_dict_id` (`dict_id`) USING BTREE,
  KEY `idx_sdi_role_sort_order` (`sort_order`) USING BTREE,
  KEY `idx_sdi_status` (`status`) USING BTREE,
  KEY `idx_sdi_dict_val` (`dict_id`,`item_value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_files definition

CREATE TABLE `sys_files` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `url` varchar(1000) DEFAULT NULL COMMENT '文件地址',
  `file_type` varchar(20) DEFAULT NULL COMMENT '文档类型（folder:文件夹 excel:excel doc:word ppt:ppt image:图片  archive:其他文档 video:视频 pdf:pdf）',
  `store_type` varchar(20) DEFAULT NULL COMMENT '文件上传类型(temp/本地上传(临时文件) manage/知识库)',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级id',
  `tenant_id` varchar(100) DEFAULT NULL COMMENT '租户id',
  `file_size` double(13,2) DEFAULT NULL COMMENT '文件大小（kb）',
  `iz_folder` varchar(2) DEFAULT NULL COMMENT '是否文件夹(1：是  0：否)',
  `iz_root_folder` varchar(2) DEFAULT NULL COMMENT '是否为1级文件夹，允许为空 (1：是 )',
  `iz_star` varchar(2) DEFAULT NULL COMMENT '是否标星(1：是  0：否)',
  `down_count` int(11) DEFAULT NULL COMMENT '下载次数',
  `read_count` int(11) DEFAULT NULL COMMENT '阅读次数',
  `share_url` varchar(255) DEFAULT NULL COMMENT '分享链接',
  `share_perms` varchar(2) DEFAULT NULL COMMENT '分享权限(1.关闭分享 2.允许所有联系人查看 3.允许任何人查看)',
  `enable_down` varchar(2) DEFAULT NULL COMMENT '是否允许下载(1：是  0：否)',
  `enable_updat` varchar(2) DEFAULT NULL COMMENT '是否允许修改(1：是  0：否)',
  `del_flag` varchar(2) DEFAULT '0' COMMENT '删除状态(0-正常,1-删除至回收站)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_tenant_id` (`tenant_id`) USING BTREE,
  KEY `index_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='知识库-文档管理';


-- track_tighten.sys_fill_rule definition

CREATE TABLE `sys_fill_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键ID',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_class` varchar(100) DEFAULT NULL COMMENT '规则实现类',
  `rule_params` varchar(200) DEFAULT NULL COMMENT '规则参数',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sfr_rule_code` (`rule_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_form_file definition

CREATE TABLE `sys_form_file` (
  `id` varchar(32) NOT NULL,
  `table_name` varchar(50) NOT NULL COMMENT '表名',
  `table_data_id` varchar(32) NOT NULL COMMENT '数据id',
  `file_id` varchar(32) DEFAULT NULL COMMENT '关联文件id',
  `file_type` varchar(20) DEFAULT NULL COMMENT '文件类型(text:文本, excel:excel doc:word ppt:ppt image:图片  archive:其他文档 video:视频 pdf:pdf）)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_table_form` (`table_name`,`table_data_id`) USING BTREE,
  KEY `index_file_id` (`file_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_gateway_route definition

CREATE TABLE `sys_gateway_route` (
  `id` varchar(36) NOT NULL,
  `router_id` varchar(50) DEFAULT NULL COMMENT '路由ID',
  `name` varchar(32) DEFAULT NULL COMMENT '服务名',
  `uri` varchar(32) DEFAULT NULL COMMENT '服务地址',
  `predicates` text COMMENT '断言',
  `filters` text COMMENT '过滤器',
  `retryable` int(3) DEFAULT NULL COMMENT '是否重试:0-否 1-是',
  `strip_prefix` int(3) DEFAULT NULL COMMENT '是否忽略前缀0-否 1-是',
  `persistable` int(3) DEFAULT NULL COMMENT '是否为保留数据:0-否 1-是',
  `show_api` int(3) DEFAULT NULL COMMENT '是否在接口文档中展示:0-否 1-是',
  `status` int(3) DEFAULT NULL COMMENT '状态:0-无效 1-有效',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


-- track_tighten.sys_log definition

CREATE TABLE `sys_log` (
  `id` varchar(32) NOT NULL,
  `log_type` int(2) DEFAULT NULL COMMENT '日志类型（1登录日志，2操作日志）',
  `log_content` varchar(1000) DEFAULT NULL COMMENT '日志内容',
  `operate_type` int(2) DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) DEFAULT NULL COMMENT '操作用户账号',
  `username` varchar(100) DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext COMMENT '请求参数',
  `request_type` varchar(10) DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sl_userid` (`userid`) USING BTREE,
  KEY `idx_sl_log_type` (`log_type`) USING BTREE,
  KEY `idx_sl_operate_type` (`operate_type`) USING BTREE,
  KEY `idx_sl_create_time` (`create_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统日志表';


-- track_tighten.sys_permission definition

CREATE TABLE `sys_permission` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父id',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) DEFAULT NULL COMMENT '路径',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `component_name` varchar(255) DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8,2) DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `is_leaf` tinyint(1) DEFAULT NULL COMMENT '是否叶子节点:    1是0否',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` int(2) DEFAULT '0' COMMENT '是否隐藏路由: 0否,1是',
  `hide_tab` int(2) DEFAULT NULL COMMENT '是否隐藏tab: 0否,1是',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT '0' COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int(3) DEFAULT '0' COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_menu_type` (`menu_type`) USING BTREE,
  KEY `index_menu_hidden` (`hidden`) USING BTREE,
  KEY `index_menu_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';


-- track_tighten.sys_permission_data_rule definition

CREATE TABLE `sys_permission_data_rule` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `rule_name` varchar(50) DEFAULT NULL COMMENT '规则名称',
  `rule_column` varchar(50) DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(50) DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) DEFAULT NULL COMMENT '规则值',
  `status` varchar(3) DEFAULT NULL COMMENT '权限有效状态1有0否',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_spdr_permission_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_position definition

CREATE TABLE `sys_position` (
  `id` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '职务编码',
  `name` varchar(100) DEFAULT NULL COMMENT '职务名称',
  `post_rank` varchar(2) DEFAULT NULL COMMENT '职级',
  `company_id` varchar(255) DEFAULT NULL COMMENT '公司id',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '组织机构编码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_quartz_job definition

CREATE TABLE `sys_quartz_job` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除状态',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `job_class_name` varchar(255) DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) DEFAULT NULL COMMENT '参数',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` int(1) DEFAULT NULL COMMENT '状态 0正常 -1停止',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_role definition

CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) NOT NULL COMMENT '角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_role_role_code` (`role_code`) USING BTREE,
  KEY `idx_sr_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';


-- track_tighten.sys_role_index definition

CREATE TABLE `sys_role_index` (
  `id` varchar(32) NOT NULL,
  `role_code` varchar(50) DEFAULT NULL COMMENT '角色编码',
  `url` varchar(100) DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '组件',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `priority` int(11) DEFAULT '0' COMMENT '优先级',
  `status` varchar(2) CHARACTER SET utf8 DEFAULT '0' COMMENT '状态0:无效 1:有效',
  `create_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色首页表';


-- track_tighten.sys_role_permission definition

CREATE TABLE `sys_role_permission` (
  `id` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据权限ids',
  `operate_date` datetime DEFAULT NULL COMMENT '操作时间',
  `operate_ip` varchar(100) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_srp_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  KEY `idx_srp_role_id` (`role_id`) USING BTREE,
  KEY `idx_srp_permission_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色权限表';


-- track_tighten.sys_sms definition

CREATE TABLE `sys_sms` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `es_title` varchar(100) DEFAULT NULL COMMENT '消息标题',
  `es_type` varchar(50) DEFAULT NULL COMMENT '发送方式：参考枚举MessageTypeEnum',
  `es_receiver` varchar(50) DEFAULT NULL COMMENT '接收人',
  `es_param` varchar(1000) DEFAULT NULL COMMENT '发送所需参数Json格式',
  `es_content` longtext COMMENT '推送内容',
  `es_send_time` datetime DEFAULT NULL COMMENT '推送时间',
  `es_send_status` varchar(1) DEFAULT NULL COMMENT '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
  `es_send_num` int(11) DEFAULT NULL COMMENT '发送次数 超过5次不再发送',
  `es_result` varchar(255) DEFAULT NULL COMMENT '推送失败原因',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_ss_es_type` (`es_type`) USING BTREE,
  KEY `idx_ss_es_receiver` (`es_receiver`) USING BTREE,
  KEY `idx_ss_es_send_time` (`es_send_time`) USING BTREE,
  KEY `idx_ss_es_send_status` (`es_send_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_sms_template definition

CREATE TABLE `sys_sms_template` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `template_name` varchar(50) DEFAULT NULL COMMENT '模板标题',
  `template_code` varchar(32) NOT NULL COMMENT '模板CODE',
  `template_type` varchar(1) NOT NULL COMMENT '模板类型：1短信 2邮件 3微信',
  `template_content` varchar(1000) NOT NULL COMMENT '模板内容',
  `template_test_json` varchar(1000) DEFAULT NULL COMMENT '模板测试json',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `use_status` varchar(1) DEFAULT NULL COMMENT '是否使用中 1是0否',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sst_template_code` (`template_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_tenant definition

CREATE TABLE `sys_tenant` (
  `id` int(5) NOT NULL COMMENT '租户编码',
  `name` varchar(100) DEFAULT NULL COMMENT '租户名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(100) DEFAULT NULL COMMENT '创建人',
  `begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `status` int(1) DEFAULT NULL COMMENT '状态 1正常 0冻结',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='多租户信息表';


-- track_tighten.sys_third_account definition

CREATE TABLE `sys_third_account` (
  `id` varchar(32) NOT NULL COMMENT '编号',
  `sys_user_id` varchar(32) DEFAULT NULL COMMENT '第三方登录id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态(1-正常,2-冻结)',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态(0-正常,1-已删除)',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `third_user_uuid` varchar(100) DEFAULT NULL COMMENT '第三方账号',
  `third_user_id` varchar(100) DEFAULT NULL COMMENT '第三方app用户账号',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `third_type` varchar(50) DEFAULT NULL COMMENT '登录来源',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_third_account_third_type_third_user_id` (`third_type`,`third_user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_user definition

CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `username` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `avatar` varchar(255) DEFAULT '111_1690166283555.png' COMMENT '头像',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `org_code` varchar(64) DEFAULT NULL COMMENT '登录会话的机构编码',
  `status` tinyint(1) DEFAULT '1' COMMENT '性别(1-正常,2-冻结)',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态(0-正常,1-已删除)',
  `third_id` varchar(100) DEFAULT NULL COMMENT '第三方登录的唯一标识',
  `third_type` varchar(100) DEFAULT NULL COMMENT '第三方类型',
  `activiti_sync` tinyint(1) DEFAULT NULL COMMENT '同步工作流引擎(1-同步,0-不同步)',
  `work_no` varchar(100) DEFAULT NULL COMMENT '工号，唯一键',
  `card_no` varchar(100) DEFAULT NULL COMMENT '卡号',
  `post` varchar(100) DEFAULT NULL COMMENT '职务，关联职务表',
  `telephone` varchar(45) DEFAULT NULL COMMENT '座机号',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_identity` tinyint(1) DEFAULT NULL COMMENT '身份（1普通成员 2上级）',
  `depart_ids` longtext COMMENT '负责部门',
  `rel_tenant_ids` varchar(100) DEFAULT NULL COMMENT '多租户标识',
  `client_id` varchar(64) DEFAULT NULL COMMENT '设备ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_work_no` (`work_no`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_username` (`username`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_phone` (`phone`) USING BTREE,
  UNIQUE KEY `uniq_sys_user_email` (`email`) USING BTREE,
  KEY `idx_su_username` (`username`) USING BTREE,
  KEY `idx_su_status` (`status`) USING BTREE,
  KEY `idx_su_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';


-- track_tighten.sys_user_agent definition

CREATE TABLE `sys_user_agent` (
  `id` varchar(32) NOT NULL COMMENT '序号',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `agent_user_name` varchar(100) DEFAULT NULL COMMENT '代理人用户名',
  `start_time` datetime DEFAULT NULL COMMENT '代理开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '代理结束时间',
  `status` varchar(2) DEFAULT NULL COMMENT '状态0无效1有效',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_sug_user_name` (`user_name`) USING BTREE,
  KEY `idx_sug_status` (`status`) USING BTREE,
  KEY `idx_sug_start_time` (`start_time`) USING BTREE,
  KEY `idx_sug_end_time` (`end_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户代理人设置';


-- track_tighten.sys_user_depart definition

CREATE TABLE `sys_user_depart` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `dep_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `idx_sud_user_id` (`user_id`) USING BTREE,
  KEY `idx_sud_dep_id` (`dep_id`) USING BTREE,
  KEY `idx_sud_user_dep_id` (`user_id`,`dep_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- track_tighten.sys_user_role definition

CREATE TABLE `sys_user_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sur_user_id` (`user_id`) USING BTREE,
  KEY `idx_sur_role_id` (`role_id`) USING BTREE,
  KEY `idx_sur_user_role_id` (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';


-- track_tighten.task_detail definition

CREATE TABLE `task_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键ID',
  `TASK_INFO_ID` varchar(100) NOT NULL COMMENT '任务ID',
  `PROCESS_DETAIL_ID` varchar(100) DEFAULT NULL COMMENT '子工序ID',
  `TARGET` varchar(20) DEFAULT NULL COMMENT '目标扭矩',
  `MARK` varchar(22) DEFAULT NULL COMMENT '标记当前任务更换了扳手，目前更换扳手只有电枪换成指定扳手的业务',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '任务状态',
  `START_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(时)',
  `CANCEL_OPERATOR_BY` varchar(100) DEFAULT NULL COMMENT '取消作业任务的操作人',
  `OPERATOR_NAME` varchar(30) DEFAULT NULL COMMENT '操作人名称',
  `OPERATOR_WORK_NO` varchar(100) DEFAULT NULL COMMENT '操作人工号',
  `OPERATOR_BY` varchar(100) DEFAULT NULL COMMENT '操作人',
  `MSG_ID` varchar(100) DEFAULT NULL COMMENT '发送消息ID',
  `MSG` text COMMENT '错误信息',
  `DATA` varchar(500) DEFAULT NULL COMMENT '数据录入',
  `TIGHTEN_ID` varchar(30) DEFAULT NULL COMMENT '扳手设备拧紧对应的ID，可使用此ID查询扳手内的历史数据',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='子任务信息表';


-- track_tighten.task_info definition

CREATE TABLE `task_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `ORDER_ID` varchar(100) NOT NULL COMMENT '订单ID',
  `WORK_DETAIL_ID` varchar(100) NOT NULL COMMENT '派工单ID',
  `PROJECT_CODE` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '设备ID',
  `STATION_ID` varchar(100) NOT NULL COMMENT '工位ID',
  `TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车号',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '节车号',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '任务状态',
  `START_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(时)',
  `OPERATOR_BY` text COMMENT '操作人',
  `MSG_ID` varchar(700) DEFAULT NULL COMMENT '发送消息ID',
  `MSG` text COMMENT '错误信息',
  `PRODUCT_SERIAL` varchar(200) DEFAULT NULL COMMENT '产品序列号',
  `SYNC_STATUS` varchar(1) DEFAULT '0' COMMENT '同步状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'LOCAL' COMMENT '来源',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_work_id` (`WORK_DETAIL_ID`) USING BTREE,
  KEY `ind_order_id` (`ORDER_ID`) USING BTREE,
  KEY `ind_device_id` (`DEVICE_ID`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='任务信息表';


-- track_tighten.technology_info definition

CREATE TABLE `technology_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(100) DEFAULT NULL COMMENT '工艺编码',
  `NAME` varchar(200) DEFAULT NULL COMMENT '工艺名称',
  `BOLT_MODEL` varchar(100) DEFAULT NULL COMMENT '螺栓规格',
  `APPLICATION_NUMBER` varchar(10) DEFAULT NULL COMMENT '对应拧紧小车控制器内的工艺编码',
  `CONTROL_MODE` varchar(1) DEFAULT '0' COMMENT '控制方式（扭矩，角色，扭矩+角度，角度+扭矩）',
  `TARGET` varchar(10) DEFAULT NULL COMMENT '目标',
  `MONITOR` varchar(10) DEFAULT NULL COMMENT '监控',
  `WORK_MODE` varchar(1) DEFAULT '0' COMMENT '工作模式(脱扣模式 峰值模式，追踪模式)',
  `DEVICE_ID` varchar(100) DEFAULT NULL COMMENT '当前工艺配置的设备ID',
  `TORQUE` varchar(10) DEFAULT NULL COMMENT '扭矩',
  `TORQUE_DEVIATION` decimal(5,2) DEFAULT '5.00' COMMENT '扭力偏差值，百分比数字',
  `TORQUE_DEVIATION_UP` varchar(10) DEFAULT NULL COMMENT '上偏差',
  `TORQUE_DEVIATION_DOWN` varchar(10) DEFAULT NULL COMMENT '下偏差',
  `TORQUE_ANGLE_START` varchar(10) DEFAULT NULL COMMENT '扭矩角度启始值',
  `ANGLE` varchar(10) DEFAULT NULL COMMENT '角度',
  `ANGLE_DEVIATION_UP` varchar(10) DEFAULT NULL COMMENT '上偏差',
  `ANGLE_DEVIATION_DOWN` varchar(10) DEFAULT NULL COMMENT '下偏差',
  `UNIT` varchar(1) DEFAULT '0' COMMENT '单位',
  `DESCR` text COMMENT '描述',
  `REPEAT_COUNT` int(11) DEFAULT NULL COMMENT '重复次数',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态（0=未启用，1=启用，2=报废，3=异常，4=其他 ）',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_technology_code` (`CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工艺信息表';


-- track_tighten.test_user definition

CREATE TABLE `test_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `username` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态(0-正常,1-已删除)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='测试用户表';


-- track_tighten.torque_test_data definition

CREATE TABLE `torque_test_data` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `brand` varchar(50) DEFAULT NULL COMMENT '扳手品牌',
  `max_torque` varchar(30) DEFAULT NULL COMMENT '扳手最大扭矩',
  `min_torque` varchar(30) DEFAULT NULL COMMENT '扳手最小扭矩',
  `mod_type` varchar(100) DEFAULT NULL COMMENT '扳手型号',
  `mod_id` varchar(100) DEFAULT NULL COMMENT '扳手型号ID',
  `pass` varchar(10) DEFAULT NULL COMMENT '测试结果：0 未完成 1 合格 2 不合格',
  `points` varchar(30) DEFAULT NULL COMMENT '测试点位数',
  `serial_no` varchar(50) DEFAULT NULL COMMENT '扳手序列号',
  `test_id` varchar(50) DEFAULT NULL COMMENT '测试ID',
  `times` varchar(30) DEFAULT NULL COMMENT '每个点位测试次数',
  `tol` varchar(50) DEFAULT NULL COMMENT '扭矩精度',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `wrench_id` varchar(50) DEFAULT NULL COMMENT '扳手ID',
  `wrench_type` varchar(10) DEFAULT NULL COMMENT '扳手类型（1 咔哒扳手  2数显扳手  3电动扳手 ）',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扭矩台测试数据表';


-- track_tighten.torque_test_data_detail definition

CREATE TABLE `torque_test_data_detail` (
  `id` varchar(100) NOT NULL COMMENT '主键',
  `data_id` varchar(100) NOT NULL COMMENT '主测试数据ID',
  `pass` varchar(10) DEFAULT NULL COMMENT '测试结果：0 未完成 1 合格 2 不合格',
  `point` varchar(30) DEFAULT NULL COMMENT '测试点位数',
  `serial` varchar(50) DEFAULT NULL COMMENT '测试序号',
  `target` varchar(50) DEFAULT NULL COMMENT '目标扭矩',
  `test_id` varchar(50) DEFAULT NULL COMMENT '测试ID',
  `test_tol` varchar(50) DEFAULT NULL COMMENT '测试精度',
  `tol` varchar(50) DEFAULT NULL COMMENT '合格精度',
  `torque` varchar(50) DEFAULT NULL COMMENT '测试仪扭矩',
  `torque_wrench` varchar(50) DEFAULT NULL COMMENT '扳手扭矩',
  `wrench_id` varchar(50) DEFAULT NULL COMMENT '扳手ID',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扭矩台测试数据详情表';


-- track_tighten.unimas_nt00529002_127 definition

CREATE TABLE `unimas_nt00529002_127` (
  `SEQNO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DBNAME` varchar(255) NOT NULL,
  `TBLNAME` varchar(255) NOT NULL,
  `PKS` varchar(4000) DEFAULT NULL,
  `OLDPKS` varchar(4000) DEFAULT NULL,
  `MARK` tinyint(4) NOT NULL DEFAULT '1',
  `ACT` varchar(2) NOT NULL,
  `ACT_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DEAL_TIME` timestamp NULL DEFAULT NULL,
  `UNIMAS_STATUS` smallint(6) DEFAULT '0',
  `UNIMAS_BRENEW` tinyint(4) DEFAULT '0',
  `UNIMAS_TARGETS` varchar(255) DEFAULT NULL,
  `UNIMAS_MAXPKS` mediumtext,
  PRIMARY KEY (`SEQNO`),
  KEY `IDX_UNIMAS_NT00529002_127` (`TBLNAME`,`UNIMAS_BRENEW`,`SEQNO`,`UNIMAS_STATUS`,`MARK`)
) ENGINE=InnoDB AUTO_INCREMENT=1485 DEFAULT CHARSET=utf8mb4;


-- track_tighten.visualizing_detail definition

CREATE TABLE `visualizing_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `VISUALIZING_ID` varchar(100) NOT NULL COMMENT '可视化ID',
  `ORDER_NO` int(11) NOT NULL COMMENT '序号',
  `POSITION_X` varchar(10) NOT NULL COMMENT 'X坐标',
  `POSITION_Y` varchar(10) NOT NULL COMMENT 'Y坐标',
  `POSITION_Z` varchar(10) DEFAULT NULL COMMENT 'Z坐标',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='可视化明细数据';


-- track_tighten.visualizing_info definition

CREATE TABLE `visualizing_info` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `CODE` varchar(100) NOT NULL COMMENT '编码',
  `NAME` varchar(200) NOT NULL COMMENT '名称',
  `VISUALIZING_PATH` varchar(500) NOT NULL COMMENT '可视化图片地址',
  `POSITION_NUM` int(11) NOT NULL COMMENT '标记数量',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `REMARK` text COMMENT '备注',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `uni_visualizing_code` (`CODE`) USING BTREE,
  UNIQUE KEY `uni_visualizing_name` (`NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='可视化信息表';


-- track_tighten.work_detail definition

CREATE TABLE `work_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `ORDER_ID` varchar(100) NOT NULL COMMENT '订单ID',
  `WORK_ORDER_NO` varchar(100) NOT NULL COMMENT '派工单号',
  `PROCESS_ID` varchar(255) NOT NULL COMMENT '工序ID',
  `ORDER_NO` int(11) NOT NULL COMMENT '顺序',
  `REMARK` text COMMENT '备注',
  `STATUS` varchar(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `SOURCE` varchar(100) NOT NULL DEFAULT 'LOCAL' COMMENT '来源',
  `EXTEND1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXTEND2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `work_order_no_index` (`WORK_ORDER_NO`) USING BTREE,
  UNIQUE KEY `uni_work_orderno` (`WORK_ORDER_NO`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='派工单信息';


-- track_tighten.wrench_base_config definition

CREATE TABLE `wrench_base_config` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `TITLE` varchar(255) NOT NULL COMMENT '标题',
  `TYPE` varchar(255) NOT NULL COMMENT '类型',
  `PARAM` text NOT NULL COMMENT '参数',
  `EXTEND1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXTEND2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `DEVICE_ID` text NOT NULL COMMENT '设备',
  `STATUS` varchar(1) NOT NULL COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扳手的基本设置';


-- track_tighten.wrench_collection_back_log definition

CREATE TABLE `wrench_collection_back_log` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) NOT NULL COMMENT '消息ID',
  `HANDLER_NAME` varchar(100) DEFAULT NULL COMMENT '处理的TOPIC名称或类ID',
  `MSG_TXT` text COMMENT '业务内容',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE,
  KEY `ind_handler_name` (`HANDLER_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扳手采集回写日志';


-- track_tighten.wrench_collection_curve_data definition

CREATE TABLE `wrench_collection_curve_data` (
  `ID` varchar(100) CHARACTER SET utf8mb4 NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '消息ID',
  `TYPE` varchar(5) CHARACTER SET utf8mb4 NOT NULL COMMENT '数据类型1.角度，2.扭矩',
  `TIME` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '拧紧点位间隔耗时(s)',
  `DATA` text COLLATE utf8mb4_unicode_ci COMMENT '拧紧曲线内容',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='扳手拧紧曲线数据';


-- track_tighten.wrench_collection_detail definition

CREATE TABLE `wrench_collection_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) NOT NULL COMMENT '消息ID',
  `TASK_ID` varchar(100) NOT NULL COMMENT '任务ID',
  `TASK_DETAIL_ID` varchar(100) NOT NULL COMMENT '子任务ID',
  `PROCESS_ID` varchar(50) DEFAULT NULL COMMENT '工序ID',
  `STATION_ID` varchar(50) DEFAULT NULL COMMENT '工位ID',
  `PROJECT_CODE` varchar(100) DEFAULT NULL COMMENT '项目编码',
  `PROJECT_NAME` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `PROCESS_DETAIL_ID` varchar(100) DEFAULT NULL COMMENT '子工序ID',
  `TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车号',
  `NODE_TRAIN_NO` varchar(100) DEFAULT NULL COMMENT '车型',
  `PRODUCT_SERIAL` varchar(200) DEFAULT NULL COMMENT '产品序列号',
  `SERIAL` varchar(100) DEFAULT NULL COMMENT '序列号',
  `TARGET_TORQUE` varchar(10) DEFAULT NULL COMMENT '目标扭矩',
  `TARGET_ANGLE` varchar(10) DEFAULT NULL COMMENT '目标角度',
  `ACTUAL_TORQUE` varchar(10) DEFAULT NULL COMMENT '实际扭矩',
  `ACTUAL_ANGLE` varchar(10) DEFAULT NULL COMMENT '实际角度',
  `ORDER_NO` int(10) DEFAULT '0' COMMENT '自增长数据',
  `START_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(毫秒)',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `OPERATOR_WORK_NO` varchar(50) DEFAULT NULL COMMENT '操作人工号',
  `OPERATOR_NAME` varchar(30) DEFAULT NULL COMMENT '操作人名称',
  `ORDER_CODE` varchar(50) DEFAULT NULL COMMENT '生产订单编码',
  `WORK_NO` varchar(50) DEFAULT NULL COMMENT '工单号',
  `WORK_ORDER_NO` varchar(50) DEFAULT NULL COMMENT '派工单号',
  `PROCESS_DESC` varchar(100) DEFAULT NULL COMMENT '工序名称',
  `TECHNOLOGY_DESC` varchar(100) DEFAULT NULL COMMENT '工艺说明',
  `COLLECTION_DATE` datetime DEFAULT NULL COMMENT '采集时间',
  `REMARK` text COMMENT '备注',
  `TIGHTEN_ID` varchar(30) DEFAULT NULL COMMENT '扳手设备拧紧对应的ID，可使用此ID查询扳手内的历史数据',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `EXTEND1` varchar(100) DEFAULT NULL COMMENT '扩展字段1',
  `EXTEND2` varchar(100) DEFAULT NULL COMMENT '扩展字段2',
  `EXTEND3` varchar(100) DEFAULT NULL COMMENT '扩展字段3',
  `EXTEND4` varchar(100) DEFAULT NULL COMMENT '扩展字段4',
  `EXTEND5` varchar(100) DEFAULT NULL COMMENT '扩展字段5',
  `EXTEND6` varchar(100) DEFAULT NULL COMMENT '扩展字段6',
  `EXTEND7` varchar(100) DEFAULT NULL COMMENT '扩展字段7',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE,
  KEY `ind_task_id` (`TASK_ID`) USING BTREE,
  KEY `ind_taskd_id` (`TASK_DETAIL_ID`) USING BTREE,
  KEY `ind_collection_date` (`COLLECTION_DATE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扳手数据采集明细';


-- track_tighten.wrench_collection_log definition

CREATE TABLE `wrench_collection_log` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) NOT NULL COMMENT '消息ID',
  `HANDLER_NAME` varchar(100) DEFAULT NULL COMMENT '处理的TOPIC名称或类ID',
  `MSG_TXT` text COMMENT '业务内容',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE,
  KEY `ind_handler_name` (`HANDLER_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扳手采集日志信息';


-- track_tighten.wrench_up_detail definition

CREATE TABLE `wrench_up_detail` (
  `ID` varchar(100) NOT NULL COMMENT '主键',
  `MSG_ID` varchar(100) DEFAULT NULL,
  `TASK_ID` varchar(100) NOT NULL COMMENT '任务ID',
  `TASK_DETAIL_ID` varchar(100) NOT NULL COMMENT '子任务ID',
  `SERIAL` varchar(100) NOT NULL COMMENT '扳手序列号',
  `TORQUE` varchar(10) NOT NULL COMMENT '扭矩',
  `TORQUE_DEVIATION_UP` varchar(10) DEFAULT NULL COMMENT '扭矩上偏差',
  `TORQUE_DEVIATION_DOWN` varchar(10) DEFAULT NULL COMMENT '扭矩下偏差',
  `ANGLE` varchar(10) DEFAULT NULL COMMENT '角度',
  `ANGLE_DEVIATION_UP` varchar(10) DEFAULT NULL COMMENT '角度上偏差',
  `ANGLE_DEVIATION_DOWN` varchar(10) DEFAULT NULL COMMENT '角度下偏差',
  `CONTROL_MODE` varchar(1) DEFAULT NULL COMMENT '控制方式',
  `WORK_MODE` varchar(1) DEFAULT NULL COMMENT '工作模式(脱扣模式 峰值模式，追踪模式)',
  `REPEAT_COUNT` int(11) DEFAULT NULL COMMENT '重复次数',
  `STATUS` varchar(1) DEFAULT '0' COMMENT '状态（0=已发送，1=已接受）',
  `START_DATE` datetime DEFAULT NULL COMMENT '结束时间',
  `END_DATE` datetime DEFAULT NULL COMMENT '开始时间',
  `CONSUME` varchar(10) DEFAULT NULL COMMENT '耗时(毫秒)',
  `MSG` text COMMENT '错误信息',
  `DEL_FLAG` varchar(1) DEFAULT '0' COMMENT '删除标识',
  `CREATE_By` varchar(100) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `ind_msg_id` (`MSG_ID`) USING BTREE,
  KEY `ind_task_id` (`TASK_ID`) USING BTREE,
  KEY `ind_taskd_id` (`TASK_DETAIL_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扳手数据上行明细';


-- track_tighten.qrtz_triggers definition

CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.qrtz_blob_triggers definition

CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.qrtz_cron_triggers definition

CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.qrtz_simple_triggers definition

CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;


-- track_tighten.qrtz_simprop_triggers definition

CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
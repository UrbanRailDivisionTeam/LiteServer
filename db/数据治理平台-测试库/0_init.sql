CREATE DATABASE `cmd_bi` 

USE `cmd_bi`;
-- cmd_bi.cmd_bd definition

CREATE TABLE `cmd_bd` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `RQSJ` varchar(32) DEFAULT NULL,
  `AB` varchar(32) DEFAULT NULL,
  `T_TYPE_ID` varchar(32) DEFAULT NULL,
  `HB` varchar(32) DEFAULT NULL,
  `JD` varchar(32) DEFAULT NULL,
  `LOCO_NO` varchar(32) DEFAULT NULL,
  `WD` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4035 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- cmd_bi.cmd_gz definition

CREATE TABLE `cmd_gz` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `T_TYPE_ID` varchar(32) DEFAULT NULL,
  `GZ_6A_DAILY` varchar(32) DEFAULT '0',
  `DATE_STR` varchar(32) DEFAULT NULL,
  `GZ_6A_TOTAL` varchar(32) DEFAULT '0',
  `GZ_LATEST_TIME` varchar(32) DEFAULT NULL,
  `GZ_TCMS_TOTAL` varchar(32) DEFAULT '0',
  `LOCO_NO` varchar(32) DEFAULT NULL,
  `GZ_TCDS_DAILY` varchar(32) DEFAULT '0',
  `GZ_TCDS_TOTAL` varchar(32) DEFAULT '0',
  `GZ_TCMS_DAILY` varchar(32) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=126452 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- cmd_bi.cmd_gz_6a definition

CREATE TABLE `cmd_gz_6a` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `RQSJ` varchar(128) DEFAULT NULL,
  `AB` varchar(128) DEFAULT NULL,
  `VER` varchar(128) DEFAULT NULL,
  `SEND_TYPE` varchar(128) DEFAULT NULL,
  `T_TYPE_ID` varchar(128) DEFAULT NULL,
  `GZDJ` varchar(128) DEFAULT NULL,
  `GZMC` varchar(128) DEFAULT NULL,
  `LOCO_NO` varchar(128) DEFAULT NULL,
  `GZDM` varchar(128) DEFAULT NULL,
  `GZKSSJ` varchar(128) DEFAULT NULL,
  `SJSD` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1176442 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- cmd_bi.cmd_gz_tcds definition

CREATE TABLE `cmd_gz_tcds` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `CC` varchar(128) DEFAULT NULL,
  `AB` varchar(128) DEFAULT NULL,
  `CD` varchar(128) DEFAULT NULL,
  `VER` varchar(128) DEFAULT NULL,
  `SBMC` varchar(128) DEFAULT NULL,
  `SEND_TYPE` varchar(128) DEFAULT NULL,
  `T_TYPE_ID` varchar(128) DEFAULT NULL,
  `GZMC` varchar(128) DEFAULT NULL,
  `ZZH` varchar(128) DEFAULT NULL,
  `LOCO_NO` varchar(128) DEFAULT NULL,
  `GZKSSJ` varchar(128) DEFAULT NULL,
  `SJSD` varchar(128) DEFAULT NULL,
  `RQSJ` varchar(128) DEFAULT NULL,
  `GZDJ` varchar(128) DEFAULT NULL,
  `GZDM` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1779 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- cmd_bi.cmd_gz_tcms definition

CREATE TABLE `cmd_gz_tcms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `RQSJ` varchar(128) DEFAULT NULL,
  `AB` varchar(128) DEFAULT NULL,
  `VER` varchar(128) DEFAULT NULL,
  `SEND_TYPE` varchar(128) DEFAULT NULL,
  `T_TYPE_ID` varchar(128) DEFAULT NULL,
  `GZDJ` varchar(128) DEFAULT NULL,
  `GZMC` varchar(128) DEFAULT NULL,
  `LOCO_NO` varchar(128) DEFAULT NULL,
  `GZDM` varchar(128) DEFAULT NULL,
  `GZKSSJ` varchar(128) DEFAULT NULL,
  `SJSD` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13141477 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- cmd_bi.cmd_lkj definition

CREATE TABLE `cmd_lkj` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `CC` varchar(32) DEFAULT NULL,
  `RQSJ` varchar(32) DEFAULT NULL,
  `SS` varchar(32) DEFAULT NULL,
  `ZZ` varchar(32) DEFAULT NULL,
  `AB` varchar(32) DEFAULT NULL,
  `BBKH` varchar(32) DEFAULT NULL,
  `T_TYPE_ID` varchar(32) DEFAULT NULL,
  `LS` varchar(32) DEFAULT NULL,
  `JCXH` varchar(32) DEFAULT NULL,
  `LOCO_NO` varchar(32) DEFAULT NULL,
  `JCGK` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4883 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



CREATE DATABASE `db_zjdemo`;

USE `db_zjdemo`;

-- db_zjdemo.物料对比etl结果表 definition

CREATE TABLE `物料对比etl结果表` (
  `fhelpcode` varchar(255) DEFAULT NULL COMMENT '物料编码',
  `fname_l2` varchar(255) DEFAULT NULL COMMENT 'MDM物料名',
  `matname` varchar(255) DEFAULT NULL COMMENT 'EAS物料名',
  `名称一致性` varchar(255) DEFAULT NULL COMMENT '名称一致性',
  `fmodel` varchar(255) DEFAULT NULL COMMENT 'MDM量纲',
  `matdxlg` varchar(255) DEFAULT NULL COMMENT 'EAS量纲',
  `量纲一致性` varchar(255) DEFAULT NULL COMMENT '量纲一致性',
  `fcz` varchar(255) DEFAULT NULL COMMENT 'MDM材质',
  `matbmat` varchar(255) DEFAULT NULL COMMENT 'EAS材质',
  `材质一致性` varchar(255) DEFAULT NULL COMMENT '材质一致性',
  `fwarrantnumber` varchar(255) DEFAULT NULL COMMENT 'MDM标准',
  `matisdesc` varchar(255) DEFAULT NULL COMMENT 'EAS标准',
  `标准一致性` varchar(255) DEFAULT NULL COMMENT '标准一致性',
  `fname_l22` varchar(255) DEFAULT NULL COMMENT 'MDM单位',
  `matbunit_id` varchar(255) DEFAULT NULL COMMENT 'EAS单位',
  `单位一致性` varchar(255) DEFAULT NULL COMMENT '单位一致性',
  `co_publishtime` varchar(255) DEFAULT NULL COMMENT '更新时间',
  `整体一致性` varchar(255) DEFAULT NULL COMMENT '整体一致性'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.物料etl结果表 definition

CREATE TABLE `物料etl结果表` (
  `matname` varchar(255) DEFAULT NULL COMMENT '物料名称_1',
  `fname_l2` varchar(255) DEFAULT NULL COMMENT '物料名称',
  `名称一致性` varchar(255) DEFAULT NULL COMMENT '名称一致性'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.cj6_crew_resume definition

CREATE TABLE `cj6_crew_resume` (
  `model` varchar(64) DEFAULT NULL COMMENT '车型',
  `che_code` varchar(64) DEFAULT NULL COMMENT '车号',
  `vehicle_sequence` varchar(64) DEFAULT NULL COMMENT '辆序',
  `location_id` varchar(64) DEFAULT NULL COMMENT '功能位置ID',
  `father_location_id` varchar(64) DEFAULT NULL COMMENT '父功能位置ID',
  `sort_code` varchar(64) DEFAULT NULL COMMENT '排序码',
  `level` varchar(64) DEFAULT NULL COMMENT '级别',
  `part_name` varchar(64) DEFAULT NULL COMMENT '配件名称',
  `location_name` varchar(64) DEFAULT NULL COMMENT '位置名称',
  `part_number` varchar(64) DEFAULT NULL COMMENT '配件序列号',
  `product_code` varchar(64) DEFAULT NULL COMMENT '部产品标识代码',
  `material_code` varchar(64) DEFAULT NULL COMMENT '物料编码',
  `production_date` varchar(64) DEFAULT NULL COMMENT '生产日期',
  `part_km` varchar(64) DEFAULT NULL COMMENT '配件走行公里',
  `gys_code` varchar(64) DEFAULT NULL COMMENT '供应商名称',
  `zzc_name` varchar(64) DEFAULT NULL COMMENT '制造厂商名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车组履历';


-- db_zjdemo.cj6_fault_count definition

CREATE TABLE `cj6_fault_count` (
  `id` int(255) DEFAULT NULL,
  `fault_date` varchar(255) DEFAULT NULL COMMENT '故障日期',
  `res_division` varchar(255) DEFAULT NULL COMMENT '责任划分',
  `company_res` varchar(255) DEFAULT NULL COMMENT '公司内部责任',
  `supplier_res` varchar(255) DEFAULT NULL COMMENT '供应商责任',
  `fault_desc` varchar(255) DEFAULT NULL COMMENT '故障描述',
  `troubleshooting` varchar(255) DEFAULT NULL COMMENT '故障处理情况',
  `train_code` varchar(255) DEFAULT NULL COMMENT '列车号',
  `coach_no` varchar(255) DEFAULT NULL COMMENT '车厢号',
  `fault_system` varchar(255) DEFAULT NULL COMMENT '故障系统',
  `fault_drivename` varchar(255) DEFAULT NULL COMMENT '故障设备名称',
  `disposal` varchar(255) DEFAULT NULL COMMENT '处置情况',
  `fault_property` varchar(255) DEFAULT NULL COMMENT '故障性质',
  `fault_partnumber` varchar(255) DEFAULT NULL COMMENT '故障部件号',
  `new_part` varchar(255) DEFAULT NULL COMMENT '新部件号',
  `closing_time` varchar(255) DEFAULT NULL COMMENT '关闭时间',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `fault_persion` varchar(255) DEFAULT NULL COMMENT '故障处理人员',
  `information_feedbackNo` varchar(255) DEFAULT NULL COMMENT '信息反馈编号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  KEY `index_code_system` (`train_code`,`fault_system`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='cj6车故障信息表';


-- db_zjdemo.cj6_pj_change_redorder definition

CREATE TABLE `cj6_pj_change_redorder` (
  `index_1` varchar(200) DEFAULT NULL COMMENT '顺序编号            ',
  `dept_code` varchar(200) DEFAULT NULL COMMENT '单位编码            ',
  `sj_index` varchar(200) DEFAULT NULL COMMENT '换上件序列号        ',
  `train_group_code` varchar(200) DEFAULT NULL COMMENT '车组号              ',
  `change_date` date DEFAULT NULL COMMENT '更换日期            ',
  `bri_date` date DEFAULT NULL COMMENT '生产日期            ',
  `product_sbcode` varchar(200) DEFAULT NULL COMMENT '部产品标识代码      ',
  `zccs` varchar(200) DEFAULT NULL COMMENT '制造厂商            ',
  `lx` varchar(200) DEFAULT NULL COMMENT '辆序                ',
  `ch_dept` varchar(200) DEFAULT NULL COMMENT '更换单位            ',
  `xc` varchar(200) DEFAULT NULL COMMENT '修程                ',
  `ch_reason` varchar(200) DEFAULT NULL COMMENT '更换原因            ',
  `ch_dept_name` varchar(200) DEFAULT NULL COMMENT '更换单位名称        ',
  `xj_index` varchar(200) DEFAULT NULL COMMENT '换下件序列号        ',
  `xj_product_code` varchar(200) DEFAULT NULL COMMENT '换下件部产品标识代码',
  `update_1` date DEFAULT NULL COMMENT '更新日期            ',
  `sccs` varchar(200) DEFAULT NULL COMMENT '生产厂商            ',
  `gnwz_id` varchar(200) DEFAULT NULL COMMENT '  功能位置ID        '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配件更换记录';


-- db_zjdemo.cj6_train_group_driver_info definition

CREATE TABLE `cj6_train_group_driver_info` (
  `kh_riqi` varchar(200) DEFAULT NULL COMMENT '开行日期         ',
  `start_station` varchar(200) DEFAULT NULL COMMENT '始发站           ',
  `end_station` varchar(200) DEFAULT NULL COMMENT '终点站           ',
  `jl_cn` varchar(200) DEFAULT NULL COMMENT '交路车次         ',
  `start_tarin` varchar(200) DEFAULT NULL COMMENT '始发车次         ',
  `train_group_code` varchar(200) DEFAULT NULL COMMENT '车组号           ',
  `cl_train_code` varchar(200) DEFAULT NULL COMMENT '重联车组号       ',
  `mile` varchar(200) DEFAULT NULL COMMENT '里程             ',
  `time_s` varchar(200) DEFAULT NULL COMMENT '时间             ',
  `zc_user` varchar(200) DEFAULT NULL COMMENT '值乘人员姓名     ',
  `zc_phone` varchar(200) DEFAULT NULL COMMENT '值乘人员手机号   ',
  `cl_zc_user` varchar(200) DEFAULT NULL COMMENT '重联值乘人员姓名 ',
  `cl_zc_telep` varchar(200) DEFAULT NULL COMMENT '重联值乘人员手机号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车组开行信息';


-- db_zjdemo.contrast_result definition

CREATE TABLE `contrast_result` (
  `fnumber` varchar(100) DEFAULT NULL,
  `fr1` varchar(200) DEFAULT NULL,
  `fr2` varchar(200) DEFAULT NULL,
  `fsystem1` varchar(50) DEFAULT NULL,
  `fsystem2` varchar(50) DEFAULT NULL,
  `ftype` varchar(50) DEFAULT NULL,
  `fdiff` varchar(50) DEFAULT NULL,
  `op_month` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.contrast_result_test definition

CREATE TABLE `contrast_result_test` (
  `fnumber` varchar(100) DEFAULT NULL,
  `fr1` varchar(200) DEFAULT NULL,
  `fr2` varchar(200) DEFAULT NULL,
  `fsystem1` varchar(50) DEFAULT NULL,
  `fsystem2` varchar(50) DEFAULT NULL,
  `ftype` varchar(50) DEFAULT NULL,
  `fdiff` varchar(50) DEFAULT NULL,
  `op_month` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.dm_all_index_flag_df definition

CREATE TABLE `dm_all_index_flag_df` (
  `target` varchar(100) DEFAULT NULL COMMENT '指标标签',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `value` decimal(10,4) DEFAULT NULL COMMENT '指标值',
  `project_id` varchar(100) DEFAULT NULL COMMENT '项目ID',
  `track_id` varchar(100) DEFAULT NULL COMMENT '跟踪号',
  `storageorgunit` varchar(255) DEFAULT NULL COMMENT '生产组织库存组织',
  `storageorgunit_name` varchar(255) DEFAULT NULL COMMENT '生产组织库存组织名称',
  `type` varchar(255) DEFAULT NULL COMMENT '委外件类型',
  KEY `project_id` (`project_id`),
  KEY `wwd_licensenumber` (`track_id`),
  KEY `index_target` (`target`) USING BTREE,
  KEY `index_storage` (`project_id`,`track_id`,`storageorgunit`,`storageorgunit_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='所有模块相关指标信息';


-- db_zjdemo.dm_all_index_flag_df_20221008 definition

CREATE TABLE `dm_all_index_flag_df_20221008` (
  `target` varchar(100) DEFAULT NULL COMMENT '指标标签',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `value` decimal(10,4) DEFAULT NULL COMMENT '指标值',
  `project_id` varchar(100) DEFAULT NULL COMMENT '项目ID',
  `track_id` varchar(100) DEFAULT NULL COMMENT '跟踪号',
  `storageorgunit` varchar(255) DEFAULT NULL COMMENT '生产组织库存组织',
  `storageorgunit_name` varchar(255) DEFAULT NULL COMMENT '生产组织库存组织名称',
  `type` varchar(255) DEFAULT NULL COMMENT '委外件类型',
  KEY `project_id` (`project_id`),
  KEY `wwd_licensenumber` (`track_id`),
  KEY `index_target` (`target`) USING BTREE,
  KEY `index_storage` (`project_id`,`track_id`,`storageorgunit`,`storageorgunit_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='所有模块相关指标信息';


-- db_zjdemo.dm_all_index_flag_df_new definition

CREATE TABLE `dm_all_index_flag_df_new` (
  `target` varchar(100) DEFAULT NULL COMMENT '指标标签',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `value` decimal(10,4) DEFAULT NULL COMMENT '指标值',
  `project_id` varchar(100) DEFAULT NULL COMMENT '项目ID',
  `track_id` varchar(100) DEFAULT NULL COMMENT '跟踪号',
  `storageorgunit` varchar(255) DEFAULT NULL COMMENT '生产组织库存组织',
  `storageorgunit_name` varchar(255) DEFAULT NULL COMMENT '生产组织库存组织名称',
  `type` varchar(255) DEFAULT NULL COMMENT '委外件类型',
  KEY `project_id` (`project_id`),
  KEY `wwd_licensenumber` (`track_id`),
  KEY `index_target` (`target`) USING BTREE,
  KEY `index_storage` (`project_id`,`track_id`,`storageorgunit`,`storageorgunit_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='所有模块相关指标信息';


-- db_zjdemo.dm_cbd_product_test definition

CREATE TABLE `dm_cbd_product_test` (
  `dr` int(11) DEFAULT NULL COMMENT 'DR',
  `ts` longtext COMMENT 'TS',
  `pk_product` longtext COMMENT 'PK_PRODUCT',
  `memo` longtext COMMENT 'MEMO',
  `standard` longtext COMMENT 'STANDARD',
  `invspec` longtext COMMENT 'INVSPEC',
  `pk_invent` longtext COMMENT 'PK_INVENT',
  `invmodel` longtext COMMENT 'INVMODEL',
  `pk_partgroup` longtext COMMENT 'PK_PARTGROUP',
  `pk_prodtype` longtext COMMENT 'PK_PRODTYPE',
  `partnumber` longtext COMMENT 'PARTNUMBER',
  `pk_lasteditor` longtext COMMENT 'PK_LASTEDITOR',
  `pk_faulttype` longtext COMMENT 'PK_FAULTTYPE',
  `bomversion` longtext COMMENT 'BOMVERSION',
  `code` longtext COMMENT 'CODE',
  `name` longtext COMMENT 'NAME',
  `shortname` longtext COMMENT 'SHORTNAME',
  `pk_prodserial` longtext COMMENT 'PK_PRODSERIAL',
  `pk_tnt` longtext COMMENT 'PK_TNT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CBD_PRODUCT';


-- db_zjdemo.dm_command_dispatch_df definition

CREATE TABLE `dm_command_dispatch_df` (
  `code` varchar(64) DEFAULT NULL COMMENT '编号',
  `name` varchar(64) DEFAULT NULL COMMENT '名称',
  `type` varchar(64) DEFAULT NULL COMMENT '类型',
  `time` varchar(64) DEFAULT NULL COMMENT '发生时间',
  `person` varchar(64) DEFAULT NULL COMMENT '待处理人',
  `status` varchar(64) DEFAULT NULL COMMENT '状态',
  KEY `index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指挥调度';


-- db_zjdemo.dm_crrcbi_craft_bill_info_df definition

CREATE TABLE `dm_crrcbi_craft_bill_info_df` (
  `id` int(11) DEFAULT NULL,
  `design_chg_num` text,
  `craft_bill_num` text,
  `craft_bill_name` text,
  `launch_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `launch_dept_id` text,
  `launch_dept` text,
  `launch_person_id` text,
  `launch_person` text,
  `total_time` int(11) DEFAULT NULL,
  `eas_status` int(11) DEFAULT NULL,
  `esb_status` int(11) DEFAULT NULL,
  `serial_num` text,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.dm_crrcbi_craft_chg_info_df definition

CREATE TABLE `dm_crrcbi_craft_chg_info_df` (
  `id` int(11) DEFAULT NULL,
  `craft_bill_num` text,
  `craft_project_name` text,
  `craft_project_num` text,
  `craft_chg_name` text,
  `craft_chg_num` text,
  `craft_chg_type` text,
  `launch_person_id` text,
  `launch_person` text,
  `launch_dept_id` text,
  `launch_dept` text,
  `launch_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_time` int(11) DEFAULT NULL,
  `esb_status` int(11) DEFAULT NULL,
  `eas_status` int(11) DEFAULT NULL,
  `serial_num` text,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.dm_crrcbi_craft_project_info_df definition

CREATE TABLE `dm_crrcbi_craft_project_info_df` (
  `id` int(11) DEFAULT NULL,
  `project_num` text,
  `name` text,
  `num` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.dm_crrcbi_design_chg_detai_df definition

CREATE TABLE `dm_crrcbi_design_chg_detai_df` (
  `project_id` varchar(64) DEFAULT NULL COMMENT '项目号',
  `chg_order_num` varchar(255) DEFAULT NULL COMMENT '变更单号',
  `chg_order_name` varchar(255) DEFAULT NULL COMMENT '变更单名称',
  `chg_order_type` varchar(64) DEFAULT NULL COMMENT '零部件变更类型:(设计差错、设计改进、成本优化、业主要求及外部因素)',
  `item_type` varchar(64) DEFAULT NULL COMMENT '专业',
  `chg_total` int(255) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设计变更明细表';


-- db_zjdemo.dm_crrcbi_design_chg_info_df definition

CREATE TABLE `dm_crrcbi_design_chg_info_df` (
  `id` int(11) DEFAULT NULL,
  `project_num` text,
  `project_name` text,
  `chg_order_name` text,
  `chg_order_num` text,
  `launch_person_id` text,
  `launch_person` text,
  `launch_dept_id` text,
  `launch_dept` text,
  `launch_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_time` int(11) DEFAULT NULL,
  `eas_status` int(11) DEFAULT NULL,
  `esb_status` int(11) DEFAULT NULL,
  `serial_num` text,
  `status` int(11) DEFAULT NULL,
  `pdate_released` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `process_creation_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.dm_crrcbi_design_chg_rate_df definition

CREATE TABLE `dm_crrcbi_design_chg_rate_df` (
  `fnumber` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `doc_type` varchar(20) DEFAULT NULL COMMENT '专业板块',
  `chg_rate` decimal(10,4) DEFAULT NULL COMMENT '设计变更率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设计变更率';


-- db_zjdemo.dm_crrcbi_design_timeliness_rate definition

CREATE TABLE `dm_crrcbi_design_timeliness_rate` (
  `project_id` varchar(64) DEFAULT NULL COMMENT '项目号',
  `project_num` varchar(255) DEFAULT NULL COMMENT '项目设计号',
  `chg_order_num` varchar(255) DEFAULT NULL COMMENT '变更单号',
  `chg_order_name` varchar(255) DEFAULT NULL COMMENT '变更单名称',
  `launch_person` varchar(255) DEFAULT NULL COMMENT '设计师',
  `pdate_released` datetime DEFAULT NULL COMMENT '完成时间',
  `process_creation_date` datetime DEFAULT NULL COMMENT '创建时间',
  `days` decimal(64,0) DEFAULT NULL COMMENT '相差天数',
  `status` varchar(64) DEFAULT NULL COMMENT '超时未超时状态',
  `launch_person_id` varchar(255) DEFAULT NULL COMMENT '设计师id',
  `fdepartcode` varchar(255) DEFAULT NULL COMMENT '部门id',
  `fdepartname` varchar(255) DEFAULT NULL COMMENT '部门名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='变更及时率';


-- db_zjdemo.dm_crrcbi_designdepartnum_df definition

CREATE TABLE `dm_crrcbi_designdepartnum_df` (
  `deptcode` varchar(64) DEFAULT NULL COMMENT '部门代码',
  `deptname` varchar(64) DEFAULT NULL COMMENT '部门名称',
  `projectid` varchar(64) DEFAULT NULL COMMENT '项目号',
  `numcount` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `depname` varchar(64) DEFAULT NULL COMMENT '部门简称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设计人员分部门人数';


-- db_zjdemo.dm_crrcbi_item_chg_dm definition

CREATE TABLE `dm_crrcbi_item_chg_dm` (
  `item_id` varchar(100) DEFAULT NULL COMMENT '零部件ID',
  `item_name` varchar(255) DEFAULT NULL COMMENT '零部件名称',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `launch_date` datetime(6) DEFAULT NULL COMMENT '最后发起时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='零部件信息与更新';


-- db_zjdemo.dm_crrcbi_item_info_df definition

CREATE TABLE `dm_crrcbi_item_info_df` (
  `id` int(10) unsigned DEFAULT NULL COMMENT 'ID',
  `item_id` varchar(50) DEFAULT NULL COMMENT '零部件ID',
  `item_name` varchar(150) DEFAULT NULL COMMENT '零部件名称',
  `item_revision` varchar(5) DEFAULT NULL COMMENT '零部件版本',
  `item_status` varchar(10) DEFAULT NULL COMMENT '零部件状态',
  `item_type` varchar(150) DEFAULT NULL COMMENT '零部件专业板块',
  `create_id` varchar(50) DEFAULT NULL COMMENT '创建人ID',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `launch_dept_id` varchar(50) DEFAULT NULL COMMENT '部门ID',
  `launch_dept` varchar(50) DEFAULT NULL COMMENT '部门',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `project_id` varchar(50) DEFAULT NULL COMMENT '所属项目ID',
  `project_name` varchar(50) DEFAULT NULL COMMENT '所属项目ID名称',
  `total_time` int(11) DEFAULT NULL,
  `process_creation_date` datetime DEFAULT NULL,
  KEY `ITEM_ID_INDEX` (`item_id`) USING BTREE,
  KEY `PROJECT_ID_INDEX` (`project_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.dm_crri_doc_profer_df definition

CREATE TABLE `dm_crri_doc_profer_df` (
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `valuecount` decimal(10,0) DEFAULT NULL COMMENT '值',
  `project_id` varchar(100) DEFAULT NULL COMMENT '项目号',
  `type` varchar(100) DEFAULT NULL COMMENT '零部件专业板块'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图纸专业数统计';


-- db_zjdemo.dm_eas_design_chg_rate_df definition

CREATE TABLE `dm_eas_design_chg_rate_df` (
  `project_id` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `eas_count` int(10) DEFAULT NULL,
  `item_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设计变更率';


-- db_zjdemo.dm_eas_modularity_rate_df definition

CREATE TABLE `dm_eas_modularity_rate_df` (
  `short_cfpartno` varchar(20) DEFAULT NULL COMMENT '零件短号',
  `fnumber` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `item_type` varchar(255) DEFAULT NULL COMMENT '零部件专业板块',
  `molecule` int(10) DEFAULT NULL COMMENT 'TC零件数',
  `denominator` int(10) DEFAULT NULL COMMENT 'EAS零件数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模块化率';


-- db_zjdemo.dm_eas_t_view_purreceivalbill_df definition

CREATE TABLE `dm_eas_t_view_purreceivalbill_df` (
  `gyscode` varchar(64) DEFAULT NULL COMMENT '供应商编码',
  `gysname` varchar(64) DEFAULT NULL COMMENT '供应商名称',
  `projectcode` varchar(64) DEFAULT NULL COMMENT '项目号编码',
  `projectname` varchar(64) DEFAULT NULL COMMENT '项目号名称',
  `checode` varchar(64) DEFAULT NULL COMMENT '跟踪号',
  `chename` varchar(64) DEFAULT NULL COMMENT '跟踪号名称',
  `materialcode` varchar(64) DEFAULT NULL COMMENT '物料编码',
  `materialname` varchar(64) DEFAULT NULL COMMENT '物料名称',
  `recevinum` int(11) DEFAULT NULL COMMENT '收货数量',
  `qualifiednum` int(11) DEFAULT NULL COMMENT '合格数量',
  `lv` decimal(10,4) DEFAULT NULL COMMENT '合格率',
  KEY `index_project` (`projectcode`),
  KEY `index_tack` (`checode`),
  KEY `index_gys` (`gyscode`,`projectcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商或产品检验合格率';


-- db_zjdemo.dm_eas_tc_different_result1 definition

CREATE TABLE `dm_eas_tc_different_result1` (
  `materialid` varchar(50) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `co_valid` varchar(10) DEFAULT NULL,
  `qywlbm` varchar(50) DEFAULT NULL,
  `matname` varchar(100) DEFAULT NULL,
  `co_valid_h` varchar(10) DEFAULT NULL,
  `qywlbm_h` varchar(50) DEFAULT NULL,
  `matname_h` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.dm_eas_tc_startandendtime_df definition

CREATE TABLE `dm_eas_tc_startandendtime_df` (
  `projectcode` varchar(64) DEFAULT NULL COMMENT '项目编码',
  `starttime` date DEFAULT NULL COMMENT '开始时间',
  `designtime` date DEFAULT NULL COMMENT '设计时间',
  `manufacturetime` date DEFAULT NULL COMMENT '制造时间',
  `trackid` varchar(255) DEFAULT NULL COMMENT '跟踪号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='时间轴';


-- db_zjdemo.dm_eas_tc_startandendtime_df_20221008 definition

CREATE TABLE `dm_eas_tc_startandendtime_df_20221008` (
  `projectcode` varchar(64) DEFAULT NULL COMMENT '项目编码',
  `starttime` date DEFAULT NULL COMMENT '开始时间',
  `designtime` date DEFAULT NULL COMMENT '设计时间',
  `manufacturetime` date DEFAULT NULL COMMENT '制造时间',
  `trackid` varchar(255) DEFAULT NULL COMMENT '跟踪号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='时间轴';


-- db_zjdemo.dm_fracas_fra_frabill_cn_df definition

CREATE TABLE `dm_fracas_fra_frabill_cn_df` (
  `frabill_cn` int(11) DEFAULT NULL COMMENT '百万公里故障率',
  `PRODUCT_NAME` varchar(100) DEFAULT NULL COMMENT '车型',
  `FUNCBAS_NAME` varchar(100) DEFAULT NULL COMMENT '构型',
  `ROOTFUNCBAS_NAME` varchar(100) DEFAULT NULL COMMENT '构型根名称',
  `RESPORG_NAME` varchar(100) DEFAULT NULL COMMENT '生产单位',
  `FRATIME` varchar(100) DEFAULT NULL COMMENT '故障时间',
  `pk_product` varchar(255) DEFAULT NULL COMMENT '车型编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障次数处理表';


-- db_zjdemo.dm_fracas_fra_frabill_lv_df definition

CREATE TABLE `dm_fracas_fra_frabill_lv_df` (
  `frabill_lv` decimal(11,4) DEFAULT NULL COMMENT '百万公里故障率',
  `PRODUCT_NAME` varchar(100) DEFAULT NULL COMMENT '车型',
  `FUNCBAS_NAME` varchar(100) DEFAULT NULL COMMENT '构型',
  `ROOTFUNCBAS_NAME` varchar(100) DEFAULT NULL COMMENT '构型根名称',
  `RESPORG_NAME` varchar(100) DEFAULT NULL COMMENT '生产单位',
  `FRATIME` varchar(100) DEFAULT NULL COMMENT '故障时间',
  `pk_product` varchar(255) DEFAULT NULL COMMENT '车型编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障率处理表';


-- db_zjdemo.dm_hbase_jssl_gps_test_df definition

CREATE TABLE `dm_hbase_jssl_gps_test_df` (
  `trainNumber` varchar(64) DEFAULT NULL,
  `carNumber` varchar(64) DEFAULT NULL,
  `time` varchar(64) DEFAULT NULL,
  `isEffective` varchar(64) DEFAULT NULL,
  `gpsYear` varchar(64) DEFAULT NULL,
  `gpsMonth` varchar(64) DEFAULT NULL,
  `gpsDay` varchar(64) DEFAULT NULL,
  `gpsHour` varchar(64) DEFAULT NULL,
  `gpsMinute` varchar(64) DEFAULT NULL,
  `gpsSecond` varchar(64) DEFAULT NULL,
  `longitudeDegree` varchar(64) DEFAULT NULL,
  `longitudeMinute` varchar(64) DEFAULT NULL,
  `longitudeSecond` varchar(64) DEFAULT NULL,
  `weWarp` varchar(64) DEFAULT NULL,
  `latitudeDegree` varchar(64) DEFAULT NULL,
  `latitudeMinute` varchar(64) DEFAULT NULL,
  `latitudeSecond` varchar(64) DEFAULT NULL,
  `nsWeft` varchar(64) DEFAULT NULL,
  `speed` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='dm_jssl_gps_df_test';


-- db_zjdemo.dm_hexie_fault_info definition

CREATE TABLE `dm_hexie_fault_info` (
  `id` varchar(255) DEFAULT NULL COMMENT '序号',
  `department` varchar(255) DEFAULT NULL COMMENT '局',
  `segment` varchar(255) DEFAULT NULL COMMENT '段',
  `model` varchar(255) DEFAULT NULL COMMENT '车型',
  `number` varchar(255) DEFAULT NULL COMMENT '车号',
  `mileage` varchar(255) DEFAULT NULL COMMENT '故障时走行里程（km）',
  `repair_schedule` varchar(255) DEFAULT NULL COMMENT '修程情况',
  `contractor` varchar(255) DEFAULT NULL COMMENT '承修单位',
  `fault_property` varchar(255) DEFAULT NULL COMMENT '故障性质',
  `fault_type` varchar(255) DEFAULT NULL COMMENT '故障类别',
  `fault_time` varchar(255) DEFAULT NULL COMMENT '故障时间',
  `fault_part` varchar(255) DEFAULT NULL COMMENT '故障部件',
  `fault_desc` varchar(255) DEFAULT NULL COMMENT '故障描述',
  `fault_repire_time` varchar(255) DEFAULT NULL COMMENT '故障修复时间',
  `fault_repire_desc` varchar(255) DEFAULT NULL COMMENT '故障修复描述',
  `responsible_unit` varchar(255) DEFAULT NULL COMMENT '责任单位',
  `handler` varchar(255) DEFAULT NULL COMMENT '处理人',
  `registrant` varchar(255) DEFAULT NULL COMMENT '登记人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='2020-2021年和谐1型机车售后服务故障台账';


-- db_zjdemo.dm_inp_eas_tc_different definition

CREATE TABLE `dm_inp_eas_tc_different` (
  `materialid` varchar(50) NOT NULL,
  `note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`materialid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.dm_mes_usm_exception_bill_df definition

CREATE TABLE `dm_mes_usm_exception_bill_df` (
  `PROJECT_id` varchar(64) DEFAULT NULL COMMENT '项目号',
  `CAR_CODE` varchar(64) DEFAULT NULL COMMENT '跟踪号',
  `EXCEPTION_TYPE_CODE` varchar(64) DEFAULT NULL COMMENT '异常类型编码',
  `EXCEPTION_TYPE_NAME` varchar(64) DEFAULT NULL COMMENT '异常类型名称',
  `EXCEPTION_REMARK` varchar(255) DEFAULT NULL COMMENT '异常描述',
  `WORKORDER_CODE` varchar(64) DEFAULT NULL COMMENT '工单编码',
  `MRL_CODE` varchar(64) DEFAULT NULL COMMENT '物料编码',
  `MRL_NAME` varchar(64) DEFAULT NULL COMMENT '物料名称',
  `LAUNCH_DATE` date DEFAULT NULL COMMENT '发起时间',
  `STATE` varchar(64) DEFAULT NULL COMMENT '异常状态',
  `WORKCENTER_CODE` varchar(64) DEFAULT NULL COMMENT '工作中心编码',
  `WORKCENTER_NAME` varchar(64) DEFAULT NULL COMMENT '工作中心名称',
  `HANDL_ID` varchar(64) DEFAULT NULL COMMENT '处理人',
  `HANDL_DATE` date DEFAULT NULL COMMENT '处理时间',
  `PLAN_PROCESS_DATE` varchar(64) DEFAULT NULL COMMENT '预计处理时长',
  `WORKCELL_CODE` varchar(255) DEFAULT NULL COMMENT '工位编码',
  `WORKCELL_NAME` varchar(255) DEFAULT NULL COMMENT '工位名称',
  `fname` varchar(255) DEFAULT NULL COMMENT '人名称',
  `fdepartcode` varchar(255) DEFAULT NULL COMMENT '部门编码',
  `fdepartname` varchar(255) DEFAULT NULL COMMENT '部门名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生产异常总数表';


-- db_zjdemo.dm_mes_usm_exception_bill_df_20221008 definition

CREATE TABLE `dm_mes_usm_exception_bill_df_20221008` (
  `PROJECT_id` varchar(64) DEFAULT NULL COMMENT '项目号',
  `CAR_CODE` varchar(64) DEFAULT NULL COMMENT '跟踪号',
  `EXCEPTION_TYPE_CODE` varchar(64) DEFAULT NULL COMMENT '异常类型编码',
  `EXCEPTION_TYPE_NAME` varchar(64) DEFAULT NULL COMMENT '异常类型名称',
  `EXCEPTION_REMARK` varchar(255) DEFAULT NULL COMMENT '异常描述',
  `WORKORDER_CODE` varchar(64) DEFAULT NULL COMMENT '工单编码',
  `MRL_CODE` varchar(64) DEFAULT NULL COMMENT '物料编码',
  `MRL_NAME` varchar(64) DEFAULT NULL COMMENT '物料名称',
  `LAUNCH_DATE` date DEFAULT NULL COMMENT '发起时间',
  `STATE` varchar(64) DEFAULT NULL COMMENT '异常状态',
  `WORKCENTER_CODE` varchar(64) DEFAULT NULL COMMENT '工作中心编码',
  `WORKCENTER_NAME` varchar(64) DEFAULT NULL COMMENT '工作中心名称',
  `HANDL_ID` varchar(64) DEFAULT NULL COMMENT '处理人',
  `HANDL_DATE` date DEFAULT NULL COMMENT '处理时间',
  `PLAN_PROCESS_DATE` varchar(64) DEFAULT NULL COMMENT '预计处理时长',
  `WORKCELL_CODE` varchar(255) DEFAULT NULL COMMENT '工位编码',
  `WORKCELL_NAME` varchar(255) DEFAULT NULL COMMENT '工位名称',
  `fname` varchar(255) DEFAULT NULL COMMENT '人名称',
  `fdepartcode` varchar(255) DEFAULT NULL COMMENT '部门编码',
  `fdepartname` varchar(255) DEFAULT NULL COMMENT '部门名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生产异常总数表';


-- db_zjdemo.dm_mes_view_chk_bill_info_df definition

CREATE TABLE `dm_mes_view_chk_bill_info_df` (
  `gid` varchar(64) DEFAULT NULL COMMENT '主键',
  `code` varchar(64) DEFAULT NULL COMMENT '检测单据号',
  `mrl_code` varchar(64) DEFAULT NULL COMMENT '物料编码',
  `chk_type_code` varchar(64) DEFAULT NULL COMMENT '检测类型编码',
  `chk_type_name` varchar(64) DEFAULT NULL COMMENT '检测类型名称',
  `process_state` int(11) DEFAULT NULL COMMENT '处理状态(0待处理',
  `processer` varchar(64) DEFAULT NULL COMMENT '处理人',
  `process_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '处理时间',
  `chk_result` varchar(64) DEFAULT NULL COMMENT '单据检测结果(0未判定、1不合格、5放行、7合格)',
  `chk_flag` int(11) DEFAULT NULL COMMENT '质检标记（1批次检、2序列检）',
  `data_role` varchar(64) DEFAULT NULL COMMENT '工厂gid',
  `work_center_code` varchar(64) DEFAULT NULL COMMENT '产线编码',
  `work_center_name` varchar(64) DEFAULT NULL COMMENT '产线名称',
  `op_code` varchar(64) DEFAULT NULL COMMENT '工序编码',
  `op_name` varchar(64) DEFAULT NULL COMMENT '工序名称',
  `track_order_code` varchar(64) DEFAULT NULL COMMENT '派工单号',
  `pro_code` varchar(64) DEFAULT NULL COMMENT '项目号',
  `car_code` varchar(64) DEFAULT NULL COMMENT '跟踪号',
  `organize_code` varchar(64) DEFAULT NULL COMMENT '组织编码',
  `organize_name` varchar(64) DEFAULT NULL COMMENT '组织名称',
  KEY `gid` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='检测单明细';


-- db_zjdemo.dm_mes_view_chk_bill_summary_df definition

CREATE TABLE `dm_mes_view_chk_bill_summary_df` (
  `organize_name` varchar(64) DEFAULT NULL COMMENT '组织名称',
  `organize_code` varchar(64) DEFAULT NULL COMMENT '组织编码',
  `work_center_name` varchar(64) DEFAULT NULL COMMENT '产线名称',
  `work_center_code` varchar(64) DEFAULT NULL COMMENT '产线编码',
  `pro_code` varchar(64) DEFAULT NULL COMMENT '项目号',
  `car_code` varchar(64) DEFAULT NULL COMMENT '跟踪号',
  `chk_type_name` varchar(64) DEFAULT NULL COMMENT '检测类型名称',
  `chk_type_code` varchar(64) DEFAULT NULL COMMENT '检测类型编码',
  `chk_result` varchar(64) DEFAULT NULL COMMENT '单据检测结果(0未判定、1不合格、5放行、7合格)',
  `total` int(10) DEFAULT NULL COMMENT '数量',
  KEY `index_project` (`pro_code`),
  KEY `index_track` (`car_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='检测单汇总';


-- db_zjdemo.dm_phm_dim_fault_list_info_df definition

CREATE TABLE `dm_phm_dim_fault_list_info_df` (
  `fli_id` int(11) DEFAULT NULL,
  `fault_code` varchar(66) DEFAULT NULL COMMENT '故障编号',
  `coach_no` varchar(4) DEFAULT NULL COMMENT '车厢号',
  `system_id` varchar(255) DEFAULT NULL COMMENT '子系统id',
  `part_name` varchar(100) DEFAULT NULL COMMENT '部件名称',
  `fault_name` varchar(200) DEFAULT NULL COMMENT '故障名称',
  `fault_desc` varchar(500) DEFAULT NULL COMMENT '故障描述',
  `fault_type` varchar(10) DEFAULT NULL COMMENT 'fault_type',
  `fault_level` varchar(4) DEFAULT NULL COMMENT 'fault_level',
  `maintenance_advice` varchar(500) DEFAULT NULL COMMENT '检修建议',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `emergency_code` varchar(32) DEFAULT NULL COMMENT 'emergency_code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障清单表';


-- db_zjdemo.dm_phm_fault_count_df definition

CREATE TABLE `dm_phm_fault_count_df` (
  `train_code` varchar(32) DEFAULT NULL COMMENT '车号',
  `fault_code` varchar(32) DEFAULT NULL COMMENT '故障代码',
  `fault_total` int(10) DEFAULT NULL COMMENT '故障次数',
  `fault_name` varchar(255) DEFAULT NULL COMMENT '故障名称',
  `fault_desc` varchar(255) DEFAULT NULL COMMENT '故障描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障次数统计';


-- db_zjdemo.dm_phm_fault_rate_df definition

CREATE TABLE `dm_phm_fault_rate_df` (
  `ljlc` int(16) DEFAULT NULL COMMENT '累计里程',
  `wTrainNo` varchar(20) DEFAULT NULL COMMENT '车号',
  `fault_count` int(10) DEFAULT NULL COMMENT '故障次数',
  `fault_rate` double(10,4) DEFAULT NULL COMMENT '故障率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障率';


-- db_zjdemo.dm_phm_fault_repair_df definition

CREATE TABLE `dm_phm_fault_repair_df` (
  `id` bigint(20) DEFAULT NULL,
  `train_number_code` varchar(20) DEFAULT NULL COMMENT '车次',
  `train_code` varchar(32) DEFAULT NULL COMMENT '车号',
  `coach_no` varchar(10) DEFAULT NULL COMMENT '车节号',
  `system_id` int(11) DEFAULT NULL COMMENT '子系统id',
  `fault_code` varchar(50) DEFAULT NULL COMMENT '故障id',
  `fault_name` varchar(500) DEFAULT NULL COMMENT '故障名称',
  `fault_type` varchar(8) DEFAULT NULL COMMENT '故障类别',
  `fault_level` varchar(16) DEFAULT NULL COMMENT '故障等级',
  `happen_time` varchar(32) DEFAULT NULL COMMENT '发生时间',
  `end_time` varchar(32) DEFAULT NULL COMMENT '结束时间',
  `state` varchar(255) DEFAULT NULL COMMENT '故障状态  0 代表有故障 1 代表无故障',
  `query_state` varchar(255) DEFAULT NULL COMMENT '查询状态 0代表已推送 1代表未推送'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障信息表';


-- db_zjdemo.dm_phm_full_fault_list_info_df definition

CREATE TABLE `dm_phm_full_fault_list_info_df` (
  `fault_code` varchar(255) DEFAULT NULL COMMENT '故障代码',
  `train_code` varchar(255) DEFAULT NULL COMMENT '车辆号',
  `port` varchar(255) DEFAULT NULL COMMENT '端口',
  `port_size` varchar(255) DEFAULT NULL COMMENT '端口大小',
  `trigger_offset` varchar(255) DEFAULT NULL COMMENT '触发字偏移',
  `trigger_bit_offset` varchar(255) DEFAULT NULL COMMENT '触发位偏移',
  `trigger_time` varchar(255) DEFAULT NULL COMMENT '触发轮询时间',
  `fault_name` varchar(255) DEFAULT NULL COMMENT '故障名称',
  `fault_type` varchar(255) DEFAULT NULL COMMENT '故障类型',
  `fault_level` varchar(255) DEFAULT NULL COMMENT '故障等级1',
  `fault_desc` varchar(255) DEFAULT NULL COMMENT '故障描述',
  `advice` varchar(255) DEFAULT NULL COMMENT '建议',
  `emergency` varchar(255) DEFAULT NULL COMMENT '应急处理',
  `emergency_change_before` varchar(255) DEFAULT NULL COMMENT '应急处理变更前',
  `emergency_change_after` varchar(255) DEFAULT NULL COMMENT '应急处理变更后',
  `change_type` varchar(255) DEFAULT NULL COMMENT '更改类型',
  `change_time` varchar(255) DEFAULT NULL COMMENT '更改日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障清单表';


-- db_zjdemo.dm_planning_result_list_df definition

CREATE TABLE `dm_planning_result_list_df` (
  `material_code` varchar(25) DEFAULT NULL COMMENT '物料图号',
  `material_name` varchar(35) DEFAULT NULL COMMENT '物料名称',
  `entitytree_code` varchar(55) DEFAULT NULL COMMENT '装配构型编码',
  `entitytree_name` varchar(55) DEFAULT NULL COMMENT '装配构型名称',
  `functiontree_code` varchar(55) DEFAULT NULL COMMENT '功能构型编码',
  `project_code` varchar(255) DEFAULT NULL COMMENT '项目编码',
  `project_name` varchar(255) DEFAULT NULL COMMENT '项目名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目追溯策划结果表不是交付件';


-- db_zjdemo.dm_qms2_dept_record_df definition

CREATE TABLE `dm_qms2_dept_record_df` (
  `projectcode` varchar(255) DEFAULT NULL COMMENT '项目号',
  `deptname` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `qty` int(10) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门检验次数';


-- db_zjdemo.dm_qms_inspection_df definition

CREATE TABLE `dm_qms_inspection_df` (
  `entity_id` varchar(255) DEFAULT NULL COMMENT '检验记录ID',
  `project_id` varchar(255) DEFAULT NULL COMMENT '项目id',
  `auth_dept_id` varchar(255) DEFAULT NULL COMMENT '生产单位',
  `auth_dept_name` varchar(255) DEFAULT NULL COMMENT '生产单位名称',
  `version` varchar(255) DEFAULT NULL COMMENT '版本',
  `file_id` varchar(255) DEFAULT NULL COMMENT '模板id',
  `check_result` char(1) DEFAULT NULL COMMENT '检验结果(1不合格 0 合格)',
  `check_status` varchar(255) DEFAULT NULL COMMENT '检验状态',
  `code` varchar(255) DEFAULT NULL COMMENT '检验文件标识',
  `inspection_file_name` varchar(255) DEFAULT NULL COMMENT '检验文件名称',
  `pj_name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `pj_cd` varchar(255) DEFAULT NULL COMMENT '项目编码',
  `functree_id` varchar(255) DEFAULT NULL COMMENT '装配构型ID',
  `material_id` varchar(255) DEFAULT NULL COMMENT '关联物料id',
  `functree_name` varchar(255) DEFAULT NULL COMMENT '检验功能构型名称',
  `g8_gof_old_id` varchar(255) DEFAULT NULL COMMENT '物料代号',
  `object_name` varchar(255) DEFAULT NULL COMMENT '物料名称',
  KEY `index_pj_dept` (`project_id`,`auth_dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='检验合格率';


-- db_zjdemo.dm_wms_delivery_detail_df definition

CREATE TABLE `dm_wms_delivery_detail_df` (
  `wpm_code` varchar(64) DEFAULT NULL COMMENT '项目号',
  `departname` varchar(64) DEFAULT NULL COMMENT '事业部',
  `item_code` varchar(64) DEFAULT NULL COMMENT '物料编码',
  `item_name` varchar(64) DEFAULT NULL COMMENT '物料名称',
  `warehouse_code` varchar(64) DEFAULT NULL COMMENT '库房编码',
  `warehouse_name` varchar(64) DEFAULT NULL COMMENT '库房名',
  `qty` varchar(64) DEFAULT NULL COMMENT '数量',
  `need_time` datetime DEFAULT NULL COMMENT '需求时间',
  `delivery_time` datetime DEFAULT NULL COMMENT '配送时间',
  `delivery_person` varchar(64) DEFAULT NULL COMMENT '配送人',
  `days` varchar(64) DEFAULT NULL COMMENT '相差天数',
  `status` varchar(64) DEFAULT NULL COMMENT '及时不及时状态',
  `unit` varchar(255) DEFAULT NULL COMMENT '单位',
  KEY `union_index_wpm_code` (`wpm_code`) USING BTREE,
  KEY `union_index_departname` (`departname`) USING BTREE,
  KEY `union_index_item_code` (`item_code`) USING BTREE,
  KEY `union_index_item_name` (`item_name`) USING BTREE,
  KEY `union_index_warehose_coce` (`warehouse_code`) USING BTREE,
  KEY `union_index_warehose_name` (`warehouse_name`) USING BTREE,
  KEY `union_index_delivery_time` (`delivery_time`) USING BTREE,
  KEY `union_index_delivery_person` (`delivery_person`) USING BTREE,
  KEY `unioin_index` (`wpm_code`,`departname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='wms配送及时率明细表';


-- db_zjdemo.dm_wms_delivery_lv_df definition

CREATE TABLE `dm_wms_delivery_lv_df` (
  `wpm_code` varchar(64) DEFAULT NULL COMMENT '项目号',
  `departname` varchar(64) DEFAULT NULL COMMENT '事业部',
  `total` varchar(64) DEFAULT NULL COMMENT '总数',
  `notovertime_qty` varchar(64) DEFAULT NULL COMMENT '未超时数',
  `lv` varchar(64) DEFAULT NULL COMMENT '配送及时率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='wms配送及时率';


-- db_zjdemo.dm_wms_material_proportion_df definition

CREATE TABLE `dm_wms_material_proportion_df` (
  `wpm_code` varchar(64) DEFAULT NULL COMMENT '项目号',
  `total` varchar(64) DEFAULT NULL COMMENT '物料总数',
  `owner_material_num` varchar(64) DEFAULT NULL COMMENT '业主物料数',
  `lv` varchar(64) DEFAULT NULL COMMENT '物料占比'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业主物料占比';


-- db_zjdemo.dm_wms_material_proportion_df_20221008 definition

CREATE TABLE `dm_wms_material_proportion_df_20221008` (
  `wpm_code` varchar(64) DEFAULT NULL COMMENT '项目号',
  `total` varchar(64) DEFAULT NULL COMMENT '物料总数',
  `owner_material_num` varchar(64) DEFAULT NULL COMMENT '业主物料数',
  `lv` varchar(64) DEFAULT NULL COMMENT '物料占比'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业主物料占比';


-- db_zjdemo.dm_wms_supplier_material_df definition

CREATE TABLE `dm_wms_supplier_material_df` (
  `wpm_code` varchar(64) DEFAULT NULL COMMENT '项目号',
  `wo_code` varchar(64) DEFAULT NULL COMMENT '供应商编码',
  `wo_name` varchar(64) DEFAULT NULL COMMENT '供应商名称',
  `num` bigint(64) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商按物料项数汇总';


-- db_zjdemo.dm_wms_supplier_material_df_20221008 definition

CREATE TABLE `dm_wms_supplier_material_df_20221008` (
  `wpm_code` varchar(64) DEFAULT NULL COMMENT '项目号',
  `wo_code` varchar(64) DEFAULT NULL COMMENT '供应商编码',
  `wo_name` varchar(64) DEFAULT NULL COMMENT '供应商名称',
  `num` bigint(64) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商按物料项数汇总';


-- db_zjdemo.dm_wms_view_jiche_supplier_df definition

CREATE TABLE `dm_wms_view_jiche_supplier_df` (
  `suppler_cn` int(11) DEFAULT NULL COMMENT '供应商总数',
  `item_cn` int(11) DEFAULT NULL COMMENT '零件数量',
  `item_code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `item_name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `wpm_code` varchar(100) DEFAULT NULL COMMENT '项目号',
  `wpm_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `wwd_licensenumber` varchar(100) DEFAULT NULL COMMENT '跟踪号',
  `wo_code` varchar(100) DEFAULT NULL COMMENT '供应商编码',
  `wo_name` varchar(100) DEFAULT NULL COMMENT '供应商名称',
  `dept_id` varchar(100) DEFAULT NULL COMMENT '部门ID',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '部门名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='中间屏供应商，零部件数量统计';


-- db_zjdemo.dm_wms_view_jiche_supplier_df_copy definition

CREATE TABLE `dm_wms_view_jiche_supplier_df_copy` (
  `suppler_cn` int(11) DEFAULT NULL COMMENT '供应商总数',
  `item_cn` int(11) DEFAULT NULL COMMENT '零件数量',
  `item_code` varchar(100) DEFAULT NULL COMMENT '物料编码',
  `item_name` varchar(100) DEFAULT NULL COMMENT '物料名称',
  `wpm_code` varchar(100) DEFAULT NULL COMMENT '项目号',
  `wpm_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `wwd_licensenumber` varchar(100) DEFAULT NULL COMMENT '跟踪号',
  `wo_code` varchar(100) DEFAULT NULL COMMENT '供应商编码',
  `wo_name` varchar(100) DEFAULT NULL COMMENT '供应商名称',
  `dept_id` varchar(100) DEFAULT NULL COMMENT '部门ID',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '部门名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='中间屏供应商，零部件数量统计';


-- db_zjdemo.dm_wms_view_jiche_supplier_summary_df definition

CREATE TABLE `dm_wms_view_jiche_supplier_summary_df` (
  `suppler_cn` int(11) DEFAULT NULL COMMENT '供应商总数',
  `item_cn` int(11) DEFAULT NULL COMMENT '零件数量',
  `wpm_code` varchar(100) DEFAULT NULL COMMENT '项目号',
  `wpm_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `wwd_licensenumber` varchar(100) DEFAULT NULL COMMENT '跟踪号',
  `wo_code` varchar(100) DEFAULT NULL COMMENT '供应商编码',
  `wo_name` varchar(100) DEFAULT NULL COMMENT '供应商名称',
  `dept_id` varchar(100) DEFAULT NULL COMMENT '部门ID',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '部门名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商零部件数量汇总';


-- db_zjdemo.dm_yk_design_change_cn_df definition

CREATE TABLE `dm_yk_design_change_cn_df` (
  `design_cn` varchar(100) DEFAULT NULL COMMENT '设计变更数',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `launch_person_id` varchar(100) DEFAULT NULL,
  `parentId` varchar(100) DEFAULT NULL COMMENT '人员id',
  `fdepartcode` varchar(100) DEFAULT NULL COMMENT '部门代码',
  `fdepartname` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `fname` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `project_num` varchar(100) DEFAULT NULL COMMENT '项目号',
  KEY `index_name` (`project_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设计变更数';


-- db_zjdemo.hbase_js_gps_copy definition

CREATE TABLE `hbase_js_gps_copy` (
  `coed1` varchar(64) DEFAULT NULL,
  `code2` varchar(64) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `fram_cycle` varchar(64) DEFAULT NULL,
  `sourceHost` varchar(64) DEFAULT NULL,
  `targetHost` varchar(64) DEFAULT NULL,
  `port` varchar(64) DEFAULT NULL,
  `sourceSystemCode` varchar(64) DEFAULT NULL,
  `fd` varchar(64) DEFAULT NULL,
  `contentLenth` varchar(64) DEFAULT NULL,
  `data74` varchar(64) DEFAULT NULL,
  `data83` varchar(64) DEFAULT NULL,
  `lkjCarNo1` varchar(64) DEFAULT NULL,
  `lkjCarNo2` varchar(64) DEFAULT NULL,
  `trainNumber` varchar(64) DEFAULT NULL,
  `carNumber` varchar(64) DEFAULT NULL,
  `time` varchar(64) DEFAULT NULL,
  `isEffectiveA` varchar(64) DEFAULT NULL,
  `gpsYearA` varchar(64) DEFAULT NULL,
  `gpsMonthA` varchar(64) DEFAULT NULL,
  `gpsDayA` varchar(64) DEFAULT NULL,
  `gpsHourA` varchar(64) DEFAULT NULL,
  `gpsMinuteA` varchar(64) DEFAULT NULL,
  `gpsSecondA` varchar(64) DEFAULT NULL,
  `longitudeDegreeA` varchar(64) DEFAULT NULL,
  `longitudeMinuteA` varchar(64) DEFAULT NULL,
  `longitudeSecondA` varchar(64) DEFAULT NULL,
  `weWarpA` varchar(64) DEFAULT NULL,
  `latitudeDegreeA` varchar(64) DEFAULT NULL,
  `latitudeMinuteA` varchar(64) DEFAULT NULL,
  `latitudeSecondA` varchar(64) DEFAULT NULL,
  `nsWeftA` varchar(64) DEFAULT NULL,
  `speedA` varchar(64) DEFAULT NULL,
  `isEffectiveB` varchar(64) DEFAULT NULL,
  `gpsYearB` varchar(64) DEFAULT NULL,
  `gpsMonthB` varchar(64) DEFAULT NULL,
  `gpsDayB` varchar(64) DEFAULT NULL,
  `gpsHourB` varchar(64) DEFAULT NULL,
  `gpsMinuteB` varchar(64) DEFAULT NULL,
  `gpsSecondB` varchar(64) DEFAULT NULL,
  `longitudeDegreeB` varchar(64) DEFAULT NULL,
  `longitudeMinuteB` varchar(64) DEFAULT NULL,
  `longitudeSecondB` varchar(64) DEFAULT NULL,
  `weWarpB` varchar(64) DEFAULT NULL,
  `latitudeDegreeB` varchar(64) DEFAULT NULL,
  `latitudeMinuteB` varchar(64) DEFAULT NULL,
  `latitudeSecondB` varchar(64) DEFAULT NULL,
  `nsWeftB` varchar(64) DEFAULT NULL,
  `speedB` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='js_gps';


-- db_zjdemo.hbase_js_gps_df definition

CREATE TABLE `hbase_js_gps_df` (
  `key` varchar(64) DEFAULT NULL,
  `coed1` varchar(64) DEFAULT NULL,
  `code2` varchar(64) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `fram_cycle` varchar(64) DEFAULT NULL,
  `sourceHost` varchar(64) DEFAULT NULL,
  `targetHost` varchar(64) DEFAULT NULL,
  `port` varchar(64) DEFAULT NULL,
  `sourceSystemCode` varchar(64) DEFAULT NULL,
  `fd` varchar(64) DEFAULT NULL,
  `contentLenth` varchar(64) DEFAULT NULL,
  `data74` varchar(64) DEFAULT NULL,
  `data83` varchar(64) DEFAULT NULL,
  `lkjCarNo1` varchar(64) DEFAULT NULL,
  `lkjCarNo2` varchar(64) DEFAULT NULL,
  `trainNumber` varchar(64) DEFAULT NULL,
  `carNumber` varchar(64) DEFAULT NULL,
  `time` varchar(64) DEFAULT NULL,
  `isEffectiveA` varchar(64) DEFAULT NULL,
  `gpsYearA` varchar(64) DEFAULT NULL,
  `gpsMonthA` varchar(64) DEFAULT NULL,
  `gpsDayA` varchar(64) DEFAULT NULL,
  `gpsHourA` varchar(64) DEFAULT NULL,
  `gpsMinuteA` varchar(64) DEFAULT NULL,
  `gpsSecondA` varchar(64) DEFAULT NULL,
  `longitudeDegreeA` varchar(64) DEFAULT NULL,
  `longitudeMinuteA` varchar(64) DEFAULT NULL,
  `longitudeSecondA` varchar(64) DEFAULT NULL,
  `weWarpA` varchar(64) DEFAULT NULL,
  `latitudeDegreeA` varchar(64) DEFAULT NULL,
  `latitudeMinuteA` varchar(64) DEFAULT NULL,
  `latitudeSecondA` varchar(64) DEFAULT NULL,
  `nsWeftA` varchar(64) DEFAULT NULL,
  `speedA` varchar(64) DEFAULT NULL,
  `isEffectiveB` varchar(64) DEFAULT NULL,
  `gpsYearB` varchar(64) DEFAULT NULL,
  `gpsMonthB` varchar(64) DEFAULT NULL,
  `gpsDayB` varchar(64) DEFAULT NULL,
  `gpsHourB` varchar(64) DEFAULT NULL,
  `gpsMinuteB` varchar(64) DEFAULT NULL,
  `gpsSecondB` varchar(64) DEFAULT NULL,
  `longitudeDegreeB` varchar(64) DEFAULT NULL,
  `longitudeMinuteB` varchar(64) DEFAULT NULL,
  `longitudeSecondB` varchar(64) DEFAULT NULL,
  `weWarpB` varchar(64) DEFAULT NULL,
  `latitudeDegreeB` varchar(64) DEFAULT NULL,
  `latitudeMinuteB` varchar(64) DEFAULT NULL,
  `latitudeSecondB` varchar(64) DEFAULT NULL,
  `nsWeftB` varchar(64) DEFAULT NULL,
  `speedB` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='js_gps';


-- db_zjdemo.hbase_js_tax_df definition

CREATE TABLE `hbase_js_tax_df` (
  `key` varchar(64) DEFAULT NULL,
  `coed1` varchar(64) DEFAULT NULL,
  `code2` varchar(64) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `fram_cycle` varchar(64) DEFAULT NULL,
  `sourceHost` varchar(64) DEFAULT NULL,
  `targetHost` varchar(64) DEFAULT NULL,
  `port` varchar(64) DEFAULT NULL,
  `sourceSystemCode` varchar(64) DEFAULT NULL,
  `fd` varchar(64) DEFAULT NULL,
  `contentLenth` varchar(64) DEFAULT NULL,
  `data74` varchar(64) DEFAULT NULL,
  `data83` varchar(64) DEFAULT NULL,
  `lkjCarNo1` varchar(64) DEFAULT NULL,
  `lkjCarNo2` varchar(64) DEFAULT NULL,
  `trainNumber` varchar(64) DEFAULT NULL,
  `carNumber` varchar(64) DEFAULT NULL,
  `time` varchar(64) DEFAULT NULL,
  `taxAddress` varchar(64) DEFAULT NULL,
  `signatureCode` varchar(64) DEFAULT NULL,
  `sign` varchar(64) DEFAULT NULL,
  `softVersion` varchar(64) DEFAULT NULL,
  `stationNumber` varchar(64) DEFAULT NULL,
  `TrainTypeIdentifier` varchar(64) DEFAULT NULL,
  `driverNumber` varchar(64) DEFAULT NULL,
  `coDriverNumber` varchar(64) DEFAULT NULL,
  `locomotiveModel` varchar(64) DEFAULT NULL,
  `actualRoutNumber` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `TrainNumberPart` varchar(64) DEFAULT NULL,
  `check1` varchar(64) DEFAULT NULL,
  `taxAddress2` varchar(64) DEFAULT NULL,
  `signatureCode2` varchar(64) DEFAULT NULL,
  `testUnitCode` varchar(64) DEFAULT NULL,
  `time2` varchar(64) DEFAULT NULL,
  `realSpeed` varchar(64) DEFAULT NULL,
  `LocomotiveSignal` varchar(64) DEFAULT NULL,
  `LocomotiveWork` varchar(64) DEFAULT NULL,
  `signaNumber` varchar(64) DEFAULT NULL,
  `signaType` varchar(64) DEFAULT NULL,
  `KilometePost` varchar(64) DEFAULT NULL,
  `totalWeight` varchar(64) DEFAULT NULL,
  `Comptroller` varchar(64) DEFAULT NULL,
  `vehiclenNumber` varchar(64) DEFAULT NULL,
  `type2` varchar(64) DEFAULT NULL,
  `TrainNumberPart2` varchar(64) DEFAULT NULL,
  `routeNo` varchar(64) DEFAULT NULL,
  `stationNumber2` varchar(64) DEFAULT NULL,
  `driverNumber2` varchar(64) DEFAULT NULL,
  `coDriverNumber2` varchar(64) DEFAULT NULL,
  `locomotiveNumber` varchar(64) DEFAULT NULL,
  `locomotiveModel2` varchar(64) DEFAULT NULL,
  `trainPipePressure` varchar(64) DEFAULT NULL,
  `deviceStatus` varchar(64) DEFAULT NULL,
  `check2` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='js_tax';


-- db_zjdemo.hbase_js_zj_df definition

CREATE TABLE `hbase_js_zj_df` (
  `key` varchar(64) DEFAULT NULL,
  `coed1` varchar(64) DEFAULT NULL,
  `code2` varchar(64) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `fram_cycle` varchar(64) DEFAULT NULL,
  `sourceHost` varchar(64) DEFAULT NULL,
  `targetHost` varchar(64) DEFAULT NULL,
  `port` varchar(64) DEFAULT NULL,
  `sourceSystemCode` varchar(64) DEFAULT NULL,
  `fd` varchar(64) DEFAULT NULL,
  `contentLenth` varchar(64) DEFAULT NULL,
  `data74` varchar(64) DEFAULT NULL,
  `data83` varchar(64) DEFAULT NULL,
  `lkjCarNo1` varchar(64) DEFAULT NULL,
  `lkjCarNo2` varchar(64) DEFAULT NULL,
  `trainNumber` varchar(64) DEFAULT NULL,
  `carNumber` varchar(64) DEFAULT NULL,
  `time` varchar(64) DEFAULT NULL,
  `VersionBA` varchar(64) DEFAULT NULL,
  `versionCA` varchar(64) DEFAULT NULL,
  `mvbCardInfoA` varchar(64) DEFAULT NULL,
  `serialportInfoA` varchar(64) DEFAULT NULL,
  `wirelessInfoA` varchar(64) DEFAULT NULL,
  `mvbInfoA` varchar(64) DEFAULT NULL,
  `udpCountA` varchar(64) DEFAULT NULL,
  `qyUdpStatusA` varchar(64) DEFAULT NULL,
  `tfUdpStatusA` varchar(64) DEFAULT NULL,
  `gzqUdpStatusA` varchar(64) DEFAULT NULL,
  `gwUdpStatusA` varchar(64) DEFAULT NULL,
  `saUdpStatusA` varchar(64) DEFAULT NULL,
  `serialporCountA` varchar(64) DEFAULT NULL,
  `taxStatusA` varchar(64) DEFAULT NULL,
  `cdjStatusA` varchar(64) DEFAULT NULL,
  `VersionBC` varchar(64) DEFAULT NULL,
  `versionCC` varchar(64) DEFAULT NULL,
  `mvbCardInfoC` varchar(64) DEFAULT NULL,
  `serialportInfoC` varchar(64) DEFAULT NULL,
  `wirelessInfoC` varchar(64) DEFAULT NULL,
  `mvbInfoC` varchar(64) DEFAULT NULL,
  `udpCountC` varchar(64) DEFAULT NULL,
  `qyUdpStatusC` varchar(64) DEFAULT NULL,
  `tfUdpStatusC` varchar(64) DEFAULT NULL,
  `gzqUdpStatusC` varchar(64) DEFAULT NULL,
  `gwUdpStatusC` varchar(64) DEFAULT NULL,
  `saUdpStatusC` varchar(64) DEFAULT NULL,
  `serialporCountC` varchar(64) DEFAULT NULL,
  `taxStatusC` varchar(64) DEFAULT NULL,
  `cdjStatusC` varchar(64) DEFAULT NULL,
  `VersionBB` varchar(64) DEFAULT NULL,
  `versionCB` varchar(64) DEFAULT NULL,
  `mvbCardInfoB` varchar(64) DEFAULT NULL,
  `serialportInfoB` varchar(64) DEFAULT NULL,
  `wirelessInfoB` varchar(64) DEFAULT NULL,
  `mvbInfoB` varchar(64) DEFAULT NULL,
  `udpCountB` varchar(64) DEFAULT NULL,
  `qyUdpStatusB` varchar(64) DEFAULT NULL,
  `tfUdpStatusB` varchar(64) DEFAULT NULL,
  `gzqUdpStatusB` varchar(64) DEFAULT NULL,
  `gwUdpStatusB` varchar(64) DEFAULT NULL,
  `saUdpStatusB` varchar(64) DEFAULT NULL,
  `serialporCountB` varchar(64) DEFAULT NULL,
  `taxStatusB` varchar(64) DEFAULT NULL,
  `cdjStatusB` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='js_zj';


-- db_zjdemo.hbase_jssl_gps_df definition

CREATE TABLE `hbase_jssl_gps_df` (
  `key` varchar(64) DEFAULT NULL,
  `coed1` varchar(64) DEFAULT NULL COMMENT '特征字节 数据头特征码0xAA',
  `code2` varchar(64) DEFAULT NULL COMMENT '特征字节 数据头特征码0x55',
  `version` varchar(64) DEFAULT NULL COMMENT '协议版本X（版本号格式X.Y）',
  `fram_cycle` varchar(64) DEFAULT NULL COMMENT '帧号',
  `sourceHost` varchar(64) DEFAULT NULL,
  `targetHost` varchar(64) DEFAULT NULL,
  `port` varchar(64) DEFAULT NULL,
  `sourceSystemCode` varchar(64) DEFAULT NULL,
  `contentLenth` varchar(64) DEFAULT NULL,
  `data83` varchar(64) DEFAULT NULL,
  `data76` varchar(64) DEFAULT NULL,
  `trainNumber` varchar(64) DEFAULT NULL COMMENT '列车号',
  `carNumber` varchar(64) DEFAULT NULL COMMENT '车号',
  `time` varchar(64) DEFAULT NULL,
  `isEffective` varchar(64) DEFAULT NULL COMMENT 'GPS数据是否有效',
  `gpsYear` varchar(64) DEFAULT NULL COMMENT '年',
  `gpsMonth` varchar(64) DEFAULT NULL COMMENT '月',
  `gpsDay` varchar(64) DEFAULT NULL COMMENT '日',
  `gpsHour` varchar(64) DEFAULT NULL COMMENT '时',
  `gpsMinute` varchar(64) DEFAULT NULL COMMENT '分',
  `gpsSecond` varchar(64) DEFAULT NULL COMMENT '秒',
  `longitudeDegree` varchar(64) DEFAULT NULL COMMENT '度',
  `longitudeMinute` varchar(64) DEFAULT NULL COMMENT '分',
  `longitudeSecond` varchar(64) DEFAULT NULL COMMENT '秒',
  `weWarp` varchar(64) DEFAULT NULL COMMENT '东西经',
  `latitudeDegree` varchar(64) DEFAULT NULL COMMENT '度',
  `latitudeMinute` varchar(64) DEFAULT NULL COMMENT '分',
  `latitudeSecond` varchar(64) DEFAULT NULL COMMENT '秒',
  `nsWeft` varchar(64) DEFAULT NULL COMMENT '南北纬',
  `speed` varchar(64) DEFAULT NULL COMMENT '速度'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='jssl_gps';


-- db_zjdemo.hbase_jssl_tax_df definition

CREATE TABLE `hbase_jssl_tax_df` (
  `key` varchar(64) DEFAULT NULL,
  `coed1` varchar(64) DEFAULT NULL,
  `code2` varchar(64) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `fram_cycle` varchar(64) DEFAULT NULL,
  `sourceHost` varchar(64) DEFAULT NULL,
  `targetHost` varchar(64) DEFAULT NULL,
  `port` varchar(64) DEFAULT NULL,
  `sourceSystemCode` varchar(64) DEFAULT NULL,
  `contentLenth` varchar(64) DEFAULT NULL,
  `data83` varchar(64) DEFAULT NULL,
  `data76` varchar(64) DEFAULT NULL,
  `trainNumber` varchar(64) DEFAULT NULL,
  `carNumber` varchar(64) DEFAULT NULL,
  `time` varchar(64) DEFAULT NULL,
  `taxAddress` varchar(64) DEFAULT NULL,
  `signatureCode` varchar(64) DEFAULT NULL,
  `sign` varchar(64) DEFAULT NULL,
  `softVersion` varchar(64) DEFAULT NULL,
  `stationNumber` varchar(64) DEFAULT NULL,
  `TrainTypeIdentifier` varchar(64) DEFAULT NULL,
  `driverNumber` varchar(64) DEFAULT NULL,
  `coDriverNumber` varchar(64) DEFAULT NULL,
  `locomotiveModel` varchar(64) DEFAULT NULL,
  `actualRoutNumber` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `TrainNumberPart` varchar(64) DEFAULT NULL,
  `check1` varchar(64) DEFAULT NULL,
  `taxAddress2` varchar(64) DEFAULT NULL,
  `signatureCode2` varchar(64) DEFAULT NULL,
  `testUnitCode` varchar(64) DEFAULT NULL,
  `time2` varchar(64) DEFAULT NULL,
  `realSpeed` varchar(64) DEFAULT NULL,
  `LocomotiveSignal` varchar(64) DEFAULT NULL,
  `LocomotiveWork` varchar(64) DEFAULT NULL,
  `signaNumber` varchar(64) DEFAULT NULL,
  `signaType` varchar(64) DEFAULT NULL,
  `KilometePost` varchar(64) DEFAULT NULL,
  `totalWeight` varchar(64) DEFAULT NULL,
  `Comptroller` varchar(64) DEFAULT NULL,
  `vehiclenNumber` varchar(64) DEFAULT NULL,
  `type2` varchar(64) DEFAULT NULL,
  `TrainNumberPart2` varchar(64) DEFAULT NULL,
  `routeNo` varchar(64) DEFAULT NULL,
  `stationNumber2` varchar(64) DEFAULT NULL,
  `driverNumber2` varchar(64) DEFAULT NULL,
  `coDriverNumber2` varchar(64) DEFAULT NULL,
  `locomotiveNumber` varchar(64) DEFAULT NULL,
  `locomotiveModel2` varchar(64) DEFAULT NULL,
  `trainPipePressure` varchar(64) DEFAULT NULL,
  `deviceStatus` varchar(64) DEFAULT NULL,
  `check2` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='jssl_tax';


-- db_zjdemo.js_phm_realtimeinfo definition

CREATE TABLE `js_phm_realtimeinfo` (
  `kszd` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '快速制动(0无效1有效)',
  `chLongRef` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `chLatRef` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `wcyc` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '尾车钥匙(0无效1有效)',
  `wErrorCount` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ljlc` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '累计里程',
  `bczdhj` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '保持制动缓解(0无效1有效)',
  `jw` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '级位',
  `tcyc` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '头车钥匙(0无效1有效)',
  `dwLat` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '纬度',
  `dwTime` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `lcsd` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '列车速度',
  `wTrainNo` varchar(64) COLLATE utf8_bin NOT NULL,
  `dwLong` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '经度',
  `zdzt` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '制动状态(0无效1有效)',
  `qljjzdms` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '全列紧急制动模式(0无效1有效)',
  `blzkc` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '本列主控车(0无效1有效)',
  PRIMARY KEY (`wTrainNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='实时数据';


-- db_zjdemo.material_class definition

CREATE TABLE `material_class` (
  `code` varchar(10) DEFAULT NULL COMMENT '分类编码',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.material_class_test definition

CREATE TABLE `material_class_test` (
  `code` varchar(10) DEFAULT NULL COMMENT '分类编码',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.mdm_eas_mat definition

CREATE TABLE `mdm_eas_mat` (
  `ID` longtext COMMENT '物料编码',
  `MDM_Name` longtext COMMENT 'MDM物料名称',
  `MDM_DXLG` longtext,
  `MDM_MAT` longtext,
  `MDM_ISDESC` longtext,
  `MDM_Unit` longtext COMMENT 'MDM_计量单位',
  `EAS_Name` longtext COMMENT 'EAS_物料名称',
  `EAS_DXLG` longtext COMMENT 'EAS_规格型号（大小量纲）',
  `EAS_MAT` longtext COMMENT 'EAS_材质（基本物料）',
  `EAS_ISDESC` longtext COMMENT 'EAS_标准',
  `EAS_Unit` longtext COMMENT 'EAS_计量单位',
  `Is_Name` longtext COMMENT 'Is_Name',
  `Is_DXLG` longtext COMMENT 'Is_DXLG',
  `Is_MAT` longtext COMMENT 'Is_MAT',
  `Is_ISDESC` longtext COMMENT 'Is_ISDESC',
  `Is_Unit` longtext COMMENT 'Is_Unit',
  `Is_True` longtext COMMENT 'Is_True',
  `update_time` date DEFAULT NULL COMMENT 'update_time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='MDM与EAS物料比较';


-- db_zjdemo.mdm_tc_mat definition

CREATE TABLE `mdm_tc_mat` (
  `ID` varchar(300) DEFAULT NULL COMMENT '物料编码',
  `MDM_Name` varchar(300) DEFAULT NULL COMMENT 'MDM物料名称',
  `MDM_DXLG` varchar(300) DEFAULT NULL,
  `MDM_MAT` varchar(300) DEFAULT NULL,
  `MDM_ISDESC` varchar(300) DEFAULT NULL,
  `MDM_Unit` varchar(300) DEFAULT NULL COMMENT 'MDM_计量单位',
  `TC_Name` varchar(300) DEFAULT NULL COMMENT 'TC_物料名称',
  `TC_DXLG` varchar(300) DEFAULT NULL COMMENT 'TC__规格型号（大小量纲）',
  `TC_MAT` varchar(300) DEFAULT NULL COMMENT 'TC_材质（基本物料）',
  `TC_ISDESC` varchar(300) DEFAULT NULL COMMENT 'TC_标准',
  `TC_Unit` varchar(300) DEFAULT NULL COMMENT 'TC_计量单位',
  `Is_Name` varchar(300) DEFAULT NULL COMMENT '物料名是否一致',
  `Is_DXLG` varchar(300) DEFAULT NULL COMMENT '大小量纲是否一致',
  `Is_MAT` varchar(300) DEFAULT NULL COMMENT '物料材质是否一致',
  `Is_ISDESC` varchar(300) DEFAULT NULL COMMENT '物料标准是否一致',
  `Is_Unit` varchar(300) DEFAULT NULL COMMENT '物料计量单位是否一致',
  `Is_True` varchar(300) DEFAULT NULL COMMENT '物料信息是否一致',
  `update_date` date DEFAULT NULL COMMENT 'update_date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='MDM与TC物料比较';


-- db_zjdemo.phm_currenterror definition

CREATE TABLE `phm_currenterror` (
  `dwUIC` varchar(255) NOT NULL,
  `tmNOw` varchar(255) DEFAULT NULL,
  `wCode` varchar(255) DEFAULT NULL,
  `uStatus` varchar(255) DEFAULT NULL,
  `uMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dwUIC`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实时故障信息';


-- db_zjdemo.phm_realtimeinfo definition

CREATE TABLE `phm_realtimeinfo` (
  `kszd` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '快速制动(0无效1有效)',
  `chLongRef` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `chLatRef` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `wcyc` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '尾车钥匙(0无效1有效)',
  `wErrorCount` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ljlc` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '累计里程',
  `bczdhj` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '保持制动缓解(0无效1有效)',
  `jw` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '级位',
  `tcyc` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '头车钥匙(0无效1有效)',
  `dwLat` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '纬度',
  `dwTime` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `lcsd` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '列车速度',
  `wTrainNo` varchar(64) COLLATE utf8_bin NOT NULL,
  `dwLong` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '经度',
  `zdzt` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '制动状态(0无效1有效)',
  `qljjzdms` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '全列紧急制动模式(0无效1有效)',
  `blzkc` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '本列主控车(0无效1有效)',
  PRIMARY KEY (`wTrainNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='实时数据';


-- db_zjdemo.qms2_inspect_checkpoint definition

CREATE TABLE `qms2_inspect_checkpoint` (
  `id` varchar(64) NOT NULL,
  `version` varchar(8) DEFAULT NULL COMMENT '版本号',
  `inspect_file_id` varchar(64) DEFAULT NULL COMMENT '检验文件id',
  `inspect_file_version` varchar(64) DEFAULT NULL COMMENT '检验文件版本号',
  `checkpoint_id` varchar(64) DEFAULT NULL COMMENT '检验项点id',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `checkpoint_code` varchar(64) DEFAULT NULL COMMENT '检验项点编码',
  `checkpoint_name` varchar(64) DEFAULT NULL COMMENT '检验项点名称',
  `checkpoint_grade` varchar(15) DEFAULT NULL COMMENT '检验等级',
  `check_category` varchar(25) DEFAULT NULL COMMENT '检验类别，分为技证检查、尺寸测量等',
  `check_type` varchar(25) DEFAULT NULL COMMENT '检验类型分为测量、目测，当为“测量”的需要指定工具类型，指定上下公差',
  `material_class` int(11) DEFAULT NULL COMMENT '物料分类',
  `functree_code` varchar(64) DEFAULT NULL COMMENT '功能构型代码',
  `test_standard` varchar(64) DEFAULT NULL COMMENT '检验标准',
  `test_apparatus` varchar(64) DEFAULT NULL COMMENT '检查器具(游标卡尺、万用表、手电）',
  `test_method` varchar(64) DEFAULT NULL COMMENT '检验方法，例如测量、审核',
  `standard_value` varchar(16) DEFAULT NULL COMMENT '标准值',
  `tolerances_up` varchar(25) DEFAULT NULL COMMENT '上公差',
  `quality_grade` varchar(8) DEFAULT NULL COMMENT '质量分级',
  `quality_standard` varchar(255) DEFAULT NULL COMMENT '质量标准',
  `sampling_plan_id` varchar(64) DEFAULT NULL COMMENT '抽样方案',
  `guide_file` varchar(64) DEFAULT NULL COMMENT '指导文件',
  `order_num` int(11) DEFAULT NULL COMMENT '项点的排序字段',
  `guide_pdf_file` varchar(64) DEFAULT NULL COMMENT 'pdf文件',
  `material_code` varchar(64) DEFAULT NULL COMMENT '物料编码',
  `procedure_code` varchar(64) DEFAULT NULL COMMENT '工序编码',
  `special_iden` varchar(64) DEFAULT NULL COMMENT '特殊标识',
  `is_serial` varchar(1) DEFAULT NULL COMMENT '是否产品序列号',
  `scre_cond` varchar(100) DEFAULT NULL COMMENT '补充筛选条件',
  `point_group` varchar(64) DEFAULT NULL COMMENT '检验项点分组',
  `tolerances_down` varchar(25) DEFAULT NULL COMMENT '下公差',
  `supplement` varchar(200) DEFAULT NULL COMMENT '补充说明',
  `code_format` varchar(32) DEFAULT NULL COMMENT '检验结果格式',
  `check_num` varchar(50) DEFAULT NULL COMMENT '检验数量',
  `check_position` varchar(50) DEFAULT NULL COMMENT '检验位置',
  `IS_MUTUAL` varchar(1) DEFAULT NULL COMMENT '是否互检（0是，1否）',
  `station` varchar(64) DEFAULT NULL COMMENT '工位',
  `material_name` varchar(64) DEFAULT NULL COMMENT '物料名称',
  `check_param` varchar(64) DEFAULT NULL COMMENT '定性规则',
  `community` varchar(64) DEFAULT NULL COMMENT '质量分类',
  `check_frequency` char(1) DEFAULT NULL COMMENT '检验频次(全检value=1，抽检value=0)',
  `sort` varchar(255) DEFAULT NULL COMMENT '排序',
  `checkpoint_describe` longtext COMMENT '项点描述',
  `frt_number` varchar(64) DEFAULT NULL COMMENT '工艺路线编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.qms2_inspect_file definition

CREATE TABLE `qms2_inspect_file` (
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
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
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
  `sendWay` char(1) DEFAULT NULL COMMENT '发送方式，1全部发布，2局部发布',
  `type` char(1) DEFAULT NULL COMMENT '检验模板类型 0通用，1专用',
  `inspect_check_result` varchar(32) DEFAULT NULL COMMENT '检验结果审批 0走审批 1不用',
  `inspect_check_result_role` varchar(128) DEFAULT NULL COMMENT '检验结果审批角色',
  `frt_number` varchar(64) DEFAULT NULL COMMENT '工艺路线编码',
  `code_path` varchar(500) DEFAULT NULL COMMENT '编码全路径',
  `procedure_material_code` varchar(64) DEFAULT NULL COMMENT '工序物料编码',
  `plan_id` varchar(64) DEFAULT NULL COMMENT '检验计划Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.qms2_inspection_entity definition

CREATE TABLE `qms2_inspection_entity` (
  `entity_id` varchar(64) NOT NULL COMMENT '检验实体ID',
  `material_id` varchar(64) DEFAULT NULL COMMENT '关联物料id',
  `material_code` varchar(64) DEFAULT NULL COMMENT '关联物料编码',
  `serial_number` varchar(64) DEFAULT NULL COMMENT '序列号',
  `batch_number` varchar(64) DEFAULT NULL COMMENT '批次号',
  `produce_vender` varchar(64) DEFAULT NULL COMMENT '生产厂家',
  `produce_vender_name` varchar(200) DEFAULT NULL COMMENT '生产厂商名称',
  `produce_date` varchar(64) DEFAULT NULL COMMENT '生产时间',
  `model` varchar(64) DEFAULT NULL COMMENT '型号',
  `stove_number` varchar(64) DEFAULT NULL COMMENT '炉号',
  `entity_version` varchar(64) DEFAULT NULL COMMENT '版本',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `material_name` varchar(64) DEFAULT NULL COMMENT '物料名称',
  `technical_status_id` varchar(64) DEFAULT NULL COMMENT '技术状态标识',
  `sup_wcord` varchar(64) DEFAULT NULL COMMENT '客户产品标识序列号',
  `sup_material_code` varchar(64) DEFAULT NULL COMMENT '客户物料标识代码',
  `spec` varchar(64) DEFAULT NULL COMMENT '规格',
  `sup_user_code` varchar(64) DEFAULT NULL COMMENT '生产单位客户代码',
  `electrical_Number` varchar(64) DEFAULT NULL COMMENT ' 电气代码',
  `electrical_position` varchar(64) DEFAULT NULL COMMENT '电气位置',
  `assembler` varchar(64) DEFAULT NULL COMMENT ' 装配人员',
  `assembler_name` varchar(64) DEFAULT NULL COMMENT '装配人员姓名',
  `assembly_code` varchar(64) DEFAULT NULL COMMENT '装配单位代码',
  `assembly_name` varchar(64) DEFAULT NULL COMMENT '装配单位名称',
  `functree_id` varchar(64) DEFAULT NULL COMMENT '装配构型ID',
  `global_position` varchar(255) DEFAULT NULL COMMENT '装配位置代码',
  `global_name` varchar(255) DEFAULT NULL COMMENT '装配位置名称',
  `auth_root_dept_id` varchar(64) DEFAULT NULL COMMENT '录入单位代码',
  `auth_root_dept_name` varchar(64) DEFAULT NULL COMMENT '录入单位名称',
  `root_entity_id` varchar(64) DEFAULT NULL COMMENT '跟部件id',
  `parent_entity_id` varchar(64) DEFAULT NULL COMMENT '父部件id',
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='检验执行实体表';


-- db_zjdemo.qms2_inspection_record definition

CREATE TABLE `qms2_inspection_record` (
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
  `ncr_result` varchar(20) DEFAULT NULL COMMENT 'ncr评审结果 (1.返修、2.返工、3.报废、4.让步放行、5.退货、6.拒收、7.放行关闭)',
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
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.qms2_inspection_result definition

CREATE TABLE `qms2_inspection_result` (
  `relult_id` varchar(64) NOT NULL COMMENT '结果表Id',
  `execution_id` varchar(64) DEFAULT NULL COMMENT '记录表id',
  `checkpoints_id` varchar(64) DEFAULT NULL COMMENT '文件关联项点历史id',
  `status` varchar(64) DEFAULT NULL COMMENT '检验状态',
  `check_result` varchar(64) DEFAULT NULL COMMENT '检验结果',
  `file_result` longtext COMMENT '文件型结果',
  `file_name` longtext COMMENT '文件原始名称',
  `file_uuid_name` longtext COMMENT '文件uuid原始名称',
  `final_result` varchar(64) DEFAULT NULL COMMENT '判定结果(0是合格)',
  `selt_user` varchar(64) DEFAULT NULL COMMENT '自检人',
  `self_date` datetime DEFAULT NULL COMMENT '自检时间',
  `other_user` varchar(64) DEFAULT NULL COMMENT '互检人',
  `other_date` datetime DEFAULT NULL COMMENT '互检时间',
  `special_user` varchar(64) DEFAULT NULL COMMENT '专检人',
  `special_date` datetime DEFAULT NULL COMMENT '专检时间',
  `create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `is_active` char(1) DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) DEFAULT NULL COMMENT '删除标识',
  `remark` longtext COMMENT '备注',
  `tool_code` varchar(64) DEFAULT NULL COMMENT '工具编号',
  `mutualed` char(1) DEFAULT NULL COMMENT '是否已互检',
  `total` varchar(64) DEFAULT NULL COMMENT '样本总量',
  `point_type` varchar(64) DEFAULT NULL COMMENT '0 通用项点 1 子部件项点 2原材料追溯项点',
  `raw_material_id` varchar(64) DEFAULT NULL COMMENT '原材料追溯采集ID',
  `is_reCheck` varchar(1) DEFAULT NULL COMMENT '是否允许重检(1为是)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.repair_component_inspection_xls definition

CREATE TABLE `repair_component_inspection_xls` (
  `parts` varchar(255) DEFAULT NULL COMMENT '部件',
  `inspection_num` int(255) DEFAULT NULL COMMENT '送检数量',
  `unqualified_num` int(255) DEFAULT NULL COMMENT '不合格数量',
  `car_code` varchar(255) DEFAULT NULL COMMENT '车号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='重要部件检测数据';


-- db_zjdemo.repair_project_train_info definition

CREATE TABLE `repair_project_train_info` (
  `project_code` varchar(255) DEFAULT NULL,
  `train_no` varchar(255) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `in_time` date DEFAULT NULL,
  `delivery_time` date DEFAULT NULL,
  `mileage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.repair_work_hours_xls definition

CREATE TABLE `repair_work_hours_xls` (
  `depart_name` varchar(255) DEFAULT NULL COMMENT '事业部',
  `actual_time` varchar(255) DEFAULT NULL COMMENT '实作时间（h）',
  `standard_time` varchar(255) DEFAULT NULL COMMENT '标准时间（h）',
  `car_code` varchar(255) DEFAULT NULL COMMENT '车号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='检修工时';


-- db_zjdemo.report_interval_failure_rate definition

CREATE TABLE `report_interval_failure_rate` (
  `mileage` varchar(255) DEFAULT NULL COMMENT '走行公里区间（万公里)',
  `sample` int(10) DEFAULT NULL COMMENT '区间样本数',
  `fault_num` int(10) DEFAULT NULL COMMENT '机车故障数',
  `fault_rate_piece` decimal(10,4) DEFAULT NULL COMMENT '故障率（件/台）',
  `fault_rate_km` decimal(10,4) DEFAULT NULL COMMENT '故障率（件/十万公里）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区间故障率';


-- db_zjdemo.report_key_components_analysis definition

CREATE TABLE `report_key_components_analysis` (
  `fault_parts` varchar(255) DEFAULT NULL COMMENT '种类',
  `bearing_type` varchar(255) DEFAULT NULL COMMENT '轴承种类',
  `mileage` varchar(255) DEFAULT NULL COMMENT '走行公里（万公里）',
  `segment` varchar(255) DEFAULT NULL COMMENT '配属路局',
  `invalid_reason` varchar(255) DEFAULT NULL COMMENT '失效原因',
  `num` int(10) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关键部件及系统专题分析';


-- db_zjdemo.report_key_systems_components definition

CREATE TABLE `report_key_systems_components` (
  `走行公里区间（万公里)` varchar(255) DEFAULT NULL,
  `样本数` varchar(255) DEFAULT NULL,
  `故障数` varchar(255) DEFAULT NULL,
  `故障率（件/台）` varchar(255) DEFAULT NULL,
  `59台验证机车` varchar(255) DEFAULT NULL,
  `验证机车区间故障数` varchar(255) DEFAULT NULL,
  `验证机车故障率（件/台）` varchar(255) DEFAULT NULL,
  `轴箱轴承区间故障数` varchar(255) DEFAULT NULL,
  `轴箱轴承故障率（件/台）` varchar(255) DEFAULT NULL,
  `牵引电机轴承区间故障数` varchar(255) DEFAULT NULL,
  `牵引电机轴承故障率（件/台）` varchar(255) DEFAULT NULL,
  `制动系统区间故障数` varchar(255) DEFAULT NULL,
  `制动系统故障率（件/台）` varchar(255) DEFAULT NULL,
  `主辅变流器区间故障数` varchar(255) DEFAULT NULL,
  `主辅变流器故障率（件/台）` varchar(255) DEFAULT NULL,
  `主变压器区间故障数` varchar(255) DEFAULT NULL,
  `主变压器故障率（件/台）` varchar(255) DEFAULT NULL,
  `微机系统区间故障数` varchar(255) DEFAULT NULL,
  `微机系统故障率（件/台）` varchar(255) DEFAULT NULL,
  `高压电器区间故障数` varchar(255) DEFAULT NULL,
  `高压电器故障率（件/台）` varchar(255) DEFAULT NULL,
  `辅助机组区间故障数` varchar(255) DEFAULT NULL,
  `辅助机组故障率（件/台）` varchar(255) DEFAULT NULL,
  `其他系统区间故障数` varchar(255) DEFAULT NULL,
  `其他系统故障率（件/台）` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关键系统和部件故障率统计分析';


-- db_zjdemo.report_locomotive_10000km_verified definition

CREATE TABLE `report_locomotive_10000km_verified` (
  `id` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL COMMENT '型号',
  `segment` varchar(255) DEFAULT NULL COMMENT '配属局段',
  `mileage` int(10) DEFAULT NULL COMMENT '入修走行公里',
  `repair_time` varchar(255) DEFAULT NULL COMMENT '入修时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='万公里区间验证机车统计表';


-- db_zjdemo.report_locomotive_bearing_failure definition

CREATE TABLE `report_locomotive_bearing_failure` (
  `model` varchar(255) DEFAULT NULL COMMENT '车型',
  `number` varchar(255) DEFAULT NULL COMMENT '车号',
  `fault_time` varchar(255) DEFAULT NULL COMMENT '故障发生时间',
  `mileage` int(10) DEFAULT NULL COMMENT '里程',
  `fault_reason` varchar(255) DEFAULT NULL COMMENT '故障原因',
  `repair` varchar(255) DEFAULT NULL COMMENT '处置',
  `fault_type` varchar(255) DEFAULT NULL COMMENT '故障类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电机轴承故障';


-- db_zjdemo.report_maintenance_process_quality definition

CREATE TABLE `report_maintenance_process_quality` (
  `parts` varchar(255) DEFAULT NULL COMMENT '部件',
  `sample` int(10) DEFAULT NULL COMMENT '样本数量',
  `inconformity_num` int(10) DEFAULT NULL COMMENT '不符合要求数量',
  `inconformity_rate` decimal(10,4) DEFAULT NULL COMMENT '不符合率',
  `repire_type` varchar(255) DEFAULT NULL COMMENT '检修类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='c5修检修过程质量统计表';


-- db_zjdemo.st_target_big_screen definition

CREATE TABLE `st_target_big_screen` (
  `car_code` varchar(255) DEFAULT NULL COMMENT '车号（铁总）',
  `project_code` varchar(255) DEFAULT NULL COMMENT '项目号',
  `che_code` varchar(255) DEFAULT NULL COMMENT '跟踪号（列车号）',
  `travel_time` date DEFAULT NULL COMMENT '走车时间',
  `model` varchar(255) DEFAULT NULL COMMENT '项目代号（车型）',
  `attach_bureau` varchar(255) DEFAULT NULL COMMENT '配属局',
  `service_time` date DEFAULT NULL COMMENT '质保服务时间',
  `C6update_time` date DEFAULT NULL COMMENT '预计C6修时间',
  `scrap_time` date DEFAULT NULL COMMENT '预计报废时间',
  `project_name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `new_project_code` varchar(255) DEFAULT NULL COMMENT '新项目号',
  `new_che_code` varchar(255) DEFAULT NULL COMMENT '新跟踪号',
  `update_type` varchar(255) DEFAULT NULL COMMENT '检修类型',
  `update_project_code` varchar(255) DEFAULT NULL COMMENT '修理项目号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入口屏（浩吉项目跟踪号.xlsx导入）';


-- db_zjdemo.st_target_jiche_factory_data definition

CREATE TABLE `st_target_jiche_factory_data` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `model` varchar(255) DEFAULT NULL COMMENT '车型',
  `car_code` varchar(255) DEFAULT NULL COMMENT '车号',
  `attach_bureau` varchar(255) DEFAULT NULL COMMENT '配属机务段',
  `qty` varchar(255) DEFAULT NULL COMMENT '数量',
  `travel_time` date DEFAULT NULL COMMENT '走车时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=732 DEFAULT CHARSET=utf8 COMMENT='2012-2021和谐机车出厂台帐';


-- db_zjdemo.t_bd_material_my definition

CREATE TABLE `t_bd_material_my` (
  `FID` varchar(44) DEFAULT NULL,
  `FCREATORID` varchar(44) DEFAULT NULL,
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) DEFAULT NULL,
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) DEFAULT NULL,
  `FNAME_L1` varchar(382) DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(382) DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(382) DEFAULT NULL COMMENT 'FNAME_L3',
  `FNUMBER` varchar(120) DEFAULT NULL,
  `FDESCRIPTION_L1` varchar(382) DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(382) DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(382) DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(120) DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FVERSION` int(11) DEFAULT NULL COMMENT 'FVERSION',
  `FLONGNUMBER` varchar(300) DEFAULT NULL COMMENT 'FLONGNUMBER',
  `FSHORTNAME` varchar(120) DEFAULT NULL COMMENT 'FSHORTNAME',
  `FMODEL` varchar(382) DEFAULT NULL COMMENT 'FMODEL',
  `FBASEUNIT` varchar(44) DEFAULT NULL COMMENT 'FBASEUNIT',
  `FPRICEPRECISION` int(11) DEFAULT NULL COMMENT 'FPRICEPRECISION',
  `FHELPCODE` varchar(120) DEFAULT NULL COMMENT 'FHELPCODE',
  `FBARCODE` varchar(120) DEFAULT NULL COMMENT 'FBARCODE',
  `FPICTURENUMBER` varchar(120) DEFAULT NULL COMMENT 'FPICTURENUMBER',
  `FASSISTATTR` varchar(44) DEFAULT NULL COMMENT 'FASSISTATTR',
  `FGROSSWEIGHT` double(28,10) DEFAULT NULL COMMENT 'FGROSSWEIGHT',
  `FNETWEIGHT` double(28,10) DEFAULT NULL COMMENT 'FNETWEIGHT',
  `FLENGTH` double(28,10) DEFAULT NULL COMMENT 'FLENGTH',
  `FWIDTH` double(28,10) DEFAULT NULL COMMENT 'FWIDTH',
  `FHEIGHT` double(28,10) DEFAULT NULL COMMENT 'FHEIGHT',
  `FVOLUME` double(28,10) DEFAULT NULL COMMENT 'FVOLUME',
  `FWEIGHTUNIT` varchar(44) DEFAULT NULL COMMENT 'FWEIGHTUNIT',
  `FLENGTHUNIT` varchar(44) DEFAULT NULL COMMENT 'FLENGTHUNIT',
  `FVOLUMNUNIT` varchar(44) DEFAULT NULL COMMENT 'FVOLUMNUNIT',
  `FMATERIALGROUPID` varchar(44) DEFAULT NULL COMMENT 'FMATERIALGROUPID',
  `FEFFECTEDSTATUS` int(11) DEFAULT NULL,
  `FALIAS` varchar(270) DEFAULT NULL COMMENT 'FALIAS',
  `FFOREIGNNAME` varchar(270) DEFAULT NULL COMMENT 'FFOREIGNNAME',
  `FREGISTEREDMARK` varchar(270) DEFAULT NULL COMMENT 'FREGISTEREDMARK',
  `FWARRANTNUMBER` varchar(270) DEFAULT NULL COMMENT 'FWARRANTNUMBER',
  `FSTATUS` int(11) DEFAULT NULL COMMENT 'FSTATUS',
  `FFREEZEORGUNIT` varchar(44) DEFAULT NULL COMMENT 'FFREEZEORGUNIT',
  `FADMINCUID` varchar(44) DEFAULT NULL COMMENT 'FADMINCUID',
  `FASSISTUNIT` varchar(44) DEFAULT NULL COMMENT 'FASSISTUNIT',
  `FSEQUNITID` varchar(44) DEFAULT NULL COMMENT 'FSEQUNITID',
  `FISWEIGHTED` int(11) DEFAULT NULL,
  `FISOUTSOURCEDPART` int(11) DEFAULT NULL,
  `FUSEASSTATTRRELATION` int(11) DEFAULT NULL,
  `FFOURNUMBERORI` varchar(150) DEFAULT NULL COMMENT 'FFOURNUMBERORI',
  `CFATTRIBUTECODE` varchar(150) DEFAULT NULL COMMENT 'CFATTRIBUTECODE',
  `CFCONVERSION` double(28,10) DEFAULT NULL COMMENT 'CFCONVERSION',
  `CFOLDNUMBER` varchar(150) DEFAULT NULL COMMENT 'CFOLDNUMBER',
  `CFMATERIALQUALITY` varchar(150) DEFAULT NULL COMMENT 'CFMATERIALQUALITY',
  `FEQUIPPROPERTY` int(11) DEFAULT NULL,
  `CFTECHGRADE` varchar(150) DEFAULT NULL COMMENT 'CFTECHGRADE',
  `CFITEM_TYPE` varchar(100) DEFAULT NULL COMMENT 'CFITEM_TYPE',
  `CFSYMBOL` varchar(150) DEFAULT NULL COMMENT 'CFSYMBOL',
  `CFQUALITY` varchar(150) DEFAULT NULL COMMENT 'CFQUALITY',
  `CFREMARK` varchar(382) DEFAULT NULL COMMENT 'CFREMARK',
  `FOLDNUMBER` varchar(120) DEFAULT NULL COMMENT 'FOLDNUMBER',
  `FMATERIALTRADEMARK` varchar(44) DEFAULT NULL COMMENT 'FMATERIALTRADEMARK',
  `FSYMBOL` varchar(150) DEFAULT NULL COMMENT 'FSYMBOL',
  `FTECHGRADE` varchar(75) DEFAULT NULL COMMENT 'FTECHGRADE',
  `FCZ` varchar(150) DEFAULT NULL COMMENT 'FCZ',
  `FPDMCLASS` varchar(44) DEFAULT NULL COMMENT 'FPDMCLASS',
  `FPDMSTANDARD` varchar(255) DEFAULT NULL COMMENT 'FPDMSTANDARD',
  `CFISLARGEMATERIAL` int(11) DEFAULT NULL COMMENT 'CFISLARGEMATERIAL',
  `CFISFASTENER` int(11) DEFAULT NULL COMMENT 'CFISFASTENER',
  `CFCHKFASTENER` int(11) DEFAULT NULL COMMENT 'CFCHKFASTENER',
  `FISSYNOCHRONOUS` int(11) DEFAULT '1' COMMENT 'FISSYNOCHRONOUS',
  `CFCURRENTSERIALNUM` int(11) DEFAULT NULL COMMENT 'CFCURRENTSERIALNUM',
  `CFMERGEMATERIALID` varchar(120) DEFAULT NULL COMMENT 'CFMERGEMATERIALID',
  `FNUMBER4IDX` varchar(240) DEFAULT NULL COMMENT 'FNUMBER4IDX',
  `FNAME4IDX` varchar(765) DEFAULT NULL COMMENT 'FNAME4IDX',
  `FISGOODS` int(11) DEFAULT '0' COMMENT 'FISGOODS',
  `FNAMEPINYIN` varchar(44) DEFAULT NULL COMMENT 'FNAMEPINYIN',
  `FNAMESHORTPINYIN` varchar(44) DEFAULT NULL COMMENT 'FNAMESHORTPINYIN',
  `CFMVERSION` varchar(75) DEFAULT NULL COMMENT 'CFMVERSION',
  `FISSENDTOESB` int(11) DEFAULT '0' COMMENT 'FISSENDTOESB',
  `CFPRONAME` varchar(150) DEFAULT NULL COMMENT 'CFPRONAME',
  `CFPROMODE` varchar(150) DEFAULT NULL COMMENT 'CFPROMODE',
  `CFPROUPTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFPROUPTIME',
  `CFPROUPUSERID` varchar(44) DEFAULT NULL COMMENT 'CFPROUPUSERID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='T_BD_MATERIAL_MY';


-- db_zjdemo.t_bd_measureunit_my definition

CREATE TABLE `t_bd_measureunit_my` (
  `FID` text,
  `FNUMBER` text,
  `FNAME_L1` text,
  `FNAME_L2` text,
  `FNAME_L3` text,
  `FCOEFFICIENT` double DEFAULT NULL,
  `FISBASEUNIT` int(11) DEFAULT NULL,
  `FGROUPID` text,
  `FISDISABLED` int(11) DEFAULT NULL,
  `FDESCRIPTION_L1` text,
  `FDESCRIPTION_L2` text,
  `FDESCRIPTION_L3` text,
  `FSIMPLENAME` text,
  `FCREATORID` text,
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FLASTUPDATEUSERID` text,
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FCONTROLUNITID` text,
  `FQTYPRECISION` int(11) DEFAULT NULL,
  `FISSENDTOESB` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.t_bd_measureunit_my_copy1 definition

CREATE TABLE `t_bd_measureunit_my_copy1` (
  `FID` varchar(44) NOT NULL COMMENT 'FID',
  `FNUMBER` varchar(120) NOT NULL COMMENT 'FNUMBER',
  `FNAME_L1` varchar(120) DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(120) DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(120) DEFAULT NULL COMMENT 'FNAME_L3',
  `FCOEFFICIENT` double(18,10) NOT NULL COMMENT 'FCOEFFICIENT',
  `FISBASEUNIT` int(11) NOT NULL COMMENT 'FISBASEUNIT',
  `FDISABLEDDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FDISABLEDDATE',
  `FGROUPID` varchar(44) NOT NULL COMMENT 'FGROUPID',
  `FISDISABLED` int(11) NOT NULL DEFAULT '0' COMMENT 'FISDISABLED',
  `FDESCRIPTION_L1` varchar(300) DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(300) DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(300) DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(120) DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FCREATORID` varchar(44) NOT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) NOT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) NOT NULL COMMENT 'FCONTROLUNITID',
  `FQTYPRECISION` int(11) NOT NULL DEFAULT '4' COMMENT 'FQTYPRECISION',
  `FISSENDTOESB` int(11) DEFAULT '0' COMMENT 'FISSENDTOESB',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='T_BD_MEASUREUNIT_MY';


-- db_zjdemo.t_bd_measureunit_my_copy2 definition

CREATE TABLE `t_bd_measureunit_my_copy2` (
  `FID` varchar(44) NOT NULL COMMENT 'FID',
  `FNUMBER` varchar(120) NOT NULL COMMENT 'FNUMBER',
  `FNAME_L1` varchar(120) DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(120) DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(120) DEFAULT NULL COMMENT 'FNAME_L3',
  `FCOEFFICIENT` double(18,10) NOT NULL COMMENT 'FCOEFFICIENT',
  `FISBASEUNIT` int(11) NOT NULL COMMENT 'FISBASEUNIT',
  `FDISABLEDDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FDISABLEDDATE',
  `FGROUPID` varchar(44) NOT NULL COMMENT 'FGROUPID',
  `FISDISABLED` int(11) NOT NULL DEFAULT '0' COMMENT 'FISDISABLED',
  `FDESCRIPTION_L1` varchar(300) DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(300) DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(300) DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(120) DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FCREATORID` varchar(44) NOT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) NOT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) NOT NULL COMMENT 'FCONTROLUNITID',
  `FQTYPRECISION` int(11) NOT NULL DEFAULT '4' COMMENT 'FQTYPRECISION',
  `FISSENDTOESB` int(11) DEFAULT '0' COMMENT 'FISSENDTOESB',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='T_BD_MEASUREUNIT_MY';


-- db_zjdemo.t_db_material_test definition

CREATE TABLE `t_db_material_test` (
  ` FID` varchar(255) NOT NULL,
  `FCREATORID` varchar(255) DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FLASTUPDATEUSERID` varchar(255) DEFAULT NULL,
  `FLASTUPDATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(255) DEFAULT NULL,
  `FNAME_L1` varchar(255) DEFAULT NULL,
  `FNAME_L2` varchar(255) DEFAULT NULL,
  `FNAME_L3` varchar(255) DEFAULT NULL,
  `FNUMBER` varchar(255) DEFAULT NULL,
  `FVERSION` varchar(255) DEFAULT NULL,
  `FMODEL` varchar(255) DEFAULT NULL,
  `FBASEUNIT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (` FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- db_zjdemo.tc_eas_mat definition

CREATE TABLE `tc_eas_mat` (
  `ID` varchar(300) DEFAULT NULL COMMENT '物料编码',
  `TC_Name` varchar(300) DEFAULT NULL COMMENT 'TC_物料名称',
  `TC_DXLG` varchar(300) DEFAULT NULL COMMENT 'TC_规格型号（大小量纲）',
  `TC_MAT` varchar(300) DEFAULT NULL COMMENT 'TC_材质（基本物料）',
  `TC_ISDESC` varchar(300) DEFAULT NULL COMMENT 'TC_标准',
  `TC_Unit` varchar(300) DEFAULT NULL COMMENT 'TC_计量单位',
  `EAS_Name` varchar(300) DEFAULT NULL COMMENT 'EAS物料名称',
  `EAS_DXLG` varchar(300) DEFAULT NULL COMMENT 'EAS_规格型号（大小量纲）',
  `EAS_MAT` varchar(300) DEFAULT NULL COMMENT 'EAS_材质（基本物料）',
  `EAS_ISDESC` varchar(300) DEFAULT NULL COMMENT 'EAS_标准',
  `EAS_Unit` varchar(300) DEFAULT NULL COMMENT 'EAS_计量单位',
  `Is_Name` varchar(300) DEFAULT NULL COMMENT '物料名是否一致',
  `Is_DXLG` varchar(300) DEFAULT NULL COMMENT '大小量纲是否一致',
  `Is_MAT` varchar(300) DEFAULT NULL COMMENT '物料材质是否一致',
  `Is_ISDESC` varchar(300) DEFAULT NULL COMMENT '物料标准是否一致',
  `Is_Unit` varchar(300) DEFAULT NULL COMMENT '物料计量单位是否一致',
  `Is_True` varchar(300) DEFAULT NULL COMMENT '物料信息是否一致',
  `update_date` date DEFAULT NULL COMMENT 'update_date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TC与EAS物料比较';


-- db_zjdemo.tc_eas_mat_contrast definition

CREATE TABLE `tc_eas_mat_contrast` (
  `ID` longtext COMMENT '物料编码',
  `tc_name` longtext COMMENT 'tc物料名称',
  `tc_mat` longtext,
  `tc_unit` longtext,
  `tc_dxlg` longtext,
  `tc_isdesc` longtext,
  `eas_name` longtext COMMENT 'EAS_物料名称',
  `eas_mat` longtext COMMENT 'EAS_材质（基本物料)',
  `eas_unit` longtext COMMENT 'EAS_计量单位',
  `eas_dxlg` longtext COMMENT 'EAS_规格型号（大小量纲）',
  `eas_isdesc` longtext COMMENT 'EAS_标准',
  `Is_Name` longtext COMMENT 'Is_Name',
  `Is_DXLG` longtext COMMENT 'Is_DXLG',
  `Is_MAT` longtext COMMENT 'Is_MAT',
  `Is_ISDESC` longtext COMMENT 'Is_ISDESC',
  `Is_Unit` longtext COMMENT 'Is_Unit',
  `Is_True` longtext COMMENT 'Is_True',
  `update_date` date DEFAULT NULL COMMENT 'update_date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tc和eas物料比较';


-- db_zjdemo.tc_mat_test definition

CREATE TABLE `tc_mat_test` (
  `co_publishuser` longtext COMMENT 'COMMENT''CO_PUBLISHUSER''',
  `matnum` longtext COMMENT 'COMMENT''MATNUM''',
  `matname` longtext COMMENT 'COMMENT''MATNAME''',
  `matbmat` longtext COMMENT 'COMMENT''MATBMAT''',
  `matbunit_id` longtext COMMENT 'COMMENT''MATBUNIT_ID''',
  `matdxlg` longtext COMMENT 'COMMENT''MATDXLG''',
  `matisdesc` longtext COMMENT 'COMMENT''MATISDESC''',
  `qywlbm` longtext COMMENT 'COMMENT''QYWLBM''',
  `update_date` date DEFAULT NULL COMMENT 'update_date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TC_MAT';


-- db_zjdemo.tc_th_mat definition

CREATE TABLE `tc_th_mat` (
  `ITEMID` varchar(255) DEFAULT NULL COMMENT 'COMMENT''ITEMID''',
  `REVISION` varchar(255) DEFAULT NULL COMMENT 'COMMENT''REVISION''',
  `MATNAME` varchar(255) DEFAULT NULL COMMENT 'COMMENT''MATNAME''',
  `MATBMAT` varchar(255) DEFAULT NULL COMMENT 'COMMENT''MATBMAT''',
  `MATBUNIT_ID` varchar(255) DEFAULT NULL COMMENT 'COMMENT''MATBUNIT_ID''',
  `MATDXLG` varchar(255) DEFAULT NULL COMMENT 'COMMENT''MATDXLG''',
  `MATISDESC` varchar(255) DEFAULT NULL COMMENT 'COMMENT''MATISDESC''',
  `QYWLBM` varchar(255) DEFAULT NULL COMMENT 'COMMENT''QYWLBM''',
  `update_date` date DEFAULT NULL COMMENT 'update_date',
  KEY `QYWLBM` (`QYWLBM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TC_TH_MAT';


-- db_zjdemo.transformer_assemble_crux definition

CREATE TABLE `transformer_assemble_crux` (
  `项点` varchar(255) DEFAULT NULL,
  `技术要求` varchar(255) DEFAULT NULL,
  `实测数据` varchar(255) DEFAULT NULL,
  `作业者` varchar(255) DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  `excel序列号` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='变压器组装关键';


-- db_zjdemo.transformer_assemble_list definition

CREATE TABLE `transformer_assemble_list` (
  `部件名称` varchar(255) DEFAULT NULL,
  `型号` varchar(255) DEFAULT NULL,
  `序列号` varchar(255) DEFAULT NULL,
  `单件码` varchar(255) DEFAULT NULL,
  `作业者` varchar(255) DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  `excel序列号` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='变压器组装清单';


-- db_zjdemo.transformer_basic_info definition

CREATE TABLE `transformer_basic_info` (
  `部件分类` varchar(255) DEFAULT NULL,
  `型号` varchar(255) DEFAULT NULL,
  `序列号` varchar(255) DEFAULT NULL,
  `单件码` varchar(255) DEFAULT NULL,
  `制造厂家` varchar(255) DEFAULT NULL,
  `出厂日期` varchar(255) DEFAULT NULL,
  `下车车型` varchar(255) DEFAULT NULL,
  `下车车号` varchar(255) DEFAULT NULL,
  `下车位置` varchar(255) DEFAULT NULL,
  `本次修程走行公里` varchar(255) DEFAULT NULL,
  `总走行公里` varchar(255) DEFAULT NULL,
  `累计时间` varchar(255) DEFAULT NULL,
  `修程修次` varchar(255) DEFAULT NULL,
  `检修日期` varchar(255) DEFAULT NULL,
  `承修单位` varchar(255) DEFAULT NULL,
  `质检员姓名` varchar(255) DEFAULT NULL,
  `验收/监造姓名` varchar(255) DEFAULT NULL,
  `上车车型` varchar(255) DEFAULT NULL,
  `上车车号` varchar(255) DEFAULT NULL,
  `上车位置` varchar(255) DEFAULT NULL,
  `修竣后存放段` varchar(255) DEFAULT NULL,
  `修竣后存放地点` varchar(255) DEFAULT NULL,
  `修次*` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='变压器基本信息';


-- db_zjdemo.transformer_disintegrate_list definition

CREATE TABLE `transformer_disintegrate_list` (
  `部件名称` varchar(255) DEFAULT NULL,
  `型号` varchar(255) DEFAULT NULL,
  `序列号` varchar(255) DEFAULT NULL,
  `单件码` varchar(255) DEFAULT NULL,
  `作业者` varchar(255) DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  `excel序列号` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='变压器解体清单';


-- db_zjdemo.transformer_entire_test definition

CREATE TABLE `transformer_entire_test` (
  `项目` varchar(255) DEFAULT NULL,
  `技术要求` varchar(255) DEFAULT NULL,
  `实测数据` varchar(255) DEFAULT NULL,
  `作业者` varchar(255) DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  `excel序列号` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='变压器整机试验';


-- db_zjdemo.transformer_parts_repair definition

CREATE TABLE `transformer_parts_repair` (
  `检修项目` varchar(255) DEFAULT NULL,
  `技术要求` varchar(255) DEFAULT NULL,
  `检修前检测结果` varchar(255) DEFAULT NULL,
  `检修简记` varchar(255) DEFAULT NULL,
  `检修后检测结果` varchar(255) DEFAULT NULL,
  `作业者` varchar(255) DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  `excel序列号` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='变压器部件检修';


-- db_zjdemo.user_test definition

CREATE TABLE `user_test` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE DATABASE `zj_data`;

USE `zj_data`;

-- zj_data.业联关闭到sql definition

CREATE TABLE `业联关闭到sql` (
  `FId` bigint(20) DEFAULT NULL,
  `fk_crrc_chgbillnum` text COLLATE utf8_bin,
  `fk_crrc_chgbillname` text COLLATE utf8_bin,
  `fk_crrc_deptname` text COLLATE utf8_bin,
  `fk_crrc_deptid` text COLLATE utf8_bin,
  `fk_crrc_begincarno` text COLLATE utf8_bin,
  `fk_crrc_projectjch` text COLLATE utf8_bin,
  `fk_crrc_exegroupcode` text COLLATE utf8_bin,
  `fk_crrc_exegroupname` text COLLATE utf8_bin,
  `fk_crrc_isfirstcaryes` text COLLATE utf8_bin,
  `fk_crrc_projectnum` text COLLATE utf8_bin,
  `fk_crrc_projectname` text COLLATE utf8_bin,
  `fk_crrc_createperson` bigint(20) DEFAULT NULL,
  `fk_crrc_datefield` date DEFAULT NULL,
  `fk_crrc_copyunit` text COLLATE utf8_bin,
  `fk_crrc_copyunitname` text COLLATE utf8_bin,
  `fk_crrc_maindept` text COLLATE utf8_bin,
  `fk_crrc_maindeptname` text COLLATE utf8_bin,
  `fk_crrc_chgcause` text COLLATE utf8_bin,
  `fk_crrc_createtime` date DEFAULT NULL,
  `fk_crrc_jobstatus` text COLLATE utf8_bin,
  `fk_crrc_billno` text COLLATE utf8_bin,
  `fk_crrc_feedbackperson` text COLLATE utf8_bin,
  `fk_crrc_feedbackdate` date DEFAULT NULL,
  `fk_crrc_feedbackstate` text COLLATE utf8_bin,
  `fk_crrc_closetype` text COLLATE utf8_bin,
  `fk_crrc_userfield` bigint(20) DEFAULT NULL,
  `fk_crrc_closedate` date DEFAULT NULL,
  `fk_crrc_closecause` text COLLATE utf8_bin,
  `fk_crrc_closeuser` bigint(20) DEFAULT NULL,
  `fk_crrc_combofield` text COLLATE utf8_bin,
  `fk_crrc_obsource` text COLLATE utf8_bin,
  `fk_crrc_worktime` bigint(20) DEFAULT NULL,
  `fk_crrc_serialno` text COLLATE utf8_bin,
  `fk_crrc_finishdate` date DEFAULT NULL,
  `fk_crrc_picture2` text COLLATE utf8_bin,
  `fk_crrc_picture` text COLLATE utf8_bin,
  `fk_crrc_textareafield` text COLLATE utf8_bin,
  `fk_crrc_imgurl` text COLLATE utf8_bin,
  `fk_crrc_imgurl_tag` text COLLATE utf8_bin,
  `fk_crrc_checkboxfield` text COLLATE utf8_bin,
  `fk_crrc_ischeck` text COLLATE utf8_bin,
  `fk_crrc_craftnext` text COLLATE utf8_bin,
  `fk_crrc_craftnext_tag` text COLLATE utf8_bin,
  `fk_crrc_locksending` text COLLATE utf8_bin,
  `fk_crrc_issubmaterial` text COLLATE utf8_bin,
  `fk_crrc_material` bigint(20) DEFAULT NULL,
  `fk_crrc_orgunit` text COLLATE utf8_bin,
  `fk_crrc_workprocess` bigint(20) DEFAULT NULL,
  `fk_crrc_decimalfield` decimal(23,10) DEFAULT NULL,
  `fk_crrc_countqty` decimal(23,10) DEFAULT NULL,
  `fk_crrc_finishnode` text COLLATE utf8_bin,
  `fk_crrc_finishdesc` text COLLATE utf8_bin,
  `fk_crrc_orgfield` bigint(20) DEFAULT NULL,
  `fk_crrc_basedatafield` bigint(20) DEFAULT NULL,
  `fk_crrc_exegroupdpt` text COLLATE utf8_bin,
  `fk_crrc_orgfield1` bigint(20) DEFAULT NULL,
  `fk_crrc_department` bigint(20) DEFAULT NULL,
  `fk_crrc_departmentdpt` bigint(20) DEFAULT NULL,
  `fk_crrc_remark` text COLLATE utf8_bin,
  `fk_crrc_projectid` bigint(20) DEFAULT NULL,
  `fk_crrc_ncrid` text COLLATE utf8_bin,
  `fk_crrc_billstatus` text COLLATE utf8_bin,
  `fk_crrc_reportbill` text COLLATE utf8_bin,
  `fk_crrc_executebillno` text COLLATE utf8_bin,
  `fk_crrc_billstatusfield` text COLLATE utf8_bin,
  `fk_crrc_transmit` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.annual_income definition

CREATE TABLE `annual_income` (
  `yyyy` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '年份',
  `czsr` double DEFAULT NULL COMMENT '财政收入',
  `gnsczz` double DEFAULT NULL COMMENT '国内生产\r\n国内生产\r\n总值',
  `czzc` double DEFAULT NULL COMMENT '财政支出',
  `splsjgzs` double DEFAULT NULL COMMENT '商品零售价格指数',
  `json` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tt` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `crrc_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;


-- zj_data.api_test1_ylwl definition

CREATE TABLE `api_test1_ylwl` (
  `LA` varchar(382) COLLATE utf8_bin NOT NULL COMMENT '类型',
  `NDJHA` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '年度计划',
  `SJWCA` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '实际完成',
  `LX` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '1',
  `NDJH` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '1',
  `SJWC` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '1',
  `HYBG` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '1',
  `ZBWCJD` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '1',
  `YLZD1` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '1',
  `GXRQ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '1',
  `ZQ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '1',
  PRIMARY KEY (`LA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='API_TEST_YLWL';


-- zj_data.app_config definition

CREATE TABLE `app_config` (
  `sm2_key` varchar(382) COLLATE utf8_bin NOT NULL COMMENT '类型',
  `LOGO` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '年度计划',
  `COPYRIGHT` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '实际完成',
  `TEL` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '行业标杆',
  `TITLE` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '指标完成进度',
  `ID` int(11) NOT NULL COMMENT '预留字段1',
  `CORP_NM` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT '更新日期',
  `CORP_CD` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT '账期',
  PRIMARY KEY (`sm2_key`,`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='app_config';


-- zj_data.class definition

CREATE TABLE `class` (
  `cid` int(4) NOT NULL,
  `cname` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.configuration_item definition

CREATE TABLE `configuration_item` (
  `code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验功能构型编码',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验功能构型名称',
  `product_line` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '所属产品线',
  `create_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `modify_date` date DEFAULT NULL COMMENT '修改时间',
  `is_active` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '激活标识',
  `is_delete` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '删除标识',
  `is_have_serial` varchar(1) COLLATE utf8_bin DEFAULT '0' COMMENT '是否有序列号',
  `is_railway_single_code` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '是否国铁单件码管理',
  `outResume` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否输出履历',
  `virtual_ware` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否虚拟件 0否 1是',
  `name_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '新增构型编码用来展示和修改',
  `is_rfid` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否rfid管理',
  `rfid_code` varchar(25) COLLATE utf8_bin DEFAULT NULL COMMENT 'RFID部件分类码',
  `is_qrcode` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否铁总二维码管理',
  `is_wheel_axle` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否车轮或车轴钢代号采集（0-否，1-车轮，2-车轴）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='QMS构型项基本信息';


-- zj_data.craft_project_info definition

CREATE TABLE `craft_project_info` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `project_num` varchar(150) COLLATE utf8_bin NOT NULL COMMENT '设计项目编号',
  `name` varchar(150) COLLATE utf8_bin NOT NULL COMMENT '工艺项目名称',
  `num` varchar(150) COLLATE utf8_bin NOT NULL COMMENT '工艺项目编号(id)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='工艺项目信息表';


-- zj_data.crrc_test definition

CREATE TABLE `crrc_test` (
  `_id` bigint(20) NOT NULL,
  `source_id` text COLLATE utf8_bin,
  `公司名称` text COLLATE utf8_bin,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_831wrz1 definition

CREATE TABLE `dm_831wrz1` (
  `FNUMBER` longtext COLLATE utf8_bin COMMENT 'FNUMBER',
  `FDISPLAYNAME_L2` longtext COLLATE utf8_bin COMMENT 'FDISPLAYNAME_L2',
  `FDEBITLOCAL` double(50,10) DEFAULT NULL COMMENT 'FDEBITLOCAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_831wrz1';


-- zj_data.dm_abnormal3_data definition

CREATE TABLE `dm_abnormal3_data` (
  `p_exception_type_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_exception_type_name',
  `p_exception_type_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_exception_type_code',
  `p_project` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_project',
  `p_singer_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_singer_car_code',
  `p_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_car_code',
  `p_workcenter_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_workcenter_name',
  `p_workcell_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_workcell_name',
  `p_op_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_op_name',
  `p_op_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_op_code',
  `p_exception_remark` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_exception_remark',
  `p_uda1c` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_uda1c',
  `p_workcell_gid` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_workcell_gid',
  `error_type` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'error_type',
  `p_launch_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_launch_id',
  `p_launch_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'p_launch_date',
  `p_create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'p_create_date',
  `p_modify_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'p_modify_date',
  `p_response_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_response_id',
  `p_response_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'p_response_date',
  `p_handl_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_handl_id',
  `p_handl_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'p_handl_date',
  `p_close_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_close_id',
  `p_close_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'p_close_date',
  `t_weixiangyngshichang` float(200,0) DEFAULT NULL COMMENT 't_weixiangyngshichang',
  `w_weichulishichang` float(200,0) DEFAULT NULL COMMENT 'w_weichulishichang',
  `e_weiguanbishichang` float(200,0) DEFAULT NULL COMMENT 'e_weiguanbishichang',
  `yujichulishijian` float(200,0) DEFAULT NULL COMMENT 'yujichulishijian',
  `xiangyingzhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'xiangyingzhaungtai',
  `chulizhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'chulizhaungtai',
  `guanbizhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'guanbizhaungtai'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_abnormal3_data';


-- zj_data.dm_abnormal4_data definition

CREATE TABLE `dm_abnormal4_data` (
  `p_exception_type_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_exception_type_name',
  `p_exception_type_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_exception_type_code',
  `p_project` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_project',
  `p_singer_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_singer_car_code',
  `p_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_car_code',
  `p_workcenter_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_workcenter_name',
  `p_workcell_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_workcell_name',
  `p_op_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_op_name',
  `p_op_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_op_code',
  `p_exception_remark` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_exception_remark',
  `p_uda1c` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_uda1c',
  `p_workcell_gid` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_workcell_gid',
  `error_type` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'error_type',
  `p_launch_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_launch_id',
  `p_launch_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'p_launch_date',
  `p_create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'p_create_date',
  `p_modify_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'p_modify_date',
  `p_response_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_response_id',
  `p_response_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'p_response_date',
  `p_handl_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_handl_id',
  `p_handl_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'p_handl_date',
  `p_close_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_close_id',
  `p_close_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'p_close_date',
  `t_weixiangyngshichang` float(200,0) DEFAULT NULL COMMENT 't_weixiangyngshichang',
  `w_weichulishichang` float(200,0) DEFAULT NULL COMMENT 'w_weichulishichang',
  `e_weiguanbishichang` float(200,0) DEFAULT NULL COMMENT 'e_weiguanbishichang',
  `yujichulishijian` float(200,0) DEFAULT NULL COMMENT 'yujichulishijian',
  `xiangyingzhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'xiangyingzhaungtai',
  `chulizhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'chulizhaungtai',
  `guanbizhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'guanbizhaungtai'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_abnormal4_data';


-- zj_data.dm_abnormal_data definition

CREATE TABLE `dm_abnormal_data` (
  `p_exception_type_name` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_project` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_singer_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_workcenter_name` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_workcell_name` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_op_name` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_op_code` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_exception_remark` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `p_uda1c` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_workcell_gid` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `error_type` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_launch_id` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_launch_date` timestamp NULL DEFAULT NULL,
  `p_create_date` timestamp NULL DEFAULT NULL,
  `p_modify_date` timestamp NULL DEFAULT NULL,
  `p_response_id` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_response_date` timestamp NULL DEFAULT NULL,
  `p_handl_id` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_handl_date` timestamp NULL DEFAULT NULL,
  `p_close_id` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_close_date` timestamp NULL DEFAULT NULL,
  `t_weixiangyngshichang` float(200,0) DEFAULT NULL,
  `w_weichulishichang` float(200,0) DEFAULT NULL,
  `e_weiguanbishichang` float(200,0) DEFAULT NULL,
  `yujichulishijian` float(200,0) DEFAULT NULL,
  `xiangyingzhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `chulizhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `guanbizhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_abnormal_data';


-- zj_data.dm_auditsetting definition

CREATE TABLE `dm_auditsetting` (
  `state` longtext COLLATE utf8_bin COMMENT '状态',
  `costcentername` longtext COLLATE utf8_bin COMMENT '成本中心名称',
  `expensetypename` longtext COLLATE utf8_bin COMMENT '费用类型名称',
  `audit1_name` longtext COLLATE utf8_bin COMMENT '一级审批人姓名',
  `audit2_name` longtext COLLATE utf8_bin COMMENT '二级审批人姓名',
  `audit3_name` longtext COLLATE utf8_bin COMMENT '三级审批人姓名',
  `audit_other_name` longtext COLLATE utf8_bin COMMENT '承担其他部门费用审批人',
  `costcenternumber` longtext COLLATE utf8_bin COMMENT '成本中心编码',
  `audit1_number` longtext COLLATE utf8_bin COMMENT '一级审批人工号',
  `audit2_number` longtext COLLATE utf8_bin COMMENT '二级审批人工号',
  `audit3_number` longtext COLLATE utf8_bin COMMENT '三级审批人工号',
  `audit_other_number` longtext COLLATE utf8_bin COMMENT '承担其他部门费用审批人工号',
  `expensetypenumber` longtext COLLATE utf8_bin COMMENT '费用类型编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_费用报销审批设置';


-- zj_data.dm_bgcp definition

CREATE TABLE `dm_bgcp` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `iOrd` int(11) NOT NULL COMMENT 'iOrd',
  `F1893` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1893',
  `F1894` float(200,0) NOT NULL COMMENT 'F1894',
  `F1895` float(200,0) NOT NULL COMMENT 'F1895',
  `F1896` date NOT NULL COMMENT 'F1896'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_bgcp';


-- zj_data.dm_bgcp1 definition

CREATE TABLE `dm_bgcp1` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `iOrd` int(11) NOT NULL COMMENT 'iOrd',
  `F1893` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1893',
  `F1894` float(20,2) NOT NULL COMMENT 'F1894',
  `F1895` float(20,2) NOT NULL COMMENT 'F1895',
  `F1896` date NOT NULL COMMENT 'F1896'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_bgcp1';


-- zj_data.dm_bom_change_lv definition

CREATE TABLE `dm_bom_change_lv` (
  `project_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `project_num` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `zzdw` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '制造单位',
  `tracknumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号',
  `car_no` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `bgs` int(11) DEFAULT NULL COMMENT '变更数',
  `zjls` int(11) DEFAULT NULL COMMENT '总记录数',
  `lv` double(100,4) DEFAULT NULL COMMENT '变更率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_bom_工艺bom车号变更率';


-- zj_data.dm_bom_project_car_detail definition

CREATE TABLE `dm_bom_project_car_detail` (
  `project_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `project_num` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `tracknumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号',
  `car_no` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `rk_num` double(100,0) DEFAULT NULL COMMENT '入库数',
  `ck_num` double(100,4) DEFAULT NULL COMMENT '出库数',
  `yfck_num` double(100,4) DEFAULT NULL COMMENT '应发出库数',
  `need_num` double(100,4) DEFAULT NULL COMMENT '需求数',
  `wrk_num` double(100,4) DEFAULT NULL COMMENT '未入库数',
  `wck_num` double(100,4) DEFAULT NULL COMMENT '未出库数',
  `wyfck_num` double(100,4) DEFAULT NULL COMMENT '未应发出库数',
  `rk_lv` double(100,4) DEFAULT NULL COMMENT '入库率',
  `ck_lv` double(100,4) DEFAULT NULL COMMENT '出库率',
  `yfck_lv` double(100,4) DEFAULT NULL COMMENT '应发出库率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_bom_物理看板项目车号入库出库数';


-- zj_data.dm_bom_project_scjhwcqk definition

CREATE TABLE `dm_bom_project_scjhwcqk` (
  `project_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `jc_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节车号',
  `gxflh_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序分录行id',
  `operation_no` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序号',
  `plan_end_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序计划完成时间',
  `status_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序状态',
  `status` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序状态数值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_bom_项目生产计划完成情况';


-- zj_data.dm_bom_pur_order definition

CREATE TABLE `dm_bom_pur_order` (
  `fnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编号',
  `ordertime` date DEFAULT NULL COMMENT '订单日期',
  `audittime` date DEFAULT NULL COMMENT '审核时间',
  `orderstatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '订单状态',
  `purgroupid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组id',
  `purgroupname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组',
  `supplierid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商id',
  `suppliername` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `projectid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目id',
  `projectname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `projectfnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `materialid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码id',
  `materialname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名称',
  `rkqty` double(23,2) DEFAULT NULL,
  `dhqty` double(23,2) DEFAULT NULL,
  `isfhpur` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '是否返回采购申请'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_bom_采购订单入库情况';


-- zj_data.dm_cgfz_swq_person_worktime definition

CREATE TABLE `dm_cgfz_swq_person_worktime` (
  `p_fnumber` longtext COLLATE utf8_bin,
  `t_fnumber` longtext COLLATE utf8_bin,
  `jch_fnumber` longtext COLLATE utf8_bin,
  `o_fnumber` longtext COLLATE utf8_bin,
  `o_fname_l2` longtext COLLATE utf8_bin,
  `s_fnumber` longtext COLLATE utf8_bin,
  `s_fname_l2` longtext COLLATE utf8_bin,
  `rt_cfworkTimeHS` float(25,2) DEFAULT NULL,
  `total_worktime` float(25,2) DEFAULT NULL,
  `rt_CFreplenishTime` float(25,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_swq_person_worktime';


-- zj_data.dm_cgfz_tabdiytable108 definition

CREATE TABLE `dm_cgfz_tabdiytable108` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `iOrd` int(11) NOT NULL COMMENT 'iOrd',
  `F1155` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1155',
  `F1156` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1156',
  `F1157` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1157',
  `F1158` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1158',
  `F1159` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1159',
  `F1160` float(25,2) NOT NULL COMMENT 'F1160',
  `F1161` float(25,2) NOT NULL COMMENT 'F1161',
  `F1162` float(25,2) NOT NULL COMMENT 'F1162',
  `F1163` float(25,2) NOT NULL COMMENT 'F1163',
  `F1164` float(25,2) NOT NULL COMMENT 'F1164',
  `F1165` date NOT NULL COMMENT 'F1165',
  `F1166` float(25,2) NOT NULL COMMENT 'F1166',
  `F1167` float(25,2) NOT NULL COMMENT 'F1167',
  `F1168` float(25,2) NOT NULL COMMENT 'F1168',
  `F1169` float(25,2) NOT NULL COMMENT 'F1169',
  `F1170` float(25,2) NOT NULL COMMENT 'F1170',
  `F1220` float(25,2) NOT NULL COMMENT 'F1220',
  `F1221` float(25,2) NOT NULL COMMENT 'F1221',
  `F1748` float(25,2) NOT NULL COMMENT 'F1748'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cgfz_tabDIYTable108';


-- zj_data.dm_cgfz_tabdiytable264 definition

CREATE TABLE `dm_cgfz_tabdiytable264` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `iOrd` int(11) NOT NULL COMMENT 'iOrd',
  `RepID` int(11) NOT NULL COMMENT 'RepID',
  `FillDate` datetime NOT NULL COMMENT 'FillDate',
  `ModifyDate` datetime NOT NULL COMMENT 'ModifyDate',
  `DeptID` int(11) NOT NULL COMMENT 'DeptID',
  `OperID` int(11) NOT NULL COMMENT 'OperID',
  `sDesc` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `bIsFinish` char(1) COLLATE utf8mb4_bin NOT NULL COMMENT 'bIsFinish',
  `bLocked` char(1) COLLATE utf8mb4_bin NOT NULL COMMENT 'bLocked',
  `bCanViewWhenNoFinished` char(1) COLLATE utf8mb4_bin NOT NULL COMMENT 'bCanViewWhenNoFinished',
  `OperID2` int(11) NOT NULL COMMENT 'OperID2',
  `dUpdate2` datetime DEFAULT NULL,
  `F16382` datetime DEFAULT NULL,
  `F16378` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16379` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16380` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16381` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16383` varchar(400) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16384` longtext COLLATE utf8mb4_bin,
  `F16385` longtext COLLATE utf8mb4_bin,
  `F16386` longtext COLLATE utf8mb4_bin,
  `F16387` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16388` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16389` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16390` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16391` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16392` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16393` datetime DEFAULT NULL,
  `F16394` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16395` datetime DEFAULT NULL,
  `F16396` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16397` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16398` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16399` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16402` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16403` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16404` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16405` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16630` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16631` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16632` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16990` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16991` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F16992` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F17194` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `F17195` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='城轨辅助系统_辅助问题台账表';


-- zj_data.dm_cgrkd definition

CREATE TABLE `dm_cgrkd` (
  `RKDH` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单号',
  `RKDSHRQ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单审核日期',
  `RKDYWRQ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单业务日期',
  `RKDZT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单状态',
  `YWLX` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务类型',
  `SWLX` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '事务类型',
  `KCZZ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '库存组织',
  `SL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数量',
  `YHXSL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '已核销数量',
  `WHXSL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '未核销数量',
  `WSDSL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '未锁定数量',
  `WKPSL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '未开票数量',
  `HTJ_HS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同价_含税',
  `DJ_BHS_YB_RK` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单价_不含税_原币_入库',
  `DJ_HS_YB_XDJ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单价_含税_原币_新定价',
  `DJ_HS_YB_JDJ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单价_含税_原币_旧定价',
  `SL_RKD` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '税率_入库单',
  `SL_XDJD` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '税率_新定价单',
  `SL_JDJD` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '税率_旧定价单',
  `HL_RKD` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '汇率_入库单',
  `HL_XDJD` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '汇率_新定价单',
  `BZ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `YHX_BHS_RMB` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '已核销_不含税_人民币',
  `WHX_BHS_RMB` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '未核销_不含税_人民币',
  `HXDJH` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '核心单据号',
  `DJDH` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '定价单号',
  `CGZ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组',
  `CGY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购员',
  `FMATERIALID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料ID',
  `FBALANCESUPPLIERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商ID',
  `XMMC` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `XMH` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `CGHTH_EAS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购合同号_EAS',
  `HTSHRQ_EAS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同审核日期_EAS',
  `HTZT_EAS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同状态_EAS',
  `HTBH_XS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同编号_线上',
  `HTSXSJ_XS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同生效时间_线上',
  `HTZT_XS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同状态_线上'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='采购入库单';


-- zj_data.dm_cljb_result definition

CREATE TABLE `dm_cljb_result` (
  `person_number` longtext COLLATE utf8_bin COMMENT '职员编码',
  `person_name` longtext COLLATE utf8_bin COMMENT '职员名称',
  `gnjb_name` longtext COLLATE utf8_bin COMMENT '国内报销级别名称',
  `gnjb_number` longtext COLLATE utf8_bin COMMENT '国内报销级别编码',
  `gwjb_name` longtext COLLATE utf8_bin COMMENT '国外报销级别名称',
  `gwjb_number` longtext COLLATE utf8_bin COMMENT '国外报销级别编码',
  `status` longtext COLLATE utf8_bin COMMENT '状态',
  `specail` longtext COLLATE utf8_bin COMMENT '特殊设置',
  `zwcj` longtext COLLATE utf8_bin COMMENT '职位层级',
  `zyjszwdj` longtext COLLATE utf8_bin COMMENT '专业技术职务等级',
  `zyfztd` longtext COLLATE utf8_bin COMMENT '职业发展通道',
  `zyfztd_type` longtext COLLATE utf8_bin COMMENT '职业发展通道类型',
  `zyfztd_dengji` longtext COLLATE utf8_bin COMMENT '职业发展通道等级',
  `job` longtext COLLATE utf8_bin COMMENT '职位名称',
  `part` longtext COLLATE utf8_bin COMMENT '部门名称',
  `company` longtext COLLATE utf8_bin COMMENT '公司名称',
  `core` longtext COLLATE utf8_bin COMMENT '中车核心人才',
  `skill` longtext COLLATE utf8_bin COMMENT '职业技能资格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_CLJB_RESULT';


-- zj_data.dm_cms_failures definition

CREATE TABLE `dm_cms_failures` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'ID',
  `report_date` datetime DEFAULT NULL COMMENT '故障报告填写时间',
  `project_type_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '项目类型id',
  `project_type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '项目类型',
  `fn` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '故障编号',
  `registrant` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '登记人（提报人）',
  `vgn` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '车组号',
  `vt` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '车种',
  `vl` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '故障车位置',
  `master_control_car` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '主控车',
  `klometers` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '公里数',
  `repair_status` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '修程情况',
  `repair_unit` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '修程呈修单位',
  `fault_opendate` datetime DEFAULT NULL COMMENT '故障发生时间',
  `fault_nature_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障性质id',
  `fault_nature` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '故障性质',
  `fault_desc` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '故障描述',
  `cause_analysis` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '简要原因分析',
  `repair_desc` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '修复描述',
  `is_recovery` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障车是否恢复',
  `responsible_unit` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位',
  `is_support` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '是否需要厂内技术支持',
  `other_requirement` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '现场其他要求',
  `fault_pic` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '故障照片',
  `pic_pdf_file_list` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '故障照片pdf文件',
  `pic_file_list` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '原始文件名',
  `vehicle_fault_data` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '车载故障数据',
  `special_information_path` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '专题信息上传',
  `spe_pdf_file_list` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '专题信息上传pfd文件',
  `spe_file_list` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '专题信息上传原始文件名',
  `repair_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '维修人工号',
  `repair_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '维修人姓名',
  `repair_sum` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '维修总人数',
  `fault_recovery_time` datetime DEFAULT NULL COMMENT '故障恢复时间',
  `manhour` float(5,1) DEFAULT NULL COMMENT '(h)',
  `disposer` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '处置人',
  `dispose_time` int(11) DEFAULT NULL COMMENT '处置用时',
  `fault_report` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障报告（存保存路径）',
  `next_approver` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '下一步审批人',
  `next_step` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '下一步审批节点',
  `run_id` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '流程RUNID',
  `is_active` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '数据可用状态',
  `is_delete` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '逻辑删除标记',
  `create_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `service_point_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '服务点id',
  `service_point_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '服务点name',
  `product_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品车型主键',
  `product` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '产品车型名称',
  `car_number_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号主键',
  `car_number` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '车号名称',
  `dependent_place_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '配属地id',
  `dependent_place` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '配属地',
  `discover_phase_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障发生阶段id',
  `discover_phase` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '故障发生阶段',
  `scene_duty` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '现场定责',
  `company_duty` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '公司定责',
  `technology_confirm` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '技术支持专员确定',
  `is_close` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障单是否可以关闭',
  `fault_phenomenon_keyword` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障现象关键词',
  `fault_reason_keyword` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障原因关键词',
  `solution_keyword` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '解决方案关键词',
  `emergency_keyword` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '应急处置关键词',
  `fault_report_upload` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '故障报告分析上传',
  `report_pdf_file_list` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '故障照片pdf文件',
  `report_file_list` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '专题信息上传pfd文件',
  `flow_status` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '流程状态',
  `current_node` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '当前节点',
  `deal_user_json` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '提交的审批人处理详情{node1:u2',
  `deal_user_id_json` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '提交的审批人处理详情{node1:u2',
  `vehicle_pdf_file_list` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '车载故障数据上传pfd文件',
  `vehicle_file_list` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '车载故障数据上传原始文件名',
  `fault_code_field` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障代码',
  `fault_object_field` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障对象',
  `failures_report` longtext COLLATE utf8_bin COMMENT '故障标准单报告',
  `generate` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障标准单分发领导名称',
  `generate_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障标准单分发领导id',
  `is_report` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '是否生成标准故障单（1是）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='故障表';


-- zj_data.dm_cms_failures_detail definition

CREATE TABLE `dm_cms_failures_detail` (
  `id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'id',
  `fn` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障编码',
  `report_date` date DEFAULT NULL COMMENT '日期',
  `service_point_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '服务点',
  `project_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '类别',
  `vgn` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车组号',
  `car_number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `fault_nature` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障性质',
  `fault_desc` longtext COLLATE utf8_bin COMMENT '故障描述',
  `repair_desc` longtext COLLATE utf8_bin COMMENT '修复描述',
  `responsible_unit` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位',
  `one_parts_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '一级故障部件',
  `two_parts_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '二级故障部件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='故障明细表';


-- zj_data.dm_cms_failures_object definition

CREATE TABLE `dm_cms_failures_object` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `fault_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障主表id',
  `fault_fn` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '故障主表 的故障编码',
  `configuration_location_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '构型位置名称',
  `configuration_location` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '构型位置id',
  `location_no` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '位置号',
  `material_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '物资编码',
  `one_parts_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '一级部件名称',
  `one_parts_name_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '一级部件名称id',
  `one_parts_model` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '一级部件型号',
  `one_parts_serialnum` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '一级部件序列号',
  `one_parts_supplier` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '一级部件供应商',
  `one_parts_elecode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '一级部件电气代码',
  `one_parts_version` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '一级部件软件版本',
  `two_parts_name_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '二级部件名称id(二级部件id)',
  `two_parts_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '二级部件名称',
  `two_parts_model` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '二级部件型号',
  `two_parts_serialnum` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '二级部件序列号',
  `two_parts_supplier` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '二级部件供应商',
  `two_parts_elecode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '二级部件电气代码',
  `two_parts_version` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '二级部件软件版本',
  `cg_one_parts_name_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换一级部件id',
  `cg_one_parts_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换一级部件名称',
  `cg_one_parts_model` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换一级部件型号',
  `cg_one_parts_serialnum` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换一级部件序列号',
  `cg_one_parts_supplier` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换一级部件供应商',
  `cg_one_parts_elecode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换一级部件电气代码',
  `cg_one_parts_version` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换一级部件软件版本',
  `cg_two_parts_name_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换二级部件id',
  `cg_two_parts_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换二级部件名称',
  `cg_two_parts_model` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换二级部件型号',
  `cg_two_parts_serialnum` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换二级部件序列号',
  `cg_two_parts_supplier` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换二级部件供应商',
  `cg_two_parts_elecode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换二级部件电气代码',
  `cg_two_parts_version` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '更换二级部件软件版本',
  `create_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'create_id',
  `create_date` datetime DEFAULT NULL COMMENT 'create_date',
  `modify_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'modify_id',
  `modify_date` datetime DEFAULT NULL COMMENT 'modify_date',
  `is_active` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'is_active',
  `is_delete` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'is_delete',
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'remark',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='故障单对象表（元器件明细）';


-- zj_data.dm_cms_service_point definition

CREATE TABLE `dm_cms_service_point` (
  `service_point_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '服务点名',
  `service_point_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '服务点id',
  `ym` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年月',
  `num` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='服务点数据';


-- zj_data.dm_commissioning_task definition

CREATE TABLE `dm_commissioning_task` (
  `mysql_udaProCode` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_udaProCode',
  `mysql_udaCarCode` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_udaCarCode',
  `mysql_tiaoshi` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_tiaoshi',
  `mysql_orderCode` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_orderCode',
  `mysql_dispatchCode` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_dispatchCode',
  `mysql_id` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_id',
  `mysql_plannedStartTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'mysql_plannedStartTime',
  `mysql_plannedFinishTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'mysql_plannedFinishTime',
  `mysql_lineCode` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_lineCode',
  `mysql_lineName` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_lineName',
  `mysql_opCode` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_opCode',
  `mysql_opName` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_opName',
  `mysql_fileCode` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_fileCode',
  `mysql_fileName` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_fileName',
  `mysql_carTypeCode` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_carTypeCode',
  `mysql_publishGid` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'mysql_publishGid',
  `mysql_prasePercent` float(200,2) DEFAULT NULL COMMENT 'mysql_prasePercent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_commissioning_task';


-- zj_data.dm_cost_result definition

CREATE TABLE `dm_cost_result` (
  `projectname` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'projectname',
  `projectnumber` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'projectnumber',
  `plate` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'plate',
  `itemnumber` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'itemnumber',
  `itemname` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'itemname',
  `amount` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cost_result';


-- zj_data.dm_cq_crrc_qs_bureau definition

CREATE TABLE `dm_cq_crrc_qs_bureau` (
  `fid` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` date DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` date DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_remark` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_remark',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_配属局';


-- zj_data.dm_cq_crrc_qs_faultycompon definition

CREATE TABLE `dm_cq_crrc_qs_faultycompon` (
  `fid` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` date DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` date DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fgroupid` bigint(20) DEFAULT NULL COMMENT 'fgroupid',
  `fk_crrc_remark` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_remark',
  `flevel` bigint(20) DEFAULT NULL COMMENT 'flevel',
  `flongnumber` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'flongnumber',
  `fisleaf` longtext COLLATE utf8_bin NOT NULL COMMENT 'fisleaf',
  `fparentid` bigint(20) DEFAULT NULL COMMENT 'fparentid',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_故障部件';


-- zj_data.dm_cq_crrc_qs_productuality definition

CREATE TABLE `dm_cq_crrc_qs_productuality` (
  `fid` bigint(20) NOT NULL COMMENT 'FId',
  `fbillno` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编号',
  `fbillstatus` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '单据状态',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fauditorid` bigint(20) DEFAULT NULL COMMENT 'fauditorid',
  `fauditdate` date DEFAULT NULL COMMENT '审核日期',
  `fmodifytime` date DEFAULT NULL COMMENT '修改时间',
  `fcreatetime` date DEFAULT NULL COMMENT '创建时间',
  `fk_crrc_type` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '板块',
  `fk_crrc_bizdate` date DEFAULT NULL COMMENT '业务日期',
  `fk_crrc_attribute` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '故障性质',
  `fk_crrc_project` bigint(20) DEFAULT NULL COMMENT '项目号id',
  `fk_crrc_trackno` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '列车号',
  `fk_crrc_level` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '造修级别',
  `fk_crrc_content` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '故障情况',
  `fk_crrc_respdept` bigint(20) DEFAULT NULL COMMENT '内部责任单位',
  `fk_crrc_respperson` bigint(20) DEFAULT NULL COMMENT '责任人',
  `fk_crrc_isexpired` longtext COLLATE utf8_bin COMMENT '是否出保',
  `fk_crrc_isincluded` longtext COLLATE utf8_bin COMMENT '是否纳入指标',
  `fk_crrc_measure` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '整改措施',
  `fk_crrc_causeanalysis` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '原因分析',
  `fk_crrc_ischeck` longtext COLLATE utf8_bin COMMENT '是否考核',
  `fk_crrc_ishandover` longtext COLLATE utf8_bin COMMENT '是否交班',
  `fk_crrc_notice` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '定责通知单',
  `fk_crrc_remark` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `fk_crrc_vehiclemodel` bigint(20) DEFAULT NULL COMMENT '车型id',
  `fk_crrc_bureau` bigint(20) DEFAULT NULL COMMENT '配属局id',
  `fk_crrc_section` bigint(20) DEFAULT NULL COMMENT '配属段id',
  `fk_crrc_resptype` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '责任类别',
  `fk_crrc_outrespdept` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '外部责任单位',
  `fk_crrc_component` bigint(20) DEFAULT NULL COMMENT '一级故障部件id',
  `fk_crrc_status` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '关闭状态',
  `fk_crrc_component1` bigint(20) DEFAULT NULL COMMENT '二级故障部件id',
  `fbureauno` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '配属局编码',
  `fbureauname` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '配属局名称',
  `ffaultycompno` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '一级故障部件编码',
  `ffaultycompname` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '一级故障部件名称',
  `fsectionno` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '配属段编码',
  `fsectionname` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '配属段名称',
  `fsystemno` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '所属系统编码',
  `fsystemname` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '所属系统名称',
  `fvehiclemodelno` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '车型编码',
  `fvehiclemodelname` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '车型名称',
  `ffaultycompno1` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '二级故障部件编码',
  `ffaultycompname1` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '二级故障部件名称',
  `fprojecctno` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `fprojecctname` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名',
  `frespdeptno` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '内部责任单位编码',
  `frespdeptname` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '内部责任单位名称',
  `fresppersonno` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '责任人编码',
  `fresppersonname` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '责任人名称',
  `frespdept` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_产品故障信息';


-- zj_data.dm_cq_crrc_qs_section definition

CREATE TABLE `dm_cq_crrc_qs_section` (
  `fid` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` date DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` date DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_remark` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_remark',
  `fk_crrc_groupid` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_groupid',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_配属段';


-- zj_data.dm_cq_crrc_qs_system definition

CREATE TABLE `dm_cq_crrc_qs_system` (
  `fid` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` date DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` date DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_remark` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_remark',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_所属系统';


-- zj_data.dm_cq_crrc_qs_vehiclemodel definition

CREATE TABLE `dm_cq_crrc_qs_vehiclemodel` (
  `fid` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` date DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` date DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_remark` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_remark',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_车型';


-- zj_data.dm_cq_htorderjeplan definition

CREATE TABLE `dm_cq_htorderjeplan` (
  `qydw` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '签约单位',
  `qdsj` date DEFAULT NULL COMMENT '签订时间',
  `je` decimal(23,5) DEFAULT NULL,
  `ysje` decimal(23,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_合同订单金额及计划';


-- zj_data.dm_cq_neworder definition

CREATE TABLE `dm_cq_neworder` (
  `qianyuedanwei` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '签约单位',
  `qdtime` date DEFAULT NULL COMMENT '签订日期',
  `contractno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同编号',
  `sxdate` date DEFAULT NULL COMMENT '生效日期',
  `contractamout` double(100,2) DEFAULT NULL COMMENT '合同金额',
  `username` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名称',
  `carcoutnum` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车辆总数',
  `countprice` double(100,2) DEFAULT NULL COMMENT '总价'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_新签订单';


-- zj_data.dm_cq_tk_crrc_qs_bureau definition

CREATE TABLE `dm_cq_tk_crrc_qs_bureau` (
  `fid` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` date DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` date DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_remark` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_remark',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_配属局';


-- zj_data.dm_cq_tk_crrc_qs_cghgl definition

CREATE TABLE `dm_cq_tk_crrc_qs_cghgl` (
  `fid` bigint(20) NOT NULL COMMENT 'fid',
  `fbillno` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fbillno',
  `fbillstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fbillstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fauditorid` bigint(20) DEFAULT NULL COMMENT 'fauditorid',
  `fauditdate` date DEFAULT NULL COMMENT 'fauditdate',
  `fmodifytime` date DEFAULT NULL COMMENT 'fmodifytime',
  `fcreatetime` date DEFAULT NULL COMMENT 'fcreatetime',
  `fk_crrc_mouth` date DEFAULT NULL COMMENT 'fk_crrc_mouth',
  `fk_crrc_textfield` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_textfield',
  `fk_crrc_month` date DEFAULT NULL COMMENT 'fk_crrc_month',
  `fk_crrc_vehicle_num` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_vehicle_num',
  `fk_crrc_first_num` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_first_num',
  `fk_crrc_openitem_num` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_openitem_num',
  `fk_crrc_vehicle_num_2` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_vehicle_num_2',
  `fk_crrc_a_num` bigint(20) DEFAULT NULL COMMENT 'A类开口项数',
  `fk_crrc_integerfield2` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_integerfield2',
  `fk_crrc_integerfield3` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_integerfield3',
  `fk_crrc_b_num` bigint(20) DEFAULT NULL COMMENT 'B 类问题',
  `fk_crrc_c_num` bigint(20) DEFAULT NULL COMMENT 'C 类问题',
  `fk_crrc_ihgl_o_num` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_ihgl_o_num',
  `fk_crrc_cghgl` decimal(23,2) DEFAULT NULL COMMENT 'fk_crrc_cghgl',
  `fk_crrc_psi_vehicle_num` decimal(23,10) DEFAULT NULL COMMENT 'PSI交验列车总数（Q40交验的车辆数）',
  `fk_crrc_decimalfield1` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_decimalfield1',
  `fk_crrc_decimalfield2` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_decimalfield2',
  `fk_crrc_decimalfield3` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_decimalfield3',
  `fk_crrc_decimalfield4` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_decimalfield4',
  `fk_crrc_decimalfield5` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_decimalfield5',
  `fk_crrc_decimalfield6` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_decimalfield6',
  `fk_crrc_decimalfield7` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_decimalfield7',
  `fk_crrc_decimalfield8` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_decimalfield8',
  `fk_crrc_psi_open_num` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_psi_open_num',
  `fk_crrc_firsttrain_num` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_firsttrain_num',
  `fk_crrc_hgl_vehicle_num` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_hgl_vehicle_num',
  `fk_crrc_hgl_openitem_num` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_hgl_openitem_num',
  `fk_crrc_cghgl1` decimal(23,10) DEFAULT NULL COMMENT '一次交验合格率',
  `fk_crrc_datefield` date DEFAULT NULL COMMENT 'fk_crrc_datefield',
  `fk_crrc_datefield1` date DEFAULT NULL COMMENT 'fk_crrc_datefield1',
  `fk_crrc_textfield1` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_textfield1',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='一次交验合格率';


-- zj_data.dm_cq_tk_crrc_qs_jb_jy_145 definition

CREATE TABLE `dm_cq_tk_crrc_qs_jb_jy_145` (
  `fid` bigint(20) NOT NULL COMMENT 'FId',
  `fentryid` bigint(20) NOT NULL COMMENT 'FEntryId',
  `fseq` int(11) NOT NULL DEFAULT '0' COMMENT 'FSeq',
  `fmodifierfield` bigint(20) DEFAULT NULL COMMENT 'fmodifierfield',
  `fmodifydatefield` date DEFAULT NULL COMMENT 'fmodifydatefield',
  `fk_crrc_jb_comments` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_jb_comments',
  `fk_crrc_jb_resolution` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_jb_resolution',
  `fk_crrc_jb_rorg` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_jb_rorg',
  `fk_crrc_ruser` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_ruser',
  `fk_crrc_closedate` date DEFAULT NULL COMMENT 'fk_crrc_closedate',
  `fk_crrc_commentstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_commentstatus',
  `fk_crrc_closereport` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_closereport',
  `fk_crrc_closereportstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_closereportstatus',
  `fk_crrc_jb_comment` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_jb_comment',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_tk_crrc_qs_jb_jy_145';


-- zj_data.dm_cq_tk_crrc_qs_jb_jy_org definition

CREATE TABLE `dm_cq_tk_crrc_qs_jb_jy_org` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FEntryId` bigint(20) NOT NULL COMMENT 'FEntryId',
  `FSeq` int(11) NOT NULL DEFAULT '0' COMMENT 'FSeq',
  `fmodifierfield` bigint(20) DEFAULT NULL COMMENT 'fmodifierfield',
  `fmodifydatefield` date DEFAULT NULL COMMENT 'fmodifydatefield',
  `fk_crrc_jb_comments` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_jb_comments',
  `fk_crrc_jb_resolution` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_jb_resolution',
  `fk_crrc_jb_rorg` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_jb_rorg',
  `fk_crrc_ruser` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_ruser',
  `fk_crrc_closedate` date DEFAULT NULL COMMENT 'fk_crrc_closedate',
  `fk_crrc_commentstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_commentstatus',
  `fk_crrc_closereport` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_closereport',
  `fk_crrc_closereportstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_closereportstatus',
  `fk_crrc_jb_comment` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_jb_comment',
  `fk_crrc_jb_rorg_name` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'fk_crrc_jb_rorg_name',
  PRIMARY KEY (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_tk_crrc_qs_jb_jy_org';


-- zj_data.dm_cq_tk_crrc_qs_section definition

CREATE TABLE `dm_cq_tk_crrc_qs_section` (
  `fid` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` date DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` date DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_remark` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_remark',
  `fk_crrc_groupid` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_groupid',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_配属段';


-- zj_data.dm_cq_tk_crrc_qs_system definition

CREATE TABLE `dm_cq_tk_crrc_qs_system` (
  `fid` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` date DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` date DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_remark` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_remark',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_所属系统';


-- zj_data.dm_cq_tk_crrc_qs_vehiclemodel definition

CREATE TABLE `dm_cq_tk_crrc_qs_vehiclemodel` (
  `fid` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` date DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` date DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_remark` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_remark',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_车型';


-- zj_data.dm_cq_tk_gx_fdsxbi definition

CREATE TABLE `dm_cq_tk_gx_fdsxbi` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `fk_crrc_billno` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_billno',
  `fk_crrc_feenumber` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_feenumber',
  `fk_crrc_feename` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_feename',
  `fk_crrc_company` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_company',
  `fk_crrc_companyname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_companyname',
  `fk_crrc_bizdate` date DEFAULT NULL COMMENT 'fk_crrc_bizdate',
  `fk_crrc_deptnumber` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_deptnumber',
  `fk_crrc_deptname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_deptname',
  `fk_crrc_createtime` date DEFAULT NULL COMMENT 'fk_crrc_createtime',
  `fk_crrc_finishdate` date DEFAULT NULL COMMENT 'fk_crrc_finishdate',
  `fk_crrc_actname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_actname',
  `fk_crrc_billtype` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_billtype',
  `fk_crrc_type` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_type',
  `fk_crrc_usetime` decimal(23,2) DEFAULT NULL COMMENT 'fk_crrc_usetime',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_分段时效明细';


-- zj_data.dm_cq_ysdata definition

CREATE TABLE `dm_cq_ysdata` (
  `bizdate` date DEFAULT NULL COMMENT '日期',
  `org` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '组织',
  `yysr` double(100,2) DEFAULT NULL COMMENT '营业收入',
  `yycb` double(100,2) DEFAULT NULL COMMENT '营业成本',
  `lrze` double(100,2) DEFAULT NULL COMMENT '利润总额',
  `jlr` double(100,2) DEFAULT NULL COMMENT '净利润',
  `xqdd` double(100,2) DEFAULT NULL COMMENT '新签订单',
  `yszk` double(100,2) DEFAULT NULL COMMENT '应收账款'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_预算数据';


-- zj_data.dm_cq_yysrxgzb definition

CREATE TABLE `dm_cq_yysrxgzb` (
  `company` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `ym` date DEFAULT NULL,
  `yysr` double(100,2) DEFAULT NULL COMMENT '营业收入',
  `yysrbnlj` double(100,0) DEFAULT NULL COMMENT '营业收入本年累计',
  `yysrsntqlj` double(100,0) DEFAULT NULL COMMENT '营业收入上年同期累计',
  `yycb` double(100,0) DEFAULT NULL COMMENT '营业成本',
  `yycbbnlj` double(100,0) DEFAULT NULL COMMENT '营业成本本年累计',
  `yycbsntqlj` double(100,0) DEFAULT NULL COMMENT '营业成本上年同期累计',
  `jlr` double(100,0) DEFAULT NULL COMMENT '净利润',
  `jlrbnlj` double(100,0) DEFAULT NULL COMMENT '净利润本年累计',
  `jlrsntqlj` double(100,0) DEFAULT NULL COMMENT '净利润上年同期累计',
  `lrze` double(100,0) DEFAULT NULL COMMENT '利润总额',
  `lrzebnlj` double(100,0) DEFAULT NULL COMMENT '利润总额本年累计',
  `lrzesntqlj` double(100,0) DEFAULT NULL COMMENT '利润总额上年同期累计',
  `yszk` double(100,0) DEFAULT NULL COMMENT '应收账款',
  `yszkbnlj` double(100,0) DEFAULT NULL COMMENT '应收账款本年累计',
  `yszksntqlj` double(100,0) DEFAULT NULL COMMENT '应收账款上年同期累计'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_营业收入相关指标';


-- zj_data.dm_cq_yyszmx definition

CREATE TABLE `dm_cq_yyszmx` (
  `hszz` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '核算组织',
  `rq` date DEFAULT NULL COMMENT '日期',
  `hbdw` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '货币单位',
  `ywfl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务分类',
  `scqd` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '市场渠道',
  `cpfl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品分类',
  `cpmc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品名称',
  `jldw` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计量单位',
  `xssl` double(100,0) DEFAULT NULL COMMENT '销售数量',
  `yysr` double(100,2) DEFAULT NULL COMMENT '营业收入',
  `yycb` double(100,2) DEFAULT NULL COMMENT '营业成本',
  `yysj` double(100,2) DEFAULT NULL COMMENT '营业税金',
  `yyml` double(100,2) DEFAULT NULL COMMENT '营业毛利',
  `mll` double(100,2) DEFAULT NULL COMMENT '毛利率',
  `ywlx` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务类型',
  `ywbk` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务板块'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_cq_营业收支明细';


-- zj_data.dm_crisp_debit definition

CREATE TABLE `dm_crisp_debit` (
  `FDEBITLOCAL` double(50,10) DEFAULT NULL COMMENT '借方发生额本位币',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '编号',
  `FDISPLAYNAME_L2` longtext COLLATE utf8_bin COMMENT '部门长名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crisp_debit';


-- zj_data.dm_crrc2_swq_abnormal_data definition

CREATE TABLE `dm_crrc2_swq_abnormal_data` (
  `p_project` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_project',
  `p_singer_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_singer_car_code',
  `p_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_car_code',
  `p_workcenter_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_workcenter_name',
  `p_workcell_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_workcell_name',
  `p_op_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_op_name',
  `p_exception_remark` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_exception_remark',
  `p_uda1c` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_uda1c',
  `error_type` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'error_type',
  `p_launch_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_launch_id',
  `p_launch_date` date DEFAULT NULL COMMENT 'p_launch_date',
  `p_create_date` date DEFAULT NULL COMMENT 'p_create_date',
  `p_modify_date` date DEFAULT NULL COMMENT 'p_modify_date',
  `p_response_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_response_id',
  `p_response_date` date DEFAULT NULL COMMENT 'p_response_date',
  `p_handl_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_handl_id',
  `p_handl_date` date DEFAULT NULL COMMENT 'p_handl_date',
  `p_close_id` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'p_close_id',
  `p_close_date` date DEFAULT NULL COMMENT 'p_close_date',
  `t_weixiangyngshichang` float(10,2) DEFAULT NULL,
  `w_weichulishichang` float(10,2) DEFAULT NULL,
  `e_weiguanbishichang` float(10,2) DEFAULT NULL,
  `yujichulishijian` float(30,2) DEFAULT NULL,
  `xiangyingzhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'xiangyingzhaungtai',
  `chulizhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'chulizhaungtai',
  `guanbizhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'guanbizhaungtai'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc2_swq_abnormal_data';


-- zj_data.dm_crrc2_swq_process_task_delivery definition

CREATE TABLE `dm_crrc2_swq_process_task_delivery` (
  `id` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'id',
  `v_WORK_CELL_GID` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_WORK_CELL_GID',
  `v_singer_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_singer_car_code',
  `v_project` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_project',
  `v_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_car_code',
  `v_MRL_CODE_count` int(11) DEFAULT NULL COMMENT 'v_MRL_CODE_count',
  `v_MRL_CODE` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_MRL_CODE',
  `v_PRODU_NAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_PRODU_NAME',
  `v_op_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_op_code',
  `o_op_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'o_op_name',
  `g_group_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'g_group_code',
  `g_group_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'g_group_name',
  `v_order_type` int(11) DEFAULT NULL COMMENT 'v_order_type',
  `o_op_type` int(11) DEFAULT NULL COMMENT 'o_op_type',
  `v_planned_start_time` date DEFAULT NULL COMMENT 'v_planned_start_time',
  `v_planned_finish_time` date DEFAULT NULL COMMENT 'v_planned_finish_time',
  `v_ACTUAL_BEGIN_DATE` date DEFAULT NULL COMMENT 'v_ACTUAL_BEGIN_DATE',
  `v_ACTUAL_END_DATE` date DEFAULT NULL COMMENT 'v_ACTUAL_END_DATE',
  `v_produ_place` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_produ_place',
  `v_stage_position` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_stage_position',
  `v_work_persion` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_work_persion',
  `pe_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'pe_name',
  `v_ISSUED_CHENK_POSITION` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_ISSUED_CHENK_POSITION',
  `v_ISSUED_CHENK_DATE` date DEFAULT NULL COMMENT 'v_ISSUED_CHENK_DATE',
  `v_ISSUED_CHENK_STATE` int(11) DEFAULT NULL COMMENT 'v_ISSUED_CHENK_STATE',
  `v_SEND_REQ_MRL` int(11) DEFAULT NULL COMMENT 'v_SEND_REQ_MRL',
  `v_DIS_CODE_STATE` int(11) DEFAULT NULL COMMENT 'v_DIS_CODE_STATE',
  `v_uda_transmit` int(11) DEFAULT NULL COMMENT 'v_uda_transmit',
  `pl_NAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'pl_NAME',
  `wc_NAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'wc_NAME',
  `cell_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'cell_code',
  `cell_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'cell_name',
  `s_std_time` float(10,2) DEFAULT NULL COMMENT 's_std_time',
  `v_is_man_hour_rpt` int(11) DEFAULT NULL COMMENT 'v_is_man_hour_rpt',
  `f_state_count` int(11) DEFAULT NULL COMMENT 'f_state_count',
  `qitaoshuliangtongjibaokuoyuji` int(11) DEFAULT NULL COMMENT 'qitaoshuliangtongjibaokuoyuji',
  `v_REMARK` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_REMARK',
  `v_UDA_OUT_STATE` int(11) DEFAULT NULL COMMENT 'v_UDA_OUT_STATE',
  `weilaiyizhou` int(11) DEFAULT NULL COMMENT 'weilaiyizhou'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc2_swq_process_task_delivery';


-- zj_data.dm_crrc3_swq_process_task_delivery definition

CREATE TABLE `dm_crrc3_swq_process_task_delivery` (
  `id` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'id',
  `v_WORK_CELL_GID` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_WORK_CELL_GID',
  `v_singer_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_singer_car_code',
  `v_project` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_project',
  `v_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_car_code',
  `v_MRL_CODE_count` int(11) DEFAULT NULL COMMENT 'v_MRL_CODE_count',
  `v_MRL_CODE` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_MRL_CODE',
  `v_PRODU_NAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_PRODU_NAME',
  `v_op_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_op_code',
  `o_op_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'o_op_name',
  `g_group_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'g_group_code',
  `g_group_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'g_group_name',
  `v_order_type` int(11) DEFAULT NULL COMMENT 'v_order_type',
  `o_op_type` int(11) DEFAULT NULL COMMENT 'o_op_type',
  `v_planned_start_time` datetime DEFAULT NULL COMMENT 'v_planned_start_time',
  `v_planned_finish_time` datetime DEFAULT NULL COMMENT 'v_planned_finish_time',
  `v_ACTUAL_BEGIN_DATE` datetime DEFAULT NULL COMMENT 'v_ACTUAL_BEGIN_DATE',
  `v_ACTUAL_END_DATE` datetime DEFAULT NULL COMMENT 'v_ACTUAL_END_DATE',
  `v_produ_place` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_produ_place',
  `v_stage_position` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_stage_position',
  `v_work_persion` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_work_persion',
  `pe_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'pe_name',
  `v_ISSUED_CHENK_POSITION` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_ISSUED_CHENK_POSITION',
  `v_ISSUED_CHENK_DATE` datetime DEFAULT NULL COMMENT 'v_ISSUED_CHENK_DATE',
  `v_ISSUED_CHENK_STATE` int(11) DEFAULT NULL COMMENT 'v_ISSUED_CHENK_STATE',
  `v_SEND_REQ_MRL` int(11) DEFAULT NULL COMMENT 'v_SEND_REQ_MRL',
  `v_DIS_CODE_STATE` int(11) DEFAULT NULL COMMENT 'v_DIS_CODE_STATE',
  `v_uda_transmit` int(11) DEFAULT NULL COMMENT 'v_uda_transmit',
  `pl_NAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'pl_NAME',
  `wc_NAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'wc_NAME',
  `cell_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'cell_code',
  `cell_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'cell_name',
  `s_std_time` float(10,2) DEFAULT NULL COMMENT 's_std_time',
  `v_is_man_hour_rpt` int(11) DEFAULT NULL COMMENT 'v_is_man_hour_rpt',
  `f_state_count` int(11) DEFAULT NULL COMMENT 'f_state_count',
  `qitaoshuliangtongjibaokuoyuji` int(11) DEFAULT NULL COMMENT 'qitaoshuliangtongjibaokuoyuji',
  `v_REMARK` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_REMARK',
  `v_UDA_OUT_STATE` int(11) DEFAULT NULL COMMENT 'v_UDA_OUT_STATE',
  `weilaiyizhou` int(11) DEFAULT NULL COMMENT 'weilaiyizhou'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc3_swq_process_task_delivery';


-- zj_data.dm_crrc_abnormal2_data definition

CREATE TABLE `dm_crrc_abnormal2_data` (
  `p_exception_type_name` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_project` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_singer_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_workcenter_name` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_workcell_name` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_op_name` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_exception_remark` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `p_uda1c` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `error_type` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_launch_id` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_launch_date` timestamp NULL DEFAULT NULL,
  `p_create_date` timestamp NULL DEFAULT NULL,
  `p_modify_date` timestamp NULL DEFAULT NULL,
  `p_response_id` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_response_date` timestamp NULL DEFAULT NULL,
  `p_handl_id` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_handl_date` timestamp NULL DEFAULT NULL,
  `p_close_id` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `p_close_date` timestamp NULL DEFAULT NULL,
  `t_weixiangsc` float(200,2) DEFAULT NULL,
  `w_weichulishichang` float(200,2) DEFAULT NULL,
  `e_weiguanbishichang` float(200,2) DEFAULT NULL,
  `yujichulishijian` float(200,2) DEFAULT NULL,
  `xiangyingzhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `chulizhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `guanbizhaungtai` varchar(500) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_abnormal2_data';


-- zj_data.dm_crrc_mesjob definition

CREATE TABLE `dm_crrc_mesjob` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `fk_crrc_chgbillnum` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_chgbillnum',
  `fk_crrc_chgbillname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_chgbillname',
  `fk_crrc_deptname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_deptname',
  `fk_crrc_deptid` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_deptid',
  `fk_crrc_begincarno` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_begincarno',
  `fk_crrc_projectjch` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_projectjch',
  `fk_crrc_exegroupcode` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_exegroupcode',
  `fk_crrc_exegroupname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_exegroupname',
  `fk_crrc_isfirstcaryes` longtext COLLATE utf8_bin NOT NULL COMMENT 'fk_crrc_isfirstcaryes',
  `fk_crrc_projectnum` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_projectnum',
  `fk_crrc_projectname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_projectname',
  `fk_crrc_createperson` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_createperson',
  `fk_crrc_datefield` date DEFAULT NULL COMMENT 'fk_crrc_datefield',
  `fk_crrc_copyunit` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT 'fk_crrc_copyunit',
  `fk_crrc_copyunitname` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'fk_crrc_copyunitname',
  `fk_crrc_maindept` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_maindept',
  `fk_crrc_maindeptname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_maindeptname',
  `fk_crrc_chgcause` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_chgcause',
  `fk_crrc_createtime` date DEFAULT NULL COMMENT 'fk_crrc_createtime',
  `fk_crrc_jobstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_jobstatus',
  `fk_crrc_billno` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_billno',
  `fk_crrc_feedbackperson` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_feedbackperson',
  `fk_crrc_feedbackdate` date DEFAULT NULL COMMENT 'fk_crrc_feedbackdate',
  `fk_crrc_feedbackstate` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_feedbackstate',
  `fk_crrc_closetype` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_closetype',
  `fk_crrc_userfield` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_userfield',
  `fk_crrc_closedate` date DEFAULT NULL COMMENT 'fk_crrc_closedate',
  `fk_crrc_closecause` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_closecause',
  `fk_crrc_closeuser` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_closeuser',
  `fk_crrc_combofield` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_combofield',
  `fk_crrc_obsource` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_obsource',
  `fk_crrc_worktime` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_worktime',
  `fk_crrc_serialno` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_serialno',
  `fk_crrc_finishdate` date DEFAULT NULL COMMENT 'fk_crrc_finishdate',
  `fk_crrc_picture2` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_picture2',
  `fk_crrc_picture` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_picture',
  `fk_crrc_textareafield` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_textareafield',
  `fk_crrc_imgurl` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_imgurl',
  `fk_crrc_imgurl_tag` longtext COLLATE utf8_bin COMMENT 'fk_crrc_imgurl_tag',
  `fk_crrc_checkboxfield` longtext COLLATE utf8_bin NOT NULL COMMENT 'fk_crrc_checkboxfield',
  `fk_crrc_ischeck` longtext COLLATE utf8_bin NOT NULL COMMENT 'fk_crrc_ischeck',
  `fk_crrc_craftnext` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_craftnext',
  `fk_crrc_craftnext_tag` longtext COLLATE utf8_bin COMMENT 'fk_crrc_craftnext_tag',
  `fk_crrc_locksending` longtext COLLATE utf8_bin NOT NULL COMMENT 'fk_crrc_locksending',
  `fk_crrc_issubmaterial` longtext COLLATE utf8_bin NOT NULL COMMENT 'fk_crrc_issubmaterial',
  `fk_crrc_material` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_material',
  `fk_crrc_orgunit` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_orgunit',
  `fk_crrc_workprocess` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_workprocess',
  `fk_crrc_decimalfield` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_decimalfield',
  `fk_crrc_countqty` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_countqty',
  `fk_crrc_finishnode` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_finishnode',
  `fk_crrc_finishdesc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_finishdesc',
  `fk_crrc_orgfield` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_orgfield',
  `fk_crrc_basedatafield` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_basedatafield',
  `fk_crrc_exegroupdpt` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_exegroupdpt',
  `fk_crrc_orgfield1` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_orgfield1',
  `fk_crrc_department` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_department',
  `fk_crrc_departmentdpt` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_departmentdpt',
  `fk_crrc_remark` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_remark',
  `fk_crrc_projectid` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_projectid',
  `fk_crrc_ncrid` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_ncrid',
  `fk_crrc_billstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_billstatus',
  `fk_crrc_reportbill` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_reportbill',
  `fk_crrc_executebillno` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_executebillno',
  `fk_crrc_billstatusfield` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_billstatusfield',
  `fk_crrc_transmit` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_transmit',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_mesjob';


-- zj_data.dm_crrc_mesjob2 definition

CREATE TABLE `dm_crrc_mesjob2` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `fk_crrc_chgbillnum` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_chgbillnum',
  `fk_crrc_chgbillname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_chgbillname',
  `fk_crrc_deptname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_deptname',
  `fk_crrc_deptid` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_deptid',
  `fk_crrc_begincarno` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_begincarno',
  `fk_crrc_projectjch` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_projectjch',
  `fk_crrc_exegroupcode` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_exegroupcode',
  `fk_crrc_exegroupname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_exegroupname',
  `fk_crrc_isfirstcaryes` longtext COLLATE utf8_bin NOT NULL COMMENT 'fk_crrc_isfirstcaryes',
  `fk_crrc_projectnum` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_projectnum',
  `fk_crrc_projectname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_projectname',
  `fk_crrc_createperson` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_createperson',
  `fk_crrc_datefield` date DEFAULT NULL COMMENT 'fk_crrc_datefield',
  `fk_crrc_copyunit` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT 'fk_crrc_copyunit',
  `fk_crrc_copyunitname` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'fk_crrc_copyunitname',
  `fk_crrc_maindept` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_maindept',
  `fk_crrc_maindeptname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_maindeptname',
  `fk_crrc_chgcause` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_chgcause',
  `fk_crrc_createtime` date DEFAULT NULL COMMENT 'fk_crrc_createtime',
  `fk_crrc_jobstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_jobstatus',
  `fk_crrc_billno` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_billno',
  `fk_crrc_feedbackperson` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_feedbackperson',
  `fk_crrc_feedbackdate` date DEFAULT NULL COMMENT 'fk_crrc_feedbackdate',
  `fk_crrc_feedbackstate` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_feedbackstate',
  `fk_crrc_closetype` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_closetype',
  `fk_crrc_userfield` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_userfield',
  `fk_crrc_closedate` date DEFAULT NULL COMMENT 'fk_crrc_closedate',
  `fk_crrc_closecause` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_closecause',
  `fk_crrc_closeuser` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_closeuser',
  `fk_crrc_combofield` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_combofield',
  `fk_crrc_obsource` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_obsource',
  `fk_crrc_worktime` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_worktime',
  `fk_crrc_serialno` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_serialno',
  `fk_crrc_finishdate` date DEFAULT NULL COMMENT 'fk_crrc_finishdate',
  `fk_crrc_picture2` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_picture2',
  `fk_crrc_picture` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_picture',
  `fk_crrc_textareafield` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_textareafield',
  `fk_crrc_imgurl` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_imgurl',
  `fk_crrc_imgurl_tag` longtext COLLATE utf8_bin COMMENT 'fk_crrc_imgurl_tag',
  `fk_crrc_checkboxfield` longtext COLLATE utf8_bin NOT NULL COMMENT 'fk_crrc_checkboxfield',
  `fk_crrc_ischeck` longtext COLLATE utf8_bin NOT NULL COMMENT 'fk_crrc_ischeck',
  `fk_crrc_craftnext` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_craftnext',
  `fk_crrc_craftnext_tag` longtext COLLATE utf8_bin COMMENT 'fk_crrc_craftnext_tag',
  `fk_crrc_locksending` longtext COLLATE utf8_bin NOT NULL COMMENT 'fk_crrc_locksending',
  `fk_crrc_issubmaterial` longtext COLLATE utf8_bin NOT NULL COMMENT 'fk_crrc_issubmaterial',
  `fk_crrc_material` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_material',
  `fk_crrc_orgunit` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_orgunit',
  `fk_crrc_workprocess` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_workprocess',
  `fk_crrc_decimalfield` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_decimalfield',
  `fk_crrc_countqty` decimal(23,10) DEFAULT NULL COMMENT 'fk_crrc_countqty',
  `fk_crrc_finishnode` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_finishnode',
  `fk_crrc_finishdesc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_finishdesc',
  `fk_crrc_orgfield` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_orgfield',
  `fk_crrc_basedatafield` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_basedatafield',
  `fk_crrc_exegroupdpt` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_exegroupdpt',
  `fk_crrc_orgfield1` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_orgfield1',
  `fk_crrc_department` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_department',
  `fk_crrc_departmentdpt` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_departmentdpt',
  `fk_crrc_remark` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_remark',
  `fk_crrc_projectid` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_projectid',
  `fk_crrc_ncrid` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_ncrid',
  `fk_crrc_billstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_billstatus',
  `fk_crrc_reportbill` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_reportbill',
  `fk_crrc_executebillno` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_executebillno',
  `fk_crrc_billstatusfield` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_billstatusfield',
  `fk_crrc_transmit` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_transmit',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_mesjob2';


-- zj_data.dm_crrc_swq_abnormal_data definition

CREATE TABLE `dm_crrc_swq_abnormal_data` (
  `p_launch_id` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `p_close_id` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `p_project` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `p_singer_car_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `p_car_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `p_workcenter_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `p_workcell_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `p_op_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `p_exception_remark` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `p_uda1c` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yichangzhuangtaifenlei` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `p_launch_date` datetime DEFAULT NULL,
  `p_create_date` datetime DEFAULT NULL,
  `p_response_id_short` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `p_response_date` datetime DEFAULT NULL,
  `p_handl_id` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `p_handl_date` datetime DEFAULT NULL,
  `p_close_id_short` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `p_close_date` datetime DEFAULT NULL,
  `p_uda1c_short` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `t_weixiangyingshichang` float(20,2) DEFAULT NULL,
  `w_weichulishichang` float(20,2) DEFAULT NULL,
  `e_weiguanbishichang` float(20,2) DEFAULT NULL,
  `yujichulishijain` float(20,2) DEFAULT NULL,
  `xiangyingzhuangtai` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `chulizhuangtai` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `guanbizhuangtai` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_swq_abnormal_data';


-- zj_data.dm_crrc_swq_business_trip definition

CREATE TABLE `dm_crrc_swq_business_trip` (
  `shenqing_FID` varchar(500) COLLATE utf8_bin NOT NULL COMMENT 'shenqing_FID',
  `constcenter_shenqing_FNAME_L2` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'constcenter_shenqing_FNAME_L2',
  `baoxiao_FCreateTime` date DEFAULT NULL COMMENT 'baoxiao_FCreateTime',
  `constcenter_baoxiao_FNAME_L2` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'constcenter_baoxiao_FNAME_L2',
  `shenqing_FCause` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'shenqing_FCause',
  `traveltype_shenqing_FNAME_L2` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'traveltype_shenqing_FNAME_L2',
  `project_FNAME_L2` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'project_FNAME_L2',
  `project_FNUMBER` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'project_FNUMBER',
  `shenqinge_FTo` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'shenqinge_FTo',
  `bd_person_FNAME_L2` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'bd_person_FNAME_L2',
  `bd_person_FIDNUM` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'bd_person_FIDNUM',
  `post_FNAME_L2` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'post_FNAME_L2',
  `baoxiaoe_FStartDate` date DEFAULT NULL COMMENT 'baoxiaoe_FStartDate',
  `baoxiaoe_FEndDate` date DEFAULT NULL COMMENT 'baoxiaoe_FEndDate',
  `baoxiaoe_FRoomDays` int(11) DEFAULT NULL COMMENT 'baoxiaoe_FRoomDays',
  `baoxiao_FAmount` float(10,2) DEFAULT NULL COMMENT 'baoxiao_FAmount',
  `shenqing_FNumber` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'shenqing_FNumber',
  `baoxiao_FNumber` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'baoxiao_FNumber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_swq_business_trip';


-- zj_data.dm_crrc_swq_daily_plan definition

CREATE TABLE `dm_crrc_swq_daily_plan` (
  `id` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'id',
  `pe_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'pe_name',
  `v_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_car_code',
  `v_singer_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_singer_car_code',
  `v_op_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_op_code',
  `o_op_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'o_op_name',
  `g_group_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'g_group_code',
  `g_group_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'g_group_name',
  `v_order_type` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_order_type',
  `v_planned_start_time` date DEFAULT NULL COMMENT 'v_planned_start_time',
  `v_planned_finish_time` date DEFAULT NULL COMMENT 'v_planned_finish_time',
  `v_actual_begin_date` date DEFAULT NULL COMMENT 'v_actual_begin_date',
  `v_actual_end_date` date DEFAULT NULL COMMENT 'v_actual_end_date',
  `pl_NAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'pl_NAME',
  `wc_NAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'wc_NAME',
  `cell_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'cell_code',
  `cell_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'cell_name',
  `is_project_final` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'is_project_final'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_swq_daily_plan';


-- zj_data.dm_crrc_swq_person_worktime_new definition

CREATE TABLE `dm_crrc_swq_person_worktime_new` (
  `s_fnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 's_fnumber',
  `s_fname_l2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 's_fname_l2',
  `r_fbizdate` date DEFAULT NULL COMMENT 'r_fbizdate',
  `rt_cfworkTimeHS` float(10,2) DEFAULT NULL COMMENT 'rt_cfworkTimeHS',
  `rt_CFreplenishTime` float(10,2) DEFAULT NULL COMMENT 'rt_CFreplenishTime'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_swq_person_worktime_new';


-- zj_data.dm_crrc_swq_phonebook definition

CREATE TABLE `dm_crrc_swq_phonebook` (
  `ID` int(11) DEFAULT NULL COMMENT 'ID',
  `iOrd` int(11) DEFAULT NULL COMMENT 'iOrd',
  `RepID` int(11) DEFAULT NULL COMMENT 'RepID',
  `FillDate` date DEFAULT NULL COMMENT 'FillDate',
  `ModifyDate` date DEFAULT NULL COMMENT 'ModifyDate',
  `DeptID` int(11) DEFAULT NULL COMMENT 'DeptID',
  `OperID` int(11) DEFAULT NULL COMMENT 'OperID',
  `sDesc` longtext COLLATE utf8_bin COMMENT 'sDesc',
  `bIsFinish` longtext COLLATE utf8_bin COMMENT 'bIsFinish',
  `bLocked` longtext COLLATE utf8_bin COMMENT 'bLocked',
  `bCanViewWhenNoFinished` longtext COLLATE utf8_bin COMMENT 'bCanViewWhenNoFinished',
  `OperID2` int(11) DEFAULT NULL COMMENT 'OperID2',
  `dUpdate2` date DEFAULT NULL COMMENT 'dUpdate2',
  `F2961` longtext COLLATE utf8_bin COMMENT 'F2961',
  `F2962` longtext COLLATE utf8_bin COMMENT 'F2962',
  `F2963` longtext COLLATE utf8_bin COMMENT 'F2963',
  `F2964` longtext COLLATE utf8_bin COMMENT 'F2964',
  `F2965` longtext COLLATE utf8_bin COMMENT 'F2965',
  `F2966` longtext COLLATE utf8_bin COMMENT 'F2966',
  `F2967` longtext COLLATE utf8_bin COMMENT 'F2967',
  `F2968` longtext COLLATE utf8_bin COMMENT 'F2968',
  `F2969` longtext COLLATE utf8_bin COMMENT 'F2969',
  `F2970` longtext COLLATE utf8_bin COMMENT 'F2970',
  `F2971` longtext COLLATE utf8_bin COMMENT 'F2971',
  `F3562` longtext COLLATE utf8_bin COMMENT 'F3562',
  `F3563` longtext COLLATE utf8_bin COMMENT 'F3563',
  `F10968` longtext COLLATE utf8_bin COMMENT 'F10968',
  `F11066` longtext COLLATE utf8_bin COMMENT 'F11066',
  `F14226` longtext COLLATE utf8_bin COMMENT 'F14226',
  `F14580` longtext COLLATE utf8_bin COMMENT 'F14580',
  `F14584` longtext COLLATE utf8_bin COMMENT 'F14584',
  `F14585` longtext COLLATE utf8_bin COMMENT 'F14585',
  `F15942` date DEFAULT NULL COMMENT 'F15942',
  `F15943` longtext COLLATE utf8_bin COMMENT 'F15943',
  `F15944` longtext COLLATE utf8_bin COMMENT 'F15944',
  `F15945` longtext COLLATE utf8_bin COMMENT 'F15945',
  `F15946` longtext COLLATE utf8_bin COMMENT 'F15946',
  `F15947` longtext COLLATE utf8_bin COMMENT 'F15947',
  `F20595` longtext COLLATE utf8_bin COMMENT 'F20595',
  `F24116` longtext COLLATE utf8_bin COMMENT 'F24116',
  `F26392` longtext COLLATE utf8_bin COMMENT 'F26392',
  `F28227` longtext COLLATE utf8_bin COMMENT 'F28227',
  `F28938` longtext COLLATE utf8_bin COMMENT 'F28938',
  `F44210` date DEFAULT NULL COMMENT 'F44210',
  `F44211` date DEFAULT NULL COMMENT 'F44211',
  `F44212` date DEFAULT NULL COMMENT 'F44212',
  `F47346` longtext COLLATE utf8_bin COMMENT 'F47346',
  `F47347` longtext COLLATE utf8_bin COMMENT 'F47347',
  `F47348` longtext COLLATE utf8_bin COMMENT 'F47348',
  `F47848` longtext COLLATE utf8_bin COMMENT 'F47848'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_swq_phonebook';


-- zj_data.dm_crrc_swq_process_task_delivery definition

CREATE TABLE `dm_crrc_swq_process_task_delivery` (
  `id` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'id',
  `v_WORK_CELL_GID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_WORK_CELL_GID',
  `v_singer_car_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_singer_car_code',
  `v_project` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_project',
  `v_car_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_car_code',
  `v_MRL_CODE_count` int(11) DEFAULT NULL COMMENT 'v_MRL_CODE_count',
  `v_MRL_CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_MRL_CODE',
  `v_PRODU_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_PRODU_NAME',
  `v_op_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_op_code',
  `o_op_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'o_op_name',
  `g_group_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'g_group_code',
  `g_group_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'g_group_name',
  `v_order_type` int(11) DEFAULT NULL COMMENT 'v_order_type',
  `o_op_type` int(11) DEFAULT NULL COMMENT 'o_op_type',
  `v_planned_start_time` date DEFAULT NULL COMMENT 'v_planned_start_time',
  `v_planned_finish_time` date DEFAULT NULL COMMENT 'v_planned_finish_time',
  `v_ACTUAL_BEGIN_DATE` date DEFAULT NULL COMMENT 'v_ACTUAL_BEGIN_DATE',
  `v_ACTUAL_END_DATE` date DEFAULT NULL COMMENT 'v_ACTUAL_END_DATE',
  `v_produ_place` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_produ_place',
  `v_stage_position` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_stage_position',
  `v_work_persion` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `pe_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'pe_name',
  `v_ISSUED_CHENK_POSITION` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_ISSUED_CHENK_POSITION',
  `v_ISSUED_CHENK_DATE` date DEFAULT NULL COMMENT 'v_ISSUED_CHENK_DATE',
  `v_ISSUED_CHENK_STATE` int(11) DEFAULT NULL COMMENT 'v_ISSUED_CHENK_STATE',
  `v_SEND_REQ_MRL` int(11) DEFAULT NULL COMMENT 'v_SEND_REQ_MRL',
  `v_DIS_CODE_STATE` int(11) DEFAULT NULL COMMENT 'v_DIS_CODE_STATE',
  `v_uda_transmit` int(11) DEFAULT NULL COMMENT 'v_uda_transmit',
  `pl_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'pl_NAME',
  `wc_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'wc_NAME',
  `cell_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'cell_code',
  `cell_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'cell_name',
  `s_std_time` float(10,2) DEFAULT NULL COMMENT 's_std_time',
  `v_is_man_hour_rpt` int(11) DEFAULT NULL COMMENT 'v_is_man_hour_rpt',
  `f_state_count` int(11) DEFAULT NULL COMMENT 'f_state_count',
  `qitaoshuliangtongjibaokuoyuji` int(11) DEFAULT NULL COMMENT 'qitaoshuliangtongjibaokuoyuji',
  `v_REMARK` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_REMARK',
  `v_UDA_OUT_STATE` int(11) DEFAULT NULL COMMENT 'v_UDA_OUT_STATE',
  `weilaiyizhou` int(11) DEFAULT NULL COMMENT 'weilaiyizhou'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_swq_process_task_delivery';


-- zj_data.dm_crrc_swq_process_time definition

CREATE TABLE `dm_crrc_swq_process_time` (
  `id` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'id',
  `v_project` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_project',
  `v_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_car_code',
  `v_singer_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_singer_car_code',
  `v_op_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_op_code',
  `g_group_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'g_group_name',
  `pl_NAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'pl_NAME',
  `v_ACTUAL_END_DATE` date DEFAULT NULL COMMENT 'v_ACTUAL_END_DATE',
  `u1_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'u1_name',
  `v_WORK_HOUR_CHECK_DATE` date DEFAULT NULL COMMENT 'v_WORK_HOUR_CHECK_DATE',
  `u2_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'u2_name',
  `v_WORK_HOUR_DOWN_DATE` date DEFAULT NULL COMMENT 'v_WORK_HOUR_DOWN_DATE',
  `v_WORK_HOUR_DOWN_CAUSE` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_WORK_HOUR_DOWN_CAUSE',
  `o_op_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'o_op_name',
  `s_std_time` int(11) DEFAULT NULL COMMENT 's_std_time',
  `v_is_man_hour_rpt` int(11) DEFAULT NULL COMMENT 'v_is_man_hour_rpt',
  `pn_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'pn_name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_swq_process_time';


-- zj_data.dm_crrc_swq_project_daily_plan definition

CREATE TABLE `dm_crrc_swq_project_daily_plan` (
  `id` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'id',
  `pe_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'pe_name',
  `v_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_car_code',
  `v_singer_car_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_singer_car_code',
  `v_op_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_op_code',
  `o_op_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'o_op_name',
  `g_group_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'g_group_code',
  `g_group_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'g_group_name',
  `v_order_type` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'v_order_type',
  `v_planned_start_time` date DEFAULT NULL COMMENT 'v_planned_start_time',
  `v_planned_finish_time` date DEFAULT NULL COMMENT 'v_planned_finish_time',
  `v_actual_begin_date` date DEFAULT NULL COMMENT 'v_actual_begin_date',
  `v_actual_end_date` date DEFAULT NULL COMMENT 'v_actual_end_date',
  `pl_NAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'pl_NAME',
  `wc_NAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'wc_NAME',
  `cell_code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'cell_code',
  `cell_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'cell_name',
  `is_project_final` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'is_project_final'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_swq_project_daily_plan';


-- zj_data.dm_crrc_swq_project_efficiency definition

CREATE TABLE `dm_crrc_swq_project_efficiency` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `iOrd` int(11) NOT NULL COMMENT 'iOrd',
  `F48534` longtext COLLATE utf8_bin NOT NULL COMMENT 'F48534',
  `F48535` float(10,2) NOT NULL COMMENT 'F48535',
  `F48536` float(10,2) NOT NULL COMMENT 'F48536',
  `F48552` float(10,2) NOT NULL COMMENT 'F48552',
  `F48553` float(10,2) NOT NULL COMMENT 'F48553'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_swq_project_efficiency';


-- zj_data.dm_crrc_swq_project_hours definition

CREATE TABLE `dm_crrc_swq_project_hours` (
  `ID` int(11) DEFAULT NULL,
  `iOrd` int(11) DEFAULT NULL,
  `RepID` int(11) DEFAULT NULL,
  `FillDate` date DEFAULT NULL,
  `ModifyDate` date DEFAULT NULL,
  `DeptID` int(11) DEFAULT NULL,
  `OperID` int(11) DEFAULT NULL,
  `sDesc` text COLLATE utf8_bin,
  `bIsFinish` text COLLATE utf8_bin,
  `bLocked` text COLLATE utf8_bin,
  `bCanViewWhenNoFinished` text COLLATE utf8_bin,
  `OperID2` int(11) DEFAULT NULL,
  `dUpdate2` date DEFAULT NULL,
  `F48484` text COLLATE utf8_bin,
  `F48485` text COLLATE utf8_bin,
  `F48486` text COLLATE utf8_bin,
  `F48487` text COLLATE utf8_bin,
  `F48488` double DEFAULT NULL,
  `F48494` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_crrc_szhgw_jhbc definition

CREATE TABLE `dm_crrc_szhgw_jhbc` (
  `FID` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` datetime DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` datetime DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_datefield` datetime DEFAULT NULL COMMENT 'fk_crrc_datefield',
  `fk_crrc_integerfield` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_integerfield',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_szhgw_jhbc';


-- zj_data.dm_crrc_szhgw_twch definition

CREATE TABLE `dm_crrc_szhgw_twch` (
  `tw` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '台位',
  `gzh` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号',
  `jch` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节车号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_CRRC_SZHGW_TWCH';


-- zj_data.dm_crrc_tabdiytable3183 definition

CREATE TABLE `dm_crrc_tabdiytable3183` (
  `ID` int(11) DEFAULT NULL COMMENT 'ID',
  `iOrd` int(11) DEFAULT NULL COMMENT 'iOrd',
  `RepID` int(11) DEFAULT NULL COMMENT 'RepID',
  `FillDate` datetime DEFAULT NULL COMMENT 'FillDate',
  `ModifyDate` datetime DEFAULT NULL COMMENT 'ModifyDate',
  `DeptID` int(11) DEFAULT NULL COMMENT 'DeptID',
  `OperID` int(11) DEFAULT NULL COMMENT 'OperID',
  `sDesc` longtext COLLATE utf8_bin COMMENT 'sDesc',
  `bIsFinish` longtext COLLATE utf8_bin COMMENT 'bIsFinish',
  `bLocked` longtext COLLATE utf8_bin COMMENT 'bLocked',
  `bCanViewWhenNoFinished` longtext COLLATE utf8_bin COMMENT 'bCanViewWhenNoFinished',
  `OperID2` int(11) DEFAULT NULL COMMENT 'OperID2',
  `dUpdate2` datetime DEFAULT NULL COMMENT 'dUpdate2',
  `F27516` longtext COLLATE utf8_bin COMMENT 'F27516',
  `F27517` float(10,2) DEFAULT NULL COMMENT 'F27517',
  `F27518` float(10,2) DEFAULT NULL COMMENT 'F27518',
  `F27519` float(10,2) DEFAULT NULL COMMENT 'F27519',
  `F27520` float(10,2) DEFAULT NULL COMMENT 'F27520',
  `F27521` float(10,2) DEFAULT NULL COMMENT 'F27521',
  `F27522` float(10,2) DEFAULT NULL COMMENT 'F27522',
  `F27523` float(10,2) DEFAULT NULL COMMENT 'F27523',
  `F27524` float(10,2) DEFAULT NULL COMMENT 'F27524',
  `F48554` float(10,2) DEFAULT NULL COMMENT 'F48554',
  `F48726` float(10,2) DEFAULT NULL COMMENT 'F48726',
  `F48727` float(10,2) DEFAULT NULL COMMENT 'F48727'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_tabDIYTable3183';


-- zj_data.dm_crrc_tabdiytable3184 definition

CREATE TABLE `dm_crrc_tabdiytable3184` (
  `ID` int(11) DEFAULT NULL,
  `iOrd` int(11) DEFAULT NULL,
  `F27525` double DEFAULT NULL,
  `F27526` double DEFAULT NULL,
  `F27527` double DEFAULT NULL,
  `F27528` double DEFAULT NULL,
  `F27529` double DEFAULT NULL,
  `F27530` double DEFAULT NULL,
  `F27531` double DEFAULT NULL,
  `F27532` double DEFAULT NULL,
  `F28247` text COLLATE utf8_bin,
  `F48679` double DEFAULT NULL,
  `F48680` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_crrc_tabdiytable4490 definition

CREATE TABLE `dm_crrc_tabdiytable4490` (
  `ID` int(11) DEFAULT NULL,
  `iOrd` int(11) DEFAULT NULL,
  `F48432` text COLLATE utf8_bin,
  `F48433` text COLLATE utf8_bin,
  `F48434` text COLLATE utf8_bin,
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
  `F48473` text COLLATE utf8_bin,
  `F48474` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_crrc_tabdiytable4499 definition

CREATE TABLE `dm_crrc_tabdiytable4499` (
  `ID` int(11) DEFAULT NULL,
  `iOrd` int(11) DEFAULT NULL,
  `F48498` text COLLATE utf8_bin,
  `F48499` text COLLATE utf8_bin,
  `F48500` text COLLATE utf8_bin,
  `F48501` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_crrc_tabdiytable4517 definition

CREATE TABLE `dm_crrc_tabdiytable4517` (
  `ID` int(11) DEFAULT NULL,
  `iOrd` int(11) DEFAULT NULL,
  `F48682` text COLLATE utf8_bin,
  `F48683` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_crrc_tabdiytable4519 definition

CREATE TABLE `dm_crrc_tabdiytable4519` (
  `ID` int(11) DEFAULT NULL,
  `iOrd` int(11) DEFAULT NULL,
  `F48685` text COLLATE utf8_bin,
  `F48686` text COLLATE utf8_bin,
  `F48687` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_crrc_tabdiytable4529 definition

CREATE TABLE `dm_crrc_tabdiytable4529` (
  `ID` int(11) DEFAULT NULL COMMENT 'ID',
  `iOrd` int(11) DEFAULT NULL COMMENT 'iOrd',
  `RepID` int(11) DEFAULT NULL COMMENT 'RepID',
  `FillDate` date DEFAULT NULL COMMENT 'FillDate',
  `ModifyDate` date DEFAULT NULL COMMENT 'ModifyDate',
  `DeptID` int(11) DEFAULT NULL COMMENT 'DeptID',
  `OperID` int(11) DEFAULT NULL COMMENT 'OperID',
  `sDesc` longtext COLLATE utf8_bin COMMENT 'sDesc',
  `bIsFinish` longtext COLLATE utf8_bin COMMENT 'bIsFinish',
  `bLocked` longtext COLLATE utf8_bin COMMENT 'bLocked',
  `bCanViewWhenNoFinished` longtext COLLATE utf8_bin COMMENT 'bCanViewWhenNoFinished',
  `OperID2` int(11) DEFAULT NULL COMMENT 'OperID2',
  `dUpdate2` date DEFAULT NULL COMMENT 'dUpdate2',
  `F48718` longtext COLLATE utf8_bin COMMENT 'F48718',
  `F48719` float(10,2) DEFAULT NULL COMMENT 'F48719',
  `F48720` float(10,2) DEFAULT NULL COMMENT 'F48720',
  `F48721` float(10,2) DEFAULT NULL COMMENT 'F48721',
  `F48722` float(10,2) DEFAULT NULL COMMENT 'F48722',
  `F48723` float(10,2) DEFAULT NULL COMMENT 'F48723'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_tabDIYTable4529';


-- zj_data.dm_crrc_tabdiytable91 definition

CREATE TABLE `dm_crrc_tabdiytable91` (
  `ID` int(11) DEFAULT NULL COMMENT 'ID',
  `iOrd` int(11) DEFAULT NULL COMMENT 'iOrd',
  `F923` longtext COLLATE utf8_bin COMMENT 'F923',
  `F924` longtext COLLATE utf8_bin COMMENT 'F924',
  `F925` longtext COLLATE utf8_bin COMMENT 'F925',
  `F926` longtext COLLATE utf8_bin COMMENT 'F926',
  `F927` longtext COLLATE utf8_bin COMMENT 'F927',
  `F928` longtext COLLATE utf8_bin COMMENT 'F928',
  `F929` float(10,2) DEFAULT NULL COMMENT 'F929',
  `F930` float(10,2) DEFAULT NULL COMMENT 'F930',
  `F931` float(10,2) DEFAULT NULL COMMENT 'F931'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_tabDIYTable91';


-- zj_data.dm_crrc_tabdiytable96 definition

CREATE TABLE `dm_crrc_tabdiytable96` (
  `ID` int(11) DEFAULT NULL COMMENT 'ID',
  `iOrd` int(11) DEFAULT NULL COMMENT 'iOrd',
  `F981` longtext COLLATE utf8_bin COMMENT 'F981',
  `F982` longtext COLLATE utf8_bin COMMENT 'F982',
  `F983` longtext COLLATE utf8_bin COMMENT 'F983',
  `F984` longtext COLLATE utf8_bin COMMENT 'F984',
  `F985` longtext COLLATE utf8_bin COMMENT 'F985',
  `F990` float(10,2) DEFAULT NULL COMMENT 'F990',
  `F991` float(10,2) DEFAULT NULL COMMENT 'F991'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_crrc_tabDIYTable96';


-- zj_data.dm_ct_con_contract definition

CREATE TABLE `dm_ct_con_contract` (
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后修改时间',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '业务日期',
  `FID` varchar(44) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `CFCONTRACTNAME` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '合同名称',
  `CFEFFECTIVEDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '生效时间',
  `CFSERIALNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '合同编号',
  `CFSTATUS` int(11) DEFAULT NULL COMMENT '状态',
  `CFCONTRACTTYPE` int(11) DEFAULT NULL COMMENT '类型',
  `CFSUPPLIERNAME` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商',
  `CFHTCPBM` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT '参评部门',
  `CFAUDITORTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '审核时间',
  `PERFNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '承办人',
  `MCFSERIALNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '主合同编号',
  `BAU2FNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '承办部门',
  `USFNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '最后修改者',
  `BAUFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '业务组',
  `GUAFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '质保金方式',
  `TCFNAME` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '合同模板',
  `PROMFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '采购方式',
  `CONOTHERCFCounterpartyID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '合同对方Id',
  `CURFNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `CONOTHERCFStandardCurrency` double(28,0) DEFAULT NULL COMMENT '金额合计_本位币',
  `CONOTHERCFExhcangeRate` double(28,0) DEFAULT NULL COMMENT '汇率',
  `CONOTHERCFOriginalMoney` double(28,0) DEFAULT NULL COMMENT '金额合计_原币',
  `CONOTHERCFMONEYSUM` double(28,0) DEFAULT NULL COMMENT '不含税总价',
  `TEMCFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '合同文本类型',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_CT_CON_CONTRACT';


-- zj_data.dm_ct_con_contract_t definition

CREATE TABLE `dm_ct_con_contract_t` (
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FNUMBER` text COLLATE utf8_bin,
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FID` text COLLATE utf8_bin,
  `CFCONTRACTNAME` text COLLATE utf8_bin,
  `CFEFFECTIVEDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CFSERIALNUMBER` text COLLATE utf8_bin,
  `CFSTATUS` int(11) DEFAULT NULL,
  `CFCONTRACTTYPE` int(11) DEFAULT NULL,
  `CFSUPPLIERNAME` text COLLATE utf8_bin,
  `CFHTCPBM` text COLLATE utf8_bin,
  `CFAUDITORTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PERFNAME_L2` text COLLATE utf8_bin,
  `MCFSERIALNUMBER` text COLLATE utf8_bin,
  `BAU2FNAME_L2` text COLLATE utf8_bin,
  `USFNAME_L2` text COLLATE utf8_bin,
  `BAUFNAME_L2` text COLLATE utf8_bin,
  `GUAFNAME_L2` text COLLATE utf8_bin,
  `TCFNAME` text COLLATE utf8_bin,
  `PROMFNAME_L2` text COLLATE utf8_bin,
  `CONOTHERCFCounterpartyID` text COLLATE utf8_bin,
  `CURFNAME_L2` text COLLATE utf8_bin,
  `CONOTHERCFStandardCurrency` double DEFAULT NULL,
  `CONOTHERCFExhcangeRate` double DEFAULT NULL,
  `CONOTHERCFOriginalMoney` double DEFAULT NULL,
  `CONOTHERCFMONEYSUM` double DEFAULT NULL,
  `TEMCFNAME_L2` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_ct_con_contractentry_t definition

CREATE TABLE `dm_ct_con_contractentry_t` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FPARENTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPARENTID',
  `CFPRODUCTNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码Id',
  `CFORDERNUM` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单编号',
  `CFORDERQTY` double(34,16) DEFAULT NULL COMMENT '订货数量',
  `CFPRICE` double(28,10) DEFAULT NULL COMMENT '单价_不含税',
  `CFSOURCEAREA` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '品牌',
  `CFTAXRATE` double(28,10) DEFAULT NULL COMMENT '税率',
  `CFEXCHANGERATE` double(28,10) DEFAULT NULL COMMENT '汇率',
  `CFCFCURRENTID0` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `CFCONTRACTNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '合同单据编号',
  `CFAGENTPRODUCTS` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `CFIMPORTEDPARTS` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `CFINTERNALCONFIG` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `CFSOLE` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `CFISSTATISTICSMINING` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `CFPRICINGWAY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPRICINGWAY',
  `CFPRICINGNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '定价单号',
  `CFPRICENUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '定价单编号',
  `PSTFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商类型',
  `PURTFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '采购分类',
  `PROFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `PROFNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '项目编码',
  `CFBASEUINT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计量单位',
  `CFUNITPRICE` double(28,10) DEFAULT NULL COMMENT '单价_含税',
  `CFTAXAMOUNT` double(28,10) DEFAULT NULL COMMENT '金额含税',
  `CFAMOUNTBASECURRENCY` double(28,10) DEFAULT NULL COMMENT '金额_含税_本位币',
  `CFPRODUCTNAME` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='WEB合同_物料明细';


-- zj_data.dm_ct_con_contractlist definition

CREATE TABLE `dm_ct_con_contractlist` (
  `FBIZDATE` date DEFAULT NULL COMMENT '业务日期',
  `CFCONTRACTNAME` varchar(337) COLLATE utf8_bin DEFAULT NULL,
  `CFSUMMONEYSTANDARD` double(28,10) DEFAULT NULL COMMENT '合同总金额_本位币',
  `CFSERIALNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '合同编号',
  `CFSTATUS` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CURFNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `BAUFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组',
  `PERFNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '承办人',
  `CFCOUNTERPARTYID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CFEXHCANGERATE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CFORIGINALMONEY` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='合同清单';


-- zj_data.dm_currency definition

CREATE TABLE `dm_currency` (
  `FID` longtext COLLATE utf8_bin COMMENT 'FID',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '编码',
  `FNAME_L2` longtext COLLATE utf8_bin COMMENT '币种'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_币种';


-- zj_data.dm_dkcount definition

CREATE TABLE `dm_dkcount` (
  `COUNTDATE` date NOT NULL COMMENT '统计日期',
  `ONE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '打卡一次人数',
  `TWO` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '打卡两次人数',
  `TREE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '打卡三次人数',
  `FOUR` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '打卡四次人数',
  PRIMARY KEY (`COUNTDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='考勤打卡统计';


-- zj_data.dm_dwd_wms_inventory_temp definition

CREATE TABLE `dm_dwd_wms_inventory_temp` (
  `ID` int(11) DEFAULT NULL COMMENT 'ID',
  `PROJECT_ID` longtext COLLATE utf8_bin COMMENT 'PROJECT_ID',
  `LICENSENUMBER` longtext COLLATE utf8_bin COMMENT 'LICENSENUMBER',
  `SECTIONNUMBER` longtext COLLATE utf8_bin COMMENT 'SECTIONNUMBER',
  `ITEM_ID` longtext COLLATE utf8_bin COMMENT 'ITEM_ID',
  `PACKAGE_UNIT_ID` longtext COLLATE utf8_bin COMMENT 'PACKAGE_UNIT_ID',
  `QUANTITY` longtext COLLATE utf8_bin COMMENT 'QUANTITY',
  `WORK_CENTER` longtext COLLATE utf8_bin COMMENT 'WORK_CENTER',
  `PROCEDURE_CODE` longtext COLLATE utf8_bin COMMENT 'PROCEDURE_CODE',
  `PROCEDURE_GX` longtext COLLATE utf8_bin COMMENT 'PROCEDURE_GX'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_dwd_WMS_INVENTORY_TEMP';


-- zj_data.dm_eas90_pricingpolicybill_1 definition

CREATE TABLE `dm_eas90_pricingpolicybill_1` (
  `number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '定价单单据编号',
  `policyBillNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '定价单号',
  `baseStatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '定价单状态',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `auditTime` date DEFAULT NULL COMMENT '审核时间',
  `sourceBillNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '来源单据编号',
  `pricingBillType` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '定价单类型',
  `planQty` int(11) DEFAULT NULL COMMENT '订货数量',
  `purPrice` double(100,0) DEFAULT NULL COMMENT '单价_含税_原币',
  `priceingWay` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '定价方式',
  `taxRate` double(100,0) DEFAULT NULL COMMENT '税率',
  `exchangeRate` double(100,0) DEFAULT NULL COMMENT '汇率',
  `pricingUser` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格员名称',
  `pricingGroup` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格组名称',
  `currency` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `isUpdateByPricingStore` int(11) DEFAULT NULL COMMENT '已按价格库更新',
  `lastUpdater` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '最后修改者',
  `lastUpdaterGroup` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '最后修改者价格组',
  `source` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '定价单来源',
  `projectID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ProjectID',
  `supplieraID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'SupplieraID',
  `materialID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'MaterialID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas90_定价单（旧）';


-- zj_data.dm_eas90_pricingpolicybill_2 definition

CREATE TABLE `dm_eas90_pricingpolicybill_2` (
  `number` longtext COLLATE utf8_bin COMMENT '定价单单据编号',
  `policyBillNumber` longtext COLLATE utf8_bin COMMENT '定价单号',
  `baseStatus` longtext COLLATE utf8_bin COMMENT '定价单状态',
  `createTime` longtext COLLATE utf8_bin COMMENT '创建时间',
  `auditTime` longtext COLLATE utf8_bin COMMENT '审核时间',
  `sourceBillNumber` longtext COLLATE utf8_bin COMMENT '来源单据编号',
  `pricingBillType` longtext COLLATE utf8_bin COMMENT '定价单类型',
  `planQty` longtext COLLATE utf8_bin COMMENT '订货数量',
  `purPrice` longtext COLLATE utf8_bin COMMENT '单价_含税_原币',
  `priceingWay` longtext COLLATE utf8_bin COMMENT '定价方式',
  `taxRate` longtext COLLATE utf8_bin COMMENT '税率',
  `exchangeRate` longtext COLLATE utf8_bin COMMENT '汇率',
  `pricingUser` longtext COLLATE utf8_bin COMMENT '价格员名称',
  `pricingGroup` longtext COLLATE utf8_bin COMMENT '价格组名称',
  `currency` longtext COLLATE utf8_bin COMMENT '币种',
  `isUpdateByPricingStore` longtext COLLATE utf8_bin COMMENT '已按价格库更新',
  `lastUpdater` longtext COLLATE utf8_bin COMMENT '最后修改者',
  `lastUpdaterGroup` longtext COLLATE utf8_bin COMMENT '最后修改者价格组',
  `source` longtext COLLATE utf8_bin COMMENT '定价单来源',
  `projectID` longtext COLLATE utf8_bin COMMENT 'ProjectID',
  `supplieraID` longtext COLLATE utf8_bin COMMENT 'SupplieraID',
  `materialID` longtext COLLATE utf8_bin COMMENT 'MaterialID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas90_定价单（旧）+分录';


-- zj_data.dm_eas_agentpayrpt definition

CREATE TABLE `dm_eas_agentpayrpt` (
  `agnumber` longtext COLLATE utf8_bin COMMENT '代发单编号',
  `agdate` date DEFAULT NULL COMMENT '单据日期',
  `agstatus` longtext COLLATE utf8_bin COMMENT '单据状态',
  `amount` double(28,4) DEFAULT NULL COMMENT '总金额',
  `agcount` int(11) DEFAULT NULL COMMENT '总笔数',
  `agename` longtext COLLATE utf8_bin COMMENT '收款人姓名',
  `ageamount` double(28,0) DEFAULT NULL COMMENT '发放金额',
  `cbanrk` longtext COLLATE utf8_bin COMMENT '收款银行',
  `banaccount` longtext COLLATE utf8_bin COMMENT '收款账号',
  `issuccess` longtext COLLATE utf8_bin COMMENT '是否付款成功',
  `vouchertype` longtext COLLATE utf8_bin COMMENT '凭证类型',
  `vnumber` longtext COLLATE utf8_bin COMMENT '凭证号',
  `vdate` date DEFAULT NULL COMMENT '凭证日期',
  `biznumber` longtext COLLATE utf8_bin COMMENT '费用报销单号',
  `uname` longtext COLLATE utf8_bin COMMENT '经办人',
  `bname` longtext COLLATE utf8_bin COMMENT '申请部门',
  `u2name` longtext COLLATE utf8_bin COMMENT '经办会计',
  `newNumber` longtext COLLATE utf8_bin COMMENT '代发单编号(重发)',
  `newVoucherType` longtext COLLATE utf8_bin COMMENT '凭证类型 (重发)',
  `newVNumber` longtext COLLATE utf8_bin COMMENT '凭证号 (重发)',
  `tIssuccess` longtext COLLATE utf8_bin COMMENT '源单全部 付款成功',
  `newVDate` date DEFAULT NULL COMMENT '凭证日期 (重发)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_代发单监控';


-- zj_data.dm_eas_agentpayrpt02 definition

CREATE TABLE `dm_eas_agentpayrpt02` (
  `agnumber` longtext COLLATE utf8_bin COMMENT '代发单编号',
  `agdate` date DEFAULT NULL COMMENT '单据日期',
  `agstatus` longtext COLLATE utf8_bin COMMENT '单据状态',
  `amount` double(28,10) DEFAULT NULL COMMENT '总金额',
  `agcount` int(11) DEFAULT NULL COMMENT '总笔数',
  `agename` longtext COLLATE utf8_bin COMMENT '收款人姓名',
  `ageamount` double(28,10) DEFAULT NULL COMMENT '发放金额',
  `cbanrk` longtext COLLATE utf8_bin COMMENT '收款银行',
  `banaccount` longtext COLLATE utf8_bin COMMENT '收款账号',
  `issuccess` longtext COLLATE utf8_bin COMMENT '是否付款成功',
  `vouchertype` longtext COLLATE utf8_bin COMMENT '凭证类型',
  `vnumber` longtext COLLATE utf8_bin COMMENT '凭证号',
  `vdate` date DEFAULT NULL COMMENT '凭证日期',
  `biznumber` longtext COLLATE utf8_bin COMMENT '费用报销单号',
  `uname` longtext COLLATE utf8_bin COMMENT '经办人',
  `bname` longtext COLLATE utf8_bin COMMENT '申请部门',
  `u2name` longtext COLLATE utf8_bin COMMENT '经办会计',
  `newNumber` longtext COLLATE utf8_bin COMMENT '代发单编号(重发)',
  `newVoucherType` longtext COLLATE utf8_bin COMMENT '凭证类型 (重发)',
  `newVNumber` longtext COLLATE utf8_bin COMMENT '凭证号 (重发)',
  `tIssuccess` longtext COLLATE utf8_bin COMMENT '源单全部 付款成功',
  `newVDate` date DEFAULT NULL COMMENT '凭证日期 (重发)',
  `bnumber` longtext COLLATE utf8_bin COMMENT '申请部门编码',
  `unumber` longtext COLLATE utf8_bin COMMENT '制单人编码',
  `fdateend` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '结束日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_代发单报销02';


-- zj_data.dm_eas_agentpayrpt1 definition

CREATE TABLE `dm_eas_agentpayrpt1` (
  `agnumber` text COLLATE utf8_bin,
  `agdate` date DEFAULT NULL,
  `agstatus` text COLLATE utf8_bin,
  `amount` double DEFAULT NULL,
  `agcount` int(11) DEFAULT NULL,
  `agename` text COLLATE utf8_bin,
  `ageamount` double DEFAULT NULL,
  `cbanrk` text COLLATE utf8_bin,
  `banaccount` text COLLATE utf8_bin,
  `issuccess` text COLLATE utf8_bin,
  `vouchertype` text COLLATE utf8_bin,
  `vnumber` text COLLATE utf8_bin,
  `vdate` date DEFAULT NULL,
  `biznumber` text COLLATE utf8_bin,
  `uname` text COLLATE utf8_bin,
  `bname` text COLLATE utf8_bin,
  `u2name` text COLLATE utf8_bin,
  `newNumber` text COLLATE utf8_bin,
  `newVoucherType` text COLLATE utf8_bin,
  `newVNumber` text COLLATE utf8_bin,
  `tIssuccess` text COLLATE utf8_bin,
  `newVDate` date DEFAULT NULL,
  `bnumber` text COLLATE utf8_bin,
  `unumber` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_eas_approval_time_dealed_detail definition

CREATE TABLE `dm_eas_approval_time_dealed_detail` (
  `FPERSONNELIDID` longtext COLLATE utf8_bin COMMENT 'FPERSONNELIDID',
  `freceivetime` datetime DEFAULT NULL,
  `fcompletetme` datetime DEFAULT NULL,
  `fbillid` longtext COLLATE utf8_bin COMMENT 'fbillid',
  `usernumber` longtext COLLATE utf8_bin COMMENT 'usernumber',
  `usernmae` longtext COLLATE utf8_bin COMMENT 'usernmae',
  `groupname` longtext COLLATE utf8_bin COMMENT 'groupname',
  `groupnumber` longtext COLLATE utf8_bin COMMENT 'groupnumber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='审批时效统计_已办详情';


-- zj_data.dm_eas_approval_time_need_deal_detail definition

CREATE TABLE `dm_eas_approval_time_need_deal_detail` (
  `FPERSONNELIDID` longtext COLLATE utf8_bin COMMENT 'FPERSONNELIDID',
  `freceivetime` datetime DEFAULT NULL,
  `fcompletetme` datetime DEFAULT NULL,
  `fbillid` longtext COLLATE utf8_bin COMMENT 'fbillid',
  `usernumber` longtext COLLATE utf8_bin COMMENT 'usernumber',
  `usernmae` longtext COLLATE utf8_bin COMMENT 'usernmae',
  `groupname` longtext COLLATE utf8_bin COMMENT 'groupname',
  `groupnumber` longtext COLLATE utf8_bin COMMENT 'groupnumber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='审批时效统计_待办详情';


-- zj_data.dm_eas_approval_time_statistics definition

CREATE TABLE `dm_eas_approval_time_statistics` (
  `userid` longtext COLLATE utf8_bin COMMENT 'userid',
  `strdate` longtext COLLATE utf8_bin COMMENT 'strdate',
  `nextoccurtime` longtext COLLATE utf8_bin COMMENT 'nextoccurtime'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_approval_time_statistics';


-- zj_data.dm_eas_approvaltimeout definition

CREATE TABLE `dm_eas_approvaltimeout` (
  `fcompany` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `fnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `ftype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `famount` double(100,0) DEFAULT NULL COMMENT '金额',
  `fname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `fdpt` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `fnodeapprover` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节点审批人',
  `fbusinessgroup` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '共享业务组',
  `FCreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '到达节点时间',
  `ftime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '节点分配时间',
  `fstoptime` double(100,0) DEFAULT NULL COMMENT '节点停留时间',
  `fremainingtime` double(100,0) DEFAULT NULL COMMENT '剩余时间',
  `fcompanynumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司编码',
  `fnamenumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人编码',
  `fdptnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门编码',
  `fnodeapprovernumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节点审批人编码',
  `fbusinessgroupnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '共享业务组编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_共享审批';


-- zj_data.dm_eas_approvaltimeoutld definition

CREATE TABLE `dm_eas_approvaltimeoutld` (
  `fcompany` longtext COLLATE utf8_bin COMMENT '公司',
  `fnumber` longtext COLLATE utf8_bin COMMENT '单据编码',
  `ftype` longtext COLLATE utf8_bin COMMENT '类型',
  `famount` double(28,10) DEFAULT NULL COMMENT '金额',
  `fname` longtext COLLATE utf8_bin COMMENT '申请人',
  `fdpt` longtext COLLATE utf8_bin COMMENT '申请部门',
  `fnodeapprover` longtext COLLATE utf8_bin COMMENT '节点审批人',
  `fbusinessgroup` longtext COLLATE utf8_bin COMMENT '共享业务组',
  `FCreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '到达节点时间',
  `ftime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '到达节点时间',
  `fstoptime` double(28,10) DEFAULT NULL COMMENT '节点停留时间',
  `fremainingtime` double(20,10) DEFAULT NULL COMMENT '剩余时间',
  `fcompanynumber` longtext COLLATE utf8_bin COMMENT '公司编码',
  `fnamenumber` longtext COLLATE utf8_bin COMMENT '申请人编码',
  `fdptnumber` longtext COLLATE utf8_bin COMMENT '申请部门编码',
  `fnodeapprovernumber` longtext COLLATE utf8_bin COMMENT '节点审批人编码',
  `fbusinessgroupnumber` longtext COLLATE utf8_bin COMMENT '共享业务组编码',
  `fbizdate` timestamp NULL DEFAULT NULL COMMENT '开始业务日期',
  `fbizdateld` timestamp NULL DEFAULT NULL COMMENT '结束业务日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_共享审批超时汇总';


-- zj_data.dm_eas_bad_debt_provision definition

CREATE TABLE `dm_eas_bad_debt_provision` (
  `companyname` longtext COLLATE utf8_bin COMMENT 'companyname',
  `companynumber` longtext COLLATE utf8_bin COMMENT 'companynumber',
  `customname` longtext COLLATE utf8_bin COMMENT 'customname',
  `customnumber` longtext COLLATE utf8_bin COMMENT 'customnumber',
  `srxmnumber` longtext COLLATE utf8_bin COMMENT 'srxmnumber',
  `srxmname` longtext COLLATE utf8_bin COMMENT 'srxmname',
  `bizdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'bizdate',
  `billamount` longtext COLLATE utf8_bin COMMENT 'billamount',
  `groupname` longtext COLLATE utf8_bin COMMENT 'groupname',
  `groupid` longtext COLLATE utf8_bin COMMENT 'groupid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_坏账计提表';


-- zj_data.dm_eas_bill_returned_company_distribution definition

CREATE TABLE `dm_eas_bill_returned_company_distribution` (
  `billid` longtext COLLATE utf8_bin COMMENT 'billid',
  `fnumber` longtext COLLATE utf8_bin COMMENT 'fnumber',
  `billtype` longtext COLLATE utf8_bin COMMENT 'billtype',
  `fvalue` longtext COLLATE utf8_bin COMMENT 'fvalue',
  `fbizdate` date DEFAULT NULL COMMENT 'fbizdate',
  `flevel` longtext COLLATE utf8_bin COMMENT 'flevel',
  `fjobstate` longtext COLLATE utf8_bin COMMENT 'fjobstate',
  `companyname` longtext COLLATE utf8_bin COMMENT 'companyname',
  `companynumber` longtext COLLATE utf8_bin COMMENT 'companynumber',
  `orgunitname` longtext COLLATE utf8_bin COMMENT 'orgunitname',
  `orgunitnumber` longtext COLLATE utf8_bin COMMENT 'orgunitnumber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='单据退回公司分布情况';


-- zj_data.dm_eas_bizaccountbillentryamount definition

CREATE TABLE `dm_eas_bizaccountbillentryamount` (
  `hth` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '*合同编号',
  `amount` decimal(28,4) DEFAULT NULL COMMENT '*不含税金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_费用报销单分录不含税金额合计';


-- zj_data.dm_eas_bizauditbill definition

CREATE TABLE `dm_eas_bizauditbill` (
  `company` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `companynumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司编码',
  `billno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `billtype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据类型',
  `amount` decimal(28,10) DEFAULT NULL COMMENT '金额',
  `applier` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `appliernumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人编码',
  `dept` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `deptnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门编码',
  `auditor` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节点审批人',
  `auditornumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节点审批人编码',
  `tonodetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '到达节点时间',
  `startbizdate` date DEFAULT NULL COMMENT '开始业务时间',
  `endbizdate` date DEFAULT NULL COMMENT '结束业务时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_业务审批单据';


-- zj_data.dm_eas_buddetaildata definition

CREATE TABLE `dm_eas_buddetaildata` (
  `FBIZDATE` date DEFAULT NULL COMMENT '业务日期',
  `fexpensenumber` longtext COLLATE utf8_bin COMMENT '费用类型编码',
  `fexpensename` longtext COLLATE utf8_bin COMMENT '费用类型名称',
  `baseuninumber` longtext COLLATE utf8_bin COMMENT '部门编码',
  `fbaseuniname` longtext COLLATE utf8_bin COMMENT '部门名称',
  `FCause` longtext COLLATE utf8_bin COMMENT '报销事由',
  `fprojectno` longtext COLLATE utf8_bin COMMENT '项目编码',
  `fprojectname` longtext COLLATE utf8_bin COMMENT '项目名称',
  `fappliernumber` longtext COLLATE utf8_bin COMMENT '报销人编码',
  `fappliername` longtext COLLATE utf8_bin COMMENT '报销人名称',
  `fbillstatus` int(11) DEFAULT NULL COMMENT '单据状态',
  `fbudstatus` longtext COLLATE utf8_bin COMMENT '预算扣减状态',
  `fbillno` longtext COLLATE utf8_bin COMMENT '单据号',
  `FAMOUNTAPPROVED` decimal(28,10) DEFAULT NULL COMMENT '预算扣减金额',
  `fbilltype` longtext COLLATE utf8_bin COMMENT '单据类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ods_eas_预算执行情况明细表';


-- zj_data.dm_eas_budgetdetail definition

CREATE TABLE `dm_eas_budgetdetail` (
  `FBIZDATE` date DEFAULT NULL COMMENT '业务日期',
  `fexpensenumber` longtext COLLATE utf8_bin COMMENT '费用类型编码',
  `fexpensename` longtext COLLATE utf8_bin COMMENT '费用类型名称',
  `baseuninumber` longtext COLLATE utf8_bin COMMENT '部门编码',
  `fbaseuniname` longtext COLLATE utf8_bin COMMENT '部门名称',
  `FCause` longtext COLLATE utf8_bin COMMENT '报销事由',
  `fprojectno` longtext COLLATE utf8_bin COMMENT '项目编码',
  `fprojectname` longtext COLLATE utf8_bin COMMENT '项目名称',
  `fappliernumber` longtext COLLATE utf8_bin COMMENT '报销人编码',
  `fappliername` longtext COLLATE utf8_bin COMMENT '报销人名称',
  `fbillstatus` int(11) DEFAULT NULL COMMENT '单据状态',
  `fbudstatus` longtext COLLATE utf8_bin COMMENT '预算扣减状态',
  `fbillno` longtext COLLATE utf8_bin COMMENT '单据号',
  `FAMOUNTAPPROVED` decimal(28,10) DEFAULT NULL COMMENT '预算扣减金额',
  `fbilltype` longtext COLLATE utf8_bin COMMENT '单据类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_预算执行情况明细表';


-- zj_data.dm_eas_budgetexedetail definition

CREATE TABLE `dm_eas_budgetexedetail` (
  `FBIZDATE` date DEFAULT NULL COMMENT '业务日期',
  `fexpensenumber` longtext COLLATE utf8_bin COMMENT '费用类型编码',
  `fexpensename` longtext COLLATE utf8_bin COMMENT '费用类型名称',
  `baseuninumber` longtext COLLATE utf8_bin COMMENT '部门编码',
  `fbaseuniname` longtext COLLATE utf8_bin COMMENT '部门名称',
  `FCause` longtext COLLATE utf8_bin COMMENT '报销事由',
  `fprojectno` longtext COLLATE utf8_bin COMMENT '项目编码',
  `fprojectname` longtext COLLATE utf8_bin COMMENT '项目名称',
  `fappliernumber` longtext COLLATE utf8_bin COMMENT '报销人编码',
  `fappliername` longtext COLLATE utf8_bin COMMENT '报销人名称',
  `fbillstatus` int(11) DEFAULT NULL COMMENT '单据状态',
  `fbudstatus` longtext COLLATE utf8_bin COMMENT '预算扣减状态',
  `fbillno` longtext COLLATE utf8_bin COMMENT '单据号',
  `FAMOUNTAPPROVED` double(6,2) DEFAULT NULL COMMENT '预算扣减金额',
  `fbilltype` longtext COLLATE utf8_bin COMMENT '单据类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_预算执行情况明细表';


-- zj_data.dm_eas_budgetexedetail1 definition

CREATE TABLE `dm_eas_budgetexedetail1` (
  `FBIZDATE` date DEFAULT NULL COMMENT '业务日期',
  `fexpensenumber` longtext COLLATE utf8_bin COMMENT '费用类型编码',
  `fexpensename` longtext COLLATE utf8_bin COMMENT '费用类型名称',
  `baseuninumber` longtext COLLATE utf8_bin COMMENT '部门编码',
  `fbaseuniname` longtext COLLATE utf8_bin COMMENT '部门名称',
  `FCause` longtext COLLATE utf8_bin COMMENT '报销事由',
  `fprojectno` longtext COLLATE utf8_bin COMMENT '项目编码',
  `fprojectname` longtext COLLATE utf8_bin COMMENT '项目名称',
  `fappliernumber` longtext COLLATE utf8_bin COMMENT '报销人编码',
  `fappliername` longtext COLLATE utf8_bin COMMENT '报销人名称',
  `fbillstatus` int(11) DEFAULT NULL COMMENT '单据状态',
  `fbudstatus` longtext COLLATE utf8_bin COMMENT '预算扣减状态',
  `fbillno` longtext COLLATE utf8_bin COMMENT '单据号',
  `FAMOUNTAPPROVED` double(28,10) DEFAULT NULL COMMENT '预算扣减金额',
  `fbilltype` longtext COLLATE utf8_bin COMMENT '单据类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_预算执行情况明细表1';


-- zj_data.dm_eas_busi_approve_overdue_bill_detial definition

CREATE TABLE `dm_eas_busi_approve_overdue_bill_detial` (
  `fcompany` longtext COLLATE utf8_bin COMMENT 'fcompany',
  `companynumber` longtext COLLATE utf8_bin COMMENT 'companynumber',
  `fnumber` longtext COLLATE utf8_bin COMMENT 'fnumber',
  `ftype` longtext COLLATE utf8_bin COMMENT 'ftype',
  `famount` longtext COLLATE utf8_bin COMMENT 'famount',
  `fname` longtext COLLATE utf8_bin COMMENT 'fname',
  `usernumber` longtext COLLATE utf8_bin COMMENT 'usernumber',
  `fdpt` longtext COLLATE utf8_bin COMMENT 'fdpt',
  `fdptnumber` longtext COLLATE utf8_bin COMMENT 'fdptnumber',
  `fpname` longtext COLLATE utf8_bin COMMENT 'fpname',
  `fpnumber` longtext COLLATE utf8_bin COMMENT 'fpnumber',
  `fctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'fctime',
  `fcomletetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'fcomletetime',
  `factname` longtext COLLATE utf8_bin COMMENT 'factname'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务审批超期单据明细';


-- zj_data.dm_eas_business_approval_timeout definition

CREATE TABLE `dm_eas_business_approval_timeout` (
  `fcompany` longtext COLLATE utf8_bin COMMENT 'fcompany',
  `companynumber` longtext COLLATE utf8_bin COMMENT 'companynumber',
  `fnumber` longtext COLLATE utf8_bin COMMENT 'fnumber',
  `ftype` longtext COLLATE utf8_bin COMMENT 'ftype',
  `fname` longtext COLLATE utf8_bin COMMENT 'fname',
  `usernumber` longtext COLLATE utf8_bin COMMENT 'usernumber',
  `fdpt` longtext COLLATE utf8_bin COMMENT 'fdpt',
  `fdptnumber` longtext COLLATE utf8_bin COMMENT 'fdptnumber',
  `fpname` longtext COLLATE utf8_bin COMMENT 'fpname',
  `fpnumber` longtext COLLATE utf8_bin COMMENT 'fpnumber',
  `factname` longtext COLLATE utf8_bin COMMENT 'factname',
  `fctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'fctime',
  `fcomletetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'fcomletetime',
  `famount` double(100,2) DEFAULT NULL COMMENT 'famount',
  `fbizdate` date DEFAULT NULL COMMENT 'fbizdate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_业务审批超时';


-- zj_data.dm_eas_companyfb definition

CREATE TABLE `dm_eas_companyfb` (
  `FORGNUMBER` longtext COLLATE utf8_bin COMMENT '公司编码',
  `FORGNAME` longtext COLLATE utf8_bin COMMENT '公司名称',
  `FDEPTNUMBER` longtext COLLATE utf8_bin COMMENT '部门编码',
  `FDEPTNAME` longtext COLLATE utf8_bin COMMENT '部门名称',
  `FBILLNO` longtext COLLATE utf8_bin COMMENT '单据编号',
  `FID` longtext COLLATE utf8_bin COMMENT '单据ID',
  `FBIZDATE` date DEFAULT NULL COMMENT '开始业务日期',
  `FENDBIZDATE` date DEFAULT NULL COMMENT '结束业务日期',
  `FBILLTYPE` longtext COLLATE utf8_bin COMMENT '单据类型',
  `FSOUCEBILLID` longtext COLLATE utf8_bin COMMENT '来源单据ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_各部门分布';


-- zj_data.dm_eas_completed_task_quantity definition

CREATE TABLE `dm_eas_completed_task_quantity` (
  `usernumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'usernumber',
  `userid` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'userid',
  `usernmae` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'usernmae',
  `groupname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'groupname',
  `counttime` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '分组统计年月',
  `taskcount` bigint(20) DEFAULT NULL COMMENT '累计任务量',
  `sumhaoshi` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '累计耗时',
  `jobcount` bigint(20) DEFAULT NULL COMMENT '共享任务量',
  `pendingcount` bigint(20) DEFAULT NULL COMMENT '待处理量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_completed_task_quantity';


-- zj_data.dm_eas_ct_mnc_ncrmbill definition

CREATE TABLE `dm_eas_ct_mnc_ncrmbill` (
  `FFIVOUCHERED` int(11) DEFAULT '0' COMMENT 'FFIVOUCHERED',
  `CFAUDITLEVEL` int(11) DEFAULT NULL COMMENT '评审级别',
  `CFMaterialID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料id',
  `CFMATEIRALNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名',
  `CFMEASUREUNITID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计量单位',
  `CFQTY` double(40,0) DEFAULT NULL COMMENT '不合格数量',
  `CFOCCURDEPTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发生单位',
  `CFLOTNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '批次号',
  `CFSERIALNUMBER` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `CFSUPPLIERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商',
  `CFPRODUCEDATE` datetime DEFAULT NULL,
  `CFPROJECTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项 目',
  `CFDEALRESULT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处置措施实施情况the result of closed-loop',
  `CFVALIDATORID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪验证人员Inspector',
  `CFVALIDATEDATE` datetime DEFAULT NULL,
  `CFRELEASEREMARK` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '让步放行批准意见',
  `CFRELEASEAUDITDATE` datetime DEFAULT NULL,
  `CFFINISHDATE` datetime DEFAULT NULL,
  `CFTRACESIGN` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '追溯标识信息',
  `CFAUDITPRESIDERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评审主持者',
  `CFPRODUCTDEPTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产交付部门',
  `CFREPORTMANID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '报告人员',
  `CFDUTYCLASS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任原因分类',
  `CFDUTYDEPTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位',
  `CFDUTYCLASSGROUPID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任班组',
  `CFDEALHOUR` double(40,0) DEFAULT NULL COMMENT '处置工时',
  `CFDEALCLASSGROUPID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处置班组/车间',
  `CFISRELEASE` int(11) DEFAULT NULL COMMENT '让步放行',
  `CFRELEASEAREA` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '放行范围',
  `CFSENDMATERIALID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '隶尾交付部件物料号',
  `CFSENDSERIALNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '交付件序列号',
  `CFRESTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任分类',
  `CFSTATUS` int(11) DEFAULT NULL COMMENT '状态',
  `CFAUDITCREATORID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评审组织者',
  `CFRELEASEAUDITORID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '让步放行批准人员',
  `CFACTIONDEPID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处置单位',
  `CFREPIARPERSONID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '返修人',
  `CFLIABILITYCAUESID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任原因分类',
  `CFUNQUALIFIEDSUPPL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格供应商',
  `CFOPERATION` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序',
  `CFTTACKNUMBERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号',
  `CFWORKCENTERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工作中心',
  `CFPURORGUNITID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组织',
  `CFWAREHOUSEID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '调拨出库房',
  `CFBACKREPAIRID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBACKREPAIRID',
  `CFBACKREPAIRMATTER` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT '回修内容',
  `FNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编号',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '经手人',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT '是否曾经生效',
  `FAUDITORID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAUDITORID',
  `FSOURCEBILLID` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '原始单据ID',
  `FSOURCEFUNCTION` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '来源功能',
  `FCREATORID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `FCREATETIME` datetime DEFAULT NULL,
  `FLASTUPDATEUSERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '最后修改者',
  `FLASTUPDATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '控制单元',
  `FID` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'id主键',
  `CFCOSTOBJECTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '成本对象',
  `CFREFURTYPEID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '回修类型',
  `CFDISPOSALUNITID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单位',
  `CFDISPOSALDEPTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位',
  `CFISGETNCR` int(11) DEFAULT NULL COMMENT '是否wms接收单据',
  `CFNCRSOURCE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据来源控制',
  `CFPASSAUDITDATE` datetime DEFAULT NULL,
  `CFDISCOVERYCLASS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发现阶段',
  `CFDISPOSALMETHOD` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处置方式',
  `CFMASSLOSSTYPEID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '质量损失类别',
  `CFMASSLOSSCAID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '质量损失原因',
  `CFTRIAL` int(11) DEFAULT NULL COMMENT '试制标识',
  `CFPROJECTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '手工输入项目号名称',
  `CFSUPPLIERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `CFDUTYDEPTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位名称',
  `CFOCCURDEPTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发现部门名称',
  `CFPRODUCTDEPTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '手工不合格输入供应商',
  `CFDEALSOLUTION` longtext COLLATE utf8_bin COMMENT '处置方案评审/风险分析Measures',
  `FDESCRIPTION` longtext COLLATE utf8_bin COMMENT '参考信息',
  `CFISLOSS` int(11) DEFAULT NULL COMMENT '是否导致质量损失',
  `CFISMEASURES` int(11) DEFAULT NULL COMMENT '是否采取纠正措施',
  `CFNCRTYPE` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '类别',
  `CFNCRMNUMBER` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '来源单号',
  `measureunit` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计量单位名',
  `supplerName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名',
  `projectName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名',
  `zrdwName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '翻译CFDutyDeptiD责任单位名',
  `cfAuditCreatorName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '评审组织者名',
  `cfReleaseAuditorName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '让步放行批准人员名',
  `cfActiondepName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '处置单位名',
  `cfRepiarPersonName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '返修人名',
  `cfLiabilityCauesName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '责任原因分类',
  `bhgsupplerName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格供应商',
  `cfTtackNumber` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号',
  `cfPurorgunit` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组织',
  `backRepairfy` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'backRepair',
  `controlUnit` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '控制单元',
  `cfMassLossType` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '质量损失类别',
  `cfMassLoss` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '质量损失原因',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ncr主表';


-- zj_data.dm_eas_ct_mnc_ncrmbill_copy1 definition

CREATE TABLE `dm_eas_ct_mnc_ncrmbill_copy1` (
  `FFIVOUCHERED` int(11) DEFAULT '0' COMMENT 'FFIVOUCHERED',
  `CFAUDITLEVEL` int(11) DEFAULT NULL COMMENT '评审级别',
  `CFMaterialID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料id',
  `CFMATEIRALNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名',
  `CFMEASUREUNITID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计量单位',
  `CFQTY` double(40,0) DEFAULT NULL COMMENT '不合格数量',
  `CFOCCURDEPTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发生单位',
  `CFLOTNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '批次号',
  `CFSERIALNUMBER` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `CFSUPPLIERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商',
  `CFPRODUCEDATE` datetime DEFAULT NULL,
  `CFPROJECTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项 目',
  `CFDEALRESULT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处置措施实施情况the result of closed-loop',
  `CFVALIDATORID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪验证人员Inspector',
  `CFVALIDATEDATE` datetime DEFAULT NULL,
  `CFRELEASEREMARK` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '让步放行批准意见',
  `CFRELEASEAUDITDATE` datetime DEFAULT NULL,
  `CFFINISHDATE` datetime DEFAULT NULL,
  `CFTRACESIGN` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '追溯标识信息',
  `CFAUDITPRESIDERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评审主持者',
  `CFPRODUCTDEPTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产交付部门',
  `CFREPORTMANID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '报告人员',
  `CFDUTYCLASS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任原因分类',
  `CFDUTYDEPTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位',
  `CFDUTYCLASSGROUPID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任班组',
  `CFDEALHOUR` double(40,0) DEFAULT NULL COMMENT '处置工时',
  `CFDEALCLASSGROUPID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处置班组/车间',
  `CFISRELEASE` int(11) DEFAULT NULL COMMENT '让步放行',
  `CFRELEASEAREA` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '放行范围',
  `CFSENDMATERIALID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '隶尾交付部件物料号',
  `CFSENDSERIALNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '交付件序列号',
  `CFRESTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任分类',
  `CFSTATUS` int(11) DEFAULT NULL COMMENT '状态',
  `CFAUDITCREATORID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评审组织者',
  `CFRELEASEAUDITORID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '让步放行批准人员',
  `CFACTIONDEPID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处置单位',
  `CFREPIARPERSONID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '返修人',
  `CFLIABILITYCAUESID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任原因分类',
  `CFUNQUALIFIEDSUPPL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格供应商',
  `CFOPERATION` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序',
  `CFTTACKNUMBERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号',
  `CFWORKCENTERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工作中心',
  `CFPURORGUNITID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组织',
  `CFWAREHOUSEID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '调拨出库房',
  `CFBACKREPAIRID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBACKREPAIRID',
  `CFBACKREPAIRMATTER` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT '回修内容',
  `FNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编号',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '经手人',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT '是否曾经生效',
  `FAUDITORID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAUDITORID',
  `FSOURCEBILLID` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '原始单据ID',
  `FSOURCEFUNCTION` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '来源功能',
  `FCREATORID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `FCREATETIME` datetime DEFAULT NULL,
  `FLASTUPDATEUSERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '最后修改者',
  `FLASTUPDATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '控制单元',
  `FID` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'id主键',
  `CFCOSTOBJECTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '成本对象',
  `CFREFURTYPEID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '回修类型',
  `CFDISPOSALUNITID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单位',
  `CFDISPOSALDEPTID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位',
  `CFISGETNCR` int(11) DEFAULT NULL COMMENT '是否wms接收单据',
  `CFNCRSOURCE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据来源控制',
  `CFPASSAUDITDATE` datetime DEFAULT NULL,
  `CFDISCOVERYCLASS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发现阶段',
  `CFDISPOSALMETHOD` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处置方式',
  `CFMASSLOSSTYPEID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '质量损失类别',
  `CFMASSLOSSCAID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '质量损失原因',
  `CFTRIAL` int(11) DEFAULT NULL COMMENT '试制标识',
  `CFPROJECTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '手工输入项目号名称',
  `CFSUPPLIERNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `CFDUTYDEPTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位名称',
  `CFOCCURDEPTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发现部门名称',
  `CFPRODUCTDEPTNAME` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '手工不合格输入供应商',
  `CFDEALSOLUTION` longtext COLLATE utf8_bin COMMENT '处置方案评审/风险分析Measures',
  `FDESCRIPTION` longtext COLLATE utf8_bin COMMENT '参考信息',
  `CFISLOSS` int(11) DEFAULT NULL COMMENT '是否导致质量损失',
  `CFISMEASURES` int(11) DEFAULT NULL COMMENT '是否采取纠正措施',
  `CFNCRTYPE` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '类别',
  `CFNCRMNUMBER` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '来源单号',
  `measureunit` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计量单位名',
  `supplerName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名',
  `projectName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名',
  `zrdwName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '翻译CFDutyDeptiD责任单位名',
  `cfAuditCreatorName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '评审组织者名',
  `cfReleaseAuditorName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '让步放行批准人员名',
  `cfActiondepName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '处置单位名',
  `cfRepiarPersonName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '返修人名',
  `cfLiabilityCauesName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '责任原因分类',
  `bhgsupplerName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格供应商',
  `cfTtackNumber` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号',
  `cfPurorgunit` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组织',
  `backRepairfy` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'backRepair',
  `controlUnit` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '控制单元',
  `cfMassLossType` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '质量损失类别',
  `cfMassLoss` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '质量损失原因',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ncr主表';


-- zj_data.dm_eas_ct_mnc_ncrmbillauditorentry definition

CREATE TABLE `dm_eas_ct_mnc_ncrmbillauditorentry` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FSEQ` int(11) NOT NULL DEFAULT '0' COMMENT '单据分录序列',
  `FPARENTID` varchar(44) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'FPARENTID',
  `CFSEQ` int(11) DEFAULT NULL COMMENT 'CFSEQ',
  `CFREVIEWDEPTID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CFREVIEWROLEID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CFREVIEWERID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CFENDORSEDATE` datetime DEFAULT NULL,
  `CFDISREVIEW` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CFARBITRATIONRESULT` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '仲裁结果',
  `CFREPAIRPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '返修后验证人',
  `CFARBITRATIONPERSO` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评审不同意见类型',
  `CFREPAIRRESULT` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '返修结果',
  `CFREVIEWRESULT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评审结果',
  `CFREVIEWDATE` datetime DEFAULT NULL,
  `CFREMARK` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `CFZYLY` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '专业领域',
  `CFREVIEWER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='分录评审人信息';


-- zj_data.dm_eas_ct_mnc_ncrmbillunpass definition

CREATE TABLE `dm_eas_ct_mnc_ncrmbillunpass` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FSEQ` int(11) NOT NULL DEFAULT '0' COMMENT '单据分录序列号',
  `FPARENTID` varchar(44) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'FPARENTID',
  `CFSEQ` int(11) DEFAULT NULL COMMENT 'CFSEQ',
  `CFUNQUALIFIEDMODEL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格模式',
  `CFUNQUALIFIEDREMARK` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='不合格信息';


-- zj_data.dm_eas_ct_pur_purretype definition

CREATE TABLE `dm_eas_ct_pur_purretype` (
  `fname_l2` longtext COLLATE utf8_bin COMMENT 'fname_l2',
  `fnumber` longtext COLLATE utf8_bin COMMENT 'fnumber',
  `fid` longtext COLLATE utf8_bin COMMENT 'fid',
  `fcreatetime` longtext COLLATE utf8_bin COMMENT 'fcreatetime',
  `flastupdatetime` longtext COLLATE utf8_bin COMMENT 'flastupdatetime',
  `fhosttype` longtext COLLATE utf8_bin COMMENT 'fhosttype'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_采购申请类型';


-- zj_data.dm_eas_ct_zjb_designbombill definition

CREATE TABLE `dm_eas_ct_zjb_designbombill` (
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBIZDATE',
  `FHANDLERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHANDLERID',
  `FDESCRIPTION` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAUDITORID',
  `FSOURCEBILLID` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEFUNCTION` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEFUNCTION',
  `FID` varchar(44) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FFIVOUCHERED` int(11) DEFAULT NULL COMMENT 'FFIVOUCHERED',
  `CFBATCH` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBATCH',
  `CFPARTNO` varchar(90) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPARTNO',
  `CFSEQNO` int(11) DEFAULT NULL COMMENT 'CFSEQNO',
  `CFPARENTNO` varchar(90) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPARENTNO',
  `CFNAME` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFNAME',
  `CFQUANTITY` double(28,10) DEFAULT NULL COMMENT 'CFQUANTITY',
  `CFWEIGHT` double(28,10) DEFAULT NULL COMMENT 'CFWEIGHT',
  `CFUNIT` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFUNIT',
  `CFSTUFFNO` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSTUFFNO',
  `CFMAKEFLOW` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMAKEFLOW',
  `CFNOTE` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFNOTE',
  `CFISIMPORT` int(11) DEFAULT NULL COMMENT 'CFISIMPORT',
  `CFLEVEL` int(11) DEFAULT NULL COMMENT 'CFLEVEL',
  `CFLONGNUMBER` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFLONGNUMBER',
  `CFSERIALNO` int(11) DEFAULT NULL COMMENT 'CFSERIALNO',
  `CFSTRUFFNAME` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSTRUFFNAME',
  `CFPARENTNAME` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPARENTNAME',
  `CFCHARTNO` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCHARTNO',
  `CFBZ` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBZ',
  `CFSTATE` int(11) DEFAULT NULL COMMENT 'CFSTATE',
  `CFPROJECTNO` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJECTNO',
  `CFPROJECTNAME` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJECTNAME',
  `CFBEGINCARNO` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBEGINCARNO',
  `CFENDCARNO` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFENDCARNO',
  `CFOLDID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFOLDID',
  `CFDESIGNNO` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFDESIGNNO',
  `CFDESIGNER` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFDESIGNER',
  `CFDESIGNDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFDESIGNDATE',
  `CFERPBATCHNO1ID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFERPBATCHNO1ID',
  `CFERPBATCHNO2ID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFERPBATCHNO2ID',
  `CFPARENTCHARTNO` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPARENTCHARTNO',
  `CFAUDITDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFAUDITDATE',
  `CFPROJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJECTID',
  `CFFLOWWRITEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFLOWWRITEID',
  `CFFLOWDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFFLOWDATE',
  `CFGETSTORAGEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFGETSTORAGEID',
  `CFSTORAGEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSTORAGEID',
  `CFMATERIALPRO` int(11) DEFAULT NULL COMMENT 'CFMATERIALPRO',
  `CFMENO` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMENO',
  `FALLINKID` int(11) DEFAULT NULL COMMENT 'FALLINKID',
  `CFISPARTS` int(11) DEFAULT NULL COMMENT 'CFISPARTS',
  `FTCID` int(11) DEFAULT NULL COMMENT 'FTCID',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_EASCT_ZJB_DESIGNBOMBILL';


-- zj_data.dm_eas_ct_zjb_processbombill definition

CREATE TABLE `dm_eas_ct_zjb_processbombill` (
  `FCREATETIME` date DEFAULT NULL COMMENT 'FCREATETIME',
  `FLASTUPDATETIME` date DEFAULT NULL COMMENT 'FLASTUPDATETIME',
  `FNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FBIZDATE` date DEFAULT NULL COMMENT 'FBIZDATE',
  `CFPARENTNO` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPARENTNO',
  `CFNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFNAME',
  `CFQUANTITY` double(100,0) DEFAULT NULL COMMENT 'CFQUANTITY',
  `CFWEIGHT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFWEIGHT',
  `CFUNIT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFUNIT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='测试processbombill';


-- zj_data.dm_eas_document_return_reason definition

CREATE TABLE `dm_eas_document_return_reason` (
  `fcompany` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `fnumbers` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `ftype` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据类型',
  `fbilltype` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '金额',
  `fname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `fdpt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `freturned` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '退回人',
  `freject` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '退回原因',
  `fcost` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '费用类型',
  `fcompanynumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '公司编码',
  `fnamenumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人编码',
  `fdptnumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_document_return_reason';


-- zj_data.dm_eas_document_return_reason_1 definition

CREATE TABLE `dm_eas_document_return_reason_1` (
  `fcompany` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `fnumbers` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `ftype` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据类型',
  `fbilltype` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '金额',
  `fname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `fdpt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `freturned` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '退回人',
  `freject` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '退回原因',
  `fcost` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '费用类型',
  `fcompanynumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '公司编码',
  `fnamenumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人编码',
  `fdptnumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_document_return_reason_1';


-- zj_data.dm_eas_document_return_reason_2 definition

CREATE TABLE `dm_eas_document_return_reason_2` (
  `fcompany` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `fnumbers` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `ftype` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据类型',
  `fbilltype` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '金额',
  `fname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `fdpt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `freturned` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '退回人',
  `freject` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '退回原因',
  `fcost` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '费用类型',
  `fcompanynumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '公司编码',
  `fnamenumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人编码',
  `fdptnumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_document_return_reason_2';


-- zj_data.dm_eas_facurcardamount definition

CREATE TABLE `dm_eas_facurcardamount` (
  `number` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编号',
  `amount` decimal(28,4) DEFAULT NULL COMMENT '原值金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_固定资产卡片原值金额';


-- zj_data.dm_eas_finance_lxl definition

CREATE TABLE `dm_eas_finance_lxl` (
  `FDEBITLocal` double(50,10) DEFAULT NULL COMMENT '*借方发生额本位币',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '*FNUMBER',
  `FDISPLAYNAME_L2` longtext COLLATE utf8_bin COMMENT '*部门长名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_finance_lxl';


-- zj_data.dm_eas_finance_without_groupby definition

CREATE TABLE `dm_eas_finance_without_groupby` (
  `FDEBITLocal` double(50,10) DEFAULT NULL COMMENT '*借方发生额本位币',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '*FNUMBER',
  `FDISPLAYNAME_L2` longtext COLLATE utf8_bin COMMENT '*部门长名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_finance_without_groupby';


-- zj_data.dm_eas_fkbbhwzc definition

CREATE TABLE `dm_eas_fkbbhwzc` (
  `sefnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'sefnumber',
  `funumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'funumber',
  `FACTUALAMT` double(28,10) DEFAULT NULL COMMENT 'FACTUALAMT',
  `FACTUALLOCAMT` double(28,10) DEFAULT NULL COMMENT 'FACTUALLOCAMT',
  `fdate` date DEFAULT NULL COMMENT 'fdate',
  `fsuppname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fsuppname',
  `acnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'acnumber',
  `PAYBILLTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PAYBILLTYPE',
  `enddate` date DEFAULT NULL COMMENT 'enddate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_fkbbhwzc';


-- zj_data.dm_eas_gxsysbillcount definition

CREATE TABLE `dm_eas_gxsysbillcount` (
  `proxytype` longtext COLLATE utf8_bin COMMENT '指标类型',
  `billtype` longtext COLLATE utf8_bin COMMENT '单据类型',
  `billno` longtext COLLATE utf8_bin COMMENT '单据编码',
  `startbizdate` date DEFAULT NULL COMMENT '开始业务日期',
  `endbizdate` date DEFAULT NULL COMMENT '结束业务日期',
  `tonodetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '到达节点时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_共享系统单据统计表';


-- zj_data.dm_eas_hangup definition

CREATE TABLE `dm_eas_hangup` (
  `company` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `fnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '编号',
  `billtype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据类型',
  `amount` double(100,4) DEFAULT NULL COMMENT '金额',
  `apply` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `orgunit` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `fdate` date DEFAULT NULL COMMENT '挂起日期',
  `fuser` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处理人',
  `companyNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司编号',
  `applyNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人编码',
  `orgunitNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门编码',
  `date2` date DEFAULT NULL COMMENT '挂起日期2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_系统挂起单据';


-- zj_data.dm_eas_hangupall definition

CREATE TABLE `dm_eas_hangupall` (
  `company` longtext COLLATE utf8_bin COMMENT '公司',
  `fnumber` longtext COLLATE utf8_bin COMMENT '编号',
  `billtype` longtext COLLATE utf8_bin COMMENT '单据类型',
  `amount` double(28,10) DEFAULT NULL COMMENT '金额',
  `apply` longtext COLLATE utf8_bin COMMENT '申请人',
  `orgunit` longtext COLLATE utf8_bin COMMENT '申请部门',
  `fdate` date DEFAULT NULL COMMENT '挂起日期',
  `fuser` longtext COLLATE utf8_bin COMMENT '处理人',
  `companyNumber` longtext COLLATE utf8_bin COMMENT '公司编号',
  `applyNumber` longtext COLLATE utf8_bin COMMENT '申请人编码',
  `orgunitNumber` longtext COLLATE utf8_bin COMMENT '申请部门编码',
  `date2` date DEFAULT NULL COMMENT '挂起日期2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_系统挂起单据汇总';


-- zj_data.dm_eas_inbound_price_abnormal_1 definition

CREATE TABLE `dm_eas_inbound_price_abnormal_1` (
  `billnumber` longtext COLLATE utf8_bin COMMENT 'billnumber',
  `invwarbizdate` date DEFAULT NULL COMMENT 'invwarbizdate',
  `invwarbizdatestr` longtext COLLATE utf8_bin COMMENT 'invwarbizdatestr',
  `materialnumber` longtext COLLATE utf8_bin COMMENT 'materialnumber',
  `materialname` longtext COLLATE utf8_bin COMMENT 'materialname',
  `inwarprice` longtext COLLATE utf8_bin COMMENT 'inwarprice',
  `yffpnumber` longtext COLLATE utf8_bin COMMENT 'yffpnumber',
  `yffpbilldate` date DEFAULT NULL COMMENT 'yffpbilldate',
  `yffpbilldatestr` longtext COLLATE utf8_bin COMMENT 'yffpbilldatestr',
  `yffppriec` longtext COLLATE utf8_bin COMMENT 'yffppriec',
  `division` longtext COLLATE utf8_bin COMMENT 'division'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='入库价格异常表_1';


-- zj_data.dm_eas_inbound_price_abnormal_2 definition

CREATE TABLE `dm_eas_inbound_price_abnormal_2` (
  `billnumber` longtext COLLATE utf8_bin COMMENT 'billnumber',
  `invwarbizdate` date DEFAULT NULL COMMENT 'invwarbizdate',
  `invwarbizdatestr` longtext COLLATE utf8_bin COMMENT 'invwarbizdatestr',
  `materialnumber` longtext COLLATE utf8_bin COMMENT 'materialnumber',
  `materialname` longtext COLLATE utf8_bin COMMENT 'materialname',
  `inwarprice` longtext COLLATE utf8_bin COMMENT 'inwarprice',
  `yffpnumber` longtext COLLATE utf8_bin COMMENT 'yffpnumber',
  `yffpbilldate` date DEFAULT NULL COMMENT 'yffpbilldate',
  `yffpbilldatestr` longtext COLLATE utf8_bin COMMENT 'yffpbilldatestr',
  `yffppriec` longtext COLLATE utf8_bin COMMENT 'yffppriec',
  `division` longtext COLLATE utf8_bin COMMENT 'division'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='入库价格异常表_2';


-- zj_data.dm_eas_inbound_price_abnormal_2_new definition

CREATE TABLE `dm_eas_inbound_price_abnormal_2_new` (
  `billnumber` longtext COLLATE utf8_bin COMMENT 'billnumber',
  `invwarbizdate` date DEFAULT NULL COMMENT 'invwarbizdate',
  `invwarbizdatestr` longtext COLLATE utf8_bin COMMENT 'invwarbizdatestr',
  `materialnumber` longtext COLLATE utf8_bin COMMENT 'materialnumber',
  `materialname` longtext COLLATE utf8_bin COMMENT 'materialname',
  `inwarprice` longtext COLLATE utf8_bin COMMENT 'inwarprice',
  `yffpnumber` longtext COLLATE utf8_bin COMMENT 'yffpnumber',
  `yffpbilldate` date DEFAULT NULL COMMENT 'yffpbilldate',
  `yffpbilldatestr` longtext COLLATE utf8_bin COMMENT 'yffpbilldatestr',
  `yffppriec` longtext COLLATE utf8_bin COMMENT 'yffppriec',
  `division` longtext COLLATE utf8_bin COMMENT 'division'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='入库价格异常表_2';


-- zj_data.dm_eas_income definition

CREATE TABLE `dm_eas_income` (
  `FYEAR` longtext COLLATE utf8_bin COMMENT '年份',
  `FNAME` longtext COLLATE utf8_bin COMMENT '收入项目名称',
  `FNAME_FIRST` longtext COLLATE utf8_bin COMMENT '收入板块名称',
  `FAMOUNT` decimal(10,0) DEFAULT NULL COMMENT '金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_income';


-- zj_data.dm_eas_long_account_age_inventory_warn definition

CREATE TABLE `dm_eas_long_account_age_inventory_warn` (
  `storagenumber` longtext COLLATE utf8_bin COMMENT 'storagenumber',
  `storagename` longtext COLLATE utf8_bin COMMENT 'storagename',
  `materialnumber` longtext COLLATE utf8_bin COMMENT 'materialnumber',
  `materialname` longtext COLLATE utf8_bin COMMENT 'materialname',
  `bizdate` datetime DEFAULT NULL COMMENT 'bizdate',
  `suppliernumber` longtext COLLATE utf8_bin COMMENT 'suppliernumber',
  `suppliername` longtext COLLATE utf8_bin COMMENT 'suppliername',
  `projectnumber` longtext COLLATE utf8_bin COMMENT 'projectnumber',
  `projectname` longtext COLLATE utf8_bin COMMENT 'projectname',
  `price` longtext COLLATE utf8_bin COMMENT 'price',
  `unwriteqty` longtext COLLATE utf8_bin COMMENT 'unwriteqty',
  `unwriteamount` longtext COLLATE utf8_bin COMMENT 'unwriteamount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='长账龄存货暂估预警表';


-- zj_data.dm_eas_long_account_age_receivable_detail definition

CREATE TABLE `dm_eas_long_account_age_receivable_detail` (
  `companyname` longtext COLLATE utf8_bin COMMENT 'companyname',
  `companynumber` longtext COLLATE utf8_bin COMMENT 'companynumber',
  `customname` longtext COLLATE utf8_bin COMMENT 'customname',
  `customnumber` longtext COLLATE utf8_bin COMMENT 'customnumber',
  `srxmnumber` longtext COLLATE utf8_bin COMMENT 'srxmnumber',
  `srxmname` longtext COLLATE utf8_bin COMMENT 'srxmname',
  `bizdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'bizdate',
  `billamount` longtext COLLATE utf8_bin COMMENT 'billamount',
  `billnumber` longtext COLLATE utf8_bin COMMENT 'billnumber',
  `verifibizdate` datetime DEFAULT NULL,
  `verifiamount` longtext COLLATE utf8_bin COMMENT 'verifiamount',
  `arotherbillunverifyamount` longtext COLLATE utf8_bin COMMENT 'arotherbillunverifyamount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='长账龄应收账款回款明细表';


-- zj_data.dm_eas_long_account_age_receivable_detail_new definition

CREATE TABLE `dm_eas_long_account_age_receivable_detail_new` (
  `companyname` longtext COLLATE utf8_bin COMMENT 'companyname',
  `companynumber` longtext COLLATE utf8_bin COMMENT 'companynumber',
  `customname` longtext COLLATE utf8_bin COMMENT 'customname',
  `customnumber` longtext COLLATE utf8_bin COMMENT 'customnumber',
  `srxmnumber` longtext COLLATE utf8_bin COMMENT 'srxmnumber',
  `srxmname` longtext COLLATE utf8_bin COMMENT 'srxmname',
  `bizdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'bizdate',
  `billamount` longtext COLLATE utf8_bin COMMENT 'billamount',
  `billnumber` longtext COLLATE utf8_bin COMMENT 'billnumber',
  `verifibizdate` datetime DEFAULT NULL COMMENT 'verifibizdate',
  `verifiamount` longtext COLLATE utf8_bin COMMENT 'verifiamount',
  `arotherbillunverifyamount` longtext COLLATE utf8_bin COMMENT 'arotherbillunverifyamount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='长账龄应收账款回款明细表';


-- zj_data.dm_eas_month_end_receivable_account_detail definition

CREATE TABLE `dm_eas_month_end_receivable_account_detail` (
  `fbillid` longtext COLLATE utf8_bin COMMENT 'fbillid',
  `companynumber` longtext COLLATE utf8_bin COMMENT '公司',
  `companyname` longtext COLLATE utf8_bin COMMENT 'companyname',
  `asstactnumber` longtext COLLATE utf8_bin COMMENT '客户',
  `asstactname` longtext COLLATE utf8_bin COMMENT 'asstactname',
  `srxmnumber` longtext COLLATE utf8_bin COMMENT '收入项目',
  `srxmname` longtext COLLATE utf8_bin COMMENT 'srxmname',
  `bizdate` date DEFAULT NULL COMMENT '单据业务日期',
  `unverifyamount` decimal(28,4) DEFAULT NULL COMMENT '单据未结算',
  `amount` decimal(28,4) DEFAULT NULL COMMENT '单据应收金额',
  `recievepaydate` date DEFAULT NULL COMMENT '单据付款计划应收日期',
  `unverifyamount_jh` decimal(28,4) DEFAULT NULL COMMENT '单据付款计划应收金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='月末应收账款明细';


-- zj_data.dm_eas_ncrreport definition

CREATE TABLE `dm_eas_ncrreport` (
  `BUFNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '库存组织',
  `NCRFAUDITLEVEL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评审级别',
  `NCRFVERSIONNO` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '版本号',
  `PFNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `TNFNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号',
  `NCRFSERIALNO` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品编号',
  `BU2FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发生单位',
  `NCRFRESTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任类别',
  `S1FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '内部责任单位',
  `S2FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '外部责任单位',
  `NCRFTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格品类别',
  `NCRFQTY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格品数量',
  `MFNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编号',
  `UFNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '记录人工号',
  `NCRFRECORDDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '记录日期',
  `NCRFAUDITRESULT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评审结果集处理意见',
  `NCRFADUITDESCRIPTION` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '评审意见'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='偏离让步宽表';


-- zj_data.dm_eas_notscanbill definition

CREATE TABLE `dm_eas_notscanbill` (
  `company` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `billno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `billtype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据类型',
  `amount` double(100,0) DEFAULT NULL COMMENT '金额',
  `applier` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `applydept` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `submitdate` date DEFAULT NULL COMMENT '单据提交时间',
  `backdate` date DEFAULT NULL COMMENT '单据退回时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_未扫描单据';


-- zj_data.dm_eas_notscanbillall definition

CREATE TABLE `dm_eas_notscanbillall` (
  `company` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `billno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `billtype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据类型',
  `amount` decimal(28,10) DEFAULT NULL COMMENT '金额',
  `applier` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `applydept` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `submitdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '单据提交时间',
  `backdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '单据退回时间',
  `companynumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司编码',
  `appliernumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人编码',
  `deptnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门编码',
  `submitdatecopy` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '单据提交时间2',
  `backdatecopy` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '单据退回时间2',
  `startbizdate` date DEFAULT NULL COMMENT '开始业务时间',
  `endbizdate` date DEFAULT NULL COMMENT '结束业务时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_未扫描单据合并';


-- zj_data.dm_eas_notsubmitted definition

CREATE TABLE `dm_eas_notsubmitted` (
  `company` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编号',
  `type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据类型',
  `amount` double(100,0) DEFAULT NULL COMMENT '金额',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `orgunit` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `savetime` date DEFAULT NULL COMMENT '单据保存时间',
  `tasktimes` date DEFAULT NULL COMMENT '单据退回时间',
  `stoptime` double(100,0) DEFAULT NULL COMMENT '节点停留时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_未提交01';


-- zj_data.dm_eas_notsubmitteds definition

CREATE TABLE `dm_eas_notsubmitteds` (
  `company` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `creatorid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据类型',
  `amount` double(100,0) DEFAULT NULL COMMENT '金额',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `dpt` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `savetime` date DEFAULT NULL COMMENT '单据保存时间',
  `tasktimes` date DEFAULT NULL COMMENT '单据退回时间',
  `stoptime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节点停留时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_未提交02';


-- zj_data.dm_eas_outbound_price_abnormal definition

CREATE TABLE `dm_eas_outbound_price_abnormal` (
  `billnumber` longtext COLLATE utf8_bin COMMENT 'billnumber',
  `bizdate` longtext COLLATE utf8_bin COMMENT 'bizdate',
  `saleprice` longtext COLLATE utf8_bin COMMENT 'saleprice',
  `materialnumber` longtext COLLATE utf8_bin COMMENT 'materialnumber',
  `materialname` longtext COLLATE utf8_bin COMMENT 'materialname',
  `othernumber` longtext COLLATE utf8_bin COMMENT 'othernumber',
  `otherbizdate` longtext COLLATE utf8_bin COMMENT 'otherbizdate',
  `otherprice` longtext COLLATE utf8_bin COMMENT 'otherprice',
  `division` longtext COLLATE utf8_bin COMMENT 'division'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='出库价格异常表';


-- zj_data.dm_eas_payment_detail_reimbursement_number definition

CREATE TABLE `dm_eas_payment_detail_reimbursement_number` (
  `fcompany` longtext COLLATE utf8_bin COMMENT 'fcompany',
  `companynumber` longtext COLLATE utf8_bin COMMENT 'companynumber',
  `billnumber` longtext COLLATE utf8_bin COMMENT 'billnumber',
  `paynumber` longtext COLLATE utf8_bin COMMENT 'paynumber',
  `fcreatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'fcreatetime',
  `fbizdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'fbizdate',
  `setname` longtext COLLATE utf8_bin COMMENT 'setname',
  `actname` longtext COLLATE utf8_bin COMMENT 'actname',
  `paystate` longtext COLLATE utf8_bin COMMENT 'paystate',
  `bankstate` longtext COLLATE utf8_bin COMMENT 'bankstate',
  `iscurmonth` longtext COLLATE utf8_bin COMMENT 'iscurmonth',
  `logtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'logtime',
  `rn` longtext COLLATE utf8_bin COMMENT 'rn'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_排程付款明细报销单号';


-- zj_data.dm_eas_person_suspended_documents_table definition

CREATE TABLE `dm_eas_person_suspended_documents_table` (
  `forgname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '公司名称',
  `forgnumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '公司编码',
  `fbillno` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `fbilltype` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据类型',
  `fbillstatus` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据状态',
  `famount` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '金额',
  `fpersonnum` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人编码',
  `fpersonname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人名称',
  `fdeptnumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '部门编码',
  `fdeptname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '部门名称',
  `fexeuser` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '暂挂执行人编码',
  `fexename` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '暂挂执行人名称',
  `changetime` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '暂挂时间',
  `foperation` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '操作',
  `fbegindate` timestamp NULL DEFAULT NULL COMMENT '业务开始时间',
  `fenddate` timestamp NULL DEFAULT NULL COMMENT '业务结束时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_person_suspended_documents_table';


-- zj_data.dm_eas_pms_sjzttest11 definition

CREATE TABLE `dm_eas_pms_sjzttest11` (
  `FTOTALCOST` decimal(17,4) DEFAULT NULL COMMENT '目标总成本',
  `FUNITCOST` decimal(17,4) DEFAULT NULL COMMENT '目标单位成本',
  `FTOTALTIME` decimal(17,4) DEFAULT NULL COMMENT '工期',
  `FPLANBEGINTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '计划开工时间',
  `FPLANENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '计划完工时间',
  `FEARISTBEGINTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最早开工时间',
  `FLASTBEGINTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最晚开工时间',
  `FEARISTENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最早完工时间',
  `FLASTENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最晚完工时间',
  `FQTY` decimal(21,8) DEFAULT NULL COMMENT '数量',
  `FGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '项目分组',
  `FPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '项目经理',
  `FADMINORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '责任部门',
  `FMATERIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '交付产品',
  `FISTEMPLATE` int(11) DEFAULT NULL COMMENT '是否为模板',
  `FCURRENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '币别',
  `FBASEUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '计量单位',
  `FACTTOTALCOST` decimal(17,4) DEFAULT NULL COMMENT '累计总成本',
  `FTOTALQTY` decimal(17,4) DEFAULT NULL COMMENT '累计完工数量',
  `FCOMPLETEPERCENT` decimal(17,4) DEFAULT NULL COMMENT '完成百分比',
  `FACTUALBEGINTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际开工时间',
  `FACTUALENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际完工时间',
  `FACTUALTOTALTIME` decimal(17,4) DEFAULT NULL COMMENT '实际工期',
  `FBASEQTY` decimal(21,8) DEFAULT NULL COMMENT '基本数量',
  `FPROJECTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '项目类型',
  `FUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '基本计量单位',
  `FTOTALBASEQTY` decimal(21,8) DEFAULT NULL COMMENT '基本累计完工数量',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '业务日期',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT '是否曾经生效',
  `FAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '审核人',
  `FHANDLERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '经手人',
  `FAUDITTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '审核日期',
  `FBASESTATUS` int(11) DEFAULT NULL COMMENT '状态',
  `FADMINCUID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '管理组织',
  `FNAME_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'mm_project名字1',
  `FNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'mm_project名字2',
  `FNAME_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'mm_project名字3',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '编码',
  `FDESCRIPTION_L1` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'mm_project描述1',
  `FDESCRIPTION_L2` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'mm_project描述2',
  `FDESCRIPTION_L3` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'mm_project描述3',
  `FSIMPLENAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '简称',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `FCREATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '最后修改者',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后修改时间',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '控制单元',
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'mm_project中的FID',
  `FCENTRALPURSTGORGID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '集中采购库存组织',
  `FPROJECTASSISTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '项目同步',
  `FISCHANGING` int(11) DEFAULT NULL COMMENT '变更中',
  `FPRIORITY` int(11) DEFAULT NULL COMMENT '项目等级',
  `FPROJECTCALENDARID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '项目日历',
  `CFPROJECTATTR` int(11) DEFAULT NULL COMMENT '项目属性',
  `CFNCRPREFIX` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFNCRPREFIX',
  `CFORDERNUM` int(11) DEFAULT NULL COMMENT '单据顺序号',
  `CFNORECORDERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'NCR编号记录人',
  `CFNODATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'NCR编号记录日期',
  `CFPROJECTAPPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '项目立项',
  `CFLCMPROJECTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFLCMPROJECTTYPEID',
  `CFPROJECTTYPESID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '项目类型',
  `CFINEXTENSION` int(11) DEFAULT NULL COMMENT 'CFINEXTENSION',
  `CFISNOHOST` int(11) DEFAULT NULL COMMENT 'CFISNOHOST',
  `FINEXTENSION` int(11) DEFAULT NULL COMMENT 'FINEXTENSION',
  `FISNOHOST` int(11) DEFAULT NULL COMMENT '非主机',
  `FPLANINCOME` decimal(28,10) DEFAULT NULL COMMENT '计划收入',
  `FFACTORYCALENDARID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '工作日历',
  `FACTUALINCOME` decimal(28,10) DEFAULT NULL COMMENT '实际收入',
  `FISPREPRODCUT` int(11) DEFAULT NULL COMMENT '预测性生产项目',
  `FCERTAINTY` int(11) DEFAULT NULL COMMENT '交付物确定性',
  `FREQENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '需求完工时间',
  `FVERSION` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '版本',
  `FLASTWORKTIME` decimal(28,10) DEFAULT NULL COMMENT '最晚工期',
  `FPCONTROLMODE` int(11) DEFAULT NULL COMMENT '采购专用件控制方式',
  `FDESCRIPTION` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `FREQWORKTIME` decimal(28,10) DEFAULT NULL COMMENT '需求工期',
  `FREQBEGINTIME` datetime DEFAULT NULL COMMENT '需求开工时间',
  `FMCONTROLMODE` int(11) DEFAULT NULL COMMENT '自制专用件控制方式',
  `FBATCHPROPERTY` int(11) DEFAULT NULL COMMENT '批量特性',
  `FEARLIESTWORKTIME` decimal(28,10) DEFAULT NULL COMMENT '最早工期',
  `FSOURCE` int(11) DEFAULT NULL COMMENT '项目来源',
  `FCONTROLDIMENSION` int(11) DEFAULT NULL COMMENT '计划控制维度',
  `FSETUPSTORAGEORGID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '立项库存组织',
  `FISINEXTENSION` int(11) DEFAULT NULL COMMENT '延长中',
  `FPURCHASEPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '采购经理',
  `CFPROTEGORYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '项目类别',
  `CFPROCONFIGURATION` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '产品配置',
  `CFSTAGESTATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目阶段',
  `CFMARKETSOURCES` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '市场来源',
  `CFPRODUCTVARIETY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '运营成本产品品种',
  `CFTYPEWORKORDERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '工作令号类型',
  `CFISSYSCREATE` int(11) DEFAULT NULL COMMENT 'isSysCreate',
  `CFPROJECTVOIPTYPEI` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '项目业务类型',
  `CFCUSTOMERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '客户',
  `CFTHEIRCARID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '所属车型',
  `CFLOTNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '项目批次号',
  `CFPROJCH` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `FISSENDTOESB` int(11) DEFAULT NULL COMMENT 'FISSENDTOESB',
  `CFISSOURCEPMS` int(11) DEFAULT NULL COMMENT '是否来源PMS',
  `CFPMSPROID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'PMS项目ID',
  `ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'id  PK',
  `NAME` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'crrc_project_name',
  `CODE` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'crrc_project_code',
  `BID_STATUS` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '投标状态',
  `LOCATION` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '属地/国家PMS',
  `CITY` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '城市',
  `CUSTOMER` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '客户名称PMS',
  `CUSTOMER_ADDR` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '客户地址PMS',
  `BID_USER` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '投标人',
  `LINKNAME` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人',
  `LINKPHONE` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `BID_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '投标日期',
  `CONTRACT_AMOUNT` decimal(15,2) DEFAULT NULL COMMENT '合同金额PMS',
  `UUID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '升版主键',
  `T_VERSION` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务版本',
  `G_VERSION` int(11) DEFAULT NULL COMMENT '默认0',
  `SIGN_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '签订日期',
  `PROJ_CATEGORY_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '项目分类ID',
  `PROJ_GENRE_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'crrc_project项目类型',
  `POTENTIAL_PM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '潜在项目经理',
  `SRC_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '来源id，记录bid_project的id',
  `LEVEL_STATUS` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '定级审批的状态1：未开始 2：审批中 3：已完成',
  `TEAM_STATUS` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '团队审批的状态1：未开始 2：审批中 3：已完成',
  `TRAIN_NUM` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '列车数量(PMS)',
  `FORMATION_NUM` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '编组数量(PMS)',
  `FIRST_DELIV_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '首列时间',
  `LAST_DELIV_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '末列时间',
  `SHORT_NAME` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT '项目简称',
  `NOTICE_CODE` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT '通知单号',
  `PROJ_SCORE` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT '项目评分',
  `FOREX_AMOUNT` decimal(15,2) DEFAULT NULL COMMENT '合同金额(外汇)',
  `SCIENTIFIC_CODE` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT '工作令号',
  `MONTH_PLAN_STATUS` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '月度计划发布状态',
  `NOTICE_EMAIL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目沟通邮箱',
  `TRAIN_TYPE` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '车型',
  `PLAN_STATUS` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '计划是否初始化的状态',
  `MATERIAL_BUDGET_STATUS` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '材料预算状态',
  `BUILD_YEAR` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT 'BUILD_YEAR',
  `EAS_FLAG` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'EAS_FLAG',
  `PERFORMANCE_STATUS` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'PERFORMANCE_STATUS',
  `LOCATION_NAME` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'LOCATION_NAME',
  `LOCATION_PARENT_NAME` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'LOCATION_PARENT_NAME',
  `PROJ_CATEGORY_NAME` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_CATEGORY_NAME',
  `PROJ_GENRE_NAME` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_GENRE_NAME',
  `POTENTIAL_PM_NAME` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'POTENTIAL_PM_NAME',
  `FID_2` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 't_bd_customer中的FID',
  `FCREATORID_2` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '客户编码',
  `FNAME_L2_2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '客户姓名',
  `FINTERNALCUSTOMERTYPE` int(11) DEFAULT NULL COMMENT '客户类型',
  `FID_1` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 't_bd_material的FID',
  `FCREATORID_1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '交付产品编码',
  `FNAME_L2_1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '交付产品名称',
  `FID_3` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 't_bd_person里的FID',
  `FIDNUM` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '项目经理工号',
  `FNAME_L2_3` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '项目经理姓名',
  `FPROJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'T_MM_PROJECTCAR里',
  `FTRACKNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号ID',
  `FSEQ` int(11) DEFAULT NULL COMMENT 'FSEQ',
  `FNUMBER_1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '列号',
  `FDESCRIPTION_L2_1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 't_mm_tracknumber描述',
  `FID_5` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 't_mm_tracknumber中的FID',
  PRIMARY KEY (`FID`,`FID_2`,`FID_3`,`FID_5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_pms_sjzttest11';


-- zj_data.dm_eas_pms_sjzttest3v1 definition

CREATE TABLE `dm_eas_pms_sjzttest3v1` (
  `FTOTALCOST` double DEFAULT NULL,
  `FUNITCOST` double DEFAULT NULL,
  `FTOTALTIME` double DEFAULT NULL,
  `FPLANBEGINTIME` date DEFAULT NULL,
  `FPLANENDTIME` date DEFAULT NULL,
  `FEARISTBEGINTIME` date DEFAULT NULL,
  `FLASTBEGINTIME` date DEFAULT NULL,
  `FEARISTENDTIME` date DEFAULT NULL,
  `FLASTENDTIME` date DEFAULT NULL,
  `FQTY` double DEFAULT NULL,
  `FGROUPID` text COLLATE utf8_bin,
  `FPERSONID` text COLLATE utf8_bin,
  `FADMINORGUNITID` text COLLATE utf8_bin,
  `FMATERIALID` text COLLATE utf8_bin,
  `FISTEMPLATE` int(11) DEFAULT NULL,
  `FCURRENCYID` text COLLATE utf8_bin,
  `FBASEUNITID` text COLLATE utf8_bin,
  `FACTTOTALCOST` double DEFAULT NULL,
  `FTOTALQTY` double DEFAULT NULL,
  `FCOMPLETEPERCENT` double DEFAULT NULL,
  `FACTUALBEGINTIME` date DEFAULT NULL,
  `FACTUALENDTIME` date DEFAULT NULL,
  `FACTUALTOTALTIME` double DEFAULT NULL,
  `FBASEQTY` double DEFAULT NULL,
  `FPROJECTTYPEID` text COLLATE utf8_bin,
  `FUNITID` text COLLATE utf8_bin,
  `FTOTALBASEQTY` double DEFAULT NULL,
  `FBIZDATE` date DEFAULT NULL,
  `FHASEFFECTED` int(11) DEFAULT NULL,
  `FAUDITORID` text COLLATE utf8_bin,
  `FHANDLERID` text COLLATE utf8_bin,
  `FAUDITTIME` date DEFAULT NULL,
  `FBASESTATUS` int(11) DEFAULT NULL,
  `FADMINCUID` text COLLATE utf8_bin,
  `FNAME_L1` text COLLATE utf8_bin,
  `FNAME_L2` text COLLATE utf8_bin,
  `FNAME_L3` text COLLATE utf8_bin,
  `FNUMBER` text COLLATE utf8_bin,
  `FDESCRIPTION_L1` text COLLATE utf8_bin,
  `FDESCRIPTION_L2` text COLLATE utf8_bin,
  `FDESCRIPTION_L3` text COLLATE utf8_bin,
  `FSIMPLENAME` text COLLATE utf8_bin,
  `FCREATORID` text COLLATE utf8_bin,
  `FCREATETIME` date DEFAULT NULL,
  `FLASTUPDATEUSERID` text COLLATE utf8_bin,
  `FLASTUPDATETIME` date DEFAULT NULL,
  `FCONTROLUNITID` text COLLATE utf8_bin,
  `FID` text COLLATE utf8_bin,
  `FCENTRALPURSTGORGID` text COLLATE utf8_bin,
  `FPROJECTASSISTID` text COLLATE utf8_bin,
  `FISCHANGING` int(11) DEFAULT NULL,
  `FPRIORITY` int(11) DEFAULT NULL,
  `FPROJECTCALENDARID` text COLLATE utf8_bin,
  `CFPROJECTATTR` int(11) DEFAULT NULL,
  `CFNCRPREFIX` text COLLATE utf8_bin,
  `CFORDERNUM` int(11) DEFAULT NULL,
  `CFNORECORDERID` text COLLATE utf8_bin,
  `CFNODATE` date DEFAULT NULL,
  `CFPROJECTAPPID` text COLLATE utf8_bin,
  `CFLCMPROJECTTYPEID` text COLLATE utf8_bin,
  `CFPROJECTTYPESID` text COLLATE utf8_bin,
  `CFINEXTENSION` int(11) DEFAULT NULL,
  `CFISNOHOST` int(11) DEFAULT NULL,
  `FINEXTENSION` int(11) DEFAULT NULL,
  `FISNOHOST` int(11) DEFAULT NULL,
  `FPLANINCOME` double DEFAULT NULL,
  `FFACTORYCALENDARID` text COLLATE utf8_bin,
  `FACTUALINCOME` double DEFAULT NULL,
  `FISPREPRODCUT` int(11) DEFAULT NULL,
  `FCERTAINTY` int(11) DEFAULT NULL,
  `FREQENDTIME` date DEFAULT NULL,
  `FVERSION` text COLLATE utf8_bin,
  `FLASTWORKTIME` double DEFAULT NULL,
  `FPCONTROLMODE` int(11) DEFAULT NULL,
  `FDESCRIPTION` text COLLATE utf8_bin,
  `FREQWORKTIME` double DEFAULT NULL,
  `FREQBEGINTIME` date DEFAULT NULL,
  `FMCONTROLMODE` int(11) DEFAULT NULL,
  `FBATCHPROPERTY` int(11) DEFAULT NULL,
  `FEARLIESTWORKTIME` double DEFAULT NULL,
  `FSOURCE` int(11) DEFAULT NULL,
  `FCONTROLDIMENSION` int(11) DEFAULT NULL,
  `FSETUPSTORAGEORGID` text COLLATE utf8_bin,
  `FISINEXTENSION` int(11) DEFAULT NULL,
  `FPURCHASEPERSONID` text COLLATE utf8_bin,
  `CFPROTEGORYID` text COLLATE utf8_bin,
  `CFPROCONFIGURATION` text COLLATE utf8_bin,
  `CFSTAGESTATE` text COLLATE utf8_bin,
  `CFMARKETSOURCES` text COLLATE utf8_bin,
  `CFPRODUCTVARIETY` text COLLATE utf8_bin,
  `CFTYPEWORKORDERID` text COLLATE utf8_bin,
  `CFISSYSCREATE` int(11) DEFAULT NULL,
  `CFPROJECTVOIPTYPEI` text COLLATE utf8_bin,
  `CFCUSTOMERID` text COLLATE utf8_bin,
  `CFTHEIRCARID` text COLLATE utf8_bin,
  `CFLOTNUMBERID` text COLLATE utf8_bin,
  `CFPROJCH` text COLLATE utf8_bin,
  `FISSENDTOESB` int(11) DEFAULT NULL,
  `CFISSOURCEPMS` int(11) DEFAULT NULL,
  `CFPMSPROID` text COLLATE utf8_bin,
  `ID` text COLLATE utf8_bin,
  `NAME` text COLLATE utf8_bin,
  `CODE` text COLLATE utf8_bin,
  `BID_STATUS` text COLLATE utf8_bin,
  `LOCATION` text COLLATE utf8_bin,
  `CITY` text COLLATE utf8_bin,
  `CUSTOMER` text COLLATE utf8_bin,
  `CUSTOMER_ADDR` text COLLATE utf8_bin,
  `BID_USER` text COLLATE utf8_bin,
  `LINKNAME` text COLLATE utf8_bin,
  `LINKPHONE` text COLLATE utf8_bin,
  `BID_DATE` date DEFAULT NULL,
  `CONTRACT_AMOUNT` double DEFAULT NULL,
  `UUID` text COLLATE utf8_bin,
  `T_VERSION` text COLLATE utf8_bin,
  `G_VERSION` int(11) DEFAULT NULL,
  `SIGN_DATE` date DEFAULT NULL,
  `PROJ_CATEGORY_ID` text COLLATE utf8_bin,
  `PROJ_GENRE_ID` text COLLATE utf8_bin,
  `POTENTIAL_PM` text COLLATE utf8_bin,
  `SRC_ID` text COLLATE utf8_bin,
  `LEVEL_STATUS` text COLLATE utf8_bin,
  `TEAM_STATUS` text COLLATE utf8_bin,
  `TRAIN_NUM` text COLLATE utf8_bin,
  `FORMATION_NUM` text COLLATE utf8_bin,
  `FIRST_DELIV_DATE` date DEFAULT NULL,
  `LAST_DELIV_DATE` date DEFAULT NULL,
  `SHORT_NAME` text COLLATE utf8_bin,
  `NOTICE_CODE` text COLLATE utf8_bin,
  `PROJ_SCORE` text COLLATE utf8_bin,
  `FOREX_AMOUNT` double DEFAULT NULL,
  `SCIENTIFIC_CODE` text COLLATE utf8_bin,
  `MONTH_PLAN_STATUS` text COLLATE utf8_bin,
  `NOTICE_EMAIL` text COLLATE utf8_bin,
  `TRAIN_TYPE` text COLLATE utf8_bin,
  `PLAN_STATUS` text COLLATE utf8_bin,
  `MATERIAL_BUDGET_STATUS` text COLLATE utf8_bin,
  `BUILD_YEAR` text COLLATE utf8_bin,
  `EAS_FLAG` text COLLATE utf8_bin,
  `PERFORMANCE_STATUS` text COLLATE utf8_bin,
  `LOCATION_NAME` text COLLATE utf8_bin,
  `LOCATION_PARENT_NAME` text COLLATE utf8_bin,
  `PROJ_CATEGORY_NAME` text COLLATE utf8_bin,
  `PROJ_GENRE_NAME` text COLLATE utf8_bin,
  `POTENTIAL_PM_NAME` text COLLATE utf8_bin,
  `FID_2` text COLLATE utf8_bin,
  `FCREATORID_2` text COLLATE utf8_bin,
  `FNAME_L2_2` text COLLATE utf8_bin,
  `FINTERNALCUSTOMERTYPE` int(11) DEFAULT NULL,
  `FID_1` text COLLATE utf8_bin,
  `FCREATORID_1` text COLLATE utf8_bin,
  `FNAME_L2_1` text COLLATE utf8_bin,
  `FID_3` text COLLATE utf8_bin,
  `FIDNUM` text COLLATE utf8_bin,
  `FNAME_L2_3` text COLLATE utf8_bin,
  `FPROJECTID` text COLLATE utf8_bin,
  `FTRACKNUMBERID` text COLLATE utf8_bin,
  `FSEQ` int(11) DEFAULT NULL,
  `FNUMBER_1` text COLLATE utf8_bin,
  `FDESCRIPTION_L2_1` text COLLATE utf8_bin,
  `FID_5` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_eas_price_define_abc_analysis definition

CREATE TABLE `dm_eas_price_define_abc_analysis` (
  `materialID` longtext COLLATE utf8_bin COMMENT '物料内码',
  `materialName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '物料名称',
  `materialNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `materialStandards` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料规格',
  `pricedAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '已定价金额',
  `pricedAmountSum` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '累计定价金额',
  `pricedAmountRate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '累计占比',
  `year` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年度',
  `abcType` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ABC分类',
  `priceGroup` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格组'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_定价单_ABC分析模型';


-- zj_data.dm_eas_pricingpolicybill definition

CREATE TABLE `dm_eas_pricingpolicybill` (
  `number` longtext COLLATE utf8_bin COMMENT '定价单单据编号',
  `policyBillNumber` longtext COLLATE utf8_bin COMMENT '定价单号',
  `baseStatus` int(11) DEFAULT NULL COMMENT '定价单状态',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `auditTime` date DEFAULT NULL COMMENT '审核时间',
  `sourceBillNumber` longtext COLLATE utf8_bin COMMENT '来源单据编号',
  `pricingBillType` int(11) DEFAULT NULL COMMENT '定价单类型',
  `planQty` int(11) DEFAULT NULL COMMENT '订货数量',
  `purPrice` decimal(10,0) DEFAULT NULL COMMENT '单价_含税_原币',
  `priceingWay` longtext COLLATE utf8_bin COMMENT '定价方式',
  `taxRate` decimal(10,0) DEFAULT NULL COMMENT '税率',
  `exchangeRate` decimal(10,0) DEFAULT NULL COMMENT '汇率',
  `pricingUser` longtext COLLATE utf8_bin COMMENT '价格员名称',
  `pricingGroup` longtext COLLATE utf8_bin COMMENT '价格组名称',
  `currency` longtext COLLATE utf8_bin COMMENT '币种',
  `isUpdateByPricingStore` int(11) DEFAULT NULL COMMENT '已按价格库更新',
  `lastUpdater` longtext COLLATE utf8_bin COMMENT '最后修改者',
  `lastUpdaterGroup` longtext COLLATE utf8_bin COMMENT '最后修改者价格组',
  `source` longtext COLLATE utf8_bin COMMENT '定价单来源',
  `projectID` longtext COLLATE utf8_bin COMMENT 'ProjectID',
  `supplieraID` longtext COLLATE utf8_bin COMMENT 'SupplieraID',
  `materialID` longtext COLLATE utf8_bin COMMENT 'MaterialID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_定价单';


-- zj_data.dm_eas_pricingpolicybill_1 definition

CREATE TABLE `dm_eas_pricingpolicybill_1` (
  `number` longtext COLLATE utf8_bin COMMENT '定价单单据编号',
  `policyBillNumber` longtext COLLATE utf8_bin COMMENT '定价单号',
  `baseStatus` longtext COLLATE utf8_bin,
  `createTime` longtext COLLATE utf8_bin,
  `auditTime` longtext COLLATE utf8_bin,
  `sourceBillNumber` longtext COLLATE utf8_bin COMMENT '来源单据编号',
  `pricingBillType` longtext COLLATE utf8_bin,
  `planQty` longtext COLLATE utf8_bin,
  `purPrice` longtext COLLATE utf8_bin,
  `priceingWay` longtext COLLATE utf8_bin COMMENT '定价方式',
  `taxRate` longtext COLLATE utf8_bin,
  `exchangeRate` longtext COLLATE utf8_bin,
  `pricingUser` longtext COLLATE utf8_bin COMMENT '价格员名称',
  `pricingGroup` longtext COLLATE utf8_bin COMMENT '价格组名称',
  `currency` longtext COLLATE utf8_bin COMMENT '币种',
  `isUpdateByPricingStore` longtext COLLATE utf8_bin,
  `lastUpdater` longtext COLLATE utf8_bin COMMENT '最后修改者',
  `lastUpdaterGroup` longtext COLLATE utf8_bin COMMENT '最后修改者价格组',
  `source` longtext COLLATE utf8_bin COMMENT '定价单来源',
  `projectID` longtext COLLATE utf8_bin COMMENT 'ProjectID',
  `supplieraID` longtext COLLATE utf8_bin COMMENT 'SupplieraID',
  `materialID` longtext COLLATE utf8_bin COMMENT 'MaterialID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_定价单_最终结果_1';


-- zj_data.dm_eas_project_funds_request definition

CREATE TABLE `dm_eas_project_funds_request` (
  `fcompany` longtext COLLATE utf8_bin COMMENT '公司',
  `fincomeproject` longtext COLLATE utf8_bin COMMENT '收入项目',
  `fstardate` date DEFAULT NULL COMMENT '开始时间',
  `fenddate` date DEFAULT NULL COMMENT '结束时间',
  `fvoucher` longtext COLLATE utf8_bin COMMENT '凭证号',
  `fmoney` longtext COLLATE utf8_bin COMMENT '金额',
  `fcontent` longtext COLLATE utf8_bin COMMENT '回款内容',
  `fcompanybillno` longtext COLLATE utf8_bin COMMENT '公司编码',
  `ffincomeprojectbillno` longtext COLLATE utf8_bin COMMENT '收入项目编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_project_funds_request_项目回款情况';


-- zj_data.dm_eas_property_tax definition

CREATE TABLE `dm_eas_property_tax` (
  `fchangedate` datetime DEFAULT NULL COMMENT '变更日期',
  `fvouchernumber` longtext COLLATE utf8_bin COMMENT '变更单凭证',
  `assetnumber` longtext COLLATE utf8_bin COMMENT '资产编码',
  `assetname` longtext COLLATE utf8_bin COMMENT '资产名称',
  `assettype` longtext COLLATE utf8_bin COMMENT '资产类别',
  `addressname` longtext COLLATE utf8_bin COMMENT '存放地点',
  `changetype` longtext COLLATE utf8_bin COMMENT '取数类型',
  `changemode` longtext COLLATE utf8_bin COMMENT '变更类型',
  `fassetvalue` longtext COLLATE utf8_bin COMMENT '资产原值',
  `toriginchg` longtext COLLATE utf8_bin COMMENT '原值变动',
  `ffiaccountdate` datetime DEFAULT NULL COMMENT '财务入账日期',
  `cardvoucher` longtext COLLATE utf8_bin COMMENT '卡片凭证号',
  `fbizdate` datetime DEFAULT NULL COMMENT '卡片业务日期',
  `bizbillno` longtext COLLATE utf8_bin COMMENT '业务单号',
  `companynum` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司编码',
  `companyname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司名称',
  `yeartax` longtext COLLATE utf8_bin COMMENT '计税年度'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='房产税';


-- zj_data.dm_eas_purchaseperson definition

CREATE TABLE `dm_eas_purchaseperson` (
  `FID` longtext COLLATE utf8_bin COMMENT 'FID',
  `FNAME_L1` longtext COLLATE utf8_bin COMMENT 'FNAME_L1',
  `FDESCRIPTION_L2` longtext COLLATE utf8_bin COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` longtext COLLATE utf8_bin COMMENT 'FDESCRIPTION_L3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_PurchasePerson';


-- zj_data.dm_eas_receivable_accounts_age_summary definition

CREATE TABLE `dm_eas_receivable_accounts_age_summary` (
  `companyname` longtext COLLATE utf8_bin COMMENT 'companyname',
  `companynumber` longtext COLLATE utf8_bin COMMENT 'companynumber',
  `customname` longtext COLLATE utf8_bin COMMENT 'customname',
  `customnumber` longtext COLLATE utf8_bin COMMENT 'customnumber',
  `srxmnumber` longtext COLLATE utf8_bin COMMENT 'srxmnumber',
  `srxmname` longtext COLLATE utf8_bin COMMENT 'srxmname',
  `bizdate` datetime DEFAULT NULL COMMENT 'bizdate',
  `planamount` longtext COLLATE utf8_bin COMMENT 'planamount',
  `billamount` longtext COLLATE utf8_bin COMMENT 'billamount',
  `billnumber` longtext COLLATE utf8_bin COMMENT 'billnumber',
  `kxxznumber` longtext COLLATE utf8_bin COMMENT 'kxxznumber',
  `kxxzname` longtext COLLATE utf8_bin COMMENT 'kxxzname'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='应收账款账龄汇总表';


-- zj_data.dm_eas_return_document_statistics definition

CREATE TABLE `dm_eas_return_document_statistics` (
  `fcompany` longtext COLLATE utf8_bin COMMENT 'fcompany',
  `ftype` longtext COLLATE utf8_bin COMMENT 'ftype',
  `fname` longtext COLLATE utf8_bin COMMENT '申请人',
  `fdpt` longtext COLLATE utf8_bin COMMENT 'fdpt',
  `fcompanynumber` longtext COLLATE utf8_bin COMMENT 'fcompanynumber',
  `fnamenumber` longtext COLLATE utf8_bin COMMENT 'fnamenumber',
  `fdptnumber` longtext COLLATE utf8_bin COMMENT 'fdptnumber',
  `fsendratio` longtext COLLATE utf8_bin COMMENT 'fsendratio',
  `freturnrate` longtext COLLATE utf8_bin COMMENT 'freturnrate',
  `freturnnotsub` longtext COLLATE utf8_bin COMMENT 'freturnnotsub'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_退回单据统计表';


-- zj_data.dm_eas_returned_bill_detail definition

CREATE TABLE `dm_eas_returned_bill_detail` (
  `fcompany` longtext COLLATE utf8_bin COMMENT '公司',
  `fnumber` longtext COLLATE utf8_bin COMMENT '单据编号',
  `ftype` longtext COLLATE utf8_bin COMMENT '单据类型',
  `famount` longtext COLLATE utf8_bin COMMENT '金额',
  `fname` longtext COLLATE utf8_bin COMMENT '申请人',
  `fdpt` longtext COLLATE utf8_bin COMMENT '申请部门',
  `ftime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '开始退回时间',
  `fendtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束退回时间',
  `fauditusername` longtext COLLATE utf8_bin COMMENT '退回人',
  `fauditusernum` longtext COLLATE utf8_bin COMMENT 'fauditusernum',
  `exeusername` longtext COLLATE utf8_bin COMMENT 'exeusername',
  `exeuser` longtext COLLATE utf8_bin COMMENT 'exeuser',
  `factdefname` longtext COLLATE utf8_bin COMMENT 'factdefname',
  `fcomletetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'fcomletetime',
  `fendcomletetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'fendcomletetime',
  `fstate` longtext COLLATE utf8_bin COMMENT 'fstate',
  `fbizdate` date DEFAULT NULL COMMENT '业务日期',
  `fendbizdate` date DEFAULT NULL COMMENT 'fendbizdate',
  `rn` longtext COLLATE utf8_bin COMMENT 'rn',
  `fcompanyumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fcompanyumber',
  `fnamenumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fnamenumber',
  `fdptnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fdptnumber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='被退回单据明细表';


-- zj_data.dm_eas_returned_unsubmitted_documents definition

CREATE TABLE `dm_eas_returned_unsubmitted_documents` (
  `ftype` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '应付单',
  `fcreatedtime` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '活动实例创建日期 退回时间',
  `companyname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据公司',
  `companynumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据公司',
  `fbizdate` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '日期my',
  `billnumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `zxpersionid` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '执行人',
  `zxpersionname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '执行人',
  `zxpersionnumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '执行人',
  `sqpersonid` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `sqpersonname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `sqpersonnumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `billnoorg` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '单据申请部门名称',
  `billnoorgnumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门编码',
  `famount` longtext COLLATE utf8_bin COMMENT '金额',
  `fcreatorid` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人 退回人',
  `creatornumber` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人 退回人',
  `creatorname` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人 退回人',
  `starttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '退回时间start',
  `endttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '退回时间end',
  `rn` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT '行数',
  `fstate` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `fispass` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT '通过'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_returned_unsubmitted_documents';


-- zj_data.dm_eas_schedue_pay_detail_plan definition

CREATE TABLE `dm_eas_schedue_pay_detail_plan` (
  `fcompany` longtext COLLATE utf8_bin COMMENT 'fcompany',
  `companynumber` longtext COLLATE utf8_bin COMMENT 'companynumber',
  `plannumber` longtext COLLATE utf8_bin COMMENT 'plannumber',
  `fscheduledate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'fscheduledate',
  `fbizdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'fbizdate',
  `yfdnumber` longtext COLLATE utf8_bin COMMENT 'yfdnumber',
  `kjname` longtext COLLATE utf8_bin COMMENT 'kjname',
  `kjnumber` longtext COLLATE utf8_bin COMMENT 'kjnumber',
  `auditorname` longtext COLLATE utf8_bin COMMENT 'auditorname',
  `auditornumber` longtext COLLATE utf8_bin COMMENT 'auditornumber',
  `acttype` longtext COLLATE utf8_bin COMMENT 'acttype',
  `asstnumber` longtext COLLATE utf8_bin COMMENT 'asstnumber',
  `asstname` longtext COLLATE utf8_bin COMMENT 'asstname',
  `famount` double(12,2) DEFAULT NULL COMMENT 'famount',
  `paynumber` longtext COLLATE utf8_bin COMMENT 'paynumber',
  `fcreatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'fcreatetime',
  `setname` longtext COLLATE utf8_bin COMMENT 'setname',
  `actname` longtext COLLATE utf8_bin COMMENT 'actname',
  `paystate` longtext COLLATE utf8_bin COMMENT 'paystate',
  `bankstate` longtext COLLATE utf8_bin COMMENT 'bankstate',
  `logtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'logtime',
  `dealtime` double(9,2) DEFAULT NULL COMMENT 'dealtime',
  `iscurmonth` longtext COLLATE utf8_bin COMMENT 'iscurmonth',
  `rn` longtext COLLATE utf8_bin COMMENT 'rn'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='排程付款明细表-付款计划';


-- zj_data.dm_eas_segmented_time_efficiency_statistics definition

CREATE TABLE `dm_eas_segmented_time_efficiency_statistics` (
  `fbillno` longtext COLLATE utf8_bin COMMENT 'fbillno',
  `fbizdate` date DEFAULT NULL COMMENT 'fbizdate',
  `fexname` longtext COLLATE utf8_bin COMMENT 'fexname',
  `fexnumber` longtext COLLATE utf8_bin COMMENT 'fexnumber',
  `fcompanyname` longtext COLLATE utf8_bin COMMENT 'fcompanyname',
  `fcompanynum` longtext COLLATE utf8_bin COMMENT 'fcompanynum',
  `fdeptname` longtext COLLATE utf8_bin COMMENT 'fdeptname',
  `fdeptnumber` longtext COLLATE utf8_bin COMMENT 'fdeptnumber',
  `factcreatetime` datetime DEFAULT NULL COMMENT 'factcreatetime',
  `ffinishtime` datetime DEFAULT NULL COMMENT 'ffinishtime',
  `factdefname` longtext COLLATE utf8_bin COMMENT 'factdefname',
  `fbilltype` longtext COLLATE utf8_bin COMMENT '单据类型',
  `ftype` longtext COLLATE utf8_bin COMMENT '取值类型',
  `fcompanynum2` longtext COLLATE utf8_bin COMMENT 'fcompanynum2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_分段时效统计表';


-- zj_data.dm_eas_share_approve_overdue_bill_detail definition

CREATE TABLE `dm_eas_share_approve_overdue_bill_detail` (
  `fcompany` longtext COLLATE utf8_bin COMMENT 'fcompany',
  `companynumber` longtext COLLATE utf8_bin COMMENT 'companynumber',
  `fnumber` longtext COLLATE utf8_bin COMMENT 'fnumber',
  `ftype` longtext COLLATE utf8_bin COMMENT 'ftype',
  `famount` longtext COLLATE utf8_bin COMMENT 'famount',
  `fname` longtext COLLATE utf8_bin COMMENT 'fname',
  `usernumber` longtext COLLATE utf8_bin COMMENT 'usernumber',
  `fdpt` longtext COLLATE utf8_bin COMMENT 'fdpt',
  `fdptnumber` longtext COLLATE utf8_bin COMMENT 'fdptnumber',
  `fnodeapprovernumber` longtext COLLATE utf8_bin COMMENT 'fnodeapprovernumber',
  `fnodeapprovername` longtext COLLATE utf8_bin COMMENT 'fnodeapprovername',
  `fbusinessgroupnumber` longtext COLLATE utf8_bin COMMENT 'fbusinessgroupnumber',
  `fbusinessgroupname` longtext COLLATE utf8_bin COMMENT 'fbusinessgroupname',
  `fremainingtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'fremainingtime',
  `dealstate` longtext COLLATE utf8_bin COMMENT 'dealstate',
  `rn` longtext COLLATE utf8_bin COMMENT 'rn'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='共享审批超期单据明细';


-- zj_data.dm_eas_share_approve_overdue_detail_new definition

CREATE TABLE `dm_eas_share_approve_overdue_detail_new` (
  `fcompany` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fcompany',
  `companynumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'companynumber',
  `fnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fnumber',
  `ftype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ftype',
  `famount` double(9,2) DEFAULT NULL COMMENT 'famount',
  `fname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fname',
  `usernumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'usernumber',
  `fdpt` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fdpt',
  `fdptnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fdptnumber',
  `fnodeapprovernumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fnodeapprovernumber',
  `fnodeapprovername` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fnodeapprovername',
  `fbusinessgroupnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fbusinessgroupnumber',
  `fbusinessgroupname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fbusinessgroupname',
  `fremainingtime` double(9,2) DEFAULT NULL COMMENT 'fremainingtime',
  `dealstate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'dealstate',
  `rn` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'rn'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='共享审批超期单据明细new';


-- zj_data.dm_eas_share_bill_statistic_reimbursed definition

CREATE TABLE `dm_eas_share_bill_statistic_reimbursed` (
  `fnumber` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'fnumber',
  `ftype` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'ftype',
  `fstartdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'fstartdate',
  `fenddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'fenddate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='共享系统单据统计表已报销';


-- zj_data.dm_eas_share_examine_status definition

CREATE TABLE `dm_eas_share_examine_status` (
  `BillCount` longtext COLLATE utf8_bin COMMENT 'BillCount',
  `startTime` longtext COLLATE utf8_bin COMMENT '开始时间',
  `endTime` longtext COLLATE utf8_bin COMMENT '结束时间',
  `zbname` longtext COLLATE utf8_bin COMMENT 'zbname',
  `zbnumber` longtext COLLATE utf8_bin COMMENT 'zbnumber',
  `kjname` longtext COLLATE utf8_bin COMMENT 'kjname',
  `persionname` longtext COLLATE utf8_bin COMMENT 'persionname',
  `tsuserfid` longtext COLLATE utf8_bin COMMENT 'tsuserfid',
  `prev_BillCount` longtext COLLATE utf8_bin COMMENT '本月天数',
  `prev2_BillCount` longtext COLLATE utf8_bin COMMENT '上个月天数',
  `LoadFactor` longtext COLLATE utf8_bin COMMENT '任务负荷系数-本月',
  `LoadFactorLastMonth` longtext COLLATE utf8_bin COMMENT '任务负荷系数-上月'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='共享人员审核状态';


-- zj_data.dm_eas_shared_second_review_return_statistics definition

CREATE TABLE `dm_eas_shared_second_review_return_statistics` (
  `passusernumber` longtext COLLATE utf8_bin COMMENT 'passusernumber',
  `passusername` longtext COLLATE utf8_bin COMMENT 'passusername',
  `yishenpasscount` longtext COLLATE utf8_bin COMMENT 'yishenpasscount',
  `ershenunpass` longtext COLLATE utf8_bin COMMENT 'ershenunpass',
  `gxgroupname` longtext COLLATE utf8_bin COMMENT 'gxgroupname',
  `unpassusernumber` longtext COLLATE utf8_bin COMMENT 'unpassusernumber',
  `unpassusername` longtext COLLATE utf8_bin COMMENT 'unpassusername',
  `starttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'starttime',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'endtime'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_共享二审退回单据统计表';


-- zj_data.dm_eas_shared_second_review_return_statistics_one definition

CREATE TABLE `dm_eas_shared_second_review_return_statistics_one` (
  `passusernumber` longtext COLLATE utf8_bin COMMENT 'passusernumber',
  `passusername` longtext COLLATE utf8_bin COMMENT 'passusername',
  `yishenpasscount` longtext COLLATE utf8_bin COMMENT 'yishenpasscount',
  `ershenunpass` longtext COLLATE utf8_bin COMMENT 'ershenunpass',
  `gxgroupname` longtext COLLATE utf8_bin COMMENT 'gxgroupname',
  `starttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'starttime',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'endtime'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_共享二审退回单据统计表';


-- zj_data.dm_eas_srlr definition

CREATE TABLE `dm_eas_srlr` (
  `GS` varchar(382) COLLATE utf8_bin NOT NULL COMMENT '公司',
  `YYSR` int(11) DEFAULT NULL COMMENT '营业收入',
  `YYCB` int(11) DEFAULT NULL COMMENT '营业成本',
  `JLR` int(11) DEFAULT NULL COMMENT '净利润',
  `GXSJ` date DEFAULT NULL COMMENT '更新时间',
  `ZQ` date DEFAULT NULL COMMENT '账期',
  `YLZD1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '预留字段1',
  `YLZD2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '预留字段2',
  PRIMARY KEY (`GS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_SRLR';


-- zj_data.dm_eas_supplier definition

CREATE TABLE `dm_eas_supplier` (
  `FNAME` longtext COLLATE utf8_bin COMMENT '供应商名称',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '供应商编码',
  `FADDRESS` longtext COLLATE utf8_bin COMMENT '地址',
  `FTAXREGISTERNO` longtext COLLATE utf8_bin COMMENT '税务登记号',
  `FUSEDSTATUS` longtext COLLATE utf8_bin COMMENT '状态 （1为核准，0为未核准）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_supplier';


-- zj_data.dm_eas_supplier_k definition

CREATE TABLE `dm_eas_supplier_k` (
  `FNAME_L2` longtext COLLATE utf8_bin COMMENT '供应商名称',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '供应商编码',
  `FADDRESS` longtext COLLATE utf8_bin COMMENT '地址',
  `FTAXREGISTERNO` longtext COLLATE utf8_bin COMMENT '税务登记号',
  `FUSEDSTATUS` int(11) DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_supplier_k';


-- zj_data.dm_eas_supplier_kr definition

CREATE TABLE `dm_eas_supplier_kr` (
  `FNAME_L2` longtext COLLATE utf8_bin COMMENT '供应商名称',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '供应商编码',
  `FADDRESS` longtext COLLATE utf8_bin COMMENT '地址',
  `FTAXREGISTERNO` longtext COLLATE utf8_bin COMMENT '税务登记号',
  `FUSEDSTATUS` int(11) DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_supplier_kr';


-- zj_data.dm_eas_supplier_lxl definition

CREATE TABLE `dm_eas_supplier_lxl` (
  `FNAME` longtext COLLATE utf8_bin COMMENT '*供应商名称',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '*供应商编码',
  `FADDRESS` longtext COLLATE utf8_bin COMMENT '*地址',
  `FTAXREGISTERNO` longtext COLLATE utf8_bin COMMENT '*税务登记号',
  `FUSEDSTATUS` int(11) DEFAULT NULL COMMENT '*状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_supplier_lxl';


-- zj_data.dm_eas_supplier_zpl definition

CREATE TABLE `dm_eas_supplier_zpl` (
  `FNAME` longtext COLLATE utf8_bin COMMENT '供应商名称',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '供应商编码',
  `FADDRESS` longtext COLLATE utf8_bin COMMENT '地址',
  `FTAXREGISTERNO` longtext COLLATE utf8_bin COMMENT '税务登记号',
  `FUSEDSTATUS` int(11) DEFAULT NULL COMMENT '使用状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_supplier_zpl';


-- zj_data.dm_eas_suppliertest definition

CREATE TABLE `dm_eas_suppliertest` (
  `FNAME` longtext COLLATE utf8_bin COMMENT '供应商名称',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '供应商编码',
  `FADDRESS` longtext COLLATE utf8_bin COMMENT '地址',
  `FTAXREGISTERNO` longtext COLLATE utf8_bin COMMENT '税务登记号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_supplierTEST';


-- zj_data.dm_eas_supplierwrz definition

CREATE TABLE `dm_eas_supplierwrz` (
  `FNAME_L2` longtext COLLATE utf8_bin COMMENT '供应商名字',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '供应商编码',
  `FADDRESS` longtext COLLATE utf8_bin COMMENT '地址',
  `FTAXREGISTERNO` longtext COLLATE utf8_bin COMMENT '税务登记号',
  `FUSEDSTATUS` int(11) DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_supplierwrz';


-- zj_data.dm_eas_supplychain definition

CREATE TABLE `dm_eas_supplychain` (
  `PURNUMBER` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '单据编号',
  `FBIZDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务日期',
  `BYNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务类型',
  `SPNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商编码',
  `SPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `ADNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组织编码',
  `FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组织名称',
  `PGNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组',
  `PANME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购员',
  `MNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `MNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名称',
  `MUNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计量单位',
  `FQTY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '订货数量',
  `AD1NUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请组织',
  `FDELIVERYDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '交货日期',
  `PJNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `TNNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='供应链追溯宽表';


-- zj_data.dm_eas_t_bc_evectionreqbill definition

CREATE TABLE `dm_eas_t_bc_evectionreqbill` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FBIZDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FBIZDATE',
  `FNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME',
  `FTOTALPEOPLE` int(11) DEFAULT '1' COMMENT 'FTOTALPEOPLE',
  `FINTENDINGDAYS` double(19,4) DEFAULT '0.0000' COMMENT 'FINTENDINGDAYS',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FHANDLERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHANDLERID',
  `FDESCRIPTION` varchar(600) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAUDITORID',
  `FSOURCEBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEFUNCTION` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEFUNCTION',
  `FAPPLIERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAPPLIERID',
  `FPOSITIONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPOSITIONID',
  `FTEL` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTEL',
  `FORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FORGUNITID',
  `FBIZREQDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBIZREQDATE',
  `FCAUSE` varchar(900) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCAUSE',
  `FPRIOR` int(11) DEFAULT '30' COMMENT 'FPRIOR',
  `FSTATE` int(11) DEFAULT '10' COMMENT 'FSTATE',
  `FAUDITDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAUDITDATE',
  `FBILLDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBILLDATE',
  `FBILLERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBILLERID',
  `FCOSTEDDEPTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTEDDEPTID',
  `FCOMPANYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANYID',
  `FSUPPORTEDOBJID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSUPPORTEDOBJID',
  `FCURRENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCURRENCYID',
  `FEXPENSETYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FEXPENSETYPEID',
  `FAMOUNT` double(19,4) DEFAULT '0.0000' COMMENT 'FAMOUNT',
  `FISNEEDLOAN` int(11) DEFAULT '0' COMMENT 'FISNEEDLOAN',
  `FISDYNCCHECK` int(11) DEFAULT '0' COMMENT 'FISDYNCCHECK',
  `FLOANBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLOANBILLID',
  `FBILLTYPECODE` int(11) DEFAULT '10' COMMENT 'FBILLTYPECODE',
  `FAMOUNTSENDEDBACK` double(19,4) DEFAULT '0.0000' COMMENT 'FAMOUNTSENDEDBACK',
  `FAMOUNTAPPROVED` double(19,4) DEFAULT '0.0000' COMMENT 'FAMOUNTAPPROVED',
  `FAMOUNTCOPY` double(19,4) DEFAULT '0.0000' COMMENT 'FAMOUNTCOPY',
  `FAMOUNTUSED` double(19,4) DEFAULT '0.0000' COMMENT 'FAMOUNTUSED',
  `FAMOUNTBALANCE` double(19,4) DEFAULT '0.0000' COMMENT 'FAMOUNTBALANCE',
  `FAMOUNTCONTROLTYPE` int(11) DEFAULT '10' COMMENT 'FAMOUNTCONTROLTYPE',
  `FAPPLIERCOMPANYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAPPLIERCOMPANYID',
  `FOPERATIONTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOPERATIONTYPEID',
  `FBUDGETDO` double(28,10) DEFAULT '0.0000000000' COMMENT 'FBUDGETDO',
  `FSOURCEBILLTYPE` int(11) DEFAULT NULL COMMENT 'FSOURCEBILLTYPE',
  `FOPENAREA` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOPENAREA',
  `FPAYERBANKSTR` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYERBANKSTR',
  `FCOLLECTIONACCOUNT` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOLLECTIONACCOUNT',
  `FPAYERNAME` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYERNAME',
  `FPAYERBANK` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYERBANK',
  `FPAYERACCOUNT` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYERACCOUNT',
  `FTRAVELTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRAVELTYPEID',
  `FAMOUNTSTRIKED` double(17,4) DEFAULT '0.0000' COMMENT 'FAMOUNTSTRIKED',
  `FAMOUNTNOTPAID` double(17,4) DEFAULT '0.0000' COMMENT 'FAMOUNTNOTPAID',
  `FAMOUNTPAID` double(17,4) DEFAULT '0.0000' COMMENT 'FAMOUNTPAID',
  `FIMAGESTATE` int(11) DEFAULT NULL COMMENT 'FIMAGESTATE',
  `FIMAGENO` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'FIMAGENO',
  `FPOSTADDRESS` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPOSTADDRESS',
  `FISREFPAPERPARK` int(11) DEFAULT NULL COMMENT 'FISREFPAPERPARK',
  `FBUDGETDESCRIPTION` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBUDGETDESCRIPTION',
  `FISOVERBUDGET` int(11) NOT NULL DEFAULT '0' COMMENT 'FISOVERBUDGET',
  `FISVOUCHERED` int(11) DEFAULT '0' COMMENT 'FISVOUCHERED',
  `FPCAVOUCHERED` int(11) DEFAULT '0' COMMENT 'FPCAVOUCHERED',
  `FAPPLIERUSER` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAPPLIERUSER',
  `FISCREATEPAYBILL` int(11) DEFAULT NULL COMMENT 'FISCREATEPAYBILL',
  `FDISAUDITOPTION` varchar(900) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDISAUDITOPTION',
  `FDISAUDITPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDISAUDITPERSONID',
  `FISDAPVOUCHERED` int(11) DEFAULT NULL COMMENT 'FISDAPVOUCHERED',
  `FPRINTCOUNT` int(11) DEFAULT NULL COMMENT 'FPRINTCOUNT',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_T_BC_EVECTIONREQBILL';


-- zj_data.dm_eas_t_bd_currency definition

CREATE TABLE `dm_eas_t_bd_currency` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FNUMBER` varchar(80) COLLATE utf8_bin NOT NULL COMMENT 'FNUMBER',
  `FNAME_L1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L3',
  `FISOCODE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FISOCODE',
  `FSIGN` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSIGN',
  `FBASEUNIT_L1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEUNIT_L1',
  `FBASEUNIT_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEUNIT_L2',
  `FBASEUNIT_L3` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEUNIT_L3',
  `FPRECISION` int(11) NOT NULL COMMENT 'FPRECISION',
  `FDESCRIPTION_L1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FCREATORID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FDELETEDSTATUS` int(11) DEFAULT '1' COMMENT 'FDELETEDSTATUS',
  `FSORTNUMBER` int(11) DEFAULT NULL COMMENT 'FSORTNUMBER',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_货币表';


-- zj_data.dm_eas_t_bd_material definition

CREATE TABLE `dm_eas_t_bd_material` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FCREATORID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FNAME_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L3',
  `FNUMBER` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'FNUMBER',
  `FDESCRIPTION_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FVERSION` int(11) DEFAULT NULL COMMENT 'FVERSION',
  `FLONGNUMBER` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLONGNUMBER',
  `FSHORTNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSHORTNAME',
  `FMODEL` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMODEL',
  `FBASEUNIT` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEUNIT',
  `FPRICEPRECISION` int(11) DEFAULT NULL COMMENT 'FPRICEPRECISION',
  `FHELPCODE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHELPCODE',
  `FBARCODE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBARCODE',
  `FPICTURENUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPICTURENUMBER',
  `FASSISTATTR` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSISTATTR',
  `FGROSSWEIGHT` double(28,10) DEFAULT NULL COMMENT 'FGROSSWEIGHT',
  `FNETWEIGHT` double(28,10) DEFAULT NULL COMMENT 'FNETWEIGHT',
  `FLENGTH` double(28,10) DEFAULT NULL COMMENT 'FLENGTH',
  `FWIDTH` double(28,10) DEFAULT NULL COMMENT 'FWIDTH',
  `FHEIGHT` double(28,10) DEFAULT NULL COMMENT 'FHEIGHT',
  `FVOLUME` double(28,10) DEFAULT NULL COMMENT 'FVOLUME',
  `FWEIGHTUNIT` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FWEIGHTUNIT',
  `FLENGTHUNIT` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLENGTHUNIT',
  `FVOLUMNUNIT` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FVOLUMNUNIT',
  `FMATERIALGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMATERIALGROUPID',
  `FEFFECTEDSTATUS` int(11) NOT NULL COMMENT 'FEFFECTEDSTATUS',
  `FALIAS` varchar(270) COLLATE utf8_bin DEFAULT NULL COMMENT 'FALIAS',
  `FFOREIGNNAME` varchar(270) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFOREIGNNAME',
  `FREGISTEREDMARK` varchar(270) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREGISTEREDMARK',
  `FWARRANTNUMBER` varchar(270) COLLATE utf8_bin DEFAULT NULL COMMENT 'FWARRANTNUMBER',
  `FSTATUS` int(11) DEFAULT NULL COMMENT 'FSTATUS',
  `FFREEZEORGUNIT` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFREEZEORGUNIT',
  `FADMINCUID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINCUID',
  `FASSISTUNIT` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSISTUNIT',
  `FSEQUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSEQUNITID',
  `FISWEIGHTED` int(11) NOT NULL DEFAULT '0' COMMENT 'FISWEIGHTED',
  `FISOUTSOURCEDPART` int(11) NOT NULL DEFAULT '0' COMMENT 'FISOUTSOURCEDPART',
  `FUSEASSTATTRRELATION` int(11) NOT NULL DEFAULT '0' COMMENT 'FUSEASSTATTRRELATION',
  `FFOURNUMBERORI` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFOURNUMBERORI',
  `CFATTRIBUTECODE` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFATTRIBUTECODE',
  `CFCONVERSION` double(28,10) DEFAULT NULL COMMENT 'CFCONVERSION',
  `CFOLDNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFOLDNUMBER',
  `CFMATERIALQUALITY` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMATERIALQUALITY',
  `FEQUIPPROPERTY` int(11) NOT NULL DEFAULT '0' COMMENT 'FEQUIPPROPERTY',
  `CFTECHGRADE` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTECHGRADE',
  `CFITEM_TYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFITEM_TYPE',
  `CFSYMBOL` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSYMBOL',
  `CFQUALITY` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFQUALITY',
  `CFREMARK` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFREMARK',
  `FOLDNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOLDNUMBER',
  `FMATERIALTRADEMARK` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMATERIALTRADEMARK',
  `FSYMBOL` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSYMBOL',
  `FTECHGRADE` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTECHGRADE',
  `FCZ` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCZ',
  `FPDMCLASS` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPDMCLASS',
  `FPDMSTANDARD` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPDMSTANDARD',
  `CFISLARGEMATERIAL` int(11) DEFAULT NULL COMMENT 'CFISLARGEMATERIAL',
  `CFISFASTENER` int(11) DEFAULT NULL COMMENT 'CFISFASTENER',
  `CFCHKFASTENER` int(11) DEFAULT NULL COMMENT 'CFCHKFASTENER',
  `FISSYNOCHRONOUS` int(11) DEFAULT '1' COMMENT 'FISSYNOCHRONOUS',
  `CFCURRENTSERIALNUM` int(11) DEFAULT NULL COMMENT 'CFCURRENTSERIALNUM',
  `CFMERGEMATERIALID` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMERGEMATERIALID',
  `FNUMBER4IDX` varchar(240) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER4IDX',
  `FNAME4IDX` varchar(765) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME4IDX',
  `FISGOODS` int(11) DEFAULT '0' COMMENT 'FISGOODS',
  `FNAMEPINYIN` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAMEPINYIN',
  `FNAMESHORTPINYIN` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAMESHORTPINYIN',
  `CFMVERSION` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMVERSION',
  `FISSENDTOESB` int(11) DEFAULT '0' COMMENT 'FISSENDTOESB',
  `CFPRONAME` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPRONAME',
  `CFPROMODE` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROMODE',
  `CFPROUPTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFPROUPTIME',
  `CFPROUPUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROUPUSERID',
  `CFPDATE` varchar(96) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPDATE',
  `CFLINELENGTH` varchar(96) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFLINELENGTH',
  `CFITEMTYPE` varchar(96) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFITEMTYPE',
  `CFLABELCOLOR` varchar(96) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFLABELCOLOR',
  `CFCABLESUM` varchar(96) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCABLESUM',
  `CFHARNESSNUM` varchar(96) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFHARNESSNUM',
  `CFHARNESSNO` varchar(96) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFHARNESSNO',
  `CFTRUNKINGINFO` varchar(96) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTRUNKINGINFO',
  `CFLINETYPE` varchar(96) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFLINETYPE',
  `CFMATERID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMATERID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_物料表';


-- zj_data.dm_eas_t_bd_person definition

CREATE TABLE `dm_eas_t_bd_person` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FIDNUM` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FIDNUM',
  `FNAME_L1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L3',
  `FNUMBER` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'FNUMBER',
  `FDESCRIPTION_L1` varchar(225) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(225) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(225) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FGENDER` int(11) DEFAULT NULL COMMENT 'FGENDER',
  `FBIRTHDAY` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FBIRTHDAY',
  `FEMAIL` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FEMAIL',
  `FADDRESS_L1` varchar(225) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADDRESS_L1',
  `FADDRESS_L2` varchar(225) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADDRESS_L2',
  `FADDRESS_L3` varchar(225) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADDRESS_L3',
  `FSTATE` int(11) DEFAULT NULL COMMENT 'FSTATE',
  `FHOMEPHONE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHOMEPHONE',
  `FOFFICEPHONE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOFFICEPHONE',
  `FCELL` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCELL',
  `FBACKUPCELL` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBACKUPCELL',
  `FBACKUPEMAIL` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBACKUPEMAIL',
  `FRTX` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FRTX',
  `FIDCARDNO` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FIDCARDNO',
  `FIDCARDADRESS_L1` varchar(180) COLLATE utf8_bin DEFAULT NULL COMMENT 'FIDCARDADRESS_L1',
  `FIDCARDADRESS_L2` varchar(180) COLLATE utf8_bin DEFAULT NULL COMMENT 'FIDCARDADRESS_L2',
  `FIDCARDADRESS_L3` varchar(180) COLLATE utf8_bin DEFAULT NULL COMMENT 'FIDCARDADRESS_L3',
  `FPASSPORTNO` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPASSPORTNO',
  `FOLDNAME_L1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOLDNAME_L1',
  `FOLDNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOLDNAME_L2',
  `FOLDNAME_L3` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOLDNAME_L3',
  `FHEIGHT` int(11) DEFAULT NULL COMMENT 'FHEIGHT',
  `FNATIVEPLACE_L1` varchar(180) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNATIVEPLACE_L1',
  `FNATIVEPLACE_L2` varchar(180) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNATIVEPLACE_L2',
  `FNATIVEPLACE_L3` varchar(180) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNATIVEPLACE_L3',
  `FBLOODTYPE` int(11) DEFAULT NULL COMMENT 'FBLOODTYPE',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FKACLASSFICATIONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FKACLASSFICATIONID',
  `FWEDID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FWEDID',
  `FHEALTHID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHEALTHID',
  `FPOLITICALFACEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPOLITICALFACEID',
  `FSTANDINGID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSTANDINGID',
  `FFOLKID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFOLKID',
  `FBIRTHID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBIRTHID',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FHRORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHRORGUNITID',
  `FRESIDENCEPLACE` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FRESIDENCEPLACE',
  `FLENOFACTUALSERVICE` int(11) DEFAULT NULL COMMENT 'FLENOFACTUALSERVICE',
  `FEMPLOYEETYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FEMPLOYEETYPEID',
  `FHIGHESTTECHPOSTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHIGHESTTECHPOSTID',
  `FHIGHESTDEGREEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHIGHESTDEGREEID',
  `FEMPLOYEECLASSIFYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FEMPLOYEECLASSIFYID',
  `FDELETEDSTATUS` int(11) NOT NULL DEFAULT '1' COMMENT 'FDELETEDSTATUS',
  `FLCMRATIONLEVELID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLCMRATIONLEVELID',
  `FNATIONALITYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNATIONALITYID',
  `FCHECKSTATE` int(11) NOT NULL DEFAULT '0' COMMENT 'FCHECKSTATE',
  `FINDEX` int(11) DEFAULT '0' COMMENT 'FINDEX',
  `FEMPLOYTECHPOSTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FEMPLOYTECHPOSTID',
  `FHIGHESTSUBDEGREEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHIGHESTSUBDEGREEID',
  `FZDY1` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY1',
  `FZDY2` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY2',
  `FZDY3` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY3',
  `FZDY4` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY4',
  `FZDY5` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY5',
  `FZDY6` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY6',
  `FZDY7` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY7',
  `FZDY8` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY8',
  `FZDY9` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FZDY9',
  `FZDY10` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FZDY10',
  `FZDY11` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FZDY11',
  `FZDY12` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FZDY12',
  `FZDY13` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FZDY13',
  `FZDY14` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FZDY14',
  `FZDY15` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY15',
  `FZDY16` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY16',
  `FZDY17` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY17',
  `FZDY18` double(21,8) DEFAULT '0.00000000' COMMENT 'FZDY18',
  `FZDY19` double(21,8) DEFAULT '0.00000000' COMMENT 'FZDY19',
  `FZDY20` int(11) DEFAULT '0' COMMENT 'FZDY20',
  `FZDY21` int(11) DEFAULT '0' COMMENT 'FZDY21',
  `FZDY22` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY22',
  `FZDY23` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY23',
  `FZDY24` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY24',
  `FZDY25` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZDY25',
  `FZDY26` int(11) DEFAULT '0' COMMENT 'FZDY26',
  `FDOORLOCUS` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDOORLOCUS',
  `FDOORENROLORGAN` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDOORENROLORGAN',
  `FCOMPANYCODE` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANYCODE',
  `FCOMPANYNAME` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANYNAME',
  `FBRANCHCODE` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBRANCHCODE',
  `FBRANCHNAME` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBRANCHNAME',
  `FBRANCHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBRANCHTIME',
  `FPOSTCODE` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPOSTCODE',
  `FPOSTNAME` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPOSTNAME',
  `FPOSTTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FPOSTTIME',
  `FENROLLMENTTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FENROLLMENTTIME',
  `FHICKTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FHICKTIME',
  `FRETURNTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FRETURNTIME',
  `FRETIRETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FRETIRETIME',
  `FPAGE` int(11) DEFAULT NULL COMMENT 'FPAGE',
  `FREMARK` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREMARK',
  `FISDELINE` int(11) DEFAULT NULL COMMENT 'FISDELINE',
  `FISMONITOR` int(11) DEFAULT NULL COMMENT 'FISMONITOR',
  `FISWORKSEND` int(11) DEFAULT NULL COMMENT 'FISWORKSEND',
  `FISSEND` int(11) DEFAULT NULL COMMENT 'FISSEND',
  `FISTRANSFER` int(11) DEFAULT NULL COMMENT 'FISTRANSFER',
  `FINDUSTRYTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FINDUSTRYTYPEID',
  `FDEGREESPECIALTYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDEGREESPECIALTYID',
  `FSTUDYSPECIALTYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSTUDYSPECIALTYID',
  `FSAFETYID` varchar(192) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSAFETYID',
  `FMEDICAREID` varchar(192) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMEDICAREID',
  `FCOMEFUGLETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCOMEFUGLETIME',
  `FCOLLOCATEMODEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOLLOCATEMODEID',
  `FHOMEPLACEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHOMEPLACEID',
  `FNATIVEPLACE1ID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNATIVEPLACE1ID',
  `FUPMOSTDEGREEID` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FUPMOSTDEGREEID',
  `FFULLNAMEPINGYIN` varchar(750) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFULLNAMEPINGYIN',
  `FSIMPLENAMEPINGYIN` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSIMPLENAMEPINGYIN',
  `FISSTANDBY` int(11) DEFAULT '0' COMMENT 'FISSTANDBY',
  `FISSTANDBYCADRE` int(11) DEFAULT '0' COMMENT 'FISSTANDBYCADRE',
  `FHIGHESTCOMPETENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHIGHESTCOMPETENCYID',
  `CFFDEGREESPECIALTY` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFDEGREESPECIALTY',
  `CFFPAGE` int(11) DEFAULT NULL COMMENT 'CFFPAGE',
  `CFFSTUDYSPECIALTYI` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFSTUDYSPECIALTYI',
  `CFFDOORENROLORGAN` varchar(96) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFDOORENROLORGAN',
  `CFFPOSTTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFFPOSTTIME',
  `CFFISSEND` int(11) DEFAULT NULL COMMENT 'CFFISSEND',
  `CFFISWORKSEND` int(11) DEFAULT NULL COMMENT 'CFFISWORKSEND',
  `CFFBRANCHNAME` varchar(384) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFBRANCHNAME',
  `CFFISTRANSFER` int(11) DEFAULT NULL COMMENT 'CFFISTRANSFER',
  `CFFBRANCHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFFBRANCHTIME',
  `CFFHOMEPLACEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFHOMEPLACEID',
  `CFFINDUSTRYTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFINDUSTRYTYPEID',
  `CFFCOMEFUGLETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFFCOMEFUGLETIME',
  `CFXUEWEIID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFXUEWEIID',
  `CFFREMARK` varchar(384) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFREMARK',
  `CFFISMONITOR` int(11) DEFAULT NULL COMMENT 'CFFISMONITOR',
  `CFFSAFETYID` varchar(192) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFSAFETYID',
  `CFFCOLLOCATEMODEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFCOLLOCATEMODEID',
  `CFFRETIRETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFFRETIRETIME',
  `CFFBRANCHCODE` varchar(384) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFBRANCHCODE',
  `CFFENROLLMENTTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFFENROLLMENTTIME',
  `CFFDOORLOCUS` varchar(192) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFDOORLOCUS',
  `CFFNATIVEPLACE1ID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFNATIVEPLACE1ID',
  `CFFISDELINE` int(11) DEFAULT NULL COMMENT 'CFFISDELINE',
  `CFFCOMPANYCODE` varchar(384) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFCOMPANYCODE',
  `CFFMEDICAREID` varchar(192) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFMEDICAREID',
  `CFFCOMPANYNAME` varchar(384) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFCOMPANYNAME',
  `CFFRETURNTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFFRETURNTIME',
  `CFFHICKTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFFHICKTIME',
  `CFFPOSTNAME` varchar(384) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFPOSTNAME',
  `CFFPOSTCODE0` varchar(384) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFPOSTCODE0',
  `CFPOSTCOEFFICIENT` int(11) DEFAULT NULL COMMENT 'CFPOSTCOEFFICIENT',
  `CFPROJECTSERVICETIME` int(11) DEFAULT NULL COMMENT 'CFPROJECTSERVICETIME',
  `CFEHRID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFEHRID',
  `FNAMEPINYIN` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAMEPINYIN',
  `FNAMESHORTPINYIN` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAMESHORTPINYIN',
  `CFZJJOBLEVELID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFZJJOBLEVELID',
  `CFZJPOSTLEVELID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFZJPOSTLEVELID',
  `CFZJDEVELOPMENTLEV` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFZJDEVELOPMENTLEV',
  `CFZJDEVOLOPMENTTYP` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFZJDEVOLOPMENTTYP',
  `CFZJEMPSALARY` double(28,10) DEFAULT NULL COMMENT 'CFZJEMPSALARY',
  `CFCOLLECTIONACCOUNT` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCOLLECTIONACCOUNT',
  `CFZJDEVELOPMENTLEVELID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFZJDEVELOPMENTLEVELID',
  `CFZJDEVELOPMENTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFZJDEVELOPMENTTYPEID',
  `CFISFL` int(11) DEFAULT NULL COMMENT 'CFISFL',
  `CFFLUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFLUSERID',
  `CFFLDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFFLDATE',
  `CFPERSONTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPERSONTYPEID',
  `CFPERSONLEVELID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPERSONLEVELID',
  `FEMAIL_BAK` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'FEMAIL_BAK',
  `ISCORPSYSRC` int(11) DEFAULT NULL COMMENT 'ISCORPSYSRC',
  `FCLOUDUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCLOUDUPDATETIME',
  `CFSHRID` varchar(88) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSHRID',
  `CFPOSIDTEMP` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPOSIDTEMP',
  `FISSENDTOESB` int(11) DEFAULT NULL COMMENT 'FISSENDTOESB',
  `CFPOSID` int(11) DEFAULT NULL COMMENT 'CFPOSID',
  `CFISPARTYLEAD` int(11) DEFAULT NULL COMMENT 'CFISPARTYLEAD',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_人员表';


-- zj_data.dm_eas_t_bd_supplier definition

CREATE TABLE `dm_eas_t_bd_supplier` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FCONTROLUNITID',
  `FNAME_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L3',
  `FNUMBER` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'FNUMBER',
  `FDESCRIPTION_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FARTIFICIALPERSON` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FARTIFICIALPERSON',
  `FBARCODE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBARCODE',
  `FBIZANALYSISCODEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBIZANALYSISCODEID',
  `FBROWSEGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBROWSEGROUPID',
  `FBUSIEXEQUATUR` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBUSIEXEQUATUR',
  `FBIZREGISTERNO` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBIZREGISTERNO',
  `FBUSILICENCE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBUSILICENCE',
  `FCITYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCITYID',
  `FCOUNTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOUNTRYID',
  `FFREEZEORGUNIT` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFREEZEORGUNIT',
  `FGSPAUTHENTICATION` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FGSPAUTHENTICATION',
  `FINDUSTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FINDUSTRYID',
  `FINTERNALCOMPANYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FINTERNALCOMPANYID',
  `FISINTERNALCOMPANY` int(11) DEFAULT NULL COMMENT 'FISINTERNALCOMPANY',
  `FPARENTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPARENTID',
  `FPROVINCEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROVINCEID',
  `FREGIONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREGIONID',
  `FTAXDATAID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTAXDATAID',
  `FTAXREGISTERNO` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTAXREGISTERNO',
  `FUSEDSTATUS` int(11) DEFAULT NULL COMMENT 'FUSEDSTATUS',
  `FVERSION` int(11) DEFAULT NULL COMMENT 'FVERSION',
  `FEFFECTEDSTATUS` int(11) DEFAULT NULL COMMENT 'FEFFECTEDSTATUS',
  `FMNEMONICCODE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMNEMONICCODE',
  `FFOREIGNNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFOREIGNNAME',
  `FADMINCUID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINCUID',
  `FADDRESS` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADDRESS',
  `FTAXRATE` double(28,10) NOT NULL DEFAULT '0.0000000000' COMMENT 'FTAXRATE',
  `FISMULTICOPY` int(11) DEFAULT NULL COMMENT 'FISMULTICOPY',
  `FISCARRIER` int(11) DEFAULT '0' COMMENT 'FISCARRIER',
  `FISOUTER` int(11) NOT NULL DEFAULT '0' COMMENT 'FISOUTER',
  `CFFORMERBANK` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFORMERBANK',
  `CFACCOUNTNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFACCOUNTNUMBER',
  `FOLDNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOLDNUMBER',
  `CFCONTRACE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCONTRACE',
  `CFISSUP` int(11) DEFAULT NULL COMMENT 'CFISSUP',
  `CFCUSTOMERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCUSTOMERID',
  `CFPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPERSONID',
  `FCUSTOMERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCUSTOMERID',
  `CFISMACREC` int(11) DEFAULT NULL COMMENT 'CFISMACREC',
  `CFKDTEXTAREA_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFKDTEXTAREA_L1',
  `CFKDTEXTAREA_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFKDTEXTAREA_L2',
  `CFKDTEXTAREA_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFKDTEXTAREA_L3',
  `CFISUSEPDASERIALNUM` int(11) DEFAULT NULL COMMENT 'CFISUSEPDASERIALNUM',
  `CFSUPPLIERSORT` int(11) DEFAULT NULL COMMENT 'CFSUPPLIERSORT',
  `CFSUPPLIERTYPE` int(11) DEFAULT NULL COMMENT 'CFSUPPLIERTYPE',
  `CFPROXYSUPTYPE` int(11) DEFAULT NULL COMMENT 'CFPROXYSUPTYPE',
  `CFSUPSTATUSID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSUPSTATUSID',
  `CFSUPSPECIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSUPSPECIALID',
  `CFSUPSTRATEGYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSUPSTRATEGYID',
  `CFCPID` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCPID',
  `CFSUPSTORAGEORGID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSUPSTORAGEORGID',
  `FNAMEPINYIN` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAMEPINYIN',
  `FNAMESHORTPINYIN` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAMESHORTPINYIN',
  `CFMLTKDTEXTAREA_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMLTKDTEXTAREA_L1',
  `CFMLTKDTEXTAREA_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMLTKDTEXTAREA_L2',
  `CFMLTKDTEXTAREA_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMLTKDTEXTAREA_L3',
  `FINTERNALPROFITCENTER` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FINTERNALPROFITCENTER',
  `FINTERNALSUPPLIERTYPE` int(11) DEFAULT '0' COMMENT 'FINTERNALSUPPLIERTYPE',
  `FTAXPAYERTYPE` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTAXPAYERTYPE',
  `CFISSRM` int(11) DEFAULT NULL COMMENT 'CFISSRM',
  `FISSENDTOESB` int(11) DEFAULT '0' COMMENT 'FISSENDTOESB',
  `CFISPERIPHERALUNITS` int(11) DEFAULT NULL COMMENT 'CFISPERIPHERALUNITS',
  `CFISKEYSUPPLIER` int(11) DEFAULT NULL COMMENT 'CFISKEYSUPPLIER',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_供应商表';


-- zj_data.dm_eas_t_im_inventory definition

CREATE TABLE `dm_eas_t_im_inventory` (
  `FID` longtext COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FCOMPANYORGUNITID` longtext COLLATE utf8_bin COMMENT 'FCOMPANYORGUNITID',
  `FSTORAGEORGUNITID` longtext COLLATE utf8_bin COMMENT 'FSTORAGEORGUNITID',
  `FWAREHOUSEID` longtext COLLATE utf8_bin COMMENT 'FWAREHOUSEID',
  `FLOCATIONID` longtext COLLATE utf8_bin COMMENT 'FLOCATIONID',
  `FSTORETYPEID` longtext COLLATE utf8_bin COMMENT 'FSTORETYPEID',
  `FSTORESTATUSID` longtext COLLATE utf8_bin COMMENT 'FSTORESTATUSID',
  `FLOT` longtext COLLATE utf8_bin COMMENT 'FLOT',
  `FSUPPLIERID` longtext COLLATE utf8_bin COMMENT 'FSUPPLIERID',
  `FCUSTOMERID` longtext COLLATE utf8_bin COMMENT 'FCUSTOMERID',
  `FMATERIALID` longtext COLLATE utf8_bin COMMENT 'FMATERIALID',
  `FUNITID` longtext COLLATE utf8_bin COMMENT 'FUNITID',
  `FCURSTOREQTY` double(100,2) DEFAULT '0.00' COMMENT 'FCURSTOREQTY',
  `FASSISTUNITID` longtext COLLATE utf8_bin COMMENT 'FASSISTUNITID',
  `FCURSTOREASSISTQTY` double(100,2) DEFAULT NULL COMMENT 'FCURSTOREASSISTQTY',
  `FBASEQTY` double(100,2) DEFAULT '0.00' COMMENT 'FBASEQTY',
  `FAMOUNT` double(100,2) DEFAULT '0.00' COMMENT 'FAMOUNT',
  `FCONTROLUNITID` longtext COLLATE utf8_bin COMMENT 'FCONTROLUNITID',
  `FBASEUNITID` longtext COLLATE utf8_bin COMMENT 'FBASEUNITID',
  `FEXP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FEXP',
  `FASSISTPROPERTYID` longtext COLLATE utf8_bin COMMENT 'FASSISTPROPERTYID',
  `FLOCKQTY` double(100,2) NOT NULL DEFAULT '0.00' COMMENT 'FLOCKQTY',
  `FLOCKBASEQTY` double(100,2) NOT NULL DEFAULT '0.00' COMMENT 'FLOCKBASEQTY',
  `FLOCKASSISTQTY` double(100,2) NOT NULL DEFAULT '0.00' COMMENT 'FLOCKASSISTQTY',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCREATORID` longtext COLLATE utf8_bin COMMENT 'FCREATORID',
  `FLASTUPDATEUSERID` longtext COLLATE utf8_bin COMMENT 'FLASTUPDATEUSERID',
  `FCREATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCREATETIME',
  `FPROJECTID` longtext COLLATE utf8_bin COMMENT 'FPROJECTID',
  `FTRACKNUMBERID` longtext COLLATE utf8_bin COMMENT 'FTRACKNUMBERID',
  `FBILLENTRYID` longtext COLLATE utf8_bin COMMENT 'FBILLENTRYID',
  `FENTRYSEQ` int(11) DEFAULT '0' COMMENT 'FENTRYSEQ',
  `CFBILLNUMBER` longtext COLLATE utf8_bin COMMENT 'CFBILLNUMBER',
  `CFBILLID` longtext COLLATE utf8_bin COMMENT 'CFBILLID',
  `CFBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFBIZDATE',
  `CFSTANDARDCOST` double(100,2) DEFAULT '0.00' COMMENT 'CFSTANDARDCOST',
  `CFACTUALCOST` double(100,2) DEFAULT '0.00' COMMENT 'CFACTUALCOST',
  `CFYEAR` int(11) DEFAULT '0' COMMENT 'CFYEAR',
  `CFPERIOD` int(11) DEFAULT '0' COMMENT 'CFPERIOD',
  `CFTRANSACTIONTYPEID` longtext COLLATE utf8_bin COMMENT 'CFTRANSACTIONTYPEID',
  `CFUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFUPDATETIME',
  `CFINVID` longtext COLLATE utf8_bin COMMENT 'CFINVID',
  `FUNIQUEKEY` longtext COLLATE utf8_bin COMMENT 'FUNIQUEKEY'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='T_IM_INVENTORY';


-- zj_data.dm_eas_t_im_purinwarehsbill definition

CREATE TABLE `dm_eas_t_im_purinwarehsbill` (
  `FID` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FCREATORID` longtext COLLATE utf8_bin COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` longtext COLLATE utf8_bin COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT 'FNUMBER',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBIZDATE',
  `FHANDLERID` longtext COLLATE utf8_bin COMMENT 'FHANDLERID',
  `FDESCRIPTION` longtext COLLATE utf8_bin COMMENT 'FDESCRIPTION',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT 'FHASEFFECTED',
  `FAUDITORID` longtext COLLATE utf8_bin COMMENT 'FAUDITORID',
  `FSOURCEFUNCTION` longtext COLLATE utf8_bin COMMENT 'FSOURCEFUNCTION',
  `FAUDITTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAUDITTIME',
  `FBASESTATUS` int(11) DEFAULT NULL COMMENT 'FBASESTATUS',
  `FBIZTYPEID` longtext COLLATE utf8_bin COMMENT 'FBIZTYPEID',
  `FSOURCEBILLTYPEID` longtext COLLATE utf8_bin COMMENT 'FSOURCEBILLTYPEID',
  `FBILLTYPEID` longtext COLLATE utf8_bin COMMENT 'FBILLTYPEID',
  `FYEAR` int(11) NOT NULL DEFAULT '2999' COMMENT 'FYEAR',
  `FPERIOD` int(11) NOT NULL DEFAULT '1' COMMENT 'FPERIOD',
  `FSTORAGEORGUNITID` longtext COLLATE utf8_bin COMMENT 'FSTORAGEORGUNITID',
  `FADMINORGUNITID` longtext COLLATE utf8_bin COMMENT 'FADMINORGUNITID',
  `FSTOCKERID` longtext COLLATE utf8_bin COMMENT 'FSTOCKERID',
  `FVOUCHERID` longtext COLLATE utf8_bin COMMENT 'FVOUCHERID',
  `FFIVOUCHERED` int(11) DEFAULT '0' COMMENT 'FFIVOUCHERED',
  `FISREVERSED` int(11) DEFAULT NULL COMMENT 'FISREVERSED',
  `FTRANSACTIONTYPEID` longtext COLLATE utf8_bin COMMENT 'FTRANSACTIONTYPEID',
  `FISINITBILL` int(11) DEFAULT NULL COMMENT 'FISINITBILL',
  `FSUPPLIERID` longtext COLLATE utf8_bin COMMENT 'FSUPPLIERID',
  `FCURRENCYID` longtext COLLATE utf8_bin COMMENT 'FCURRENCYID',
  `FMODIFIERID` longtext COLLATE utf8_bin COMMENT 'FMODIFIERID',
  `FMODIFICATIONTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FMODIFICATIONTIME',
  `FPAYMENTTYPEID` longtext COLLATE utf8_bin COMMENT 'FPAYMENTTYPEID',
  `FCONVERTMODE` int(11) NOT NULL DEFAULT '0' COMMENT 'FCONVERTMODE',
  `FISSYSBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISSYSBILL',
  `FISCENTRALBALANCE` int(11) NOT NULL DEFAULT '0' COMMENT 'FISCENTRALBALANCE',
  `FPURCHASETYPE` int(11) NOT NULL DEFAULT '0' COMMENT 'FPURCHASETYPE',
  `FZLJLSH` longtext COLLATE utf8_bin COMMENT 'FZLJLSH',
  `FCARNUMBER` longtext COLLATE utf8_bin COMMENT 'FCARNUMBER',
  `FBARGAINNUMBER` longtext COLLATE utf8_bin COMMENT 'FBARGAINNUMBER',
  `FSTARTWORKNUMID` longtext COLLATE utf8_bin COMMENT 'FSTARTWORKNUMID',
  `FENDWORKNUMID` longtext COLLATE utf8_bin COMMENT 'FENDWORKNUMID',
  `FUNITMANAGEID` longtext COLLATE utf8_bin COMMENT 'FUNITMANAGEID',
  `A1` longtext COLLATE utf8_bin COMMENT 'A1',
  `CFSECONDAUDITID` longtext COLLATE utf8_bin COMMENT 'CFSECONDAUDITID',
  `CFFRISTAUDITID` longtext COLLATE utf8_bin COMMENT 'CFFRISTAUDITID',
  `CFQUALITYSTANARD` longtext COLLATE utf8_bin COMMENT 'CFQUALITYSTANARD',
  `FISINTAX` int(11) NOT NULL DEFAULT '1' COMMENT 'FISINTAX',
  `FISPRICEINTAX` int(11) NOT NULL DEFAULT '1' COMMENT 'FISPRICEINTAX',
  `FDISCHARGETYPE` int(11) DEFAULT '0' COMMENT 'FDISCHARGETYPE',
  `FISGENBIZAP` int(11) DEFAULT '0' COMMENT 'FISGENBIZAP',
  `FSPLITNUMCOUNT` int(11) NOT NULL DEFAULT '0' COMMENT 'FSPLITNUMCOUNT',
  `FMONTH` int(11) DEFAULT NULL COMMENT 'FMONTH',
  `FDAY` int(11) DEFAULT NULL COMMENT 'FDAY',
  `FCOSTCENTERORGUNITID` longtext COLLATE utf8_bin COMMENT 'FCOSTCENTERORGUNITID',
  `CFCOMPURID` int(11) DEFAULT NULL COMMENT 'CFCOMPURID',
  `CFCOMPURNUMBER` longtext COLLATE utf8_bin COMMENT 'CFCOMPURNUMBER',
  `CFALLINKPURID` int(11) DEFAULT NULL COMMENT 'CFALLINKPURID',
  `CFALLINKISSUEID` int(11) DEFAULT NULL COMMENT 'CFALLINKISSUEID',
  `CFPRINTCOUNTTD` int(11) DEFAULT NULL COMMENT 'CFPRINTCOUNTTD',
  `CFENTRUSPURORDERID` longtext COLLATE utf8_bin COMMENT 'CFENTRUSPURORDERID',
  `CFALLINKID` longtext COLLATE utf8_bin COMMENT 'CFALLINKID',
  `CFOLDCREATOR` longtext COLLATE utf8_bin COMMENT 'CFOLDCREATOR',
  `FDCDELIVERID` longtext COLLATE utf8_bin COMMENT 'FDCDELIVERID',
  `FBILLRELATIONOPTION` int(11) DEFAULT '0' COMMENT 'FBILLRELATIONOPTION',
  `FPRICESOURCE` int(11) DEFAULT '1' COMMENT 'FPRICESOURCE',
  `FUNITSOURCE` int(11) DEFAULT NULL COMMENT 'FUNITSOURCE',
  `FSOURCEBILLID` longtext COLLATE utf8_bin COMMENT 'FSOURCEBILLID',
  `CFWMSBILLCODE` longtext COLLATE utf8_bin COMMENT 'CFWMSBILLCODE',
  `CFSYNSTATUS` longtext COLLATE utf8_bin COMMENT 'CFSYNSTATUS',
  `CFLOCKTYPE` int(11) DEFAULT NULL COMMENT 'CFLOCKTYPE',
  `CFDIRECTNUMBER` longtext COLLATE utf8_bin COMMENT 'CFDIRECTNUMBER',
  `CFISMATCHPLATE` int(11) DEFAULT NULL COMMENT 'CFISMATCHPLATE',
  `CFISSENDESB` int(11) DEFAULT NULL COMMENT 'CFISSENDESB',
  `CFMFRSUPPLIERID` longtext COLLATE utf8_bin COMMENT 'CFMFRSUPPLIERID',
  `CFSUPORGID` longtext COLLATE utf8_bin COMMENT 'CFSUPORGID',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_mysql_采购入库';


-- zj_data.dm_eas_t_in_warehouseperson definition

CREATE TABLE `dm_eas_t_in_warehouseperson` (
  `psersonName` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '仓库管理员名称',
  `psersonNumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '仓库管理员编码',
  `wareHouseName` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '仓库名称',
  `wareHouseNumber` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '仓库编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='仓管员';


-- zj_data.dm_eas_t_mm_project definition

CREATE TABLE `dm_eas_t_mm_project` (
  `FTOTALCOST` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FTOTALCOST',
  `FUNITCOST` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FUNITCOST',
  `FTOTALTIME` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FTOTALTIME',
  `FPLANBEGINTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FPLANBEGINTIME',
  `FPLANENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FPLANENDTIME',
  `FEARISTBEGINTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FEARISTBEGINTIME',
  `FLASTBEGINTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTBEGINTIME',
  `FEARISTENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FEARISTENDTIME',
  `FLASTENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTENDTIME',
  `FQTY` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FQTY',
  `FGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FGROUPID',
  `FPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPERSONID',
  `FADMINORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINORGUNITID',
  `FMATERIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMATERIALID',
  `FISTEMPLATE` int(11) NOT NULL DEFAULT '0' COMMENT 'FISTEMPLATE',
  `FCURRENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCURRENCYID',
  `FBASEUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEUNITID',
  `FACTTOTALCOST` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FACTTOTALCOST',
  `FTOTALQTY` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FTOTALQTY',
  `FCOMPLETEPERCENT` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FCOMPLETEPERCENT',
  `FACTUALBEGINTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FACTUALBEGINTIME',
  `FACTUALENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FACTUALENDTIME',
  `FACTUALTOTALTIME` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FACTUALTOTALTIME',
  `FBASEQTY` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FBASEQTY',
  `FPROJECTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTTYPEID',
  `FUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FUNITID',
  `FTOTALBASEQTY` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FTOTALBASEQTY',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBIZDATE',
  `FHASEFFECTED` int(11) NOT NULL DEFAULT '0' COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAUDITORID',
  `FHANDLERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHANDLERID',
  `FAUDITTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAUDITTIME',
  `FBASESTATUS` int(11) NOT NULL DEFAULT '0' COMMENT 'FBASESTATUS',
  `FADMINCUID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINCUID',
  `FNAME_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L3',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FDESCRIPTION_L1` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FCENTRALPURSTGORGID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCENTRALPURSTGORGID',
  `FPROJECTASSISTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTASSISTID',
  `FISCHANGING` int(11) DEFAULT NULL COMMENT 'FISCHANGING',
  `FPRIORITY` int(11) NOT NULL DEFAULT '10' COMMENT 'FPRIORITY',
  `FPROJECTCALENDARID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTCALENDARID',
  `CFPROJECTATTR` int(11) DEFAULT NULL COMMENT 'CFPROJECTATTR',
  `CFNCRPREFIX` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFNCRPREFIX',
  `CFORDERNUM` int(11) DEFAULT NULL COMMENT 'CFORDERNUM',
  `CFNORECORDERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFNORECORDERID',
  `CFNODATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFNODATE',
  `CFPROJECTAPPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJECTAPPID',
  `CFLCMPROJECTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFLCMPROJECTTYPEID',
  `CFPROJECTTYPESID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJECTTYPESID',
  `CFINEXTENSION` int(11) DEFAULT NULL COMMENT 'CFINEXTENSION',
  `CFISNOHOST` int(11) DEFAULT NULL COMMENT 'CFISNOHOST',
  `FINEXTENSION` int(11) DEFAULT NULL COMMENT 'FINEXTENSION',
  `FISNOHOST` int(11) DEFAULT NULL COMMENT 'FISNOHOST',
  `FPLANINCOME` double(28,10) DEFAULT NULL COMMENT 'FPLANINCOME',
  `FFACTORYCALENDARID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFACTORYCALENDARID',
  `FACTUALINCOME` double(28,10) DEFAULT NULL COMMENT 'FACTUALINCOME',
  `FISPREPRODCUT` int(11) DEFAULT NULL COMMENT 'FISPREPRODCUT',
  `FCERTAINTY` int(11) DEFAULT NULL COMMENT 'FCERTAINTY',
  `FREQENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FREQENDTIME',
  `FVERSION` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FVERSION',
  `FLASTWORKTIME` double(28,10) DEFAULT NULL COMMENT 'FLASTWORKTIME',
  `FPCONTROLMODE` int(11) DEFAULT NULL COMMENT 'FPCONTROLMODE',
  `FDESCRIPTION` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FREQWORKTIME` double(28,10) DEFAULT NULL COMMENT 'FREQWORKTIME',
  `FREQBEGINTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FREQBEGINTIME',
  `FMCONTROLMODE` int(11) DEFAULT NULL COMMENT 'FMCONTROLMODE',
  `FBATCHPROPERTY` int(11) DEFAULT NULL COMMENT 'FBATCHPROPERTY',
  `FEARLIESTWORKTIME` double(28,10) DEFAULT NULL COMMENT 'FEARLIESTWORKTIME',
  `FSOURCE` int(11) DEFAULT NULL COMMENT 'FSOURCE',
  `FCONTROLDIMENSION` int(11) DEFAULT NULL COMMENT 'FCONTROLDIMENSION',
  `FSETUPSTORAGEORGID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSETUPSTORAGEORGID',
  `FISINEXTENSION` int(11) DEFAULT NULL COMMENT 'FISINEXTENSION',
  `FPURCHASEPERSONID` varchar(44) COLLATE utf8_bin DEFAULT 'null\n' COMMENT 'FPURCHASEPERSONID',
  `CFPROTEGORYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROTEGORYID',
  `CFPROCONFIGURATION` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROCONFIGURATION',
  `CFSTAGESTATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSTAGESTATE',
  `CFMARKETSOURCES` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMARKETSOURCES',
  `CFPRODUCTVARIETY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPRODUCTVARIETY',
  `CFTYPEWORKORDERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTYPEWORKORDERID',
  `CFISSYSCREATE` int(11) DEFAULT NULL COMMENT 'CFISSYSCREATE',
  `CFPROJECTVOIPTYPEI` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJECTVOIPTYPEI',
  `CFCUSTOMERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCUSTOMERID',
  `CFTHEIRCARID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTHEIRCARID',
  `CFLOTNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFLOTNUMBERID',
  `CFPROJCH` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJCH',
  `FISSENDTOESB` int(11) DEFAULT '0' COMMENT 'FISSENDTOESB',
  `CFISSOURCEPMS` int(11) DEFAULT NULL COMMENT 'CFISSOURCEPMS',
  `CFPMSPROID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPMSPROID',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_项目表';


-- zj_data.dm_eas_t_pm_user definition

CREATE TABLE `dm_eas_t_pm_user` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FNAME_L1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L3',
  `FTYPE` int(11) NOT NULL COMMENT 'FTYPE',
  `FDESCRIPTION_L1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FPASSWORD` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPASSWORD',
  `FISDELETE` int(11) DEFAULT NULL COMMENT 'FISDELETE',
  `FISLOCKED` int(11) DEFAULT NULL COMMENT 'FISLOCKED',
  `FFORBIDDEN` int(11) DEFAULT NULL COMMENT 'FFORBIDDEN',
  `FEFFECTIVEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FEFFECTIVEDATE',
  `FINVALIDATIONDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FINVALIDATIONDATE',
  `FDEFAULTLOCALE` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDEFAULTLOCALE',
  `FISREGISTER` int(11) DEFAULT NULL COMMENT 'FISREGISTER',
  `FERRCOUNT` int(11) DEFAULT NULL COMMENT 'FERRCOUNT',
  `FGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FGROUPID',
  `FPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPERSONID',
  `FSECURITYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSECURITYID',
  `FPWEFFECTIVEDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FPWEFFECTIVEDATE',
  `FLOCKEDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLOCKEDTIME',
  `FISBIZADMIN` int(11) NOT NULL DEFAULT '0' COMMENT 'FISBIZADMIN',
  `FISCHANGEDPW` int(11) NOT NULL DEFAULT '1' COMMENT 'FISCHANGEDPW',
  `FDEFORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDEFORGUNITID',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCUSTOMERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCUSTOMERID',
  `FSUPPLIERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSUPPLIERID',
  `FMAINROLEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMAINROLEID',
  `FAGENTUSER` int(11) DEFAULT '0' COMMENT 'FAGENTUSER',
  `FLOGINAUTHORWAY` int(11) DEFAULT '0' COMMENT 'FLOGINAUTHORWAY',
  `FPWDHISSTR` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPWDHISSTR',
  `FREFERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREFERID',
  `FCELL` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCELL',
  `FBACKUPEMAIL` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBACKUPEMAIL',
  `FHOMEPHONE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHOMEPHONE',
  `FOFFICEPHONE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOFFICEPHONE',
  `FEMAIL` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FEMAIL',
  `FPOSID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPOSID',
  `CFISUSEMAC` int(11) DEFAULT NULL COMMENT 'CFISUSEMAC',
  `CFISMACREC` int(11) DEFAULT NULL COMMENT 'CFISMACREC',
  `CFISMACQUALITY` int(11) DEFAULT NULL COMMENT 'CFISMACQUALITY',
  `CFISMACINW` int(11) DEFAULT NULL COMMENT 'CFISMACINW',
  `CFISMACRECAUDIT` int(11) DEFAULT NULL COMMENT 'CFISMACRECAUDIT',
  `CFISMACSHELF` int(11) DEFAULT NULL COMMENT 'CFISMACSHELF',
  `CFISMACSIGN` int(11) DEFAULT NULL COMMENT 'CFISMACSIGN',
  `CFISMACBIND` int(11) DEFAULT NULL COMMENT 'CFISMACBIND',
  `FUNAUTHORTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FUNAUTHORTIME',
  `CFXCCLOSERIGHT` int(11) DEFAULT NULL COMMENT 'CFXCCLOSERIGHT',
  `CFISISEMACQC` int(11) DEFAULT NULL COMMENT 'CFISISEMACQC',
  `CFISMACINWQC` int(11) DEFAULT NULL COMMENT 'CFISMACINWQC',
  `CFISMACSDOUT` int(11) DEFAULT NULL COMMENT 'CFISMACSDOUT',
  `CFISMACPRODOPERATION` int(11) DEFAULT NULL COMMENT 'CFISMACPRODOPERATION',
  `CFISSERIALNUM` int(11) DEFAULT NULL COMMENT 'CFISSERIALNUM',
  `CFISMACPRODZJ` int(11) DEFAULT NULL COMMENT 'CFISMACPRODZJ',
  `CFISSERIALDEL` int(11) DEFAULT NULL COMMENT 'CFISSERIALDEL',
  `FADNUMBER` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADNUMBER',
  `FNAMEPINYIN` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAMEPINYIN',
  `FNAMESHORTPINYIN` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAMESHORTPINYIN',
  `FPINYIN` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPINYIN',
  `FSHORTPINYIN` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSHORTPINYIN',
  `FISAUTHENADMIN` int(11) NOT NULL DEFAULT '0' COMMENT 'FISAUTHENADMIN',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_用户表';


-- zj_data.dm_eas_t_scm_transactiontype definition

CREATE TABLE `dm_eas_t_scm_transactiontype` (
  `FName` longtext COLLATE utf8_bin COMMENT '名称',
  `FNumber` longtext COLLATE utf8_bin COMMENT '编码',
  `FBillTypeID` longtext COLLATE utf8_bin COMMENT '单据类型',
  `FStatus` longtext COLLATE utf8_bin COMMENT '状态',
  `FIsManuCostCalculate` longtext COLLATE utf8_bin COMMENT '是否参与生产成本核算'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_T_SCM_TransactionType';


-- zj_data.dm_eas_t_scm_transactiontype1 definition

CREATE TABLE `dm_eas_t_scm_transactiontype1` (
  `FName` longtext COLLATE utf8_bin COMMENT '名称',
  `FNumber` longtext COLLATE utf8_bin COMMENT '编码',
  `FBillTypeID` longtext COLLATE utf8_bin COMMENT '单据类型',
  `FStatus` longtext COLLATE utf8_bin COMMENT '状态',
  `FIsManuCostCalculate` longtext COLLATE utf8_bin COMMENT '是否参与生产成本核算'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_T_SCM_TransactionType1';


-- zj_data.dm_eas_t_ts_budgettask definition

CREATE TABLE `dm_eas_t_ts_budgettask` (
  `FYEAR` longtext COLLATE utf8_bin COMMENT 'FYEAR',
  `FDEPT` longtext COLLATE utf8_bin COMMENT 'FDEPT',
  `FDEPTNAME` longtext COLLATE utf8_bin COMMENT 'FDEPTNAME',
  `FEXPENSETYPE` longtext COLLATE utf8_bin COMMENT 'FEXPENSETYPE',
  `FEXPENSETYPENAME` longtext COLLATE utf8_bin COMMENT 'FEXPENSETYPENAME',
  `FBUDGETSUMAMT` double(28,10) DEFAULT NULL COMMENT 'FBUDGETSUMAMT',
  `FBUDGETUSEAMT` double(28,10) DEFAULT NULL COMMENT 'FBUDGETUSEAMT',
  `FBUDGETUNUSEAMT` double(28,10) DEFAULT NULL COMMENT 'FBUDGETUNUSEAMT',
  `FWAITREIMBURSEAMT` double(28,10) DEFAULT NULL COMMENT 'FWAITREIMBURSEAMT',
  `FCOMPANY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANY',
  `FCOMPANYNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANYNAME'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ods_eas_预算数据源';


-- zj_data.dm_eas_uncommitted definition

CREATE TABLE `dm_eas_uncommitted` (
  `fcompany` longtext COLLATE utf8_bin COMMENT '公司',
  `fnumber` longtext COLLATE utf8_bin NOT NULL COMMENT '单据编号',
  `ftype` longtext COLLATE utf8_bin COMMENT '单据类型',
  `famount` decimal(28,10) DEFAULT NULL COMMENT '金额',
  `fname` longtext COLLATE utf8_bin COMMENT '申请人',
  `fdpt` longtext COLLATE utf8_bin COMMENT '申请部门',
  `fsavetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '单据保存时间开始',
  `ftasktimes` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '单据退回时间',
  `fstoptime` longtext COLLATE utf8_bin COMMENT '节点停留时间',
  `fcompanynumber` longtext COLLATE utf8_bin COMMENT '公司编码',
  `fnamenumber` longtext COLLATE utf8_bin COMMENT '申请人编码',
  `fdptnumber` longtext COLLATE utf8_bin COMMENT '申请部门编码',
  `fsaveendtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '单据保存时间结束',
  `fendtasktimes` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '单据退回时间',
  `fbizdate` timestamp NULL DEFAULT NULL COMMENT '开始业务日期',
  `fbizdateld` timestamp NULL DEFAULT NULL COMMENT '结束业务日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_未提交';


-- zj_data.dm_eas_underveview definition

CREATE TABLE `dm_eas_underveview` (
  `fcompany` longtext COLLATE utf8_bin COMMENT '公司',
  `fnumber` longtext COLLATE utf8_bin COMMENT '单据编码',
  `ftype` longtext COLLATE utf8_bin COMMENT '类型',
  `famount` double(28,2) DEFAULT NULL COMMENT '金额',
  `fname` longtext COLLATE utf8_bin COMMENT '申请人',
  `fdpt` longtext COLLATE utf8_bin COMMENT '申请部门',
  `fnodeapprover` longtext COLLATE utf8_bin COMMENT '节点审批人',
  `fbusinessgroup` longtext COLLATE utf8_bin COMMENT '共享业务组',
  `FCreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '到达节点时间',
  `fstoptime` double(28,2) DEFAULT NULL COMMENT '节点停留时间',
  `fremainingtime` double(28,2) DEFAULT NULL COMMENT '剩余时间',
  `fcompanynumber` longtext COLLATE utf8_bin COMMENT '公司编码',
  `fnamenumber` longtext COLLATE utf8_bin COMMENT '申请人编码',
  `fdptnumber` longtext COLLATE utf8_bin COMMENT '申请部门编码',
  `fnodeapprovernumber` longtext COLLATE utf8_bin COMMENT '节点审批人编码',
  `fbusinessgroupnumber` longtext COLLATE utf8_bin COMMENT '共享业务组编码',
  `fbizdate` timestamp NULL DEFAULT NULL COMMENT '开始业务日期',
  `fbizdateld` timestamp NULL DEFAULT NULL COMMENT '结束业务日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_共享审核中';


-- zj_data.dm_eas_unissued_vouchers definition

CREATE TABLE `dm_eas_unissued_vouchers` (
  `fname_l2` longtext COLLATE utf8_bin COMMENT '公司名称',
  `fnumber` longtext COLLATE utf8_bin COMMENT '公司编码',
  `biznumber` longtext COLLATE utf8_bin COMMENT '单据编码',
  `billtype` longtext COLLATE utf8_bin COMMENT '单据类型',
  `FBIZDATE` date DEFAULT NULL COMMENT '单据日期',
  `FAMOUNTAPPROVED` longtext COLLATE utf8_bin COMMENT '金额',
  `usname` longtext COLLATE utf8_bin COMMENT '共享审核人名称',
  `usnumber` longtext COLLATE utf8_bin COMMENT '共享审核人编码',
  `vnumber` longtext COLLATE utf8_bin COMMENT '暂存凭证号',
  `reason` longtext COLLATE utf8_bin COMMENT '系统显示原因',
  `vnumber2` longtext COLLATE utf8_bin COMMENT '凭证号',
  `rn` longtext COLLATE utf8_bin COMMENT '排序级数',
  `issc` longtext COLLATE utf8_bin COMMENT '是否成功',
  `enddate` date DEFAULT NULL COMMENT '结束日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='未生成凭证_dm_eas_unissued_vouchers';


-- zj_data.dm_eas_unscandocument definition

CREATE TABLE `dm_eas_unscandocument` (
  `company` text COLLATE utf8_bin,
  `number` text COLLATE utf8_bin,
  `type` text COLLATE utf8_bin,
  `amount` double DEFAULT NULL,
  `name` text COLLATE utf8_bin,
  `orgunit` text COLLATE utf8_bin,
  `savetime` text COLLATE utf8_bin,
  `tasktimes` text COLLATE utf8_bin,
  `stoptime` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_eas_workflow_busi_approve_info definition

CREATE TABLE `dm_eas_workflow_busi_approve_info` (
  `billid` longtext COLLATE utf8_bin COMMENT 'billid',
  `actdefname` longtext COLLATE utf8_bin COMMENT 'actdefname',
  `FACTINSTID` longtext COLLATE utf8_bin COMMENT 'FACTINSTID',
  `flevel` longtext COLLATE utf8_bin COMMENT 'flevel',
  `jobstate` longtext COLLATE utf8_bin COMMENT 'jobstate',
  `jobcreatetime` date DEFAULT NULL COMMENT 'jobcreatetime',
  `jobcompletetme` date DEFAULT NULL COMMENT 'jobcompletetme',
  `rn` longtext COLLATE utf8_bin COMMENT 'rn',
  `fispass` longtext COLLATE utf8_bin COMMENT 'fispass',
  `fnumber` longtext COLLATE utf8_bin COMMENT 'fnumber',
  `fbizdate` date DEFAULT NULL,
  `billtype` longtext COLLATE utf8_bin COMMENT 'billtype',
  `decisionname` longtext COLLATE utf8_bin COMMENT 'decisionname',
  `devisionvalue` longtext COLLATE utf8_bin COMMENT 'devisionvalue',
  `companyname` longtext COLLATE utf8_bin COMMENT 'companyname',
  `companynumber` longtext COLLATE utf8_bin COMMENT 'companynumber',
  `orgunitname` longtext COLLATE utf8_bin COMMENT 'orgunitname',
  `orgunitnumber` longtext COLLATE utf8_bin COMMENT 'orgunitnumber',
  KEY `ix_wba_bizdate` (`fbizdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm工作流获取业务审批信息';


-- zj_data.dm_eas_yfzkdata definition

CREATE TABLE `dm_eas_yfzkdata` (
  `FSUPNAME` longtext COLLATE utf8_bin COMMENT '往来户名称',
  `FHTNUMBER` longtext COLLATE utf8_bin COMMENT '合同编号',
  `FCURRENCY` longtext COLLATE utf8_bin COMMENT '币别',
  `FZL` longtext COLLATE utf8_bin COMMENT '账龄',
  `FPAYDATE` date DEFAULT NULL COMMENT '付款日期',
  `FDESCRIPTION` longtext COLLATE utf8_bin COMMENT '摘要',
  `factualamt` double(24,4) DEFAULT NULL COMMENT '预付金额原币',
  `factuallocamt` double(24,4) DEFAULT NULL COMMENT '预付金额本位币',
  `funvcamount` double(24,4) DEFAULT NULL COMMENT '未结算金额原币',
  `funvclocamount` double(24,4) DEFAULT NULL COMMENT '未结算金额本位币',
  `flocalamtvc` double(24,4) DEFAULT NULL COMMENT '已结算金额本位币',
  `famountvc` double(24,4) DEFAULT NULL COMMENT '已结算金额原币',
  `fperson` longtext COLLATE utf8_bin COMMENT '业务员',
  `fdepartment` longtext COLLATE utf8_bin COMMENT '部门',
  `FACCOUNTVIEW` longtext COLLATE utf8_bin COMMENT '科目',
  `FDAY` int(11) DEFAULT NULL COMMENT '账龄天数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_预付账款数据';


-- zj_data.dm_eas_ylwl definition

CREATE TABLE `dm_eas_ylwl` (
  `LX` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '类型',
  `NDJH` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '年度计划',
  `SJWC` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '实际完成',
  `HYBG` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '行业标杆',
  `ZBWCJD` int(11) DEFAULT NULL COMMENT '指标完成进度',
  `YLZD1` longtext COLLATE utf8_bin COMMENT '预留字段1',
  `GXRQ` date DEFAULT NULL COMMENT '更新日期',
  `ZQ` date DEFAULT NULL COMMENT '账期',
  PRIMARY KEY (`LX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_一利五率';


-- zj_data.dm_eas_yszk_lj definition

CREATE TABLE `dm_eas_yszk_lj` (
  `GS` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'GS',
  `JE` int(11) DEFAULT NULL COMMENT 'JE',
  `YSYF` date DEFAULT NULL COMMENT 'YSYF',
  `ZZ` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'ZZ',
  `GXSJ` date DEFAULT NULL COMMENT 'GXSJ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_YSZK_LJ';


-- zj_data.dm_es_0816 definition

CREATE TABLE `dm_es_0816` (
  `LX` longtext COLLATE utf8_bin NOT NULL COMMENT 'LX',
  `NDJH` longtext COLLATE utf8_bin COMMENT 'NDJH',
  `SJWC` longtext COLLATE utf8_bin COMMENT 'SJWC',
  `HYBG` longtext COLLATE utf8_bin COMMENT 'HYBG',
  `ZBWCJD` int(11) DEFAULT NULL COMMENT 'ZBWCJD',
  `YLZD1` longtext COLLATE utf8_bin COMMENT 'YLZD1',
  `GXRQ` date DEFAULT NULL COMMENT 'GXRQ',
  `ZQ` date DEFAULT NULL COMMENT 'ZQ',
  `HYBG_1` longtext COLLATE utf8_bin COMMENT 'HYBG_1',
  `YLZD1_1` longtext COLLATE utf8_bin COMMENT 'YLZD1_1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_ES_0816';


-- zj_data.dm_exception2_type definition

CREATE TABLE `dm_exception2_type` (
  `GID` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `CODE` longtext COLLATE utf8_bin COMMENT '异常类型编码',
  `NAME` longtext COLLATE utf8_bin COMMENT '异常类型名称',
  `MODELCODE` longtext COLLATE utf8_bin COMMENT '所属模块（物料、质量、设备、刀具等）',
  `UDA1` longtext COLLATE utf8_bin COMMENT '备用字段1',
  `UDA2` longtext COLLATE utf8_bin COMMENT '备用字段2',
  `UDA3` longtext COLLATE utf8_bin COMMENT '备用字段3',
  `UDA4` longtext COLLATE utf8_bin COMMENT '备用字段4',
  `UDA5` longtext COLLATE utf8_bin COMMENT '备用字段5',
  `REMARK` longtext COLLATE utf8_bin COMMENT '备注',
  `CREATE_ID` longtext COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `CREATE_DATE` date DEFAULT '2023-12-25' COMMENT '创建时间',
  `MODIFY_ID` longtext COLLATE utf8_bin COMMENT '修改人',
  `MODIFY_DATE` date DEFAULT NULL COMMENT '修改时间',
  `IS_ACTIVE` int(11) NOT NULL DEFAULT '0' COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` int(11) NOT NULL DEFAULT '0' COMMENT '删除标识(0未删除1删除)',
  `DELETED` longtext COLLATE utf8_bin COMMENT 'DELETED',
  `DATA_ROLE` longtext COLLATE utf8_bin NOT NULL COMMENT '工厂GID',
  `WORK_CENTER_GID` longtext COLLATE utf8_bin COMMENT '工作中心',
  `WORK_CENTER_CODE` longtext COLLATE utf8_bin COMMENT '工作中心编码',
  `WORK_CENTER_NAME` longtext COLLATE utf8_bin COMMENT '工作中心名称',
  `DATA_ROLE1` longtext COLLATE utf8_bin COMMENT '工作中心 GID',
  `DATA_ROLE2` longtext COLLATE utf8_bin COMMENT '工作中心层级权值',
  `UDI_GID` longtext COLLATE utf8_bin COMMENT '类型属性GID',
  `UDI_CODE` longtext COLLATE utf8_bin COMMENT '类型属性编码',
  `UDI_NAME` longtext COLLATE utf8_bin COMMENT '类型属性名称',
  `EX_BIG_TYPE_CODE` longtext COLLATE utf8_bin COMMENT '异常大类编码',
  `UDA1C` longtext COLLATE utf8_bin COMMENT '备用字段1编码',
  `UDA1N` longtext COLLATE utf8_bin COMMENT '备用字段1名称',
  `UDA2C` longtext COLLATE utf8_bin COMMENT '备用字段2编码',
  `UDA2N` longtext COLLATE utf8_bin COMMENT '备用字段2名称',
  `UDA3C` longtext COLLATE utf8_bin COMMENT '备用字段3编码',
  `UDA3N` longtext COLLATE utf8_bin COMMENT '备用字段3名称',
  `UDA4C` longtext COLLATE utf8_bin COMMENT '备用字段4编码',
  `UDA4N` longtext COLLATE utf8_bin COMMENT '备用字段4名称',
  `UDA5C` longtext COLLATE utf8_bin COMMENT '备用字段5编码',
  `UDA5N` longtext COLLATE utf8_bin COMMENT '备用字段5名称',
  `DUTY_ROLE` longtext COLLATE utf8_bin COMMENT '责任角色',
  `IS_RELEVANCY_TRACK` int(11) DEFAULT '1' COMMENT '是否关联派工单 0 否  1 是',
  PRIMARY KEY (`GID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='异常类型';


-- zj_data.dm_exception_type definition

CREATE TABLE `dm_exception_type` (
  `GID` varchar(500) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `CODE` longtext COLLATE utf8_bin COMMENT '异常类型编码',
  `NAME` longtext COLLATE utf8_bin COMMENT '异常类型名称',
  `MODELCODE` longtext COLLATE utf8_bin COMMENT '所属模块（物料、质量、设备、刀具等）',
  `UDA1` longtext COLLATE utf8_bin COMMENT '备用字段1',
  `UDA2` longtext COLLATE utf8_bin COMMENT '备用字段2',
  `UDA3` longtext COLLATE utf8_bin COMMENT '备用字段3',
  `UDA4` longtext COLLATE utf8_bin COMMENT '备用字段4',
  `UDA5` longtext COLLATE utf8_bin COMMENT '备用字段5',
  `REMARK` longtext COLLATE utf8_bin COMMENT '备注',
  `CREATE_ID` longtext COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `CREATE_DATE` date DEFAULT NULL,
  `MODIFY_ID` longtext COLLATE utf8_bin COMMENT '修改人',
  `MODIFY_DATE` date DEFAULT NULL COMMENT '修改时间',
  `IS_ACTIVE` int(11) NOT NULL DEFAULT '0' COMMENT '激活标识(0激活1冻结)',
  `IS_DELETE` int(11) NOT NULL DEFAULT '0' COMMENT '删除标识(0未删除1删除)',
  `DELETED` longtext COLLATE utf8_bin COMMENT 'DELETED',
  `DATA_ROLE` longtext COLLATE utf8_bin NOT NULL COMMENT '工厂GID',
  `WORK_CENTER_GID` longtext COLLATE utf8_bin COMMENT '工作中心',
  `WORK_CENTER_CODE` longtext COLLATE utf8_bin COMMENT '工作中心编码',
  `WORK_CENTER_NAME` longtext COLLATE utf8_bin COMMENT '工作中心名称',
  `DATA_ROLE1` longtext COLLATE utf8_bin COMMENT '工作中心 GID',
  `DATA_ROLE2` longtext COLLATE utf8_bin COMMENT '工作中心层级权值',
  `UDI_GID` longtext COLLATE utf8_bin COMMENT '类型属性GID',
  `UDI_CODE` longtext COLLATE utf8_bin COMMENT '类型属性编码',
  `UDI_NAME` longtext COLLATE utf8_bin COMMENT '类型属性名称',
  `EX_BIG_TYPE_CODE` longtext COLLATE utf8_bin COMMENT '异常大类编码',
  `UDA1C` longtext COLLATE utf8_bin COMMENT '备用字段1编码',
  `UDA1N` longtext COLLATE utf8_bin COMMENT '备用字段1名称',
  `UDA2C` longtext COLLATE utf8_bin COMMENT '备用字段2编码',
  `UDA2N` longtext COLLATE utf8_bin COMMENT '备用字段2名称',
  `UDA3C` longtext COLLATE utf8_bin COMMENT '备用字段3编码',
  `UDA3N` longtext COLLATE utf8_bin COMMENT '备用字段3名称',
  `UDA4C` longtext COLLATE utf8_bin COMMENT '备用字段4编码',
  `UDA4N` longtext COLLATE utf8_bin COMMENT '备用字段4名称',
  `UDA5C` longtext COLLATE utf8_bin COMMENT '备用字段5编码',
  `UDA5N` longtext COLLATE utf8_bin COMMENT '备用字段5名称',
  `DUTY_ROLE` longtext COLLATE utf8_bin COMMENT '责任角色',
  `IS_RELEVANCY_TRACK` int(11) DEFAULT '1' COMMENT '是否关联派工单 0 否  1 是',
  PRIMARY KEY (`GID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='异常类型';


-- zj_data.dm_expense_result definition

CREATE TABLE `dm_expense_result` (
  `toalamount` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'toalamount',
  `orgnumber` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'orgnumber',
  `orgname` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'orgname',
  `caiwuzuzhi` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'caiwuzuzhi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_expense_result';


-- zj_data.dm_expense_result_2 definition

CREATE TABLE `dm_expense_result_2` (
  `totalamount` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '总金额',
  `caiwuzuzhi` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '财务组织',
  `expensetype` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '费用类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_expense_result_2';


-- zj_data.dm_hy_test definition

CREATE TABLE `dm_hy_test` (
  `test1` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'test1',
  `test2` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'test2',
  `test3` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'test3',
  `test4` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'test4',
  `test5` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'test5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_hy_test';


-- zj_data.dm_income definition

CREATE TABLE `dm_income` (
  `fk_crrc_company` longtext COLLATE utf8_bin COMMENT '公司',
  `income` longtext COLLATE utf8_bin COMMENT '营业收入',
  `cost` longtext COLLATE utf8_bin COMMENT '营业成本',
  `retaines_profits` longtext COLLATE utf8_bin COMMENT '净利润',
  `profit` longtext COLLATE utf8_bin COMMENT '利润总额',
  `fk_crrc_yingyeshouru` double(8,2) DEFAULT NULL COMMENT '营业收入预算',
  `fk_crrc_yingyechengben` double(8,2) DEFAULT NULL COMMENT '营业成本预算',
  `fk_crrc_jinglirun` double(8,2) DEFAULT NULL COMMENT '净利润预算',
  `fk_crrc_lirunzonge` double(8,2) DEFAULT NULL COMMENT '利润总额预算',
  `fk_crrc_year` date DEFAULT NULL,
  `belong` longtext COLLATE utf8_bin COMMENT '所属',
  `receivable` longtext COLLATE utf8_bin COMMENT '应收账款',
  `new_order` longtext COLLATE utf8_bin COMMENT '新签订单',
  `fk_crrc_yingshoumoney` double(8,2) DEFAULT NULL COMMENT '应收账款预算',
  `fk_crrc_neworderqty` double(8,2) DEFAULT NULL COMMENT '新签订单预算'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_income';


-- zj_data.dm_inspection_functree definition

CREATE TABLE `dm_inspection_functree` (
  `product_line` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '产品线编号',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品线名称',
  `sums` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '装配构型数量',
  `id` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='装配构型统计';


-- zj_data.dm_inv_pord_result definition

CREATE TABLE `dm_inv_pord_result` (
  `fid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料id',
  `materialNum` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `fname_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名',
  `cnt_inv` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '库存记录条数',
  `cnt_pord` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单记录条数',
  `materialType` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料来源类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_物料库存和订单查询结果_mdmeas不一致';


-- zj_data.dm_inv_pord_result_luoyang definition

CREATE TABLE `dm_inv_pord_result_luoyang` (
  `fid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料id',
  `materialNum` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `helpCode` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '助记码',
  `fname_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名',
  `cnt_inv` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '库存记录条数',
  `cnt_pord` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单记录条数',
  `materialType` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料来源类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_物料库存和订单查询结果_洛阳数据';


-- zj_data.dm_ldcgcbzs definition

CREATE TABLE `dm_ldcgcbzs` (
  `LLDH` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '领料单号',
  `LLQJ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '领料期间',
  `WLBM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `XMH` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `SL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数量',
  `DJ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单价',
  `LLSJCB` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '领料实际成本',
  `WMSSHDH` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'WMS收货单号',
  `RKDH` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单号',
  `RKDJ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单价',
  `SJCB` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实际成本',
  `YFDH` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '应付单号',
  `YFDJ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '应付单价',
  `YFJE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '应付金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_ldcgcbzs';


-- zj_data.dm_lingliao_full definition

CREATE TABLE `dm_lingliao_full` (
  `FID` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'FID',
  `TBSTATUS` int(11) DEFAULT NULL COMMENT 'TBSTATUS',
  `TBDATE` date DEFAULT NULL COMMENT 'TBDATE',
  `TBETRACKNUMBER` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'TBETRACKNUMBER',
  `TBETRACKNAME` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'TBETRACKNAME',
  `TBORGNAME` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'TBORGNAME',
  `TBEMATERIALNUMBER` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'TBEMATERIALNUMBER',
  `TBEMATERIALNAME` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'TBEMATERIALNAME',
  `TBEUNITNAME` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'TBEUNITNAME',
  `TBEWARENAME` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'TBEWARENAME',
  `TBEOPNAME` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'TBEOPNAME',
  `TBEWCNAME` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'TBEWCNAME',
  `TBEFQTY` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'TBEFQTY',
  `TBTIMESTOCK` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'TBTIMESTOCK',
  `TBPSSTATUS` bigint(20) DEFAULT NULL COMMENT 'TBPSSTATUS',
  `TBWMSSTATUS` int(11) DEFAULT NULL COMMENT 'TBWMSSTATUS',
  `STATUS` varchar(254) COLLATE utf8_bin DEFAULT NULL COMMENT 'STATUS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_lingliao_full';


-- zj_data.dm_locationdefined_result definition

CREATE TABLE `dm_locationdefined_result` (
  `lname` longtext COLLATE utf8_bin COMMENT 'lname',
  `lnumber` longtext COLLATE utf8_bin COMMENT 'lnumber',
  `sname` longtext COLLATE utf8_bin COMMENT 'sname',
  `snumber` longtext COLLATE utf8_bin COMMENT 'snumber',
  `remark` longtext COLLATE utf8_bin COMMENT 'remark',
  `status` longtext COLLATE utf8_bin COMMENT 'status',
  `pnumber` longtext COLLATE utf8_bin COMMENT 'pnumber',
  `pname` longtext COLLATE utf8_bin COMMENT 'pname',
  `adjtime` longtext COLLATE utf8_bin COMMENT 'adjtime'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_locationdefined_RESULT';


-- zj_data.dm_mat_inv_pord_result definition

CREATE TABLE `dm_mat_inv_pord_result` (
  `fid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料ID',
  `fnumber` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `mat_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名称',
  `cnt_inv` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '库存记录条数',
  `cnt_pord` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单条数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_物料库存及订单情况';


-- zj_data.dm_mdm_eas_mat definition

CREATE TABLE `dm_mdm_eas_mat` (
  `id` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `mdm_name` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'MDM_物料名称',
  `mdm_dxlg` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'MDM_DXLG',
  `mdm_mat` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'MDM_MAT',
  `mdm_isdesc` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'MDM_ISDESC',
  `mdm_unit` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'MDM_计量单位',
  `eas_name` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'EAS_物料名称',
  `eas_dxlg` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'EAS_规格型号（大小量纲）',
  `eas_mat` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'EAS_材质（基本物料）',
  `eas_isdesc` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'EAS_标准',
  `eas_unit` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'EAS_计量单位',
  `is_name` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'Is_Name',
  `is_dxlg` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'Is_DXLG',
  `is_mat` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'Is_MAT',
  `is_isdesc` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'Is_ISDESC',
  `is_unit` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'Is_Unit',
  `is_true` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'Is_True',
  `update_time` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'update_time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='MDM与EAS物料比较';


-- zj_data.dm_mdm_eas_materialraw_xls definition

CREATE TABLE `dm_mdm_eas_materialraw_xls` (
  `materialNum` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `materialType` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '物料来源类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='mdmeas物料不一致';


-- zj_data.dm_mes_exception definition

CREATE TABLE `dm_mes_exception` (
  `ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID',
  `EXCEPTIONTYPENAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '异常类型名称',
  `EXCEPTIONTYPECODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '异常类型编码',
  `STATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节点状态',
  `EXCEPTIONREMARK` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序名称',
  `LAUNCHID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发起人id',
  `FAQIREN` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发起人',
  `SINGERCARCODE` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `LAUNCHDATE` datetime DEFAULT NULL COMMENT '发起时间',
  `RESPONSEID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '响应人id',
  `RESPONSENAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '响应人',
  `RESPONSEDATE` datetime DEFAULT NULL COMMENT '响应时间',
  `PLANPROCESSDATE` int(11) DEFAULT NULL COMMENT '预计处理时间',
  `HANDLID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处理人Id',
  `HANDNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处理人',
  `HANDLDATE` datetime DEFAULT NULL COMMENT '处理时间',
  `CLOSEID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关闭人id',
  `CLOSENAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关闭人',
  `CLOSEDATE` datetime DEFAULT NULL COMMENT '关闭时间',
  `OPCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序编码',
  `CARCODE` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `LOCATIONNAME` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `GROUPNAME` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `MRLCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `MRLNAME` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名',
  `CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '异常记录编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_mes_异常数据';


-- zj_data.dm_mes_exception_ct definition

CREATE TABLE `dm_mes_exception_ct` (
  `ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID',
  `EXCEPTIONTYPENAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '异常类型名称',
  `EXCEPTIONTYPECODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '异常类型编码',
  `STATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节点状态',
  `EXCEPTIONREMARK` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '异常描述',
  `OPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序名称',
  `LAUNCHID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发起人id',
  `FAQIREN` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发起人',
  `SINGERCARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节车号',
  `LAUNCHDATE` date DEFAULT NULL COMMENT '发起时间',
  `RESPONSEID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '响应人id',
  `RESPONSENAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '响应人',
  `RESPONSEDATE` date DEFAULT NULL COMMENT '响应时间',
  `PLANPROCESSDATE` int(11) DEFAULT NULL COMMENT '预计处理时间',
  `HANDLID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处理人Id',
  `HANDNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处理人',
  `HANDLDATE` date DEFAULT NULL COMMENT '处理时间',
  `CLOSEID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关闭人id',
  `CLOSENAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关闭人',
  `CLOSEDATE` date DEFAULT NULL COMMENT '关闭时间',
  `OPCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序编码',
  `CARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `LOCATIONNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车间名称',
  `GROUPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '班组',
  `PROJECT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `MRLCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `mat_name` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '物料名称',
  `CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '异常记录编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_mes_异常数据_车体';


-- zj_data.dm_mes_plan_finish_rate definition

CREATE TABLE `dm_mes_plan_finish_rate` (
  `yearRate` float(100,4) DEFAULT NULL,
  `monthRate` float(100,4) DEFAULT NULL,
  `ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='计划完成率';


-- zj_data.dm_mes_station_finish_plan definition

CREATE TABLE `dm_mes_station_finish_plan` (
  `groupname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '班组',
  `finshed` int(11) DEFAULT NULL COMMENT '完成数',
  `unfinished` int(11) DEFAULT NULL COMMENT '未完成数',
  `plansum` int(11) DEFAULT NULL COMMENT '计划总量',
  `finishrate` float(100,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='工位完成计划';


-- zj_data.dm_mes_view_op_task_gx definition

CREATE TABLE `dm_mes_view_op_task_gx` (
  `DISPATCH_CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '派工单号',
  `ORDER_CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '订单号',
  `PRODU_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品名称',
  `MRL_CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '物料名称',
  `STATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `MANUFACTURING_UNIT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '制造单位',
  `WORKSHOP` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车间',
  `WORK_CENTER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产线',
  `WORK_CELL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工位',
  `ROUTE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工艺路线',
  `OP_CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序编码',
  `OP_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序名称',
  `WORK_EMP` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工作人员',
  `PROJECT_CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `PROJECT_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `CAR_CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `G8_GOU_XING_CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '系统编码',
  `G8_LOCATION_CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区域位置编码',
  `G8_PHYSICAL_OBJECT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '组件实物与否',
  `G8_MANU_CI` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '制造CI',
  `G8_PHYSICAL_ORDER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '序列号管理',
  `actual_begin_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实际开始时间',
  `actual_end_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实结束时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='制造追溯宽表';


-- zj_data.dm_mes_work_order definition

CREATE TABLE `dm_mes_work_order` (
  `ID` varchar(800) COLLATE utf8_bin DEFAULT NULL,
  `PROJECT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `PROJECTNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `CARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `SINGERCARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节车号',
  `PRODUCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品物料编码',
  `PRODUNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品物料名称',
  `OPCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序编码',
  `OPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序名称',
  `PLANNEDSTARTTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计划开始时间',
  `PLANNEDENDTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计划结束时间',
  `ACTUALBEGINTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实际开始时间',
  `ACTUALENDTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实际结束时间',
  `STARTEMPLOYEENAMES` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开工人',
  `GROUPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '班组',
  `WORKADJUSTDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '派活状态',
  `DISCODESTATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产状态',
  `UDATRANSMIT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '下达状态',
  `STARTDAQCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开工人',
  `TASKDISPATCHER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '被派活人',
  `type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_MES_工单工序';


-- zj_data.dm_mes_work_order_actual definition

CREATE TABLE `dm_mes_work_order_actual` (
  `ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工单主键',
  `PROJECT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `PROJECTNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `CARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `SINGERCARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节车号',
  `PRODUCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品物料编码',
  `PRODUNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品物料名称',
  `OPCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序编码',
  `OPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序名称',
  `PLANNEDSTARTTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计划开始时间',
  `PLANNEDENDTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计划结束时间',
  `ACTUALBEGINTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实际开始时间',
  `ACTUALENDTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实际结束时间',
  `STARTEMPLOYEENAMES` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开工人',
  `GROUPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '班组',
  `WORKADJUSTDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '派活状态',
  `DISCODESTATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产状态',
  `UDATRANSMIT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '下达状态',
  `STARTDAQCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开工人',
  `TASKDISPATCHER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '被派活人',
  `Type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序类别'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='实际工序工单';


-- zj_data.dm_mes_work_order_ct definition

CREATE TABLE `dm_mes_work_order_ct` (
  `ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工单主键',
  `PROJECT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `PROJECTNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `CARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `SINGERCARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节车号',
  `PRODUCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品物料编码',
  `PRODUNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品物料名称',
  `OPCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序编码',
  `OPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序名称',
  `PLANNEDSTARTTIME` datetime DEFAULT NULL,
  `PLANNEDENDTIME` datetime DEFAULT NULL,
  `ACTUALBEGINTIME` datetime DEFAULT NULL,
  `ACTUALENDTIME` datetime DEFAULT NULL,
  `STARTEMPLOYEENAMES` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开工人',
  `GROUPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '班组',
  `WORKADJUSTDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '派活状态',
  `DISCODESTATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产状态',
  `UDATRANSMIT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '下达状态',
  `STARTDAQCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开工人',
  `TASKDISPATCHER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '被派活人',
  `type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序类别'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_mes_工单工序_车体';


-- zj_data.dm_mes_work_order_p definition

CREATE TABLE `dm_mes_work_order_p` (
  `ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工单主键',
  `PROJECT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `PROJECTNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `CARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `SINGERCARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节车号',
  `PRODUCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品物料编码',
  `PRODUNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品物料名称',
  `OPCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序编码',
  `OPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序名称',
  `PLANNEDSTARTTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计划开始时间',
  `PLANNEDENDTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计划结束时间',
  `ACTUALBEGINTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实际开始时间',
  `ACTUALENDTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实际结束时间',
  `STARTEMPLOYEENAMES` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开工人',
  `GROUPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '班组',
  `WORKADJUSTDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '派活状态',
  `DISCODESTATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产状态',
  `UDATRANSMIT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '下达状态',
  `STARTDAQCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开工人',
  `TASKDISPATCHER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '被派活人',
  `Type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序类别'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='工序工单_copy';


-- zj_data.dm_mes_work_order_plan definition

CREATE TABLE `dm_mes_work_order_plan` (
  `ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工单主键',
  `PROJECT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `PROJECTNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `CARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `SINGERCARCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节车号',
  `PRODUCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品物料编码',
  `PRODUNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品物料名称',
  `OPCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序编码',
  `OPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序名称',
  `PLANNEDSTARTTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计划开始时间',
  `PLANNEDENDTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计划结束时间',
  `ACTUALBEGINTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实际开始时间',
  `ACTUALENDTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实际结束时间',
  `STARTEMPLOYEENAMES` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开工人',
  `GROUPNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '班组',
  `WORKADJUSTDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '派活状态',
  `DISCODESTATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产状态',
  `UDATRANSMIT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '下达状态',
  `STARTDAQCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开工人',
  `TASKDISPATCHER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '被派活人',
  `Type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序类别'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='计划工序工单';


-- zj_data.dm_mis_sysuserinfo definition

CREATE TABLE `dm_mis_sysuserinfo` (
  `uLoginName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'uLoginName',
  `uLoginPWD` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'uLoginPWD',
  `uRealName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'uRealName',
  `udepart` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'udepart',
  `ubanzu` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ubanzu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';


-- zj_data.dm_mm_5year definition

CREATE TABLE `dm_mm_5year` (
  `fk_crrc_year` date DEFAULT NULL COMMENT 'fk_crrc_year',
  `fk_crrc_company` longtext COLLATE utf8_bin COMMENT 'fk_crrc_company',
  `plan_income` longtext COLLATE utf8_bin COMMENT 'plan_income',
  `fk_crrc_currentyearcount1` longtext COLLATE utf8_bin COMMENT 'fk_crrc_currentyearcount1',
  `last_year_income` longtext COLLATE utf8_bin COMMENT 'last_year_income'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_mm_5year';


-- zj_data.dm_mm_6percent definition

CREATE TABLE `dm_mm_6percent` (
  `fk_crrc_company` longtext COLLATE utf8_bin COMMENT 'fk_crrc_company',
  `fk_crrc_year` date DEFAULT NULL COMMENT 'fk_crrc_year',
  `type` longtext COLLATE utf8_bin COMMENT 'type',
  `actual_value` longtext COLLATE utf8_bin COMMENT 'actual_value',
  `plan` longtext COLLATE utf8_bin COMMENT 'plan',
  `benchmarking` longtext COLLATE utf8_bin COMMENT 'benchmarking',
  `complete_percent` longtext COLLATE utf8_bin COMMENT 'complete_percent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='一利五率';


-- zj_data.dm_mm_business definition

CREATE TABLE `dm_mm_business` (
  `type` longtext COLLATE utf8_bin COMMENT 'type',
  `income_plan` longtext COLLATE utf8_bin COMMENT 'income_plan',
  `fk_crrc_operatingrevenue` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_operatingrevenue',
  `fk_crrc_company` longtext COLLATE utf8_bin COMMENT 'fk_crrc_company',
  `fk_crrc_year` date DEFAULT NULL COMMENT 'fk_crrc_year',
  `last_year_rate` longtext COLLATE utf8_bin COMMENT 'last_year_rate',
  `fk_crrc_operatingrevenue_1` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_operatingrevenue_1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_mm_business';


-- zj_data.dm_mm_income definition

CREATE TABLE `dm_mm_income` (
  `fk_crrc_company` longtext COLLATE utf8_bin COMMENT 'fk_crrc_company',
  `income` longtext COLLATE utf8_bin COMMENT 'income',
  `cost` longtext COLLATE utf8_bin COMMENT 'cost',
  `retaines_profits` longtext COLLATE utf8_bin COMMENT 'retaines_profits',
  `profit` longtext COLLATE utf8_bin COMMENT 'profit',
  `new_order` longtext COLLATE utf8_bin COMMENT 'new_order',
  `receivable` longtext COLLATE utf8_bin COMMENT 'receivable',
  `fk_crrc_yingyeshouru` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_yingyeshouru',
  `fk_crrc_yingyechengben` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_yingyechengben',
  `fk_crrc_jinglirun` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_jinglirun',
  `fk_crrc_lirunzonge` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_lirunzonge',
  `fk_crrc_year` date DEFAULT NULL COMMENT 'fk_crrc_year',
  `fk_crrc_neworderqty` longtext COLLATE utf8_bin COMMENT 'fk_crrc_neworderqty',
  `fk_crrc_yingshoumoney` longtext COLLATE utf8_bin COMMENT 'fk_crrc_yingshoumoney',
  `belong` longtext COLLATE utf8_bin COMMENT 'belong'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='营业收入-收入利润-应收账款';


-- zj_data.dm_mm_incomeprofit definition

CREATE TABLE `dm_mm_incomeprofit` (
  `fk_crrc_company` longtext COLLATE utf8_bin COMMENT 'fk_crrc_company',
  `income` longtext COLLATE utf8_bin COMMENT 'income',
  `cost` longtext COLLATE utf8_bin COMMENT 'cost',
  `retaines_profits` longtext COLLATE utf8_bin COMMENT 'retaines_profits',
  `profit` longtext COLLATE utf8_bin COMMENT 'profit',
  `new_order` longtext COLLATE utf8_bin COMMENT 'new_order',
  `receivable` longtext COLLATE utf8_bin COMMENT 'receivable',
  `fk_crrc_yingyeshouru` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_yingyeshouru',
  `fk_crrc_yingyechengben` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_yingyechengben',
  `fk_crrc_jinglirun` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_jinglirun',
  `fk_crrc_lirunzonge` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_lirunzonge',
  `fk_crrc_year` date DEFAULT NULL COMMENT 'fk_crrc_year',
  `fk_crrc_neworderqty` longtext COLLATE utf8_bin COMMENT 'fk_crrc_neworderqty',
  `fk_crrc_yingshoumoney` longtext COLLATE utf8_bin COMMENT 'fk_crrc_yingshoumoney',
  `belong` longtext COLLATE utf8_bin COMMENT 'belong'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='营业收入-收入利润';


-- zj_data.dm_mm_market definition

CREATE TABLE `dm_mm_market` (
  `type` longtext COLLATE utf8_bin COMMENT '类型',
  `income_plan` longtext COLLATE utf8_bin COMMENT '计划',
  `fk_crrc_operatingrevenue` double(16,2) DEFAULT NULL COMMENT '达成',
  `fk_crrc_company` longtext COLLATE utf8_bin COMMENT '公司',
  `fk_crrc_year` date DEFAULT NULL COMMENT '年份'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='营业收入-市场类型';


-- zj_data.dm_mm_order definition

CREATE TABLE `dm_mm_order` (
  `project_number` longtext COLLATE utf8_bin COMMENT '项目编号',
  `fk_crrc_projectstatus` longtext COLLATE utf8_bin COMMENT '工作令号的状态',
  `fworkno` longtext COLLATE utf8_bin COMMENT '节点号码',
  `fplanenddate` date DEFAULT NULL COMMENT '计划完成时间',
  `fk_crrc_carcoutnum` longtext COLLATE utf8_bin COMMENT '车辆总数',
  `finish_amount` longtext COLLATE utf8_bin COMMENT '已完成数',
  `fk_crrc_contractamout` double(16,4) DEFAULT NULL COMMENT '计划收入',
  `fk_crrc_carunitprice` double(16,4) DEFAULT NULL COMMENT '单价',
  `fk_crrc_customerid` bigint(20) DEFAULT NULL COMMENT '客户',
  `customer_name` longtext COLLATE utf8_bin COMMENT '客户名称',
  `fk_crrc_contractcard` bigint(20) DEFAULT NULL COMMENT '合同',
  `contract_number` longtext COLLATE utf8_bin COMMENT '合同编码',
  `ftotalamount` double(16,4) DEFAULT NULL COMMENT '已确认收入',
  `risk_type` longtext COLLATE utf8_bin COMMENT '风险类别'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_mm_order';


-- zj_data.dm_mm_plate definition

CREATE TABLE `dm_mm_plate` (
  `type` longtext COLLATE utf8_bin COMMENT '类型',
  `income_plan` longtext COLLATE utf8_bin COMMENT '收入计划',
  `fk_crrc_operatingrevenue` double(16,2) DEFAULT NULL COMMENT '收入达成',
  `fk_crrc_company` longtext COLLATE utf8_bin COMMENT '公司',
  `fk_crrc_year` date DEFAULT NULL COMMENT '年份'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_mm_plate';


-- zj_data.dm_mm_type_detail_income definition

CREATE TABLE `dm_mm_type_detail_income` (
  `type_first` longtext COLLATE utf8_bin COMMENT 'type_first',
  `type_second` longtext COLLATE utf8_bin COMMENT 'type_second',
  `type_third` longtext COLLATE utf8_bin COMMENT 'type_third',
  `fk_crrc_operatingrevenue` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_operatingrevenue',
  `plan_operatingrevenue` longtext COLLATE utf8_bin COMMENT 'plan_operatingrevenue',
  `fk_crrc_operatingrevenue_1` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_operatingrevenue_1',
  `current_year` longtext COLLATE utf8_bin COMMENT 'current_year',
  `fk_crrc_company` longtext COLLATE utf8_bin COMMENT 'fk_crrc_company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_mm_type_detail_income';


-- zj_data.dm_mysql_t_im_purinwarehsbill definition

CREATE TABLE `dm_mysql_t_im_purinwarehsbill` (
  `FNUMBER_1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `FAUDITTIME` date DEFAULT NULL COMMENT '入库单审核日期',
  `fbizdate` date DEFAULT NULL COMMENT '入库单业务日期',
  `FBASESTATUS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单状态',
  `FBASESTATUS1` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同状态_EAS',
  `FBILLSTATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同状态_线上',
  `FNAME_L2_1` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务类型',
  `FNAME_L2_2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '事务类型',
  `FNUMBER_2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '库存组织',
  `FQTY` int(11) DEFAULT NULL,
  `FWRITTENOFFQTY` int(11) DEFAULT NULL,
  `FUNWRITEOFFQTY` int(11) DEFAULT NULL,
  `CFUNLOCKQTY` int(11) DEFAULT NULL,
  `CFWkpsl` int(11) DEFAULT NULL,
  `CFCONTRACTPRICE` double(65,30) DEFAULT NULL,
  `FPRICE` double(65,30) DEFAULT NULL,
  `CFPURPRICEORIGINAL` double(65,30) DEFAULT NULL,
  `FTAXRATE` double(65,30) DEFAULT NULL,
  `CFTAXRATE` double(65,30) DEFAULT NULL,
  `FEXCHANGERATE` double(65,30) DEFAULT NULL,
  `CFEXCHANGERATE` double(65,30) DEFAULT NULL,
  `FWRITTENOFFAMOUNT` decimal(65,30) DEFAULT NULL COMMENT '已核销_不含税_人民币',
  `FUNWRITEOFFAMOUNT` decimal(65,30) DEFAULT NULL COMMENT '未核销_不含税_人民币',
  `FPURORDERNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '核心单据号',
  `CFPRICINGNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '定价单号',
  `FNAME_L2_4` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组',
  `FNAME_L2_5` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购员',
  `FMATERIALID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料ID',
  `FBALANCESUPPLIERID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商ID',
  `FNAME_L2_6` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `FNUMBER_3` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `CFPURCONTRACTNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购合同号_EAS',
  `FAUDITTIME_1` date DEFAULT NULL,
  `FNumber_4` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同编号_线上',
  `CFAdultTime` date DEFAULT NULL COMMENT '合同生效时间_线上',
  `FNAME_L2_3` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `fpurprice` double(65,30) DEFAULT NULL,
  `CFTAXRATE_1` double(65,30) DEFAULT NULL,
  `supName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_mysql_采购入库';


-- zj_data.dm_ncr_reportsum definition

CREATE TABLE `dm_ncr_reportsum` (
  `code` longtext COLLATE utf8_bin COMMENT '单据编码',
  `departCode` longtext COLLATE utf8_bin NOT NULL COMMENT '部件号',
  `ncrNum` int(11) DEFAULT NULL,
  `department` longtext COLLATE utf8_bin COMMENT '发生单位',
  `beginTime` date DEFAULT NULL COMMENT '发生日期',
  `result` longtext COLLATE utf8_bin COMMENT '评审结果及处理意见',
  `subjectNum` longtext COLLATE utf8_bin COMMENT '项目号',
  `trackNum` longtext COLLATE utf8_bin COMMENT '跟踪号',
  `reviewLevel` int(11) DEFAULT NULL COMMENT '评审级别',
  `responsLevel` longtext COLLATE utf8_bin COMMENT '责任类别',
  `storageOrganization` longtext COLLATE utf8_bin COMMENT '库存组织',
  `originator` longtext COLLATE utf8_bin COMMENT '制单人',
  `internalRespons` longtext COLLATE utf8_bin COMMENT '内部责任单位',
  `externalRespons` longtext COLLATE utf8_bin COMMENT '外部责任单位',
  `closeTime` date DEFAULT NULL COMMENT '关闭时间',
  `destroReasonCode` longtext COLLATE utf8_bin COMMENT '质量损失原因代码',
  `destroReason` longtext COLLATE utf8_bin COMMENT '质量损失原因'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_NCR_REPORTSUM';


-- zj_data.dm_ncrauditor definition

CREATE TABLE `dm_ncrauditor` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FSEQ` int(11) NOT NULL DEFAULT '0' COMMENT 'FSEQ',
  `FPARENTID` varchar(44) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'FPARENTID',
  `CFSEQ` int(11) DEFAULT NULL COMMENT 'CFSEQ',
  `CFREVIEWDEPTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFREVIEWDEPTID',
  `CFREVIEWROLEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFREVIEWROLEID',
  `CFREVIEWERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFREVIEWERID',
  `CFENDORSEDATE` date DEFAULT NULL COMMENT 'CFENDORSEDATE',
  `CFDISREVIEW` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFDISREVIEW',
  `CFARBITRATIONRESULT` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFARBITRATIONRESULT',
  `CFREPAIRPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFREPAIRPERSONID',
  `CFARBITRATIONPERSO` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFARBITRATIONPERSO',
  `CFREPAIRRESULT` varchar(337) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFREPAIRRESULT',
  `CFREVIEWRESULT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFREVIEWRESULT',
  `CFREVIEWDATE` date DEFAULT NULL COMMENT 'CFREVIEWDATE',
  `CFREMARK` varchar(750) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFREMARK',
  `CFZYLY` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFZYLY',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='不合格评审人员记录表';


-- zj_data.dm_ncrmbill definition

CREATE TABLE `dm_ncrmbill` (
  `FFIVOUCHERED` int(11) DEFAULT NULL COMMENT '是否生成凭证',
  `CFAUDITLEVEL` int(11) DEFAULT NULL COMMENT '评审级别',
  `CFMATERIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `mat_name` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '物料名称',
  `CFMEASUREUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '计量单位',
  `CFQTY` double(28,10) DEFAULT NULL COMMENT '不合格数量',
  `CFOCCURDEPTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '发生单位',
  `CFLOTNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '批次号',
  `CFSERIALNUMBER` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `CFSUPPLIERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商',
  `CFPRODUCEDATE` date DEFAULT NULL COMMENT '生产日期',
  `CFPROJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '项目',
  `CFDEALRESULT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处置措施实施情况',
  `CFVALIDATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪验证人员',
  `CFVALIDATEDATE` date DEFAULT NULL COMMENT '验证日期',
  `CFRELEASEREMARK` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '让步放行批准意见',
  `CFRELEASEAUDITDATE` date DEFAULT NULL COMMENT '批准日期',
  `CFFINISHDATE` date DEFAULT NULL COMMENT '完成期限',
  `CFTRACESIGN` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '追溯标识信息',
  `CFAUDITPRESIDERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '评审主持者',
  `CFPRODUCTDEPTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '生产交付部门',
  `CFREPORTMANID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '报告人员',
  `CFDUTYCLASS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任原因分类',
  `CFDUTYDEPTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位',
  `CFDUTYCLASSGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '责任班组',
  `CFDEALHOUR` double(28,1) DEFAULT NULL COMMENT '处置工时',
  `CFDEALCLASSGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '处置班组/车间',
  `CFISRELEASE` int(11) DEFAULT NULL COMMENT '是否让步放行',
  `CFRELEASEAREA` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '放行范围',
  `CFSENDMATERIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '隶尾交付部件物料号',
  `CFSENDSERIALNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '交付件序列号',
  `CFRESTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任分类',
  `CFSTATUS` int(11) DEFAULT NULL COMMENT '状态',
  `CFAUDITCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '评审组织者',
  `CFRELEASEAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '让步放行批准人员',
  `CFACTIONDEPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '处置单位',
  `CFREPIARPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '返修人',
  `CFLIABILITYCAUESID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '责任原因分类',
  `CFUNQUALIFIEDSUPPL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格供应商',
  `CFOPERATION` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序',
  `CFTTACKNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号',
  `CFWORKCENTERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '工作中心',
  `CFPURORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组织',
  `CFWAREHOUSEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '调拨出库房',
  `CFBACKREPAIRID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '回修',
  `CFBACKREPAIRMATTER` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '回修内容',
  `FNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编号',
  `FBIZDATE` date DEFAULT NULL COMMENT '业务日期',
  `FHANDLERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '经手人',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT '是否曾经生效',
  `FAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '审核人',
  `FSOURCEBILLID` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '原始单据ID',
  `FSOURCEFUNCTION` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '来源功能',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `FCREATETIME` date DEFAULT NULL COMMENT '创建时间',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '最后修改者',
  `FLASTUPDATETIME` date DEFAULT NULL COMMENT '最后修改时间',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '控制单元',
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'id主键',
  `CFCOSTOBJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '成本对象',
  `CFREFURTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '回修类型',
  `CFDISPOSALUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '单位',
  `CFDISPOSALDEPTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位',
  `CFISGETNCR` int(11) DEFAULT NULL COMMENT '是否wms接收单据',
  `CFNCRSOURCE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据来源控制',
  `CFPASSAUDITDATE` date DEFAULT NULL COMMENT '评审完毕时间',
  `CFDISCOVERYCLASS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发现阶段',
  `CFDISPOSALMETHOD` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处置方式',
  `CFMASSLOSSTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '质量损失类别',
  `CFMASSLOSSCAID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '质量损失原因',
  `CFTRIAL` int(11) DEFAULT NULL COMMENT '试制标识',
  `CFPROJECTNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '手工输入项目号名称',
  `CFSUPPLIERNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `CFDUTYDEPTNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '责任单位名称',
  `CFOCCURDEPTNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '发现部门名称',
  `CFPRODUCTDEPTNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '手工不合格输入供应商',
  `CFDEALSOLUTION` varchar(4000) COLLATE utf8_bin DEFAULT NULL COMMENT '处置方案评审/风险分析',
  `FDESCRIPTION` varchar(4000) COLLATE utf8_bin DEFAULT NULL COMMENT '参考信息',
  `CFISLOSS` int(11) DEFAULT NULL COMMENT '是否导致质量损失',
  `CFISMEASURES` int(11) DEFAULT NULL COMMENT '是否采取纠正措施',
  `CFNCRTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '类别',
  `CFNCRMNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '来源单号',
  `CFUNQUALIFIEDREMARK` varchar(750) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格描述',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='不合格报告事实宽表';


-- zj_data.dm_operation_result definition

CREATE TABLE `dm_operation_result` (
  `fsnumber` longtext COLLATE utf8_bin COMMENT 'fsnumber',
  `fsname` longtext COLLATE utf8_bin COMMENT 'fsname',
  `fwcnumber` longtext COLLATE utf8_bin COMMENT 'fwcnumber',
  `fwcname` longtext COLLATE utf8_bin COMMENT 'fwcname',
  `fogname` longtext COLLATE utf8_bin COMMENT 'fogname',
  `fonumber` longtext COLLATE utf8_bin COMMENT 'fonumber',
  `foname` longtext COLLATE utf8_bin COMMENT 'foname',
  `flname` longtext COLLATE utf8_bin COMMENT 'flname',
  `flnumber` longtext COLLATE utf8_bin COMMENT 'flnumber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_operation_result';


-- zj_data.dm_phm_cms_qms definition

CREATE TABLE `dm_phm_cms_qms` (
  `phm_is_duplicated` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '是否重复故障',
  `phm_model_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车型编号',
  `phm_model` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车型',
  `phm_train_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `phm_date_time` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数据时间',
  `phm_read_ttime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '解析时间',
  `phm_kafka_time` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'Kafka时间',
  `phm_original_data` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '原始数据',
  `phm_ab` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ab节',
  `phm_ver` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '版本',
  `phm_fault_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障代码',
  `phm_start_time` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障发生时间',
  `carinfo_fk_crrc_cartype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车型',
  `carinfo_fk_crrc_cartype_phm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PHM车号',
  `carinfo_fk_crrc_carnumber_cms` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CMS车号',
  `carinfo_fk_crrc_newcarnum` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '新造车号',
  `carinfo_fk_crrc_projectid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `fm_fk_crrc_faultycode` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障代码',
  `fm_fk_crrc_faultyname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障名称',
  `fm_fk_crrc_partname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '部件名称',
  `fm_fk_crrc_partname_qun` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '零件名称（质保）',
  `fm_fk_crrc_partcode` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '零件编码',
  `resum_fk_crrc_serial` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `resum_fk_crrc_cartype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车型',
  `resum_fk_crrc_partnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '零件编号',
  `resum_fk_crrc_techversion` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '技术版本',
  `resum_fk_crrc_serialnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `resum_fk_crrc_singlecode` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单件码',
  `resum_fk_crrc_supplier` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商',
  `cms_id` int(11) DEFAULT NULL COMMENT 'CMSID',
  `cms_fn` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障单编号',
  `cms_report_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障（填报）日期',
  `cms_project_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目类型',
  `cms_product` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车型',
  `cms_vgn` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车组号',
  `cms_car_number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `cms_fault_nature` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障性质',
  `cms_registrant` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障填报人',
  `cms_discover_phase` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障发生阶段',
  `cms_klometers` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公里数',
  `cms_fault_desc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障描述',
  `cmsobj_configuration_location_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '故障系统位置',
  `cmsobj_one_parts_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '一级故障部件',
  `cmsobj_one_parts_supplier` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `cmsobj_two_parts_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '二级故障部件'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_phm_cms_qms';


-- zj_data.dm_pms_htlyl definition

CREATE TABLE `dm_pms_htlyl` (
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `ywc_num` int(11) DEFAULT NULL COMMENT '已完成数',
  `ygwc_num` int(11) DEFAULT NULL COMMENT '应该完成数',
  `htly_lv` double(100,5) DEFAULT NULL COMMENT '合同履约率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_pms_合同履约率';


-- zj_data.dm_pro_result definition

CREATE TABLE `dm_pro_result` (
  `PROJ_CODE` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '项目编码',
  `PROJ_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '项目id',
  `short_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '项目车号',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '详细名称',
  `plan_end_date` date DEFAULT NULL COMMENT '计划完成时间',
  `actual_end_date` date DEFAULT NULL COMMENT '实际完成时间',
  `status` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `bigname` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '大项目名称',
  `ename` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'ename',
  `delete_flag_3` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'delete_flag_3',
  `delete_flag_2` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'delete_flag_2',
  `delete_flag` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'delete_flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='项目展示表';


-- zj_data.dm_project_scjhwcqk definition

CREATE TABLE `dm_project_scjhwcqk` (
  `project_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `jc_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节车号',
  `gxflh_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序分录行id',
  `operation_no` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序号',
  `plan_end_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序计划完成时间',
  `status_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序状态',
  `status` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工序状态数值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_bom_项目生产计划完成情况';


-- zj_data.dm_purmaterial definition

CREATE TABLE `dm_purmaterial` (
  `FID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FID',
  `FNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `mat_name` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `FModel` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `FWarrantNumber` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `CFIsFastener` int(11) DEFAULT NULL COMMENT '是否通用件',
  `meau_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计量单位',
  `FDISPLAYNAME_L1` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '分类层次结构',
  `FLONGNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '分类层次代码',
  `FDISPLAYNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '分类层次名称',
  `PRIG_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '参考价格组',
  `PER_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '参考价格员',
  `FPRICE` double(100,0) DEFAULT NULL COMMENT '参考单价',
  `PER2_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '参考采购员',
  `PURG_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '参考采购组',
  `FLASTUPDATETIME` datetime DEFAULT NULL COMMENT '核准时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_PurMaterial';


-- zj_data.dm_purorder definition

CREATE TABLE `dm_purorder` (
  `FID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单id',
  `FCreateTime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单创建时间',
  `FNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单单据编号',
  `FBizDate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单业务日期',
  `FAuditTime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单审核时间',
  `FBaseStatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单状态',
  `FEntryBaseStatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单分录状态',
  `FIsSysBill` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单是否系统单据',
  `CFIsRetPurRequest` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单是否返回采购申请',
  `CFRETREASON` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `FISMANUALCLOSE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单分录手工关闭',
  `FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务类型',
  `sourceFNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '来源单据业务类型',
  `FPurchaseGroupID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组id',
  `personFNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购员姓名',
  `FSupplierID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商id',
  `CFSupplierID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配供应商id',
  `CFSUBORGID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '委托单位id',
  `CFCHECKCLOSECONTRACT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关闭合同签订',
  `CFISPUSHDOWNCONTRAT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '是否已下推合同',
  `FMaterialID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码id',
  `CFMaterialID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配物料编码',
  `fastCFMATERIALID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '通用件物料编码id',
  `FSourceBillNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '来源单据号id',
  `FQty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '订货数量',
  `FPrice` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单价不含税',
  `FTaxRate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '税率',
  `FTaxPrice` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '含税单价',
  `FAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '金额不含税原币',
  `FLocalAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '金额不含税人民币',
  `FTaxAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价税合计原币',
  `FLocalTaxAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价税合计人民币',
  `FTotalReceiptQty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '累计入库数量',
  `FTotalCancelledStockQty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '累计退库数量',
  `FCloseDate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关闭日期',
  `FProjectID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号id',
  `FCurrencyID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '币种id',
  `CFCONTRACTNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同卡片号',
  `yfnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'WEB合同单据编号',
  `CFSerialNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'WEB合同号',
  `contractbizdate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'WEB合同创建日期',
  `contractnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'eas合同单据编号',
  `CFPURCONTRACTNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'eas合同号',
  `contractfcreatetime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同创建时间',
  `CFOPENEDCOMQTY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '已开合同数量',
  `CFPRICINGNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '原定价单号',
  `CFPRICINGNUMBERnew` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '更新后定价单号',
  `CFPRICEUPDATEDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格更新日期',
  `ppbFAuditTime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '旧定价单审核时间',
  `ppbFNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '旧定价单编号',
  `cppCFAUDITTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '新定价单审核时间',
  `ccpFNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '新定价单编号',
  `CFPRICEBILLTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格来源但类型',
  `CFPRICESOURCENUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格来源单单据号',
  `CFEFFECTDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配生效日期',
  `CFLOSEDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配失效日期',
  `CFNewrate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配新比例',
  `CFOPENDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '通用件核准日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_purorder';


-- zj_data.dm_purorderbi definition

CREATE TABLE `dm_purorderbi` (
  `fid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单id',
  `FCreateTime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单创建时间',
  `FNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单单据编号',
  `FBizDate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单业务日期',
  `FAuditTime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单审核时间',
  `FBaseStatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单状态',
  `FEntryBaseStatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单分录状态',
  `FIsSysBill` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单是否系统单据',
  `CFIsRetPurRequest` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单是否返回采购申请',
  `CFRETREASON` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFRETREASON',
  `FISMANUALCLOSE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单分录手工关闭',
  `FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务类型',
  `sourceFNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '来源单据业务类型',
  `FPurchaseGroupID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组id',
  `personFNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购员姓名',
  `FSupplierID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商id',
  `CFSupplierID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配供应商id',
  `CFSUBORGID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '委托单位id',
  `CFCHECKCLOSECONTRACT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关闭合同签订',
  `CFISPUSHDOWNCONTRAT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '是否已下推合同',
  `FMaterialID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码id',
  `CFMaterialID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配物料编码',
  `fastCFMATERIALID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '通用件物料编码id',
  `FSourceBillNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '来源单据号id',
  `FQty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '订货数量',
  `FPrice` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单价不含税',
  `FTaxRate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '税率',
  `FTaxPrice` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '含税单价',
  `FAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '金额不含税原币',
  `FLocalAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '金额不含税人民币',
  `FTaxAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价税合计原币',
  `FLocalTaxAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价税合计人民币',
  `FTotalReceiptQty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '累计入库数量',
  `FTotalCancelledStockQty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '累计退库数量',
  `FCloseDate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关闭日期',
  `FProjectID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号id',
  `FCurrencyID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '币种id',
  `CFCONTRACTNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同卡片号',
  `yfnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'WEB合同单据编号',
  `CFSerialNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'WEB合同号',
  `contractbizdate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'WEB合同创建日期',
  `contractnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'eas合同单据编号',
  `CFPURCONTRACTNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'eas合同号',
  `contractfcreatetime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同创建时间',
  `CFOPENEDCOMQTY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '已开合同数量',
  `CFPRICINGNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '原定价单号',
  `CFPRICINGNUMBERnew` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '更新后定价单号',
  `CFPRICEUPDATEDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格更新日期',
  `ppbFAuditTime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '旧定价单审核时间',
  `ppbFNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '旧定价单编号',
  `cppCFAUDITTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '新定价单审核时间',
  `ccpFNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '新定价单编号',
  `CFPRICEBILLTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格来源但类型',
  `CFPRICESOURCENUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格来源单单据号',
  `CFEFFECTDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配生效日期',
  `CFLOSEDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配失效日期',
  `CFNewrate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配新比例',
  `CFOPENDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '通用件核准日期',
  `fpurchasename` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组名称',
  `fprojectname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `fsuppliername` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `fmaterialname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名称',
  `ffastmaterialname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '通用件物料名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_purorderbi';


-- zj_data.dm_purorderfinal definition

CREATE TABLE `dm_purorderfinal` (
  `FID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单id',
  `FCreateTime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单创建时间',
  `FNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单单据编号',
  `FBizDate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单业务日期',
  `FAuditTime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单审核时间',
  `FBaseStatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单状态',
  `FEntryBaseStatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单分录状态',
  `FIsSysBill` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单是否系统单据',
  `CFIsRetPurRequest` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单是否返回采购申请',
  `CFRETREASON` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFRETREASON',
  `FISMANUALCLOSE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购订单分录手工关闭',
  `FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务类型',
  `sourceFNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '来源单据业务类型',
  `FPurchaseGroupID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组id',
  `personFNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购员姓名',
  `FSupplierID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商id',
  `CFSupplierID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配供应商id',
  `CFSUBORGID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '委托单位id',
  `CFCHECKCLOSECONTRACT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关闭合同签订',
  `CFISPUSHDOWNCONTRAT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '是否已下推合同',
  `FMaterialID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码id',
  `CFMaterialID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配物料编码',
  `fastCFMATERIALID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '通用件物料编码id',
  `FSourceBillNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '来源单据号id',
  `FQty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '订货数量',
  `FPrice` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单价不含税',
  `FTaxRate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '税率',
  `FTaxPrice` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '含税单价',
  `FAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '金额不含税原币',
  `FLocalAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '金额不含税人民币',
  `FTaxAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价税合计原币',
  `FLocalTaxAmount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价税合计人民币',
  `FTotalReceiptQty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '累计入库数量',
  `FTotalCancelledStockQty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '累计退库数量',
  `FCloseDate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关闭日期',
  `FProjectID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号id',
  `FCurrencyID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '币种id',
  `CFCONTRACTNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同卡片号',
  `yfnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'WEB合同单据编号',
  `CFSerialNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'WEB合同号',
  `contractbizdate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'WEB合同创建日期',
  `contractnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'eas合同单据编号',
  `CFPURCONTRACTNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'eas合同号',
  `contractfcreatetime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同创建时间',
  `CFOPENEDCOMQTY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '已开合同数量',
  `CFPRICINGNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '原定价单号',
  `CFPRICINGNUMBERnew` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '更新后定价单号',
  `CFPRICEUPDATEDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格更新日期',
  `ppbFAuditTime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '旧定价单审核时间',
  `ppbFNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '旧定价单编号',
  `cppCFAUDITTIME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '新定价单审核时间',
  `ccpFNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '新定价单编号',
  `CFPRICEBILLTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格来源但类型',
  `CFPRICESOURCENUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格来源单单据号',
  `CFEFFECTDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配生效日期',
  `CFLOSEDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配失效日期',
  `CFNewrate` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '资源分配新比例',
  `CFOPENDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '通用件核准日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_purorderfinal';


-- zj_data.dm_purproject definition

CREATE TABLE `dm_purproject` (
  `FID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FID',
  `MMPRO_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `FNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目编码',
  `MMGROUP_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目分组',
  `MMDIC_NAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目类型',
  `PCMTYPE_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目类型2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_PurProject';


-- zj_data.dm_purrequest_body definition

CREATE TABLE `dm_purrequest_body` (
  `FParentID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FParentID',
  `PURCHASE_FName_l2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组织',
  `PURCHASE_FNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购组织编码',
  `CFIsRetPurDem` int(11) DEFAULT NULL,
  `CFRetreason` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `FMaterialID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMaterialID',
  `FREQUESTQTY` double(100,0) DEFAULT NULL,
  `FQty` double(100,0) DEFAULT NULL,
  `PRO_FNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目编码',
  `PRO_FName_l2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `NUM1_FNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开始车号',
  `NUM2_FNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '结束车号',
  `FBaseStatus` int(11) DEFAULT NULL,
  `FREQUIREMENTDATE` date DEFAULT NULL COMMENT '需求日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_PurRequest_Body';


-- zj_data.dm_purrequest_head definition

CREATE TABLE `dm_purrequest_head` (
  `REQ_FNumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'REQ_FNumber',
  `REQ_FBizDate` date DEFAULT NULL,
  `PER_FName_l2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PER_FName_l2',
  `US_FName_l2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'US_FName_l2',
  `REQ_FBaseStatus` int(11) DEFAULT NULL,
  `STYPE_FName_l2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'STYPE_FName_l2',
  `COMP_FName_l2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'COMP_FName_l2',
  `PTYPE_FName_l2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PTYPE_FName_l2',
  `PurReType_FhostType` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PurReType_FhostType',
  `REQ_CFIsDem` int(11) DEFAULT NULL,
  `ADMIN_FName_l2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ADMIN_FName_l2',
  `REQ_CFTXTRETURNREASON` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'REQ_CFTXTRETURNREASON',
  `BizType_FName_l2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'BizType_FName_l2',
  `REQ_CFISPORTLET` int(11) DEFAULT NULL,
  `CUS_FName_l2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CUS_FName_l2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_PurRequest_Head';


-- zj_data.dm_pursupplier definition

CREATE TABLE `dm_pursupplier` (
  `FNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商代码',
  `sup_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `FBUSILICENCE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '统一社会信用代码',
  `FArtificialPerson` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '法人代表',
  `FAddress` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `FUsedStatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `coun_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '国家',
  `prov_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '省',
  `city_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '城市',
  `reg_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_PurSupplier';


-- zj_data.dm_qms2_biz_inspection_entity definition

CREATE TABLE `dm_qms2_biz_inspection_entity` (
  `entity_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '检验实体ID',
  `material_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联物料id',
  `material_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联物料编码',
  `serial_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `batch_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '批次号',
  `maker` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '制造商',
  `produce_vender` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '生产厂家',
  `produce_vender_name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '生产厂商名称',
  `produce_date` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '生产时间',
  `model` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '型号',
  `stove_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '炉号',
  `entity_version` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '版本',
  `create_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `modify_date` date DEFAULT NULL COMMENT '修改时间',
  `is_active` longtext COLLATE utf8_bin COMMENT '激活标识',
  `is_delete` longtext COLLATE utf8_bin COMMENT '删除标识',
  `remark` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `material_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名称',
  `technical_status_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '技术状态标识',
  `sup_wcord` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '客户产品标识序列号/单件码',
  `sup_material_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '客户物料标识代码',
  `spec` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '规格',
  `sup_user_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '生产单位客户代码',
  `electrical_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '电气代码',
  `electrical_position` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '电气位置',
  `assembler` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配人员',
  `assembler_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配人员姓名',
  `assembly_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配单位代码',
  `assembly_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配单位名称',
  `functree_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配构型ID',
  `global_position` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '装配位置代码',
  `global_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '装配位置名称',
  `auth_root_dept_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '录入单位代码',
  `auth_root_dept_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '录入单位名称',
  `root_entity_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '跟部件id',
  `parent_entity_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '父部件id',
  `tz_tag_flag` longtext COLLATE utf8_bin COMMENT 'tz_tag_flag',
  `save_flag` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT 'save_flag',
  `project_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '实体关联的项目编码',
  `project_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '实体关联的项目名称',
  `train_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='一车一档_检验执行实体表';


-- zj_data.dm_qms2_biz_t_inspect_file_history_precurement_for_inspect_type definition

CREATE TABLE `dm_qms2_biz_t_inspect_file_history_precurement_for_inspect_type` (
  `inspect_type` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `sums` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_qms2_checkpoint definition

CREATE TABLE `dm_qms2_checkpoint` (
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_qms2_checkpoint';


-- zj_data.dm_qms2_cyfatj definition

CREATE TABLE `dm_qms2_cyfatj` (
  `dept_id` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '部门ID',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '部门名称',
  `sums` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='按部门分别统计各自编写的抽样方案数量';


-- zj_data.dm_qms2_jymbtj_inspecttype definition

CREATE TABLE `dm_qms2_jymbtj_inspecttype` (
  `inspect_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检验类别',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检验类别名称',
  `sums` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='按检验类别统计检验模板数量';


-- zj_data.dm_qms2_jymbtj_projectid definition

CREATE TABLE `dm_qms2_jymbtj_projectid` (
  `project_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目ID',
  `pj_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `sums` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='按项目统计检验模板编写的数量';


-- zj_data.dm_qms2_jyxdtj_dept definition

CREATE TABLE `dm_qms2_jyxdtj_dept` (
  `auth_dept_id` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '部门ID',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '部门名称',
  `sums` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`auth_dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='按部门分别统计编写的检验项点数量';


-- zj_data.dm_qms2_yclchtj_dept definition

CREATE TABLE `dm_qms2_yclchtj_dept` (
  `group_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '部门ID',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '部门名称',
  `sums` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='按部门分别统计原材料策划的数量';


-- zj_data.dm_qms2_yclchtj_functree definition

CREATE TABLE `dm_qms2_yclchtj_functree` (
  `functree_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '装配构型ID',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '装配构型名称',
  `sums` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='按装配构型分别统计原材料策划的数量';


-- zj_data.dm_qms2_zpgxtj definition

CREATE TABLE `dm_qms2_zpgxtj` (
  `product_line` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '产品线编码',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品线名称',
  `sums` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`product_line`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='装配构型数量';


-- zj_data.dm_qms2_zsqdtj_projectname definition

CREATE TABLE `dm_qms2_zsqdtj_projectname` (
  `project_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `sums` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='项目分别统计追溯清单的数量';


-- zj_data.dm_qms_czzdcjjyjg definition

CREATE TABLE `dm_qms_czzdcjjyjg` (
  `project_code` longtext COLLATE utf8_bin COMMENT '项目编码',
  `project_name` longtext COLLATE utf8_bin COMMENT '项目名称',
  `gx_code` longtext COLLATE utf8_bin COMMENT '构型编码',
  `gx_name` longtext COLLATE utf8_bin COMMENT '构型名称',
  `material_code` longtext COLLATE utf8_bin COMMENT '物料编码',
  `material_name` longtext COLLATE utf8_bin NOT NULL COMMENT '物料名称',
  `serial_number` longtext COLLATE utf8_bin COMMENT '序列号',
  `check_status` longtext COLLATE utf8_bin COMMENT '检验状态',
  `checkpoint_code` longtext COLLATE utf8_bin COMMENT '检验项点编码',
  `checkpoint_name` longtext COLLATE utf8_bin COMMENT '检验项点名称',
  `checkpoint_describe` longtext COLLATE utf8_bin COMMENT '项点描述',
  `standard_value` longtext COLLATE utf8_bin COMMENT '标准值',
  `tolerances_up` longtext COLLATE utf8_bin COMMENT '上公差',
  `tolerances_down` longtext COLLATE utf8_bin COMMENT '下公差',
  `check_result` longtext COLLATE utf8_bin COMMENT '检验结果',
  `final_result` longtext COLLATE utf8_bin COMMENT '判定结果',
  `remark` longtext COLLATE utf8_bin COMMENT '备注',
  `username` longtext COLLATE utf8_bin COMMENT '检验人员用户名',
  `name` longtext COLLATE utf8_bin COMMENT '检验人员',
  `self_date` date DEFAULT NULL COMMENT '检验时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='qms车轴自动采集检验结果';


-- zj_data.dm_qms_djjczcll_detail definition

CREATE TABLE `dm_qms_djjczcll_detail` (
  `number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项点编号',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项点名称',
  `data_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `collect_result` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项点结果',
  `row_index` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '记录行数',
  `file_pdf_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PDF文件',
  `file_save_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '源文件',
  `cj_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采集人员',
  `create_date` date DEFAULT NULL COMMENT '采集日期',
  `entity_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '追溯实体id',
  `project_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目编号',
  `cjx_number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采集项编号',
  `cjx_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采集项名称',
  `id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采集项记录id',
  `train_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `spell_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车型',
  `xc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '修程',
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '履历标准code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='单节机车整车履历_明细表';


-- zj_data.dm_qms_jc_atype_detail definition

CREATE TABLE `dm_qms_jc_atype_detail` (
  `project_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `llmaterial_code` varchar(25) COLLATE utf8_bin DEFAULT NULL COMMENT '履历物料编号',
  `llmaterial_name` varchar(350) COLLATE utf8_bin DEFAULT NULL COMMENT '履历物料名称',
  `entitytree_code` varchar(55) COLLATE utf8_bin DEFAULT NULL COMMENT '装配构型',
  `ABtype` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'AB类',
  `global_location_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '整车位置编码',
  `global_location_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '整车位置名称',
  `customer_location_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '履历位置别称',
  `entity_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'entity_id',
  `material_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编号',
  `material_name` varchar(350) COLLATE utf8_bin DEFAULT NULL,
  `serial_number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `produce_vender` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产单位编号',
  `produce_vender_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产单位名称',
  `sup_material_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '客户物料标识代码',
  `sup_wcord` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '客户产品标识序列号',
  `sup_user_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '生产单位客户代码',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` datetime DEFAULT NULL COMMENT '装配日期',
  `model` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '型号',
  `entity_version` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '版本',
  `functree_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '装配构型id',
  `global_position` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '装配位置代码',
  `global_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '装配位置名称',
  `auth_root_dept_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '录入单位代码',
  `auth_root_dept_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '录入单位名称',
  `root_entity_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '传参数的entityid',
  `parent_entity_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '父部件id',
  `jc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检查',
  `llxlh` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '履历序列号',
  `wzxyz` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '完整性检验'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='机车A类清单';


-- zj_data.dm_qms_jcjyjl_detail definition

CREATE TABLE `dm_qms_jcjyjl_detail` (
  `number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项点编号',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项点名称',
  `data_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `collect_result` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项点结果',
  `row_index` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '记录行数',
  `file_pdf_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PDF文件',
  `file_save_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '源文件',
  `cj_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采集人员',
  `create_date` date DEFAULT NULL COMMENT '采集日期',
  `entity_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '追溯实体id',
  `project_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目编号',
  `cjx_number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采集项编号',
  `cjx_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采集项名称',
  `cjxjl_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采集项记录id',
  `train_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `spell_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车型',
  `xc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '修程'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='机车检验记录';


-- zj_data.dm_qms_zljcll_detail definition

CREATE TABLE `dm_qms_zljcll_detail` (
  `wzxyz` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '完整性验证',
  `project_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目',
  `spell_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车型',
  `train_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `jyhg_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '检修合格ID',
  `xc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '修程',
  `material_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '物料名称',
  `global_location_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '位置编码',
  `global_location_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '位置名称',
  `llxbh` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '履历项编号',
  `llxmc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '履历项名称',
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '履历标准编码',
  `gx_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '构型编码',
  `gx_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '构型名称',
  `entity_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实体id',
  `stth` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实体图号',
  `serial_number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `produce_vender` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商编码',
  `produce_vender_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `root_entity_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '根实体id',
  `global_position` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '实体位置码',
  `cjxjl_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采集记录id',
  `create_date` date DEFAULT NULL COMMENT '采集日期',
  `collect_number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项点编号',
  `collect_result` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项点结果',
  `file_save_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '源文件',
  `date_of_production` date DEFAULT NULL COMMENT '出厂日期',
  `djsj` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '登记时间',
  `djry` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '登记人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='重联节车履历';


-- zj_data.dm_shr_view_emp definition

CREATE TABLE `dm_shr_view_emp` (
  `personid` longtext COLLATE utf8_bin NOT NULL COMMENT 'personid',
  `hcmempid` longtext COLLATE utf8_bin COMMENT 'hcmempid',
  `personnum` longtext COLLATE utf8_bin NOT NULL COMMENT '人员工号',
  `personname` longtext COLLATE utf8_bin COMMENT '人员姓名',
  `idcardno` longtext COLLATE utf8_bin COMMENT '身份证号',
  `sex` longtext COLLATE utf8_bin COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生年月日',
  `politicalfacename` longtext COLLATE utf8_bin COMMENT 'politicalfacename',
  `standname` longtext COLLATE utf8_bin COMMENT 'standname',
  `mobiletel` longtext COLLATE utf8_bin COMMENT '手机号',
  `highestdiploma` longtext COLLATE utf8_bin COMMENT '最高文凭',
  `highestdegree` longtext COLLATE utf8_bin COMMENT '最高学历',
  `enterdate` date DEFAULT NULL COMMENT 'enterdate',
  `emplooyeetype` longtext COLLATE utf8_bin COMMENT 'emplooyeetype',
  `orgid` longtext COLLATE utf8_bin COMMENT 'orgid',
  `posid` longtext COLLATE utf8_bin COMMENT 'posid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='shr人员';


-- zj_data.dm_shr_view_emporgrelation definition

CREATE TABLE `dm_shr_view_emporgrelation` (
  `personid` longtext COLLATE utf8_bin COMMENT 'personid',
  `id` longtext COLLATE utf8_bin COMMENT 'id',
  `personnum` longtext COLLATE utf8_bin COMMENT '人员工号',
  `personname` longtext COLLATE utf8_bin COMMENT '人员姓名',
  `orgnumber` longtext COLLATE utf8_bin COMMENT '组织编码',
  `orgname` longtext COLLATE utf8_bin COMMENT '组织名称',
  `orgnumberfirst` longtext COLLATE utf8_bin COMMENT 'orgnumberfirst',
  `orgnamefirst` longtext COLLATE utf8_bin COMMENT 'orgnamefirst',
  `positionnum` longtext COLLATE utf8_bin COMMENT '职位编码',
  `positionname` longtext COLLATE utf8_bin COMMENT '职位名称',
  `begin_date` longtext COLLATE utf8_bin COMMENT '开始时间',
  `end_date` longtext COLLATE utf8_bin COMMENT '结束时间',
  `assigntype` longtext COLLATE utf8_bin COMMENT 'assigntype',
  `emplooyeetype` longtext COLLATE utf8_bin COMMENT 'emplooyeetype',
  `actionnum` longtext COLLATE utf8_bin COMMENT 'actionnum',
  `actiontypenum` longtext COLLATE utf8_bin COMMENT 'actiontypenum',
  `actionreason` longtext COLLATE utf8_bin COMMENT 'actionreason'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='shr任职信息';


-- zj_data.dm_shr_view_org definition

CREATE TABLE `dm_shr_view_org` (
  `orgid` longtext COLLATE utf8_bin NOT NULL COMMENT 'orgid',
  `hcm_oid` longtext COLLATE utf8_bin COMMENT 'hcm_oid',
  `hcm_hid` longtext COLLATE utf8_bin COMMENT 'hcm_hid',
  `orgnum` longtext COLLATE utf8_bin COMMENT '组织编码',
  `orgname` longtext COLLATE utf8_bin COMMENT '组织名称',
  `begin_date` date DEFAULT NULL COMMENT '开始时间',
  `end_date` date DEFAULT NULL COMMENT '结束时间',
  `flevel` int(11) DEFAULT NULL COMMENT 'flevel',
  `abbreviate` longtext COLLATE utf8_bin COMMENT 'abbreviate',
  `orglayertypenum` longtext COLLATE utf8_bin COMMENT 'orglayertypenum',
  `orglayertypename` longtext COLLATE utf8_bin COMMENT 'orglayertypename',
  `introduction` longtext COLLATE utf8_bin COMMENT 'introduction',
  `remark` longtext COLLATE utf8_bin COMMENT 'remark',
  `parentorgnum` longtext COLLATE utf8_bin COMMENT 'parentorgnum',
  `orglongname` longtext COLLATE utf8_bin COMMENT 'orglongname',
  `findex` int(11) DEFAULT NULL COMMENT 'findex',
  `fstatus` longtext COLLATE utf8_bin COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='shr组织';


-- zj_data.dm_shr_view_position definition

CREATE TABLE `dm_shr_view_position` (
  `positionid` longtext COLLATE utf8_bin NOT NULL COMMENT 'positionid',
  `hcm_oid` longtext COLLATE utf8_bin COMMENT 'hcm_oid',
  `positionnum` longtext COLLATE utf8_bin NOT NULL COMMENT 'positionnum',
  `positionname` longtext COLLATE utf8_bin COMMENT 'positionname',
  `orgid` longtext COLLATE utf8_bin NOT NULL COMMENT 'orgid',
  `orgname` longtext COLLATE utf8_bin COMMENT 'orgname',
  `parentposnum` longtext COLLATE utf8_bin COMMENT 'parentposnum',
  `begin_date` date DEFAULT NULL COMMENT 'begin_date',
  `end_date` date DEFAULT NULL COMMENT 'end_date',
  `familygroupnum` longtext COLLATE utf8_bin COMMENT 'familygroupnum',
  `familygroupname` longtext COLLATE utf8_bin COMMENT 'familygroupname',
  `familytypenum` longtext COLLATE utf8_bin COMMENT 'familytypenum',
  `familytypename` longtext COLLATE utf8_bin COMMENT 'familytypename',
  `familyjobnum` longtext COLLATE utf8_bin COMMENT 'familyjobnum',
  `familyjobname` longtext COLLATE utf8_bin COMMENT 'familyjobname',
  `lowjoblevelnum` longtext COLLATE utf8_bin COMMENT 'lowjoblevelnum',
  `lowjoblevelname` longtext COLLATE utf8_bin COMMENT 'lowjoblevelname',
  `highjoblevelnum` longtext COLLATE utf8_bin COMMENT 'highjoblevelnum',
  `highjoblevelname` longtext COLLATE utf8_bin COMMENT 'highjoblevelname',
  `worksite` longtext COLLATE utf8_bin COMMENT 'worksite',
  `work_content` longtext COLLATE utf8_bin COMMENT 'work_content',
  `standard_pos` longtext COLLATE utf8_bin COMMENT 'standard_pos',
  `fisrespposition` longtext COLLATE utf8_bin COMMENT 'fisrespposition',
  `fstatus` longtext COLLATE utf8_bin COMMENT 'fstatus'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='shr职位';


-- zj_data.dm_sourceresult definition

CREATE TABLE `dm_sourceresult` (
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编号',
  `CFECCONTRACTNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'EC合同号',
  `CFCONTRACTFILENUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同归档号',
  `CFCONTRACTNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同名称',
  `CFCONTRACTAMOUNTTOTAL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同总金额',
  `CFAMOUNTTOTAL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同不含税总金额',
  `FNAME_L2_CUR` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `CFCODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '形式合同编制人工号',
  `CFEDITUSERNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '形式合同编制人姓名',
  `CFCONTRACTSTATUS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '合同状态',
  `CFSIGNDATE` date DEFAULT NULL COMMENT '签订日期',
  `CFSUPPLIERNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `CFSUPPLIERMDM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商MDM标准编码',
  `CFQYGYSBM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '企业供应商编码',
  `CFCGFS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购方式',
  `CFCGHT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购合同',
  `CFCGLX` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购类型',
  `FNAME_L2_PUSER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '最后修改人',
  `FLASTUPDATETIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  `FNAME_L2_CTRU` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '控制单元',
  `CFQYGSBM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '企业公司编码',
  `CFORGANIZATIONUNIT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '编制单位',
  `CFSTAMATERIALNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '标准物资编码',
  `CFENTMATERIALNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '企业物资编码',
  `CFPROCLASEECODE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '所属产品类代码',
  `CFMATERIALNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物资名称',
  `CFSYSPARTS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '批准文号',
  `CFUNIT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'EC计量单位',
  `CFORDERQTY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购数量',
  `CFPRICECATEGORY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '价格分类',
  `CFUNITPRICETAX` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '含税单价',
  `CFUNITPRICE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '不含税单价',
  `CFTOTALAMOUNTTAX` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '含税总金额',
  `CFAMOUNT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '不含税金额',
  `CFRATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '税率',
  `CFYEAR` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年份',
  `CFPURREQNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购申请号',
  `CFPROJECTNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目编号',
  `CFECPURREQBILLNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'EC采购申请单号',
  `CFSRCREQBILLNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'EAS寻源申请单号',
  `CFSRCREQENTRYBILLNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'EAS寻源申请单分录号',
  `FID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_SourceResult';


-- zj_data.dm_sourceresultbill definition

CREATE TABLE `dm_sourceresultbill` (
  `FID` text COLLATE utf8_bin,
  `FCREATETIME` text COLLATE utf8_bin,
  `FNUMBER` text COLLATE utf8_bin,
  `CFECCONTRACTNUM` text COLLATE utf8_bin,
  `CFCONTRACTFILENUM` text COLLATE utf8_bin,
  `CFCONTRACTNAME` text COLLATE utf8_bin,
  `CFCONTRACTAMOUNTTOTAL` text COLLATE utf8_bin,
  `CFAMOUNTTOTAL` text COLLATE utf8_bin,
  `currencyNAME` text COLLATE utf8_bin,
  `CFCODE` text COLLATE utf8_bin,
  `CFEDITUSERNAME` text COLLATE utf8_bin,
  `CFCONTRACTSTATUS` text COLLATE utf8_bin,
  `CFSIGNDATE` text COLLATE utf8_bin,
  `CFSUPPLIERNAME` text COLLATE utf8_bin,
  `CFSUPPLIERMDM` text COLLATE utf8_bin,
  `CFQYGYSBM` text COLLATE utf8_bin,
  `CFCGFS` text COLLATE utf8_bin,
  `CFCGHT` text COLLATE utf8_bin,
  `CFCGLX` text COLLATE utf8_bin,
  `lastupdatename` text COLLATE utf8_bin,
  `FLASTUPDATETIME` text COLLATE utf8_bin,
  `ctrlunitname` text COLLATE utf8_bin,
  `CFQYGSBM` text COLLATE utf8_bin,
  `CFORGANIZATIONUNIT` text COLLATE utf8_bin,
  `CFSTAMATERIALNUM` text COLLATE utf8_bin,
  `CFENTMATERIALNUM` text COLLATE utf8_bin,
  `CFPROCLASEECODE` text COLLATE utf8_bin,
  `CFMATERIALNAME` text COLLATE utf8_bin,
  `CFSYSPARTS` text COLLATE utf8_bin,
  `CFUNIT` text COLLATE utf8_bin,
  `CFORDERQTY` text COLLATE utf8_bin,
  `CFPRICECATEGORY` text COLLATE utf8_bin,
  `CFUNITPRICETAX` text COLLATE utf8_bin,
  `CFUNITPRICE` text COLLATE utf8_bin,
  `CFTOTALAMOUNTTAX` text COLLATE utf8_bin,
  `CFAMOUNT` text COLLATE utf8_bin,
  `CFRATE` text COLLATE utf8_bin,
  `CFYEAR` text COLLATE utf8_bin,
  `CFPURREQNUM` text COLLATE utf8_bin,
  `CFPROJECTNUM` text COLLATE utf8_bin,
  `CFECPURREQBILLNUM` text COLLATE utf8_bin,
  `CFSRCREQBILLNUM` text COLLATE utf8_bin,
  `CFSRCREQENTRYBILLNUM` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_supplierdirector definition

CREATE TABLE `dm_supplierdirector` (
  `FCREATETIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `CFSTATUE` int(11) DEFAULT NULL,
  `CFSUPPLIERNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSUPPLIERNUMBER',
  `CFSUPPLIERQUALIFICATION` int(11) DEFAULT NULL,
  `CFSUPPLIERCLASSIFICATION` int(11) DEFAULT NULL,
  `CFSUPPLIERENTERPRISENATURE` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `CFENTERPRISELEGALPERSON` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFENTERPRISELEGALPERSON',
  `CFREGISTEREDADDRESS` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `CFAUTHORIZEDAGENT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFAUTHORIZEDAGENT',
  `CFISO14001DUEDATE` datetime DEFAULT NULL,
  `CFISO45001DUEDATE` datetime DEFAULT NULL,
  `CFISO9001DUEDATE` datetime DEFAULT NULL,
  `CFI22616DUEDATE` datetime DEFAULT NULL,
  `CFBUSINESSLICENSENUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBUSINESSLICENSENUMBER',
  `CFBUSINESSLICENSEDUEDATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBUSINESSLICENSEDUEDATE',
  `CFMAJORPROJECT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMAJORPROJECT',
  `CFZCDATE` datetime DEFAULT NULL,
  `CFAPPROVEDATE` datetime DEFAULT NULL,
  `CFAGENT` int(11) DEFAULT NULL,
  `CFDIRECTSUPPLY` int(11) DEFAULT NULL,
  `CFTAXREGISTERNO` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTAXREGISTERNO',
  `CFSIMPLENAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSIMPLENAME',
  `CFISPUSHGATEWAY` int(11) DEFAULT NULL,
  `CFSIXFILENUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSIXFILENUM',
  `CFPRODUCTNAME` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `CFPRODUCTLB` int(11) DEFAULT NULL,
  `CFINSULATDATE` datetime DEFAULT NULL,
  `CFSUPFJ` int(11) DEFAULT NULL,
  `CFSUPZZ` int(11) DEFAULT NULL,
  `sup_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'sup_FNAME_L2',
  `coun_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'coun_FNAME_L2',
  `prov_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'prov_FNAME_L2',
  `city_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'city_FNAME_L2',
  `reg_FNAME_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'reg_FNAME_L2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_供应商名录';


-- zj_data.dm_swq_process_task_d definition

CREATE TABLE `dm_swq_process_task_d` (
  `id` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_WORK_CELL_GID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_singer_car_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_project` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_car_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_MRL_CODE_count` int(11) DEFAULT NULL,
  `v_MRL_CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_PRODU_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_op_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `o_op_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `g_group_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `g_group_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_order_type` int(11) DEFAULT NULL,
  `o_op_type` int(11) DEFAULT NULL,
  `v_planned_start_time` date DEFAULT NULL,
  `v_planned_finish_time` date DEFAULT NULL,
  `v_ACTUAL_BEGIN_DATE` date DEFAULT NULL,
  `v_ACTUAL_END_DATE` date DEFAULT NULL,
  `v_produ_place` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_stage_position` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_work_persion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `pe_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_ISSUED_CHENK_POSITION` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `v_ISSUED_CHENK_DATE` date DEFAULT NULL,
  `v_ISSUED_CHENK_STATE` int(11) DEFAULT NULL,
  `v_SEND_REQ_MRL` int(11) DEFAULT NULL,
  `v_DIS_CODE_STATE` int(11) DEFAULT NULL,
  `v_uda_transmit` int(11) DEFAULT NULL,
  `pl_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wc_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cell_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cell_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `s_std_time` float(100,0) DEFAULT NULL,
  `v_is_man_hour_rpt` int(11) DEFAULT NULL,
  `f_state_count` int(11) DEFAULT NULL,
  `qitaoshuliangtongjibaokuoyuji` int(11) DEFAULT NULL,
  `v_REMARK` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `v_UDA_OUT_STATE` int(11) DEFAULT NULL,
  `weilaiyizhou` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='工序任务下发表';


-- zj_data.dm_swq_process_task_delivery definition

CREATE TABLE `dm_swq_process_task_delivery` (
  `id` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `v_WORK_CELL_GID` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'v_WORK_CELL_GID',
  `v_singer_car_code` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'v_singer_car_code',
  `v_project` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'v_project',
  `v_car_code` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'v_car_code',
  `v_MRL_CODE_count` int(11) NOT NULL COMMENT 'v_MRL_CODE_count',
  `v_MRL_CODE` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'v_MRL_CODE',
  `v_PRODU_NAME` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'v_PRODU_NAME',
  `v_op_code` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'v_op_code',
  `o_op_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'o_op_name',
  `g_group_code` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'g_group_code',
  `g_group_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'g_group_name',
  `v_order_type` int(11) NOT NULL COMMENT 'v_order_type',
  `o_op_type` int(11) NOT NULL COMMENT 'o_op_type',
  `v_planned_start_time` date NOT NULL COMMENT 'v_planned_start_time',
  `v_planned_finish_time` date NOT NULL COMMENT 'v_planned_finish_time',
  `v_ACTUAL_BEGIN_DATE` date NOT NULL COMMENT 'v_ACTUAL_BEGIN_DATE',
  `v_ACTUAL_END_DATE` date NOT NULL COMMENT 'v_ACTUAL_END_DATE',
  `v_produ_place` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'v_produ_place',
  `v_stage_position` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'v_stage_position',
  `v_work_persion` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'v_work_persion',
  `pe_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'pe_name',
  `v_ISSUED_CHENK_POSITION` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT 'v_ISSUED_CHENK_POSITION',
  `v_ISSUED_CHENK_DATE` date NOT NULL COMMENT 'v_ISSUED_CHENK_DATE',
  `v_ISSUED_CHENK_STATE` int(11) NOT NULL COMMENT 'v_ISSUED_CHENK_STATE',
  `v_SEND_REQ_MRL` int(11) NOT NULL COMMENT 'v_SEND_REQ_MRL',
  `v_DIS_CODE_STATE` int(11) NOT NULL COMMENT 'v_DIS_CODE_STATE',
  `v_uda_transmit` int(11) NOT NULL COMMENT 'v_uda_transmit',
  `pl_NAME` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'pl_NAME',
  `wc_NAME` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'wc_NAME',
  `cell_code` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'cell_code',
  `cell_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'cell_name',
  `s_std_time` float(100,0) NOT NULL COMMENT 's_std_time',
  `v_is_man_hour_rpt` int(11) NOT NULL COMMENT 'v_is_man_hour_rpt',
  `f_state_count` int(11) NOT NULL COMMENT 'f_state_count',
  `qitaoshuliangtongjibaokuoyuji` int(11) NOT NULL COMMENT 'qitaoshuliangtongjibaokuoyuji',
  `v_REMARK` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'v_REMARK',
  `v_UDA_OUT_STATE` int(11) NOT NULL COMMENT 'v_UDA_OUT_STATE',
  `weilaiyizhou` int(11) NOT NULL COMMENT 'weilaiyizhou'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='工序任务下发表';


-- zj_data.dm_sy_comm_to definition

CREATE TABLE `dm_sy_comm_to` (
  `OWNER_CODE` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '工号',
  `NUMBERS` int(11) DEFAULT NULL COMMENT '次数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='?????';


-- zj_data.dm_sys_user definition

CREATE TABLE `dm_sys_user` (
  `user_id` bigint(20) NOT NULL COMMENT 'user_id',
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'name',
  `password` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `dept_id` bigint(20) DEFAULT NULL COMMENT 'dept_id',
  `t_dept_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '业务部门id',
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 0',
  `user_id_create` bigint(20) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `sex` bigint(20) DEFAULT NULL COMMENT '性别',
  `birth` datetime DEFAULT NULL COMMENT '出身日期',
  `pic_id` bigint(20) DEFAULT NULL COMMENT 'pic_id',
  `live_address` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '现居住地',
  `hobby` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '爱好',
  `province` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '省份',
  `city` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '所在城市',
  `district` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '所在地区',
  `fadminorgunitid` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'fadminorgunitid',
  `create_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `modify_date` date DEFAULT NULL COMMENT '修改id',
  `is_active` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_sys_user';


-- zj_data.dm_szhgw_bzzb definition

CREATE TABLE `dm_szhgw_bzzb` (
  `FID` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` datetime DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` datetime DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_datefield` datetime DEFAULT NULL COMMENT 'fk_crrc_datefield',
  `fk_crrc_zbdd` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_zbdd',
  `fk_crrc_zbbz` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_zbbz',
  `fk_crrc_zbbzphone` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_zbbzphone',
  `fk_crrc_zbddphone1` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_zbddphone1',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_SZHGW_BZZB';


-- zj_data.dm_szhgw_bzzb1 definition

CREATE TABLE `dm_szhgw_bzzb1` (
  `FID` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` datetime DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` datetime DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_datefield` datetime DEFAULT NULL COMMENT 'fk_crrc_datefield',
  `fk_crrc_zbdd` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_zbdd',
  `fk_crrc_zbbz` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_zbbz',
  `fk_crrc_zbbzphone` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_zbbzphone',
  `fk_crrc_zbddphone1` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_zbddphone1',
  `fk_crrc_zbsj` datetime DEFAULT NULL COMMENT 'fk_crrc_zbsj',
  `fk_crrc_zbddphone` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_zbddphone',
  `fk_crrc_zbdd1` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_zbdd1',
  `fk_crrc_zbbz1` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_zbbz1',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_SZHGW_BZZB1';


-- zj_data.dm_szhgw_syjhs definition

CREATE TABLE `dm_szhgw_syjhs` (
  `yearlydone` int(11) DEFAULT NULL COMMENT '年度落车数',
  `yearlydeal` int(11) DEFAULT NULL COMMENT '年度交付数',
  `monthlydone` int(11) DEFAULT NULL COMMENT '月度落车数',
  `monthlydeal` int(11) DEFAULT NULL COMMENT '月度交付数',
  `weeklydone` int(11) DEFAULT NULL COMMENT '周度落车数',
  `weeklydeal` int(11) DEFAULT NULL COMMENT '周度交付数',
  `ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_SZHGW_SYJHS';


-- zj_data.dm_szhgw_twxmjc definition

CREATE TABLE `dm_szhgw_twxmjc` (
  `tw` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '台位',
  `gzh` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '跟踪号',
  `xmmc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `xmh` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `xmjc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目简称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_SZHGW_TWXMJC';


-- zj_data.dm_szhgw_xmjc definition

CREATE TABLE `dm_szhgw_xmjc` (
  `xmmc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `xmh` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `xmjc` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目简称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_SZHGW_XMJC';


-- zj_data.dm_szhgw_xmjh definition

CREATE TABLE `dm_szhgw_xmjh` (
  `FID` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` datetime DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` datetime DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_datefield` datetime DEFAULT NULL COMMENT 'fk_crrc_datefield',
  `fk_crrc_xmh` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_xmh',
  `fk_crrc_xmmc` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_xmmc',
  `fk_crrc_jhsl` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_jhsl',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_SZHGW_XMJH';


-- zj_data.dm_szhgw_zccj_shr definition

CREATE TABLE `dm_szhgw_zccj_shr` (
  `staffid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工号',
  `identity` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '身份'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_SZHGW_ZCCJ_SHR';


-- zj_data.dm_szhgw_zcjh definition

CREATE TABLE `dm_szhgw_zcjh` (
  `FID` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` datetime DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` datetime DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_zcdate` datetime DEFAULT NULL COMMENT 'fk_crrc_zcdate',
  `fk_crrc_zcnum` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_zcnum',
  `fk_crrc_xmh` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_xmh',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_SZHGW_ZCJH';


-- zj_data.dm_t_gx_yfhtkp definition

CREATE TABLE `dm_t_gx_yfhtkp` (
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '应付合同卡片创建日期',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '合同号',
  `CFHTMC` varchar(337) COLLATE utf8_bin DEFAULT NULL COMMENT '合同名称',
  `CFSIGNDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '合同签订日期',
  `CFHTJE` double(28,0) DEFAULT NULL COMMENT '合同金额',
  `CFADULTTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '审核时间',
  `FGYSID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商ID',
  `FBILLSTATE` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `FSOURCETYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '来源单据类型',
  `CFCONTRACTNUM` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '合同卡片号',
  `CFACCOUNTAMOUNT` double(28,0) DEFAULT NULL COMMENT '已开票金额',
  `CFPAYAMOUNT` double(28,0) DEFAULT NULL COMMENT '已付款金额',
  `CFUNACCOUNTAMOUNT` double(28,0) DEFAULT NULL COMMENT '未开票金额',
  `CFUNPAYAMOUNT` double(28,0) DEFAULT NULL COMMENT '未付款金额',
  `XZFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '合同性质',
  `LXFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '合同类型',
  `CURFName_l2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `ADMINFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '业务组',
  `ADMIN2FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '部门代码',
  `PERFName_l2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '业务员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='应付合同卡片';


-- zj_data.dm_t_im_purinwarehsbill definition

CREATE TABLE `dm_t_im_purinwarehsbill` (
  `FEXCHANGERATE` longtext COLLATE utf8_bin COMMENT '汇率',
  `FBASESTATUS` longtext COLLATE utf8_bin COMMENT '状态',
  `fbizdate` longtext COLLATE utf8_bin COMMENT '入库单业务日期',
  `FAUDITTIME` longtext COLLATE utf8_bin COMMENT '入库单审核日期',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '入库单号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_T_IM_PURINWAREHSBILL';


-- zj_data.dm_t_mm_project definition

CREATE TABLE `dm_t_mm_project` (
  `FTOTALCOST` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FTOTALCOST',
  `FUNITCOST` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FUNITCOST',
  `FTOTALTIME` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FTOTALTIME',
  `FPLANBEGINTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FPLANBEGINTIME',
  `FPLANENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FPLANENDTIME',
  `FEARISTBEGINTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FEARISTBEGINTIME',
  `FLASTBEGINTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTBEGINTIME',
  `FEARISTENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FEARISTENDTIME',
  `FLASTENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTENDTIME',
  `FQTY` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FQTY',
  `FGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FGROUPID',
  `FPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPERSONID',
  `FADMINORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINORGUNITID',
  `FMATERIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMATERIALID',
  `FISTEMPLATE` int(11) NOT NULL DEFAULT '0' COMMENT 'FISTEMPLATE',
  `FCURRENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCURRENCYID',
  `FBASEUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEUNITID',
  `FACTTOTALCOST` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FACTTOTALCOST',
  `FTOTALQTY` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FTOTALQTY',
  `FCOMPLETEPERCENT` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FCOMPLETEPERCENT',
  `FACTUALBEGINTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FACTUALBEGINTIME',
  `FACTUALENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FACTUALENDTIME',
  `FACTUALTOTALTIME` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FACTUALTOTALTIME',
  `FBASEQTY` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FBASEQTY',
  `FPROJECTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTTYPEID',
  `FUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FUNITID',
  `FTOTALBASEQTY` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FTOTALBASEQTY',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBIZDATE',
  `FHASEFFECTED` int(11) NOT NULL DEFAULT '0' COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAUDITORID',
  `FHANDLERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHANDLERID',
  `FAUDITTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAUDITTIME',
  `FBASESTATUS` int(11) NOT NULL DEFAULT '0' COMMENT 'FBASESTATUS',
  `FADMINCUID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINCUID',
  `FNAME_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L3',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FDESCRIPTION_L1` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FCENTRALPURSTGORGID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCENTRALPURSTGORGID',
  `FPROJECTASSISTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTASSISTID',
  `FISCHANGING` int(11) DEFAULT NULL COMMENT 'FISCHANGING',
  `FPRIORITY` int(11) NOT NULL DEFAULT '10' COMMENT 'FPRIORITY',
  `FPROJECTCALENDARID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTCALENDARID',
  `CFPROJECTATTR` int(11) DEFAULT NULL COMMENT 'CFPROJECTATTR',
  `CFNCRPREFIX` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFNCRPREFIX',
  `CFORDERNUM` int(11) DEFAULT NULL COMMENT 'CFORDERNUM',
  `CFNORECORDERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFNORECORDERID',
  `CFNODATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFNODATE',
  `CFPROJECTAPPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJECTAPPID',
  `CFLCMPROJECTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFLCMPROJECTTYPEID',
  `CFPROJECTTYPESID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJECTTYPESID',
  `CFINEXTENSION` int(11) DEFAULT NULL COMMENT 'CFINEXTENSION',
  `CFISNOHOST` int(11) DEFAULT NULL COMMENT 'CFISNOHOST',
  `FINEXTENSION` int(11) DEFAULT NULL COMMENT 'FINEXTENSION',
  `FISNOHOST` int(11) DEFAULT NULL COMMENT 'FISNOHOST',
  `FPLANINCOME` double(28,10) DEFAULT NULL COMMENT 'FPLANINCOME',
  `FFACTORYCALENDARID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFACTORYCALENDARID',
  `FACTUALINCOME` double(28,10) DEFAULT NULL COMMENT 'FACTUALINCOME',
  `FISPREPRODCUT` int(11) DEFAULT NULL COMMENT 'FISPREPRODCUT',
  `FCERTAINTY` int(11) DEFAULT NULL COMMENT 'FCERTAINTY',
  `FREQENDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FREQENDTIME',
  `FVERSION` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FVERSION',
  `FLASTWORKTIME` double(28,10) DEFAULT NULL COMMENT 'FLASTWORKTIME',
  `FPCONTROLMODE` int(11) DEFAULT NULL COMMENT 'FPCONTROLMODE',
  `FDESCRIPTION` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FREQWORKTIME` double(28,10) DEFAULT NULL COMMENT 'FREQWORKTIME',
  `FREQBEGINTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FREQBEGINTIME',
  `FMCONTROLMODE` int(11) DEFAULT NULL COMMENT 'FMCONTROLMODE',
  `FBATCHPROPERTY` int(11) DEFAULT NULL COMMENT 'FBATCHPROPERTY',
  `FEARLIESTWORKTIME` double(28,10) DEFAULT NULL COMMENT 'FEARLIESTWORKTIME',
  `FSOURCE` int(11) DEFAULT NULL COMMENT 'FSOURCE',
  `FCONTROLDIMENSION` int(11) DEFAULT NULL COMMENT 'FCONTROLDIMENSION',
  `FSETUPSTORAGEORGID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSETUPSTORAGEORGID',
  `FISINEXTENSION` int(11) DEFAULT NULL COMMENT 'FISINEXTENSION',
  `FPURCHASEPERSONID` varchar(44) COLLATE utf8_bin DEFAULT 'null\n' COMMENT 'FPURCHASEPERSONID',
  `CFPROTEGORYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROTEGORYID',
  `CFPROCONFIGURATION` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROCONFIGURATION',
  `CFSTAGESTATE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSTAGESTATE',
  `CFMARKETSOURCES` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMARKETSOURCES',
  `CFPRODUCTVARIETY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPRODUCTVARIETY',
  `CFTYPEWORKORDERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTYPEWORKORDERID',
  `CFISSYSCREATE` int(11) DEFAULT NULL COMMENT 'CFISSYSCREATE',
  `CFPROJECTVOIPTYPEI` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJECTVOIPTYPEI',
  `CFCUSTOMERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCUSTOMERID',
  `CFTHEIRCARID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTHEIRCARID',
  `CFLOTNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFLOTNUMBERID',
  `CFPROJCH` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJCH',
  `FISSENDTOESB` int(11) DEFAULT '0' COMMENT 'FISSENDTOESB',
  `CFISSOURCEPMS` int(11) DEFAULT NULL COMMENT 'CFISSOURCEPMS',
  `CFPMSPROID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPMSPROID',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_t_mm_project';


-- zj_data.dm_t_mm_tracknumber definition

CREATE TABLE `dm_t_mm_tracknumber` (
  `fstatus` int(11) DEFAULT NULL COMMENT 'FSTATUS',
  `fname` longtext COLLATE utf8_bin COMMENT 'FNAME_L2',
  `fnumber` longtext COLLATE utf8_bin COMMENT 'FNUMBER',
  `fsimplename` longtext COLLATE utf8_bin COMMENT 'FSIMPLENAME',
  `fcreatorid` longtext COLLATE utf8_bin COMMENT 'FCREATORID',
  `ftracknumbergroupid` longtext COLLATE utf8_bin COMMENT 'FTRACKNUMBERGROUPID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_T_MM_TRACKNUMBER';


-- zj_data.dm_t_org_admin definition

CREATE TABLE `dm_t_org_admin` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FNAME_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L3',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FDESCRIPTION_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FISGROUPING` int(11) DEFAULT NULL COMMENT 'FISGROUPING',
  `FEFFECTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FEFFECTDATE',
  `FINVALIDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FINVALIDDATE',
  `FISFREEZE` int(11) DEFAULT NULL COMMENT 'FISFREEZE',
  `FISCOMPANYORGUNIT` int(11) DEFAULT NULL COMMENT 'FISCOMPANYORGUNIT',
  `FISADMINORGUNIT` int(11) DEFAULT NULL COMMENT 'FISADMINORGUNIT',
  `FISSALEORGUNIT` int(11) DEFAULT NULL COMMENT 'FISSALEORGUNIT',
  `FISPURCHASEORGUNIT` int(11) DEFAULT NULL COMMENT 'FISPURCHASEORGUNIT',
  `FISSTORAGEORGUNIT` int(11) DEFAULT NULL COMMENT 'FISSTORAGEORGUNIT',
  `FISPROFITORGUNIT` int(11) DEFAULT NULL COMMENT 'FISPROFITORGUNIT',
  `FISCOSTORGUNIT` int(11) DEFAULT NULL COMMENT 'FISCOSTORGUNIT',
  `FISCU` int(11) DEFAULT NULL COMMENT 'FISCU',
  `FISUNION` int(11) DEFAULT NULL COMMENT 'FISUNION',
  `FISHRORGUNIT` int(11) DEFAULT NULL COMMENT 'FISHRORGUNIT',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FISLEAF` int(11) DEFAULT NULL COMMENT 'FISLEAF',
  `FLEVEL` int(11) DEFAULT NULL COMMENT 'FLEVEL',
  `FLONGNUMBER` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLONGNUMBER',
  `FPARENTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPARENTID',
  `FISENTITY` int(11) DEFAULT '0' COMMENT 'FISENTITY',
  `FISVIRTUAL` int(11) DEFAULT NULL COMMENT 'FISVIRTUAL',
  `FPHONENUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPHONENUMBER',
  `FLAYERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLAYERID',
  `FRESPONPOSITIONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FRESPONPOSITIONID',
  `FADDRESSID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADDRESSID',
  `FPRINCIPALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPRINCIPALID',
  `FLAYERTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLAYERTYPEID',
  `FBASEDUTY_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEDUTY_L1',
  `FBASEDUTY_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEDUTY_L2',
  `FBASEDUTY_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEDUTY_L3',
  `FINDEX` int(11) DEFAULT '20' COMMENT 'FINDEX',
  `FJOBSYSTEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FJOBSYSTEMID',
  `FADMINADDRESS_L1` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINADDRESS_L1',
  `FADMINADDRESS_L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINADDRESS_L2',
  `FADMINADDRESS_L3` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINADDRESS_L3',
  `FZIPCODE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'FZIPCODE',
  `FFAX` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFAX',
  `FISSEALUP` int(11) DEFAULT '0' COMMENT 'FISSEALUP',
  `FISSTART` int(11) DEFAULT '0' COMMENT 'FISSTART',
  `FISOUSEALUP` int(11) DEFAULT '0' COMMENT 'FISOUSEALUP',
  `FDISPLAYNAME_L1` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDISPLAYNAME_L1',
  `FPROPERTYSEALUPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FPROPERTYSEALUPDATE',
  `FVERSIONNUMBER` varchar(3) COLLATE utf8_bin DEFAULT NULL COMMENT 'FVERSIONNUMBER',
  `FCODE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCODE',
  `FISTRANSPORTORGUNIT` int(11) DEFAULT '0' COMMENT 'FISTRANSPORTORGUNIT',
  `FISQUALITYORGUNIT` int(11) DEFAULT '0' COMMENT 'FISQUALITYORGUNIT',
  `FSORTCODE` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSORTCODE',
  `FINDUSTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FINDUSTRYID',
  `FECONOMICTYPE` int(11) DEFAULT NULL COMMENT 'FECONOMICTYPE',
  `FREGISTEREDCAPITAL` double(28,16) DEFAULT NULL COMMENT 'FREGISTEREDCAPITAL',
  `FREGISTEREDCODE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREGISTEREDCODE',
  `FSETUPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FSETUPDATE',
  `FENDUPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FENDUPDATE',
  `FTAXNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTAXNUMBER',
  `FISCHURCHYARD` int(11) DEFAULT '1' COMMENT 'FISCHURCHYARD',
  `FJURIDICALPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FJURIDICALPERSONID',
  `FISJURIDICALCOMPANY` int(11) DEFAULT '0' COMMENT 'FISJURIDICALCOMPANY',
  `FISINDEPENDENCE` int(11) DEFAULT '0' COMMENT 'FISINDEPENDENCE',
  `FTERRITORY_L1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTERRITORY_L1',
  `FTERRITORY_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTERRITORY_L2',
  `FTERRITORY_L3` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTERRITORY_L3',
  `FORGTYPESTR` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FORGTYPESTR',
  `FORGCODE` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FORGCODE',
  `FDISPLAYNAME_L2` varchar(900) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDISPLAYNAME_L2',
  `FDISPLAYNAME_L3` varchar(900) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDISPLAYNAME_L3',
  `FAREAID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAREAID',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_t_org_admin';


-- zj_data.dm_tabdiytable108 definition

CREATE TABLE `dm_tabdiytable108` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `iOrd` int(11) NOT NULL COMMENT 'iOrd',
  `F1155` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1155',
  `F1156` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1156',
  `F1157` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1157',
  `F1158` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1158',
  `F1159` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1159',
  `F1160` float(200,2) NOT NULL COMMENT 'F1160',
  `F1161` float(200,2) NOT NULL COMMENT 'F1161',
  `F1162` float(200,2) NOT NULL COMMENT 'F1162',
  `F1163` float(200,2) NOT NULL COMMENT 'F1163',
  `F1164` float(200,2) NOT NULL COMMENT 'F1164',
  `F1166` float(200,2) NOT NULL COMMENT 'F1166',
  `F1167` float(200,2) NOT NULL COMMENT 'F1167',
  `F1168` float(200,2) NOT NULL COMMENT 'F1168',
  `F1169` float(200,2) NOT NULL COMMENT 'F1169',
  `F1170` float(200,2) NOT NULL COMMENT 'F1170',
  `F1220` float(200,2) NOT NULL COMMENT 'F1220',
  `F1221` float(200,2) NOT NULL COMMENT 'F1221',
  `F1748` float(200,2) NOT NULL COMMENT 'F1748',
  `F1165` date NOT NULL COMMENT 'F1165',
  `F1877` float(200,0) NOT NULL COMMENT 'F1877',
  `F1878` longtext COLLATE utf8_bin NOT NULL COMMENT 'F1878'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_tabDIYTable108';


-- zj_data.dm_tabdiytable4547 definition

CREATE TABLE `dm_tabdiytable4547` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `iOrd` int(11) NOT NULL COMMENT 'iOrd',
  `F48793` longtext COLLATE utf8_bin NOT NULL COMMENT 'F48793',
  `F48794` longtext COLLATE utf8_bin NOT NULL COMMENT 'F48794',
  `F48795` longtext COLLATE utf8_bin NOT NULL COMMENT 'F48795',
  `F48796` longtext COLLATE utf8_bin NOT NULL COMMENT 'F48796'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_tabDIYTable4547';


-- zj_data.dm_tabdiytable4565 definition

CREATE TABLE `dm_tabdiytable4565` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `iOrd` int(11) NOT NULL COMMENT 'iOrd',
  `F48882` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `F48883` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `F48884` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `F48885` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_tabDIYTable4565';


-- zj_data.dm_tax_result definition

CREATE TABLE `dm_tax_result` (
  `toalamount` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'toalamount',
  `orgnumber` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'orgnumber',
  `orgname` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'orgname',
  `caiwuzuzhi` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'caiwuzuzhi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_tc_sign_view definition

CREATE TABLE `dm_tc_sign_view` (
  `PUID` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `PGOF_RELCHG` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `POBJECT_NAME` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `PGOF_CHGSIG` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `PGOF_CHGNUM` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `PGOF_CHGYY` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `PGOF_CHGTYPE` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `PGOF_CHGCONT` varchar(3072) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_tc_SIGN_VIEW';


-- zj_data.dm_tc_suggestion_view definition

CREATE TABLE `dm_tc_suggestion_view` (
  `PUID` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `POBJECT_NAME` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `PGOF_PRODXH` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PGOF_CLDIC` varchar(288) COLLATE utf8_bin DEFAULT NULL,
  `PGOF_SHEJI` varchar(16) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_tc_SUGGESTION_VIEW';


-- zj_data.dm_tc_uchange_content definition

CREATE TABLE `dm_tc_uchange_content` (
  `PUID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PUID',
  `POBJECT_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'POBJECT_NAME',
  `PGOF_RELCHG` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PGOF_RELCHG',
  `PITEM_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PITEM_ID',
  `PITEM_REV_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PITEM_REV_ID',
  `PGOF_CHGSIG` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PGOF_CHGSIG',
  `PGOF_CHGNUM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PGOF_CHGNUM',
  `PGOF_CHGYY` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PGOF_CHGYY',
  `PGOF_CHGTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PGOF_CHGTYPE',
  `PGOF_CHGCONT` varchar(3000) COLLATE utf8_bin DEFAULT NULL COMMENT 'PGOF_CHGCONT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_tc_UCHANGE_CONTENT';


-- zj_data.dm_tc_uchange_view definition

CREATE TABLE `dm_tc_uchange_view` (
  `PUID` longtext COLLATE utf8_bin NOT NULL COMMENT 'PUID',
  `PITEM_ID` longtext COLLATE utf8_bin NOT NULL COMMENT 'PITEM_ID',
  `POBJECT_NAME` longtext COLLATE utf8_bin NOT NULL COMMENT 'POBJECT_NAME',
  `PPROJECT_ID` longtext COLLATE utf8_bin NOT NULL COMMENT 'PPROJECT_ID',
  `PPROJECT_NAME` longtext COLLATE utf8_bin NOT NULL COMMENT 'PPROJECT_NAME',
  `PCREATION_DATE` timestamp NULL DEFAULT NULL,
  `PLAST_MOD_DATE` timestamp NULL DEFAULT NULL,
  `PDATE_RELEASED` timestamp NULL DEFAULT NULL,
  `PUSER_ID` longtext COLLATE utf8_bin NOT NULL COMMENT 'PUSER_ID',
  `PUSER_NAME` longtext COLLATE utf8_bin NOT NULL,
  `POBJECT_TYPE` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_UCHANGE_VIEW';


-- zj_data.dm_tc_workflow_view definition

CREATE TABLE `dm_tc_workflow_view` (
  `PUID` longtext COLLATE utf8_bin COMMENT 'PUID',
  `POBJECT_NAME` longtext COLLATE utf8_bin COMMENT 'POBJECT_NAME',
  `PTASK_NAME` longtext COLLATE utf8_bin COMMENT 'PTASK_NAME',
  `PSTATE_VALUE` int(11) DEFAULT NULL COMMENT 'PSTATE_VALUE',
  `PTASK_RESULT` longtext COLLATE utf8_bin COMMENT 'PTASK_RESULT',
  `PP_OBJECT_NAME` longtext COLLATE utf8_bin COMMENT 'PP_OBJECT_NAME',
  `PITEM_ID` longtext COLLATE utf8_bin COMMENT 'PITEM_ID',
  `PCREATION_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PLAST_MOD_DATE` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_tc_WORKFLOW_VIEW';


-- zj_data.dm_test definition

CREATE TABLE `dm_test` (
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'code',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_test';


-- zj_data.dm_test_1027 definition

CREATE TABLE `dm_test_1027` (
  `code` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'code',
  `name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_test_1027';


-- zj_data.dm_tk_crrc_ljfx004 definition

CREATE TABLE `dm_tk_crrc_ljfx004` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `fbillno` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fbillno',
  `fbillstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fbillstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fauditorid` bigint(20) DEFAULT NULL COMMENT 'fauditorid',
  `fauditdate` datetime DEFAULT NULL COMMENT 'fauditdate',
  `fmodifytime` datetime DEFAULT NULL COMMENT 'fmodifytime',
  `fcreatetime` datetime DEFAULT NULL COMMENT 'fcreatetime',
  `forgid` bigint(20) DEFAULT NULL COMMENT 'forgid',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='归口单位处理(单据)';


-- zj_data.dm_tk_crrc_ljfx005 definition

CREATE TABLE `dm_tk_crrc_ljfx005` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FEntryId` bigint(20) NOT NULL COMMENT 'FEntryId',
  `FSeq` int(11) NOT NULL DEFAULT '0' COMMENT 'FSeq',
  `fmodifierfield` bigint(20) DEFAULT NULL COMMENT 'fmodifierfield',
  `fmodifydatefield` datetime DEFAULT NULL COMMENT 'fmodifydatefield',
  `fk_crrc_date` datetime DEFAULT NULL COMMENT 'fk_crrc_date',
  `fk_crrc_text1` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_text1',
  `fk_crrc_huanjie` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_huanjie',
  `fk_crrc_field` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_field',
  `fk_crrc_textareafield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_textareafield',
  `fk_crrc_date2` datetime DEFAULT NULL COMMENT 'fk_crrc_date2',
  `fk_crrc_fxtype` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_fxtype',
  `fk_crrc_fxstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_fxstatus',
  `fk_crrc_zmcl` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_zmcl',
  `fk_crrc_createrfield` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_createrfield',
  `fk_crrc_orgfield` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_orgfield',
  `fk_crrc_gkdept` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_gkdept',
  `fk_crrc_gkman` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_gkman',
  `fk_crrc_gkman1` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_gkman1',
  `fk_crrc_text11` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_text11',
  `fk_crrc_text12` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_text12',
  `fk_crrc_combofield` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_combofield',
  `fk_crrc_fkcx1` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_fkcx1',
  `fk_crrc_zmcl1` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_zmcl1',
  `fk_crrc_billnofield` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_billnofield',
  `fk_crrc_combofield1` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_combofield1',
  `fk_crrc_textfield` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_textfield',
  PRIMARY KEY (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='归口单位处理（单据体）';


-- zj_data.dm_tk_crrc_ljfxwrz definition

CREATE TABLE `dm_tk_crrc_ljfxwrz` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `fbillno` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `fbillstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fauditorid` bigint(20) DEFAULT NULL COMMENT 'fauditorid',
  `fauditdate` date DEFAULT NULL COMMENT '完成日期',
  `fmodifytime` date DEFAULT NULL COMMENT '修改时间',
  `fcreatetime` date DEFAULT NULL COMMENT '创建时间',
  `forgid` bigint(20) DEFAULT NULL COMMENT 'forgid',
  `FEntryId` bigint(20) NOT NULL COMMENT 'FEntryId',
  `FSeq` int(11) NOT NULL DEFAULT '0' COMMENT '序号',
  `fmodifierfield` bigint(20) DEFAULT NULL COMMENT 'fmodifierfield',
  `fmodifydatefield` date DEFAULT NULL COMMENT 'fmodifydatefield',
  `fk_crrc_date` date DEFAULT NULL COMMENT '填报日期',
  `fk_crrc_text1` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '风险事件描述',
  `fk_crrc_huanjie` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '业务环节',
  `fk_crrc_field` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '业务领域',
  `fk_crrc_textareafield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '应对措施',
  `fk_crrc_date2` date DEFAULT NULL COMMENT '计划完成时间',
  `fk_crrc_fxtype` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '风险类别',
  `fk_crrc_fxstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '风险等级',
  `fk_crrc_zmcl` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_zmcl',
  `fk_crrc_createrfield` bigint(20) DEFAULT NULL COMMENT '填报人',
  `fk_crrc_orgfield` bigint(20) DEFAULT NULL COMMENT '填报组织',
  `fk_crrc_gkdept` bigint(20) DEFAULT NULL COMMENT '归口部门',
  `fk_crrc_gkman` bigint(20) DEFAULT NULL COMMENT '归口单位负责人',
  `fk_crrc_gkman1` bigint(20) DEFAULT NULL COMMENT '用户1',
  `fk_crrc_text11` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '完成情况描述',
  `fk_crrc_text12` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '防控成效',
  `fk_crrc_combofield` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '是否按期完成',
  `fk_crrc_fkcx1` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '剩余风险',
  `fk_crrc_zmcl1` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '备注',
  `fk_crrc_billnofield` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_billnofield',
  `fk_crrc_combofield1` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '归口单位确认情况',
  `fk_crrc_textfield` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_textfield',
  PRIMARY KEY (`FId`,`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='归口单位处理';


-- zj_data.dm_tk_crrc_projectmanager definition

CREATE TABLE `dm_tk_crrc_projectmanager` (
  `FID` bigint(20) NOT NULL COMMENT 'FID',
  `fnumber` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fnumber',
  `fname` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fname',
  `fstatus` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fstatus',
  `fcreatorid` bigint(20) DEFAULT NULL COMMENT 'fcreatorid',
  `fmodifierid` bigint(20) DEFAULT NULL COMMENT 'fmodifierid',
  `fenable` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fenable',
  `fcreatetime` date DEFAULT NULL COMMENT 'fcreatetime',
  `fmodifytime` date DEFAULT NULL COMMENT 'fmodifytime',
  `fmasterid` bigint(20) DEFAULT NULL COMMENT 'fmasterid',
  `fk_crrc_simplename` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_simplename',
  `fk_crrc_managerid` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_managerid',
  `fk_crrc_adminorg` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_adminorg',
  `fk_crrc_projectid` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_projectid',
  `fk_crrc_fileperson` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_fileperson',
  `fk_crrc_firstorg` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_firstorg',
  `fk_crrc_combofield` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_combofield',
  `fk_crrc_projectstartyear` date DEFAULT NULL COMMENT 'fk_crrc_projectstartyear',
  `fk_crrc_gypersonid` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_gypersonid',
  `fk_crrc_projectjch` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_projectjch',
  `fk_crrc_project` bigint(20) DEFAULT NULL COMMENT 'fk_crrc_project',
  `FCREATEORGID` bigint(20) NOT NULL DEFAULT '0' COMMENT 'FCREATEORGID',
  `FSOURCEDATAID` bigint(20) NOT NULL DEFAULT '0' COMMENT 'FSOURCEDATAID',
  `FBITINDEX` int(11) NOT NULL DEFAULT '0' COMMENT 'FBITINDEX',
  `FSOURCEBITINDEX` int(11) NOT NULL DEFAULT '0' COMMENT 'FSOURCEBITINDEX',
  `forgid` bigint(20) DEFAULT NULL COMMENT 'forgid',
  `fctrlstrategy` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fctrlstrategy',
  `FDisablerID` bigint(20) DEFAULT NULL COMMENT 'FDisablerID',
  `FDisableDate` date DEFAULT NULL COMMENT 'FDisableDate',
  `fk_crrc_projecttype` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT 'fk_crrc_projecttype',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_tk_crrc_projectmanager';


-- zj_data.dm_tk_crrc_rlcbtest definition

CREATE TABLE `dm_tk_crrc_rlcbtest` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` date DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` date DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` date DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_DATE` date DEFAULT NULL COMMENT '年月',
  `FNAME` varchar(19) COLLATE utf8_bin DEFAULT NULL,
  `FK_CRRC_SS` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '所属',
  `FK_CRRC_QNYSS` decimal(23,2) DEFAULT NULL COMMENT '全年预算数',
  `FK_CRRC_SJS` decimal(23,2) DEFAULT NULL COMMENT '实际数',
  `FK_CRRC_YTDYSJD` decimal(23,2) DEFAULT NULL COMMENT 'YTD预算进度',
  `FK_CRRC_HZZZ` decimal(23,10) DEFAULT NULL COMMENT '汇总组织',
  `FK_CRRC_NDYSJD` decimal(23,2) DEFAULT NULL COMMENT '年度预算进度',
  `FK_CRRC_XCRJ` decimal(23,2) DEFAULT NULL COMMENT '薪酬人均',
  `FK_CRRC_RS` bigint(20) DEFAULT NULL COMMENT '人数',
  `FK_CRRC_RGCBHJ` decimal(23,2) DEFAULT NULL COMMENT '人工成本合计',
  `FK_CRRC_GZ` decimal(23,2) DEFAULT NULL COMMENT '工资',
  `FK_CRRC_JJ` decimal(23,2) DEFAULT NULL COMMENT '奖金',
  `FK_CRRC_SBGJJ` decimal(23,2) DEFAULT NULL COMMENT '社保公积金',
  `FK_CRRC_QTFL` decimal(23,2) DEFAULT NULL COMMENT '其他福利',
  `FK_CRRC_QTRLCB` decimal(23,2) DEFAULT NULL COMMENT '其他人力成本',
  `FK_CRRC_XCCB` decimal(23,2) DEFAULT NULL COMMENT '薪酬成本',
  `FK_CRRC_PJRS` bigint(20) DEFAULT NULL COMMENT '平均人数',
  `FK_CRRC_RJCB` decimal(23,2) DEFAULT NULL COMMENT '人均成本',
  `FK_CRRC_SBRJ` decimal(23,2) DEFAULT NULL COMMENT '社保人均',
  `FK_CRRC_QTFLRJ` decimal(23,2) DEFAULT NULL COMMENT '其他福利人均',
  `FK_CRRC_QTRLCBRJ` decimal(23,2) DEFAULT NULL COMMENT '其他人力成本人均',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_tk_crrc_人力成本';


-- zj_data.dm_tk_crrc_rlcbtest1 definition

CREATE TABLE `dm_tk_crrc_rlcbtest1` (
  `FId` bigint(20) NOT NULL COMMENT 'FId',
  `FBILLNO` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint(20) DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint(20) DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` date DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` date DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` date DEFAULT NULL COMMENT '创建时间',
  `FK_CRRC_DATE` date DEFAULT NULL COMMENT '年月',
  `FNAME` varchar(19) COLLATE utf8_bin DEFAULT NULL COMMENT '组织',
  `FK_CRRC_SS` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ' COMMENT '所属',
  `FK_CRRC_QNYSS` decimal(23,2) DEFAULT NULL COMMENT '全年预算数',
  `FK_CRRC_SJS` decimal(23,2) DEFAULT NULL COMMENT '实际数',
  `FK_CRRC_YTDYSJD` decimal(23,2) DEFAULT NULL COMMENT 'YTD预算进度',
  `FK_CRRC_HZZZ` decimal(23,10) DEFAULT NULL COMMENT '汇总组织',
  `FK_CRRC_NDYSJD` decimal(23,2) DEFAULT NULL COMMENT '年度预算进度',
  `FK_CRRC_XCRJ` decimal(23,2) DEFAULT NULL COMMENT '薪酬人均',
  `FK_CRRC_RS` bigint(20) DEFAULT NULL COMMENT '人数',
  `FK_CRRC_RGCBHJ` decimal(23,2) DEFAULT NULL COMMENT '人工成本合计',
  `FK_CRRC_GZ` decimal(23,2) DEFAULT NULL COMMENT '工资',
  `FK_CRRC_JJ` decimal(23,2) DEFAULT NULL COMMENT '奖金',
  `FK_CRRC_SBGJJ` decimal(23,2) DEFAULT NULL COMMENT '社保公积金',
  `FK_CRRC_QTFL` decimal(23,2) DEFAULT NULL COMMENT '其他福利',
  `FK_CRRC_QTRLCB` decimal(23,2) DEFAULT NULL COMMENT '其他人力成本',
  `FK_CRRC_XCCB` decimal(23,2) DEFAULT NULL COMMENT '薪酬成本',
  `FK_CRRC_PJRS` bigint(20) DEFAULT NULL COMMENT '平均人数',
  `FK_CRRC_RJCB` decimal(23,2) DEFAULT NULL COMMENT '人均成本',
  `FK_CRRC_SBRJ` decimal(23,2) DEFAULT NULL COMMENT '社保人均',
  `FK_CRRC_QTFLRJ` decimal(23,2) DEFAULT NULL COMMENT '其他福利人均',
  `FK_CRRC_QTRLCBRJ` decimal(23,2) DEFAULT NULL COMMENT '其他人力成本人均',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_tk_crrc_人力成本';


-- zj_data.dm_v_qms_config_resume definition

CREATE TABLE `dm_v_qms_config_resume` (
  `entity_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检验实体ID',
  `project_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实体关联的项目编码，可能是多个，用逗号分隔',
  `project_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实体关联的项目名称，可能是多个，用逗号分隔',
  `functree_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '装配构型ID',
  `functreeName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检验功能构型名称',
  `material_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关联物料编码',
  `material_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `train_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '车号',
  `train_number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '列车号',
  `carriage_number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节车号',
  `serial_number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `sup_wcord` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '客户产品标识序列号/单件码',
  `produce_vender` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产厂家',
  `produce_vender_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产厂商名称',
  `produce_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生产时间',
  `create_date` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '创建时间',
  `auth_root_dept_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '录入单位名称',
  `recordCount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检验记录数量',
  `ncrCount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格数量',
  `partsResumeCount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '部件履历数量',
  `trainResumeCount` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '整车履历数量',
  `fileName` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '文件名称',
  `filePath` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '文件路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='质量追溯宽表';


-- zj_data.dm_visitor_submit definition

CREATE TABLE `dm_visitor_submit` (
  `_id` text COLLATE utf8_bin,
  `source_id` text COLLATE utf8_bin,
  `作业人数` bigint(20) DEFAULT NULL,
  `作业内容大类` text COLLATE utf8_bin,
  `作业内容细分` text COLLATE utf8_bin,
  `作业危险性` text COLLATE utf8_bin,
  `作业地点` text COLLATE utf8_bin,
  `提交人姓名` text COLLATE utf8_bin,
  `提交人所属公司` text COLLATE utf8_bin,
  `提交人电话号` text COLLATE utf8_bin,
  `提交人身份证号` text COLLATE utf8_bin,
  `提交日期` datetime DEFAULT NULL,
  `是否需要特殊权限申请` text COLLATE utf8_bin,
  `计划完工时间` text COLLATE utf8_bin,
  `计划开工时间` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_visitor_submit_accompany definition

CREATE TABLE `dm_visitor_submit_accompany` (
  `_id` text COLLATE utf8_bin,
  `source_id` text COLLATE utf8_bin,
  `公司名称` text COLLATE utf8_bin,
  `姓名` text COLLATE utf8_bin,
  `联系方式` text COLLATE utf8_bin,
  `身份证号` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_visitor_submit_tutelage definition

CREATE TABLE `dm_visitor_submit_tutelage` (
  `_id` text COLLATE utf8_bin,
  `source_id` text COLLATE utf8_bin,
  `姓名` text COLLATE utf8_bin,
  `工号` text COLLATE utf8_bin,
  `班组` text COLLATE utf8_bin,
  `联系方式` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_web_ct_con_contract_t definition

CREATE TABLE `dm_web_ct_con_contract_t` (
  `FCREATETIME` timestamp NULL DEFAULT NULL,
  `FLASTUPDATETIME` timestamp NULL DEFAULT NULL,
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `FBIZDATE` timestamp NULL DEFAULT NULL,
  `FID` varchar(44) COLLATE utf8_bin DEFAULT ''' ',
  `CFCONTRACTNAME` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '合同名称',
  `CFEFFECTIVEDATE` timestamp NULL DEFAULT NULL,
  `CFSERIALNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '合同编号',
  `CFSTATUS` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `CFCONTRACTTYPE` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `CFSUPPLIERNAME` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商',
  `CFHTCPBM` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT '参评部门',
  `CFAUDITORTIME` timestamp NULL DEFAULT NULL,
  `PERFNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '承办人',
  `MCFSERIALNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '主合同编号',
  `BAU2FNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '承办部门',
  `USFNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '最后修改者',
  `BAUFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '业务组',
  `GUAFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '质保金方式',
  `TCFNAME` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT '合同模板',
  `PROMFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '采购方式',
  `CONOTHERCFCounterpartyID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT '合同对方Id',
  `CURFNAME_L2` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `CONOTHERCFStandardCurrency` double(28,0) DEFAULT NULL COMMENT '金额合计_本位币',
  `CONOTHERCFExhcangeRate` double(28,0) DEFAULT NULL COMMENT '汇率',
  `CONOTHERCFOriginalMoney` double(28,0) DEFAULT NULL COMMENT '金额合计_原币',
  `CONOTHERCFMONEYSUM` double(28,0) DEFAULT NULL COMMENT '不含税总价',
  `TEMCFNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '合同文本类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_WEB合同';


-- zj_data.dm_wms_asn_detail definition

CREATE TABLE `dm_wms_asn_detail` (
  `ITEM_CODE` longtext COLLATE utf8_bin COMMENT 'ITEM_CODE',
  `ITEM_NAME` longtext COLLATE utf8_bin COMMENT 'ITEM_NAME',
  `PROJECT_CODE` longtext COLLATE utf8_bin COMMENT 'PROJECT_CODE',
  `PROJECT_NAME` longtext COLLATE utf8_bin COMMENT 'PROJECT_NAME',
  `SUPPLIER` longtext COLLATE utf8_bin COMMENT 'SUPPLIER',
  `LICENSENUMBER` longtext COLLATE utf8_bin COMMENT 'LICENSENUMBER',
  `QUANTITY` longtext COLLATE utf8_bin COMMENT 'QUANTITY',
  `RECEIVE_DATE` longtext COLLATE utf8_bin COMMENT 'RECEIVE_DATE',
  `UNIT` longtext COLLATE utf8_bin COMMENT 'UNIT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_wms_asn_detail';


-- zj_data.dm_wms_inventory definition

CREATE TABLE `dm_wms_inventory` (
  `ITEM_CODE` longtext COLLATE utf8_bin NOT NULL COMMENT '物料编码',
  `mat_name` longtext COLLATE utf8_bin NOT NULL COMMENT '物料名称',
  `PROJECT_CODE` longtext COLLATE utf8_bin COMMENT '项目编码',
  `PROJECT_NAME` longtext COLLATE utf8_bin COMMENT '项目名称',
  `SUPPLIER` longtext COLLATE utf8_bin COMMENT '供应商',
  `QUANTITY` longtext COLLATE utf8_bin NOT NULL COMMENT '数量',
  `licensenumber` longtext COLLATE utf8_bin COMMENT '跟踪号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_wms_inventory';


-- zj_data.dm_wms_pick_ticket definition

CREATE TABLE `dm_wms_pick_ticket` (
  `ID` longtext COLLATE utf8_bin COMMENT 'ID',
  `CODE` longtext COLLATE utf8_bin COMMENT '编码',
  `STATUS` longtext COLLATE utf8_bin COMMENT 'STATUS',
  `LICENSENUMBER` longtext COLLATE utf8_bin COMMENT 'LICENSENUMBER',
  `SECTIONNUMBER` longtext COLLATE utf8_bin COMMENT 'SECTIONNUMBER',
  `PROCEDURE_gx` longtext COLLATE utf8_bin COMMENT 'PROCEDURE_gx',
  `WORK_CENTER` longtext COLLATE utf8_bin COMMENT 'WORK_CENTER',
  `EXPECTED_QUANTITY_BU` longtext COLLATE utf8_bin COMMENT 'EXPECTED_QUANTITY_BU',
  `ALLOACTED_QUANTITY_BU` longtext COLLATE utf8_bin COMMENT 'ALLOACTED_QUANTITY_BU',
  `PICKED_QUANTITY_BU` longtext COLLATE utf8_bin COMMENT 'PICKED_QUANTITY_BU',
  `SHIPPED_QUANTITY_BU` longtext COLLATE utf8_bin COMMENT 'SHIPPED_QUANTITY_BU',
  `REQUIRE_ARRIVE_DATE` longtext COLLATE utf8_bin COMMENT 'REQUIRE_ARRIVE_DATE',
  `INTEND_SHIP_DATE` longtext COLLATE utf8_bin COMMENT 'INTEND_SHIP_DATE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_wms_pick_ticket';


-- zj_data.dm_workcenter definition

CREATE TABLE `dm_workcenter` (
  `wcname` longtext COLLATE utf8_bin COMMENT 'wcname',
  `wcfnumber` longtext COLLATE utf8_bin COMMENT 'wcfnumber',
  `snumber` longtext COLLATE utf8_bin COMMENT 'snumber',
  `sname` longtext COLLATE utf8_bin COMMENT 'sname',
  `s1name` longtext COLLATE utf8_bin COMMENT 's1name',
  `s1number` longtext COLLATE utf8_bin COMMENT 's1number',
  `wgname` longtext COLLATE utf8_bin COMMENT 'wgname',
  `wc1fnumber` longtext COLLATE utf8_bin COMMENT 'wc1fnumber',
  `wc1fname` longtext COLLATE utf8_bin COMMENT 'wc1fname',
  `ctname` longtext COLLATE utf8_bin COMMENT 'ctname'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_workcenter';


-- zj_data.dm_xx_project_result definition

CREATE TABLE `dm_xx_project_result` (
  `nameuser` text COLLATE utf8_bin,
  `fnumberuser` text COLLATE utf8_bin,
  `createtime` text COLLATE utf8_bin,
  `nameproject` text COLLATE utf8_bin,
  `fnumberproject` text COLLATE utf8_bin,
  `jianshu` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dm_zb definition

CREATE TABLE `dm_zb` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `SRLRYSZ` int(11) DEFAULT NULL COMMENT 'SRLRYSZ',
  `SRLRSJZ` int(11) DEFAULT NULL COMMENT 'SRLRSJZ',
  `BBYS` int(11) DEFAULT NULL COMMENT 'BBYS',
  `BBSJZ` int(11) DEFAULT NULL COMMENT 'BBSJZ',
  `FZGSYS` int(11) DEFAULT NULL COMMENT 'FZGSYS',
  `FZGSSJZ` int(11) DEFAULT NULL COMMENT 'FZGSSJZ',
  `XQDDZB` int(11) DEFAULT NULL COMMENT 'XQDDZB',
  `NDXQDDE` int(11) DEFAULT NULL COMMENT 'NDXQDDE',
  `KCZZ` int(11) DEFAULT NULL COMMENT 'KCZZ',
  `JHZ` int(11) DEFAULT NULL COMMENT 'JHZ',
  `TBZ` int(11) DEFAULT NULL COMMENT 'TBZ',
  `GXSJ` date DEFAULT NULL COMMENT 'GXSJ',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_指标';


-- zj_data.dm_zccj_start_finish_rate definition

CREATE TABLE `dm_zccj_start_finish_rate` (
  `ID` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID',
  `StartRate` float(8,4) DEFAULT NULL COMMENT '开工率',
  `FinishRate` float(8,4) DEFAULT NULL COMMENT '完工率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DM_ZCCJ_Start_Finish_Rate';


-- zj_data.dm_zccjcx definition

CREATE TABLE `dm_zccjcx` (
  `startRate` float(100,4) DEFAULT NULL COMMENT '开工率',
  `finishRate` float(100,4) DEFAULT NULL COMMENT '完工率',
  `ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='数字化工位开工率完工率';


-- zj_data.dm_zj_bill_data definition

CREATE TABLE `dm_zj_bill_data` (
  `billtype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '订单类型',
  `wcl_count` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '未处理单据总数量',
  `agv_time_long` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '2021年单据平均审核时长',
  `wcl_dy_avg` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '未处理且大于平均审核时长数量',
  `wlc_3m` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '3月以内未处理数量',
  `wcl_3to6m` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '3-6个月未处理数量',
  `wcl_6mys` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '6个月以上未处理单据数量',
  `depart_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任部门'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='株机监控订单数据';


-- zj_data.dm_zj_bill_materialreqbill definition

CREATE TABLE `dm_zj_bill_materialreqbill` (
  `wcl_count` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '未处理单据总数量',
  `agv_time_long` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '2021年单据平均审核时长',
  `wcl_dy_avg` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '未处理且大于平均审核时长数量',
  `wlc_3m` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '3月以内未处理数量',
  `wcl_3to6m` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '3-6个月未处理数量',
  `wcl_6mys` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '6个月以上未处理单据数量',
  `depart_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '部门'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='株机监控领料出库单汇总表';


-- zj_data.dmc_check_wave_cache definition

CREATE TABLE `dmc_check_wave_cache` (
  `RESOURCE_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TABLENAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `BRANCH_TYPE` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `CYCLE_TYPE` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `CHECK_FUNC` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `CHECK_EXP` text COLLATE utf8_bin,
  `START_TIME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `END_TIME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TIME_CONDITION` text COLLATE utf8_bin,
  `OTHER_CONDITION` text COLLATE utf8_bin,
  `CHECK_VALUE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CHECK_SQL` text COLLATE utf8_bin,
  `INSERT_TIME` datetime DEFAULT NULL,
  `rule_md5` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `oid` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dmc_etl_task_job definition

CREATE TABLE `dmc_etl_task_job` (
  `OID` varchar(100) COLLATE utf8_bin NOT NULL,
  `ETL_TASK_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PROC_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `EXEC_STATUS` int(11) DEFAULT NULL,
  `RESULT_STATUS` int(11) DEFAULT NULL,
  `REMARK` text COLLATE utf8_bin,
  `DELETE_FLAG` int(11) DEFAULT NULL,
  `PROC_TYPE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dmc_rule_data_param definition

CREATE TABLE `dmc_rule_data_param` (
  `oid` int(11) DEFAULT NULL,
  `param` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dmc_rule_kpi_tmps definition

CREATE TABLE `dmc_rule_kpi_tmps` (
  `OID` varchar(100) COLLATE utf8_bin NOT NULL,
  `ETL_TASK_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TASK_RULES_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CHECK_KPI_COL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CHECK_EXP_VALUE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REF_KPI_COL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REF_EXP_VALUE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `COL_VALUE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_FLAG` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dmc_rule_tmps definition

CREATE TABLE `dmc_rule_tmps` (
  `OID` varchar(100) COLLATE utf8_bin NOT NULL,
  `ETL_TASK_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TASK_RULES_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TMP_KEY` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TMP_VALUE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_FLAG` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dmc_task_job_proc_log definition

CREATE TABLE `dmc_task_job_proc_log` (
  `OID` varchar(100) COLLATE utf8_bin NOT NULL,
  `PROC_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `EXEC_STATUS` int(11) DEFAULT NULL,
  `RESULT_STATUS` int(11) DEFAULT NULL,
  `RESULT_DESC` text COLLATE utf8_bin,
  `BEGIN_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `ERROR_SQL` text COLLATE utf8_bin,
  `CHECK_TYPE_SQL_1` text COLLATE utf8_bin,
  `DELETE_FLAG` int(11) DEFAULT NULL,
  `CHECK_TYPE_SQL_2` text COLLATE utf8_bin,
  `CHECK_TYPE_SQL_3` text COLLATE utf8_bin,
  `CHECK_TYPE_SQL_4` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dq_area_code definition

CREATE TABLE `dq_area_code` (
  `ID_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REMARK` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dsim_85eb13e5a72abf1d896 definition

CREATE TABLE `dsim_85eb13e5a72abf1d896` (
  `c_91919` bigint(64) DEFAULT NULL COMMENT '序号',
  `c_91515` varchar(255) DEFAULT NULL COMMENT '交互操作',
  `c_40180` varchar(255) DEFAULT NULL COMMENT '模块',
  `c_28560` varchar(255) DEFAULT NULL COMMENT '一级功能点',
  `c_13340` varchar(255) DEFAULT NULL COMMENT '二级功能点',
  `c_78207` varchar(255) DEFAULT NULL COMMENT '功能说明',
  `c_12603` bigint(64) DEFAULT NULL COMMENT '优先顺序',
  `c_10750` varchar(255) DEFAULT NULL COMMENT '开始时间',
  `c_81964` varchar(255) DEFAULT NULL COMMENT '结束时间',
  `c_17993` varchar(64) DEFAULT NULL COMMENT '负责人',
  `c_12943` varchar(255) DEFAULT NULL COMMENT '状态',
  `c_74491` varchar(255) DEFAULT NULL COMMENT '提测时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- zj_data.dw_mes_ctrack definition

CREATE TABLE `dw_mes_ctrack` (
  `DISPATCH_CODE` longtext COLLATE utf8_bin NOT NULL COMMENT '*工单号',
  `DIS_STATE` longtext COLLATE utf8_bin COMMENT '*工单状态',
  `WORK_CELL` longtext COLLATE utf8_bin COMMENT '*班组',
  `PRODU_NAME` longtext COLLATE utf8_bin COMMENT '*项目',
  `CARD_NO` longtext COLLATE utf8_bin COMMENT '*车号',
  `PLAN_BEGIN` longtext COLLATE utf8_bin COMMENT '*计划开工时间',
  `ACT_BEGIN` longtext COLLATE utf8_bin COMMENT '*实际开工时间',
  `PLAN_COMPLETE` longtext COLLATE utf8_bin COMMENT '*计划完工时间',
  `ACT_COMPLETE` longtext COLLATE utf8_bin COMMENT '*实际完工时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='DW_MES_VTRACK';


-- zj_data.dwd_material_luoyang definition

CREATE TABLE `dwd_material_luoyang` (
  `fid` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fHhelpCode` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `materialType` varchar(60) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.dwd_material_luoyangraw_xls definition

CREATE TABLE `dwd_material_luoyangraw_xls` (
  `fHelpCode` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '助记码',
  `materialType` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料来源类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='洛阳数据-适用范围为空-源数据';


-- zj_data.dwd_mm_typeid definition

CREATE TABLE `dwd_mm_typeid` (
  `fk_crrc_biztype` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'fk_crrc_biztype'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dwd_mm_typeid';


-- zj_data.dwm_cb_wkr definition

CREATE TABLE `dwm_cb_wkr` (
  `fnumber` longtext COLLATE utf8_bin COMMENT 'fnumber',
  `FDEBITLocal` double(50,10) DEFAULT NULL COMMENT 'FDEBITLocal',
  `FDISPLAYNAME_L2` longtext COLLATE utf8_bin COMMENT 'FDISPLAYNAME_L2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dwm_cb_wkr';


-- zj_data.dwm_cost_result_test1 definition

CREATE TABLE `dwm_cost_result_test1` (
  `projectname` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'projectname',
  `projectnumber` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'projectnumber',
  `plate` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'plate',
  `itemnumber` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'itemnumber',
  `itemname` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'itemname',
  `amount` double DEFAULT NULL COMMENT 'amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dwm_cost_result_test1';


-- zj_data.dwm_crisp_debit definition

CREATE TABLE `dwm_crisp_debit` (
  `FDEBITLOCAL` double(50,10) DEFAULT NULL COMMENT '借方发生额本位币',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '编号',
  `FDISPLAYNAME_L2` longtext COLLATE utf8_bin COMMENT '部门长名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dwm_crisp_debit';


-- zj_data.dwm_eas90_pricingpolicybill definition

CREATE TABLE `dwm_eas90_pricingpolicybill` (
  `number` longtext COLLATE utf8_bin COMMENT '定价单单据编号',
  `policyBillNumber` longtext COLLATE utf8_bin COMMENT '定价单号',
  `baseStatus` longtext COLLATE utf8_bin COMMENT '定价单状态',
  `createTime` longtext COLLATE utf8_bin COMMENT '创建时间',
  `auditTime` longtext COLLATE utf8_bin COMMENT '审核时间',
  `sourceBillNumber` longtext COLLATE utf8_bin COMMENT '来源单据编号',
  `pricingBillType` longtext COLLATE utf8_bin COMMENT '定价单类型',
  `planQty` longtext COLLATE utf8_bin COMMENT '订货数量',
  `purPrice` longtext COLLATE utf8_bin COMMENT '单价_含税_原币',
  `priceingWay` longtext COLLATE utf8_bin COMMENT '定价方式',
  `taxRate` longtext COLLATE utf8_bin COMMENT '税率',
  `exchangeRate` longtext COLLATE utf8_bin COMMENT '汇率',
  `pricingUser` longtext COLLATE utf8_bin COMMENT '价格员名称',
  `pricingGroup` longtext COLLATE utf8_bin COMMENT '价格组名称',
  `currency` longtext COLLATE utf8_bin COMMENT '币种',
  `isUpdateByPricingStore` longtext COLLATE utf8_bin COMMENT '已按价格库更新',
  `lastUpdater` longtext COLLATE utf8_bin COMMENT '最后修改者',
  `lastUpdaterGroup` longtext COLLATE utf8_bin COMMENT '最后修改者价格组',
  `source` longtext COLLATE utf8_bin COMMENT '定价单来源',
  `projectID` longtext COLLATE utf8_bin COMMENT 'ProjectID',
  `supplieraID` longtext COLLATE utf8_bin COMMENT 'SupplieraID',
  `materialID` longtext COLLATE utf8_bin COMMENT 'MaterialID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dwm_eas90_定价单（旧）+分录';


-- zj_data.dwm_eas_approvaltimeout01 definition

CREATE TABLE `dwm_eas_approvaltimeout01` (
  `fcompany` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `fnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据编码',
  `ftype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `famount` double(100,0) DEFAULT NULL COMMENT '金额',
  `fname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `fdpt` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `fnodeapprover` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节点审批人',
  `fbusinessgroup` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '共享业务组',
  `FCreateTime` date DEFAULT NULL COMMENT '到达节点时间',
  `ftime` date DEFAULT NULL COMMENT '节点分配时间',
  `fstoptime` double(100,0) DEFAULT NULL COMMENT '节点停留时间',
  `fremainingtime` double(100,0) DEFAULT NULL COMMENT '剩余时间',
  `fcompanynumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司编码',
  `fnamenumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人编码',
  `fdptnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门编码',
  `fnodeapprovernumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节点审批人编码',
  `fbusinessgroupnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '共享业务组编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dwm_eas_共享审批超时1';


-- zj_data.dwm_eas_fkbbhwzc definition

CREATE TABLE `dwm_eas_fkbbhwzc` (
  `senumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'senumber',
  `FACTUALAMT` double(28,10) DEFAULT NULL,
  `FACTUALLOCAMT` double(28,10) DEFAULT NULL,
  `funumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'funumber',
  `fdate` date DEFAULT NULL COMMENT 'fdate',
  `fsuppname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'fsuppname',
  `acnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'acnumber',
  `PAYBILLTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'PAYBILLTYPE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dwm_eas_付款海外采购支出';


-- zj_data.dwm_eas_supplier_yjh definition

CREATE TABLE `dwm_eas_supplier_yjh` (
  `FNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `FNUMBER` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商编码',
  `FADDRESS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `FTAXREGISTERNO` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '税务登记号',
  `FUSEDSTATUS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dwm_eas_supplier_yjh';


-- zj_data.dwm_eas_uncommitted definition

CREATE TABLE `dwm_eas_uncommitted` (
  `fcompany` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司',
  `fnumber` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '单据编号',
  `ftype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据类型',
  `famount` double(100,0) DEFAULT NULL COMMENT '金额',
  `fname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人',
  `fdpt` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门',
  `fsavetime` date DEFAULT NULL COMMENT '单据保存时间',
  `ftasktimes` date DEFAULT NULL COMMENT '单据退回时间',
  `fstoptime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '节点停留时间',
  `fcompanynumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司编码',
  `fnamenumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请人编码',
  `fdptnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '申请部门编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dwm_eas_未提交01';


-- zj_data.dwm_expensetype_mysql definition

CREATE TABLE `dwm_expensetype_mysql` (
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `number` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '编码',
  `type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '类别',
  `typegroup` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '分组',
  `status` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `company` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '公司'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dwm_expensetype_mysql';


-- zj_data.dwm_mm_incomeprofit definition

CREATE TABLE `dwm_mm_incomeprofit` (
  `fk_crrc_company` longtext COLLATE utf8_bin COMMENT 'fk_crrc_company',
  `income` longtext COLLATE utf8_bin COMMENT 'income',
  `cost` longtext COLLATE utf8_bin COMMENT 'cost',
  `retaines_profits` longtext COLLATE utf8_bin COMMENT 'retaines_profits',
  `profit` longtext COLLATE utf8_bin COMMENT 'profit',
  `new_order` longtext COLLATE utf8_bin COMMENT 'new_order',
  `receivable` longtext COLLATE utf8_bin COMMENT 'receivable',
  `fk_crrc_yingyeshouru` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_yingyeshouru',
  `fk_crrc_yingyechengben` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_yingyechengben',
  `fk_crrc_jinglirun` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_jinglirun',
  `fk_crrc_lirunzonge` double(16,2) DEFAULT NULL COMMENT 'fk_crrc_lirunzonge',
  `fk_crrc_year` date DEFAULT NULL COMMENT 'fk_crrc_year',
  `fk_crrc_neworderqty` longtext COLLATE utf8_bin COMMENT 'fk_crrc_neworderqty',
  `fk_crrc_yingshoumoney` longtext COLLATE utf8_bin COMMENT 'fk_crrc_yingshoumoney',
  `belong` longtext COLLATE utf8_bin COMMENT 'belong'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='营业收入-收入利润';


-- zj_data.dwm_mm_test09051723 definition

CREATE TABLE `dwm_mm_test09051723` (
  `id` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'id',
  `fk_crrc_biztype` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'fk_crrc_biztype',
  `type_first` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'type_first',
  `type_second` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'type_second',
  `type_third` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'type_third'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dwm_mm_test09051723';


-- zj_data.dwm_test_goods definition

CREATE TABLE `dwm_test_goods` (
  `id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `cate_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '分类名称',
  `cate_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '分类ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='测试商品';


-- zj_data.dws_mm_5year definition

CREATE TABLE `dws_mm_5year` (
  `fk_crrc_year` date DEFAULT NULL COMMENT 'fk_crrc_year',
  `fk_crrc_company` longtext COLLATE utf8_bin COMMENT 'fk_crrc_company',
  `fk_crrc_currentyearcount1` longtext COLLATE utf8_bin COMMENT 'fk_crrc_currentyearcount1',
  `current_year` longtext COLLATE utf8_bin COMMENT 'current_year',
  `fk_crrc_currentyearcount1_1` longtext COLLATE utf8_bin COMMENT 'fk_crrc_currentyearcount1_1',
  `last_year_income` longtext COLLATE utf8_bin COMMENT 'last_year_income'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dws_mm_5year';


-- zj_data.interested_party_review definition

CREATE TABLE `interested_party_review` (
  `index` bigint(20) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `创建时间` datetime DEFAULT NULL,
  `申请人姓名` text COLLATE utf8_bin,
  `申请人身份证号` text COLLATE utf8_bin,
  `申请人联系电话` text COLLATE utf8_bin,
  `公司名称` text COLLATE utf8_bin,
  `是否签订过安全承诺书` text COLLATE utf8_bin,
  `随行人数` bigint(20) DEFAULT NULL,
  `是否为作业负责人` text COLLATE utf8_bin,
  `作业状态` text COLLATE utf8_bin,
  `申请作业时间` text COLLATE utf8_bin,
  `计划开工日期` datetime DEFAULT NULL,
  `计划开工日期上午/下午` text COLLATE utf8_bin,
  `计划完工日期` datetime DEFAULT NULL,
  `计划完工日期上午/下午` text COLLATE utf8_bin,
  `作业地点` text COLLATE utf8_bin,
  `作业类型` text COLLATE utf8_bin,
  `具体作业内容` text COLLATE utf8_bin,
  `项目名称` text COLLATE utf8_bin,
  `车号` text COLLATE utf8_bin,
  `台位/车道` text COLLATE utf8_bin,
  `作业依据` text COLLATE utf8_bin,
  `NCR/开口项/设计变更编号` text COLLATE utf8_bin,
  `作业危险性` text COLLATE utf8_bin,
  `是否危险作业` text COLLATE utf8_bin,
  `是否需要监护人` text COLLATE utf8_bin,
  `是否需要作业证` text COLLATE utf8_bin,
  `是否携带危化品` text COLLATE utf8_bin,
  `携带危化品类型` text COLLATE utf8_bin,
  `事业部对接人` text COLLATE utf8_bin,
  `事业部对接人姓名` text COLLATE utf8_bin,
  `事业部对接人部门` text COLLATE utf8_bin,
  `事业部对接人工号` text COLLATE utf8_bin,
  KEY `ix_zj_data_interested_party_review_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.jiaofu_full definition

CREATE TABLE `jiaofu_full` (
  `ID` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID',
  `iOrd` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'iOrd',
  `填表日期` datetime DEFAULT NULL COMMENT '填表日期',
  `修改日期` datetime DEFAULT NULL COMMENT '修改日期',
  `数据状态` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '数据状态',
  `项目号` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `项目名称` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `厂内跟踪号` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '厂内跟踪号',
  `出厂油漆号` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '出厂油漆号',
  `回厂日期` date DEFAULT NULL COMMENT '回厂日期',
  `总成进车日期` date DEFAULT NULL COMMENT '总成进车日期',
  `总成落车日期` date DEFAULT NULL COMMENT '总成落车日期',
  `交车进车日期` date DEFAULT NULL COMMENT '交车进车日期',
  `试运日期` date DEFAULT NULL COMMENT '试运日期',
  `提交日期` date DEFAULT NULL COMMENT '提交日期',
  `出厂日期` date DEFAULT NULL COMMENT '出厂日期',
  `配属局段` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '配属局段',
  `汽车运输` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '汽车运输',
  `出厂开口项` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '出厂开口项',
  `未执行业联` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '未执行业联',
  `备注` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='jiaofu_full';


-- zj_data.jsc_luodi_test definition

CREATE TABLE `jsc_luodi_test` (
  `ID` varchar(0) COLLATE utf8_bin NOT NULL COMMENT 'ID',
  `STATUS` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'STATUS',
  `NAME` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'NAME',
  `CODE` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'CODE',
  `PROJ_ID` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_ID',
  `PLAN_START_DATE` date DEFAULT NULL COMMENT 'PLAN_START_DATE',
  `PLAN_END_DATE` date DEFAULT NULL COMMENT 'PLAN_END_DATE',
  `ACTUAL_START_DATE` date DEFAULT NULL COMMENT 'ACTUAL_START_DATE',
  `ACTUAL_END_DATE` date DEFAULT NULL COMMENT 'ACTUAL_END_DATE',
  `ID_1` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID_1',
  `RESP_DEPT` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'RESP_DEPT',
  `START_TRAIN_NUM` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'START_TRAIN_NUM',
  `END_TRAIN_NUM` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'END_TRAIN_NUM',
  `BATCH_DELIV` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'BATCH_DELIV',
  `ID_2` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID_2',
  `CODE_1` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'CODE_1',
  `ID_3` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID_3',
  `POTENTIAL_PM` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'POTENTIAL_PM',
  `PROJ_GENRE_ID` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_GENRE_ID',
  `SHORT_NAME` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'SHORT_NAME',
  `CUSTOMER` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'CUSTOMER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='jsc_luodi_test';


-- zj_data.lt_im_materialreqbillentry definition

CREATE TABLE `lt_im_materialreqbillentry` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FSEQ` int(11) DEFAULT NULL COMMENT 'FSEQ',
  `FSOURCEBILLID` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEBILLNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLNUMBER',
  `FSOURCEBILLENTRYID` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLENTRYID',
  `FSOURCEBILLENTRYSEQ` int(11) DEFAULT NULL COMMENT 'FSOURCEBILLENTRYSEQ',
  `FASSCOEFFICIENT` double(28,16) NOT NULL COMMENT 'FASSCOEFFICIENT',
  `FBASESTATUS` int(11) DEFAULT NULL COMMENT 'FBASESTATUS',
  `FASSOCIATEQTY` double(28,16) NOT NULL COMMENT 'FASSOCIATEQTY',
  `FSOURCEBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLTYPEID',
  `FASSISTPROPERTYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSISTPROPERTYID',
  `FMATERIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMATERIALID',
  `FUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FUNITID',
  `FBASEUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEUNITID',
  `FASSISTUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSISTUNITID',
  `FREASONCODEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREASONCODEID',
  `FSTORAGEORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSTORAGEORGUNITID',
  `FCOMPANYORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANYORGUNITID',
  `FWAREHOUSEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FWAREHOUSEID',
  `FLOCATIONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLOCATIONID',
  `FSTOCKERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSTOCKERID',
  `FLOT` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLOT',
  `FQTY` double(28,16) NOT NULL COMMENT 'FQTY',
  `FASSISTQTY` double(28,16) NOT NULL COMMENT 'FASSISTQTY',
  `FBASEQTY` double(28,16) NOT NULL COMMENT 'FBASEQTY',
  `FREVERSEQTY` double(28,16) NOT NULL COMMENT 'FREVERSEQTY',
  `FRETURNSQTY` double(28,16) NOT NULL COMMENT 'FRETURNSQTY',
  `FPRICE` double(28,16) NOT NULL COMMENT 'FPRICE',
  `FAMOUNT` double(19,4) NOT NULL COMMENT 'FAMOUNT',
  `FUNITSTANDARDCOST` double(28,16) NOT NULL COMMENT 'FUNITSTANDARDCOST',
  `FSTANDARDCOST` double(19,4) NOT NULL COMMENT 'FSTANDARDCOST',
  `FUNITACTUALCOST` double(28,16) NOT NULL COMMENT 'FUNITACTUALCOST',
  `FACTUALCOST` double(19,4) NOT NULL COMMENT 'FACTUALCOST',
  `FISPRESENT` int(11) DEFAULT NULL COMMENT 'FISPRESENT',
  `FPARENTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPARENTID',
  `FPRODUCTIDID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPRODUCTIDID',
  `FORDERNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FORDERNUMBER',
  `FPOBILLENTRYID` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPOBILLENTRYID',
  `FEXP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FEXP',
  `FMFG` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FMFG',
  `FREMARK` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREMARK',
  `FREVERSEBASEQTY` double(28,16) NOT NULL COMMENT 'FREVERSEBASEQTY',
  `FRETURNBASEQTY` double(28,16) NOT NULL COMMENT 'FRETURNBASEQTY',
  `FBASEUNITACTUALCOST` double(28,16) NOT NULL COMMENT 'FBASEUNITACTUALCOST',
  `FCOSTOBJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTOBJECTID',
  `FUNRETURNEDBASEQTY` double(28,16) NOT NULL COMMENT 'FUNRETURNEDBASEQTY',
  `FCOSTITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTITEMID',
  `FCOSTOBJECTSUITEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTOBJECTSUITEID',
  `FCLASSGROUPID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCLASSGROUPID',
  `FPERSONID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPERSONID',
  `FTRACENO` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRACENO',
  `FSALEORDERID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSALEORDERID',
  `FSALEORDERNUM` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSALEORDERNUM',
  `FISSUEQTY` double(21,8) NOT NULL COMMENT 'FISSUEQTY',
  `FBASEISSUEQTY` double(21,8) NOT NULL COMMENT 'FBASEISSUEQTY',
  `FPRODUCTLINEWPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPRODUCTLINEWPID',
  `FPICKINGDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FPICKINGDATE',
  `FDEMANDDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FDEMANDDATE',
  `FORDERBILLID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'FORDERBILLID',
  `FPRODUCTLINEID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPRODUCTLINEID',
  `FFACARDQTY` double(21,8) NOT NULL COMMENT 'FFACARDQTY',
  `FCOREBILLNUMBER` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLNUMBER',
  `FCOREBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLTYPEID',
  `FCOREBILLID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLID',
  `FCOREBILLENTRYID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLENTRYID',
  `FCOREBILLENTRYSE` int(11) DEFAULT NULL COMMENT 'FCOREBILLENTRYSE',
  `FPROCESSMATERIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROCESSMATERIALID',
  `FISSUEADMINORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FISSUEADMINORGUNITID',
  `FSUBWRITTENOFFQTY` double(28,10) DEFAULT NULL COMMENT 'FSUBWRITTENOFFQTY',
  `FSUBWRITTENOFFBASEQTY` double(28,10) DEFAULT NULL COMMENT 'FSUBWRITTENOFFBASEQTY',
  `FSUBUNWRITEOFFQTY` double(28,10) DEFAULT NULL COMMENT 'FSUBUNWRITEOFFQTY',
  `FSUBUNWRITEOFFBASEQTY` double(28,10) DEFAULT NULL COMMENT 'FSUBUNWRITEOFFBASEQTY',
  `FISSUEPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FISSUEPERSONID',
  `FCARNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCARNUMBER',
  `FWORKNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FWORKNUMBERID',
  `FNECKNUMBER` double(28,10) DEFAULT NULL COMMENT 'FNECKNUMBER',
  `FHOUSEKNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHOUSEKNUMBER',
  `FSTATREPERTORY` double(28,10) DEFAULT NULL COMMENT 'FSTATREPERTORY',
  `FBETIMESSTOCK` double(28,10) DEFAULT NULL COMMENT 'FBETIMESSTOCK',
  `FFOURNUMBERORI` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFOURNUMBERORI',
  `FSTATATTRI` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSTATATTRI',
  `FCOREORDERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREORDERID',
  `FCOREORDERENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREORDERENTRYID',
  `FCORENUMBER` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCORENUMBER',
  `FCOREORDERENTRYSEQ` int(11) DEFAULT NULL COMMENT 'FCOREORDERENTRYSEQ',
  `FOPERATIONNO` int(11) DEFAULT NULL COMMENT 'FOPERATIONNO',
  `FOPERATIONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOPERATIONID',
  `FWORKCENTERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FWORKCENTERID',
  `FISADMEASURE` int(11) NOT NULL COMMENT 'FISADMEASURE',
  `FISREWORK` int(11) NOT NULL COMMENT 'FISREWORK',
  `FPROJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTID',
  `FTRACKNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRACKNUMBERID',
  `FSCWRITTENOFFAMOUNT` double(17,4) DEFAULT NULL COMMENT 'FSCWRITTENOFFAMOUNT',
  `FSCUNWRITTENOFFAMOUNT` double(17,4) DEFAULT NULL COMMENT 'FSCUNWRITTENOFFAMOUNT',
  `FCUSTOMERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCUSTOMERID',
  `FSUPPLIERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSUPPLIERID',
  `CFWORKNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFWORKNUMBERID',
  `CFWORKNUMBERID0` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFWORKNUMBERID0',
  `CFMATERIALNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMATERIALNUMBER',
  `CFBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFBIZDATE',
  `CFNEWSOURCEBILLENTRYID` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFNEWSOURCEBILLENTRYID',
  `FSUPPLYWAREHOUSEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSUPPLYWAREHOUSEID',
  `FSUPPLYLOCATIONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSUPPLYLOCATIONID',
  `FSETTLEPRICE` double(21,8) DEFAULT NULL COMMENT 'FSETTLEPRICE',
  `FPICKERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPICKERID',
  `CFWORKORDERPLANNUM` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFWORKORDERPLANNUM',
  `CFACCUEQUIPMENTARCHIVEQTY` double(28,10) DEFAULT NULL COMMENT 'CFACCUEQUIPMENTARCHIVEQTY',
  `CFNOTASSOEQUIPMENTARCHIVEQTY` double(28,10) DEFAULT NULL COMMENT 'CFNOTASSOEQUIPMENTARCHIVEQTY',
  `FTRANSACTIONTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRANSACTIONTYPEID',
  `FADMINORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINORGUNITID',
  `FBILLBASESTATUS` int(11) DEFAULT NULL COMMENT 'FBILLBASESTATUS',
  `FYEAR` int(11) DEFAULT NULL COMMENT 'FYEAR',
  `FPERIOD` int(11) DEFAULT NULL COMMENT 'FPERIOD',
  `FISINITBILL` int(11) DEFAULT NULL COMMENT 'FISINITBILL',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBIZDATE',
  `FAUDITTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAUDITTIME',
  `FISREVERSED` int(11) DEFAULT NULL COMMENT 'FISREVERSED',
  `FFIVOUCHERED` int(11) DEFAULT NULL COMMENT 'FFIVOUCHERED',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBILLTYPEID',
  `FBIZTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBIZTYPEID',
  `FCOSTCENTERORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTCENTERORGUNITID',
  `CFISBACKFLUSH` int(11) DEFAULT NULL COMMENT 'CFISBACKFLUSH',
  `CFBACKFLUSHWAREHOU` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBACKFLUSHWAREHOU',
  `CFBACKFLUSHQTY` double(28,10) DEFAULT NULL COMMENT 'CFBACKFLUSHQTY',
  `CFFLUSHQTY` double(28,10) DEFAULT NULL COMMENT 'CFFLUSHQTY',
  `CFACTUREQTY` double(28,10) DEFAULT NULL COMMENT 'CFACTUREQTY',
  `CFLOCKQTY` double(28,10) DEFAULT NULL COMMENT 'CFLOCKQTY',
  `CFFLUSHLOCKQTY` double(28,10) DEFAULT NULL COMMENT 'CFFLUSHLOCKQTY',
  `CFSUPPLYWAREPERSON` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSUPPLYWAREPERSON',
  `CFALLINKID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFALLINKID',
  `CFALLINKENTRYID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFALLINKENTRYID',
  `CFCFOLDSHOULDQTY` double(28,10) DEFAULT NULL COMMENT 'CFCFOLDSHOULDQTY',
  `CFPROJECTJCHID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJECTJCHID',
  `CFSOURCEID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSOURCEID',
  `CFSOURCEENTRYID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSOURCEENTRYID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='LT_IM_MATERIALREQBILLENTRY';


-- zj_data.luodipms definition

CREATE TABLE `luodipms` (
  `ID` varchar(0) COLLATE utf8_bin NOT NULL COMMENT 'ID',
  `STATUS` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'STATUS',
  `NAME` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'NAME',
  `CODE` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'CODE',
  `PROJ_ID` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_ID',
  `PLAN_START_DATE` date DEFAULT NULL COMMENT 'PLAN_START_DATE',
  `PLAN_END_DATE` date DEFAULT NULL COMMENT 'PLAN_END_DATE',
  `ACTUAL_START_DATE` date DEFAULT NULL COMMENT 'ACTUAL_START_DATE',
  `ACTUAL_END_DATE` date DEFAULT NULL COMMENT 'ACTUAL_END_DATE',
  `ID_1` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID_1',
  `RESP_DEPT` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'RESP_DEPT',
  `START_TRAIN_NUM` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'START_TRAIN_NUM',
  `END_TRAIN_NUM` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'END_TRAIN_NUM',
  `BATCH_DELIV` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'BATCH_DELIV',
  `ID_2` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID_2',
  `CODE_1` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'CODE_1',
  `ID_3` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID_3',
  `POTENTIAL_PM` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'POTENTIAL_PM',
  `PROJ_GENRE_ID` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_GENRE_ID',
  `SHORT_NAME` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'SHORT_NAME',
  `CUSTOMER` varchar(0) COLLATE utf8_bin DEFAULT NULL COMMENT 'CUSTOMER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='luodipms';


-- zj_data.m_ncr_claim_in definition

CREATE TABLE `m_ncr_claim_in` (
  `ncrtypeno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrtypeno',
  `ncrtypename` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrtypename',
  `ncrnumber` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrnumber',
  `ncrbasestatus` int(11) DEFAULT NULL COMMENT 'ncrbasestatus',
  `ncrauditlevel` int(11) DEFAULT NULL COMMENT 'ncrauditlevel',
  `ncrbizdate` datetime DEFAULT NULL COMMENT 'ncrbizdate',
  `ncrprojectno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrprojectno',
  `ncrprojectname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrprojectname',
  `ncrstorageorgno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrstorageorgno',
  `ncrstorageorgname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrstorageorgname',
  `ncrmaterialno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrmaterialno',
  `ncrmaterialname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrmaterialname',
  `ncrmaterialmodel` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrmaterialmodel',
  `ncrmaterialunit` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrmaterialunit',
  `ncrserialno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrserialno',
  `ncroccurdepno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncroccurdepno',
  `ncroccurdepname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncroccurdepname',
  `ncrrestype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrrestype',
  `ncrinsupplierno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrinsupplierno',
  `ncrinsuppliername` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrinsuppliername',
  `ncroutsupplierno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncroutsupplierno',
  `ncroutsuppliername` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncroutsuppliername',
  `ncrqty` decimal(21,8) DEFAULT NULL,
  `ncrtype` int(11) DEFAULT NULL COMMENT 'ncrtype',
  `ncrisslncr` int(11) DEFAULT NULL COMMENT 'ncrisslncr',
  `ncrlotnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrlotnumber',
  `ncrwmsnumber` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrwmsnumber',
  `ncrdesc` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrdesc',
  `ncrhandlerno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrhandlerno',
  `ncrhandlername` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrhandlername',
  `ncrrecorderno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrrecorderno',
  `ncrrecordername` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrrecordername',
  `ncrrecorddate` datetime DEFAULT NULL COMMENT 'ncrrecorddate',
  `ncrconandresult` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrconandresult',
  `ncrauditdesc` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrauditdesc',
  `ncrauditresult` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncrauditresult',
  `claimnumber` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'claimnumber',
  `claimbasestatus` int(11) DEFAULT NULL COMMENT 'claimbasestatus',
  `claimbizdate` datetime DEFAULT NULL COMMENT 'claimbizdate',
  `claimrejectqty` decimal(21,8) DEFAULT NULL,
  `claimqty` decimal(21,8) DEFAULT NULL,
  `claimamount` decimal(21,8) DEFAULT NULL,
  `claimplanretdate` datetime DEFAULT NULL COMMENT 'claimplanretdate',
  `claimplansetdate` datetime DEFAULT NULL COMMENT 'claimplansetdate',
  `claimexchangerate` decimal(21,8) DEFAULT NULL,
  `claimmfrno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'claimmfrno',
  `claimmfrname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'claimmfrname',
  `claimdesc` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'claimdesc',
  `claimcreatorno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'claimcreatorno',
  `claimcreatorname` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'claimcreatorname',
  `claimcreatetime` datetime DEFAULT NULL COMMENT 'claimcreatetime',
  `claimauditorno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'claimauditorno',
  `claimauditorname` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'claimauditorname',
  `claimudittime` datetime DEFAULT NULL COMMENT 'claimudittime',
  `inwarenumber` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'inwarenumber',
  `inwarebasestatus` int(11) DEFAULT NULL COMMENT 'inwarebasestatus',
  `inwarebizdate` datetime DEFAULT NULL COMMENT 'inwarebizdate',
  `inwarebiztypeno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'inwarebiztypeno',
  `inwarebiztypename` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'inwarebiztypename',
  `inwaretransactiontypeno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'inwaretransactiontypeno',
  `inwaretransactiontypename` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'inwaretransactiontypename',
  `inwareqty` decimal(28,10) DEFAULT NULL,
  `inwarecreatorno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'inwarecreatorno',
  `inwarecreatorname` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'inwarecreatorname',
  `inwarecreatetime` datetime DEFAULT NULL COMMENT 'inwarecreatetime',
  `inwareauditorrno` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'inwareauditorrno',
  `inwareauditorname` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'inwareauditorname',
  `inwareaudittime` datetime DEFAULT NULL COMMENT 'inwareaudittime',
  `ncrid` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'ncrid',
  `claimid` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'claimid',
  `inwareentryid` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'inwareentryid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='M_NCR_Claim_In';


-- zj_data.material_2020_dm definition

CREATE TABLE `material_2020_dm` (
  `fnumber` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '物料编码',
  PRIMARY KEY (`fnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='2020待查询物料';


-- zj_data.md_eas_org definition

CREATE TABLE `md_eas_org` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L2',
  `FDESCRIPTION_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FCODE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCODE',
  `L1` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '一级组织名称',
  `L2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '二级组织名称',
  `L3` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '三级组织名称',
  `L4` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '四级组织名称',
  `L5` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '五级组织名称',
  `L6` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '六级组织名称',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='EAS组织';


-- zj_data.mysql_ftp_test definition

CREATE TABLE `mysql_ftp_test` (
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.ncrclaim definition

CREATE TABLE `ncrclaim` (
  `ncrtypeno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '事务类型',
  `ncrtypename` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '事务类型',
  `ncrnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'NCR单据编号',
  `ncrbasestatus` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '单据状态',
  `ncrauditlevel` int(11) DEFAULT NULL COMMENT '评审级别',
  `ncrbizdate` date DEFAULT NULL COMMENT '发生日期',
  `ncrprojectno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目号',
  `ncrprojectname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目',
  `ncrstorageorgno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '库存组织编码',
  `ncrstorageorgname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '库存组织',
  `ncrmaterialno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `mat_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '物料名称',
  `ncrmaterialmodel` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '图号',
  `ncrmaterialunit` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计量单位',
  `ncrserialno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '产品序列号',
  `ncroccurdepno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发生单位编码',
  `ncroccurdepname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '发生单位',
  `ncrrestype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任类别',
  `ncrinsupplierno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '内部责任单位编码',
  `ncrinsuppliername` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '内部责任单位',
  `ncroutsupplierno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '外部责任单位编码',
  `ncroutsuppliername` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '外部责任单位',
  `ncrqty` double(100,0) DEFAULT NULL COMMENT '不合格数量',
  `ncrtype` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格类别',
  `ncrisslncr` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '是否产生销售NCR',
  `ncrlotnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '批次号',
  `ncrwmsnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'WMS单据编号',
  `ncrdesc` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '产品不合格状态描述',
  `ncrhandlerno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处理人编码',
  `ncrhandlername` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处理人',
  `ncrrecorderno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '记录人编码',
  `ncrrecordername` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '记录人',
  `ncrrecorddate` date DEFAULT NULL COMMENT '记录日期',
  `ncrconandresult` varchar(10000) COLLATE utf8_bin DEFAULT NULL COMMENT '不合格品评审和处置',
  `ncrauditdesc` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `ncrauditresult` int(11) DEFAULT NULL COMMENT '评审结果',
  `claimnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '索赔单据编号',
  `claimbasestatus` int(11) DEFAULT NULL COMMENT '索赔单据状态',
  `claimbizdate` date DEFAULT NULL COMMENT '索赔单业务日期',
  `claimrejectqty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '废品数量',
  `claimqty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '索赔单数量',
  `claimamount` double(100,0) DEFAULT NULL COMMENT '索赔金额',
  `claimplanretdate` datetime DEFAULT NULL COMMENT '计划返回时间',
  `claimplansetdate` datetime DEFAULT NULL COMMENT '计划赔付时间',
  `claimmfrno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '制造商编码',
  `claimmfrname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '制造商',
  `claimdesc` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `claimCreatorno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '索赔单创建者编号',
  `claimCreatorname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '索赔单创建者',
  `claimcreatetime` datetime DEFAULT NULL COMMENT '索赔单创建时间',
  `claimAuditorno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '索赔单审核人编号',
  `claimAuditorname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '索赔单审核人',
  `claimudittime` datetime DEFAULT NULL COMMENT '索赔单审核时间',
  `inwarenumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购入库单编号',
  `inwarebasestatus` int(11) DEFAULT NULL COMMENT '采购入库单单据状态',
  `inwarebizdate` date DEFAULT NULL COMMENT '采购入库单业务日期',
  `inwarebiztypeno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购入库单业务类型编码',
  `inwarebiztypename` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购入库单业务类型名称',
  `inwareTransactionTypeno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购入库单事务类型编码',
  `inwareTransactionTypename` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '采购入库单事务类型名称',
  `inwareqty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库数量',
  `inwareCreatorno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单创建者编码',
  `inwareCreatorname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单创建者',
  `inwarecreatetime` datetime DEFAULT NULL COMMENT '入库单创建时间',
  `inwareAuditorrno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单审核人编码',
  `inwareAuditorname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单审核人',
  `inwareaudittime` datetime DEFAULT NULL COMMENT '入库单审核时间',
  `ncrid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncr报告id',
  `claimid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '索赔单id',
  `inwareentryid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '入库单分录id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='不合格索赔';


-- zj_data.ods_accompaningpersons definition

CREATE TABLE `ods_accompaningpersons` (
  `id` bigint(20) NOT NULL,
  `formApplicationNumber` text COLLATE utf8_bin NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `idNumber` text COLLATE utf8_bin NOT NULL,
  `phoneNumber` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.ods_alignment_file definition

CREATE TABLE `ods_alignment_file` (
  `source_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `修改时间` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `项目号` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `车号` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `节车号` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `工序id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `工序名称` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `线号` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `线径` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `颜色` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `线型` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `文件sheet名称` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `文件sheet序号` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `起始位置` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `终止位置` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `连接点1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `连接点2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `点位1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `点位2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `说明1` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `说明2` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `问题1` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `问题2` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `问题3` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `问题4` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `人员1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `人员2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `备注` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `返工确认` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `工艺备注` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `试验结果` char(1) COLLATE utf8_bin DEFAULT NULL,
  `异常描述` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `排序` bigint(20) DEFAULT NULL,
  `问题` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.ods_cmd_bd_export definition

CREATE TABLE `ods_cmd_bd_export` (
  `f_data_ab` varchar(255) DEFAULT NULL COMMENT 'F_DATA_AB',
  `f_data_hb` varchar(255) DEFAULT NULL COMMENT 'F_DATA_HB',
  `f_data_jd` varchar(255) DEFAULT NULL COMMENT 'F_DATA_JD',
  `f_data_loco_no` varchar(255) DEFAULT NULL COMMENT 'F_DATA_LOCO_NO',
  `f_data_rqsj` varchar(255) DEFAULT NULL COMMENT 'F_DATA_RQSJ',
  `f_data_t_type_id` varchar(255) DEFAULT NULL COMMENT 'F_DATA_T_TYPE_ID',
  `f_data_wd` varchar(255) DEFAULT NULL COMMENT 'F_DATA_WD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- zj_data.ods_crisp_debit definition

CREATE TABLE `ods_crisp_debit` (
  `FDEBITLOCAL` double(50,10) DEFAULT NULL COMMENT '借方发生额本位',
  `FNUMBER` longtext COLLATE utf8_bin COMMENT '*编号',
  `FDISPLAYNAME_L2` longtext COLLATE utf8_bin COMMENT '部门长名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ods_crisp_debit';


-- zj_data.ods_dangertypes definition

CREATE TABLE `ods_dangertypes` (
  `id` bigint(20) NOT NULL,
  `formApplicationNumber` text COLLATE utf8_bin NOT NULL,
  `dangerTypes` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.ods_eas_ct_mnc_ncrmbillunpass definition

CREATE TABLE `ods_eas_ct_mnc_ncrmbillunpass` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'FID',
  `FSEQ` int(11) NOT NULL DEFAULT '0' COMMENT 'FSEQ',
  `FPARENTID` varchar(44) COLLATE utf8_bin NOT NULL DEFAULT ''' ' COMMENT 'FPARENTID',
  `CFSEQ` int(11) DEFAULT NULL COMMENT 'CFSEQ',
  `CFUNQUALIFIEDMODEL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFUNQUALIFIEDMODEL',
  `CFUNQUALIFIEDREMARK` varchar(750) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFUNQUALIFIEDREMARK',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ods_eas_CT_MNC_NCRMBILLUNPASS';


-- zj_data.ods_eas_t_ap_payrequestbill definition

CREATE TABLE `ods_eas_t_ap_payrequestbill` (
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FBIZDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FBIZDATE',
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FHANDLERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHANDLERID',
  `FDESCRIPTION` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAUDITORID',
  `FSOURCEBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEFUNCTION` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEFUNCTION',
  `FCOMPANYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANYID',
  `FCOMANYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMANYID',
  `FPURORGCOMPANYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPURORGCOMPANYID',
  `FPURORGGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPURORGGROUPID',
  `FDEPARTMENTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDEPARTMENTID',
  `FAPPLYERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAPPLYERID',
  `FCURRENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCURRENCYID',
  `FEXCHANGE_RATE` double(28,16) DEFAULT NULL COMMENT 'FEXCHANGE_RATE',
  `FREQUESTAMOUNT` double(13,4) DEFAULT NULL COMMENT 'FREQUESTAMOUNT',
  `FAUDITAMOUNT` double(13,4) DEFAULT NULL COMMENT 'FAUDITAMOUNT',
  `FAUDITDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAUDITDATE',
  `FREQUESTREASON` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREQUESTREASON',
  `FBILLSTATUS` int(11) NOT NULL COMMENT 'FBILLSTATUS',
  `FSOURCEBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLTYPEID',
  `FORDERPAYMENT` int(11) DEFAULT NULL COMMENT 'FORDERPAYMENT',
  `FAPQTYGTPO` int(11) DEFAULT NULL COMMENT 'FAPQTYGTPO',
  `FACCOUNTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FACCOUNTID',
  `FCOSTCENTERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTCENTERID',
  `CFTXTHEBH` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTXTHEBH',
  `CFHTHID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFHTHID',
  `CFFPTJRQ` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFFPTJRQ',
  `CFCONTRACTAMOUNT` double(28,10) DEFAULT NULL COMMENT 'CFCONTRACTAMOUNT',
  `CFHTLJFKJE` double(28,10) DEFAULT NULL COMMENT 'CFHTLJFKJE',
  `CFISCONTRACT` int(11) DEFAULT NULL COMMENT 'CFISCONTRACT',
  `CFASSTACTTYPE1ID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFASSTACTTYPE1ID',
  `CFASSACTTYPE1ID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFASSACTTYPE1ID',
  `CFBEGINPAYDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFBEGINPAYDATE',
  `CFENDPAYDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFENDPAYDATE',
  `CFSYNSTATUS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSYNSTATUS',
  `CFISEND` int(11) DEFAULT NULL COMMENT 'CFISEND',
  `CFHTKPBILLSTATE` int(11) DEFAULT NULL COMMENT 'CFHTKPBILLSTATE',
  `CFGDZBXYSTATUS` int(11) DEFAULT NULL COMMENT 'CFGDZBXYSTATUS',
  `CFISSENDDDL` int(11) DEFAULT NULL COMMENT 'CFISSENDDDL',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ods_eas_付款申请单';


-- zj_data.ods_eas_t_bd_accountview definition

CREATE TABLE `ods_eas_t_bd_accountview` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FNAME_L1` varchar(384) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L1',
  `FNAME_L2` varchar(384) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L2',
  `FNAME_L3` varchar(384) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAME_L3',
  `FNUMBER` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'FNUMBER',
  `FDESCRIPTION_L1` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L1',
  `FDESCRIPTION_L2` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L2',
  `FDESCRIPTION_L3` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION_L3',
  `FSIMPLENAME` varchar(96) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSIMPLENAME',
  `FISLEAF` int(11) DEFAULT NULL COMMENT 'FISLEAF',
  `FLEVEL` int(11) DEFAULT NULL COMMENT 'FLEVEL',
  `FLONGNUMBER` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLONGNUMBER',
  `FCREATORID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FACCOUNTTABLEID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FACCOUNTTABLEID',
  `FACCOUNTTYPEID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FACCOUNTTYPEID',
  `FLONGNAME_L1` varchar(768) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLONGNAME_L1',
  `FLONGNAME_L2` varchar(768) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLONGNAME_L2',
  `FLONGNAME_L3` varchar(768) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLONGNAME_L3',
  `FPARENTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPARENTID',
  `FISGFREEZE` int(11) DEFAULT NULL COMMENT 'FISGFREEZE',
  `FGAA` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FGAA',
  `FISCFREEZE` int(11) DEFAULT NULL COMMENT 'FISCFREEZE',
  `FHELPCODE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHELPCODE',
  `FCOMPANYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANYID',
  `FCURRENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCURRENCYID',
  `FDC` int(11) DEFAULT NULL COMMENT 'FDC',
  `FISCHANGECURRENCY` int(11) DEFAULT NULL COMMENT 'FISCHANGECURRENCY',
  `FISCASHEQUIVALENT` int(11) DEFAULT NULL COMMENT 'FISCASHEQUIVALENT',
  `FISCOUNTACCRUAL` int(11) DEFAULT NULL COMMENT 'FISCOUNTACCRUAL',
  `FACCRUALPER` double(28,10) DEFAULT NULL COMMENT 'FACCRUALPER',
  `FISQTY` int(11) DEFAULT NULL COMMENT 'FISQTY',
  `FMEASUREUNITGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMEASUREUNITGROUPID',
  `FMEASUREUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMEASUREUNITID',
  `FAC` int(11) DEFAULT NULL COMMENT 'FAC',
  `FPLTYPE` int(11) DEFAULT NULL COMMENT 'FPLTYPE',
  `FCONTROL` int(11) DEFAULT NULL COMMENT 'FCONTROL',
  `FCAA` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCAA',
  `FACCTCURRENCY` int(11) DEFAULT NULL COMMENT 'FACCTCURRENCY',
  `FISBANK` int(11) DEFAULT NULL COMMENT 'FISBANK',
  `FISCASH` int(11) DEFAULT NULL COMMENT 'FISCASH',
  `FHASUSERPROPERTY` int(11) DEFAULT '0' COMMENT 'FHASUSERPROPERTY',
  `FACCOUNTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FACCOUNTID',
  `FGLEVEL` int(11) NOT NULL COMMENT 'FGLEVEL',
  `FISALLOWCA` int(11) NOT NULL DEFAULT '1' COMMENT 'FISALLOWCA',
  `FUPPERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FUPPERID',
  `FPARENTAAID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPARENTAAID',
  `FISUPPERALLOWCA` int(11) NOT NULL DEFAULT '1' COMMENT 'FISUPPERALLOWCA',
  `FISSELFFREEZE` int(11) NOT NULL DEFAULT '0' COMMENT 'FISSELFFREEZE',
  `FISPARENTFREEZE` int(11) NOT NULL DEFAULT '0' COMMENT 'FISPARENTFREEZE',
  `FREFID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREFID',
  `FCONTROLLEVEL` int(11) NOT NULL COMMENT 'FCONTROLLEVEL',
  `FISOUTDAILYACCOUNT` int(11) DEFAULT NULL COMMENT 'FISOUTDAILYACCOUNT',
  `FDISPLAYNAME_L1` varchar(768) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDISPLAYNAME_L1',
  `FDISPLAYNAME_L2` varchar(768) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDISPLAYNAME_L2',
  `FDISPLAYNAME_L3` varchar(768) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDISPLAYNAME_L3',
  `FACNOTICE` int(11) NOT NULL DEFAULT '0' COMMENT 'FACNOTICE',
  `FBW` int(11) DEFAULT '0' COMMENT 'FBW',
  `FMAINCASHFLOWITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMAINCASHFLOWITEMID',
  `FATTCASHFLOWITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FATTCASHFLOWITEMID',
  `FBORROWERMAINCASHFLOWITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBORROWERMAINCASHFLOWITEMID',
  `FBORROWERATTCASHFLOWITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBORROWERATTCASHFLOWITEMID',
  `FLENDERMAINCASHFLOWITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLENDERMAINCASHFLOWITEMID',
  `FLENDERATTCASHFLOWITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLENDERATTCASHFLOWITEMID',
  `FISCONTROL` int(11) DEFAULT '0' COMMENT 'FISCONTROL',
  `FNAMEPINYIN` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAMEPINYIN',
  `FNAMESHORTPINYIN` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNAMESHORTPINYIN',
  `FACCRUALDIRECTION` int(11) NOT NULL DEFAULT '10' COMMENT 'FACCRUALDIRECTION',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ods_eas_会计科目';


-- zj_data.ods_eas_t_cas_paymentbill definition

CREATE TABLE `ods_eas_t_cas_paymentbill` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBIZDATE',
  `FHANDLERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHANDLERID',
  `FDESCRIPTION` varchar(750) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAUDITORID',
  `FSOURCEBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEFUNCTION` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEFUNCTION',
  `FCOMPANYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANYID',
  `FSOURCETYPE` int(11) DEFAULT NULL COMMENT 'FSOURCETYPE',
  `FSOURCESYSTYPE` int(11) DEFAULT NULL COMMENT 'FSOURCESYSTYPE',
  `FCURRENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCURRENCYID',
  `FEXCHANGERATE` double(28,16) NOT NULL DEFAULT '0.0000000000000000' COMMENT 'FEXCHANGERATE',
  `FISEXCHANGED` int(11) NOT NULL DEFAULT '0' COMMENT 'FISEXCHANGED',
  `FLASTEXHANGERATE` double(28,16) NOT NULL DEFAULT '0.0000000000000000' COMMENT 'FLASTEXHANGERATE',
  `FSETTLEMENTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSETTLEMENTTYPEID',
  `FSETTLEMENTNUMBER` varchar(1200) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSETTLEMENTNUMBER',
  `FOPPACCOUNTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOPPACCOUNTID',
  `FFPITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFPITEMID',
  `FISCOMMITSETTLE` int(11) DEFAULT NULL COMMENT 'FISCOMMITSETTLE',
  `FSETTLEBIZTYPE` int(11) DEFAULT NULL COMMENT 'FSETTLEBIZTYPE',
  `FAUDITDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAUDITDATE',
  `FCASHIERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCASHIERID',
  `FACCOUNTANTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FACCOUNTANTID',
  `FISINITIALIZEBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISINITIALIZEBILL',
  `FFIVOUCHERED` int(11) NOT NULL DEFAULT '0' COMMENT 'FFIVOUCHERED',
  `FBILLSTATUS` int(11) NOT NULL DEFAULT '10' COMMENT 'FBILLSTATUS',
  `FSETTLEMENTSTATUS` int(11) NOT NULL DEFAULT '10' COMMENT 'FSETTLEMENTSTATUS',
  `FFUNDTYPE` int(11) DEFAULT NULL COMMENT 'FFUNDTYPE',
  `FPAYTYPE` int(11) DEFAULT '0' COMMENT 'FPAYTYPE',
  `FACTUALPAYAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FACTUALPAYAMOUNT',
  `FACTPAYAMTVC` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FACTPAYAMTVC',
  `FACTPAYLOCAMT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FACTPAYLOCAMT',
  `FACTPAYLOCAMTVC` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FACTPAYLOCAMTVC',
  `FPAYERBANKID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYERBANKID',
  `FPAYERACCOUNTBANKID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYERACCOUNTBANKID',
  `FPAYERACCOUNTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYERACCOUNTID',
  `FPAYEETYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYEETYPEID',
  `FPAYEEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYEEID',
  `FPAYEENUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYEENUMBER',
  `FPAYEENAME` varchar(210) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYEENAME',
  `FPAYEEBANK` varchar(825) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYEEBANK',
  `FPAYEEACCOUNTBANK` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYEEACCOUNTBANK',
  `FISIMPORT` int(11) NOT NULL DEFAULT '0' COMMENT 'FISIMPORT',
  `FAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FAMOUNT',
  `FLOCALAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FLOCALAMOUNT',
  `FADMINORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINORGUNITID',
  `FPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPERSONID',
  `FPAYDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FPAYDATE',
  `FACCESSORYAMT` int(11) DEFAULT '0' COMMENT 'FACCESSORYAMT',
  `FCONCEIT` varchar(240) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONCEIT',
  `FISRELATECHEQUE` int(11) NOT NULL DEFAULT '0' COMMENT 'FISRELATECHEQUE',
  `FCHEQUEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCHEQUEID',
  `FSUMMARY` varchar(240) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSUMMARY',
  `FDAYACCOUNT` double(19,4) DEFAULT '0.0000' COMMENT 'FDAYACCOUNT',
  `FFDCPAYTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFDCPAYTYPEID',
  `FCURPROJECTID` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCURPROJECTID',
  `FFDCPAYEENAMEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFDCPAYEENAMEID',
  `FFDCPAYEETYPE` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFDCPAYEETYPE',
  `FCONTRACTNO` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTRACTNO',
  `FCONTRACTBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTRACTBILLID',
  `FCAPITALAMOUNT` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCAPITALAMOUNT',
  `FUSEDEPARTMENTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FUSEDEPARTMENTID',
  `FURENTDEGREE` int(11) DEFAULT NULL COMMENT 'FURENTDEGREE',
  `FDEDUCTMONEYTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDEDUCTMONEYTYPEID',
  `FLATESTPRICE` double(19,4) DEFAULT '0.0000' COMMENT 'FLATESTPRICE',
  `FADDPROJECTAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FADDPROJECTAMT',
  `FCHANGEAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FCHANGEAMT',
  `FPAYEDAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FPAYEDAMT',
  `FPAYPARTAMATLAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FPAYPARTAMATLAMT',
  `FPAYTIMES` int(11) DEFAULT '0' COMMENT 'FPAYTIMES',
  `FPROJECTPRICEINCONTRACT` double(19,4) DEFAULT '0.0000' COMMENT 'FPROJECTPRICEINCONTRACT',
  `FSCHEDULEAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FSCHEDULEAMT',
  `FSETTLEAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FSETTLEAMT',
  `FCURPLANNEDPAYMENT` double(19,4) DEFAULT '0.0000' COMMENT 'FCURPLANNEDPAYMENT',
  `FCURBACKPAY` double(19,4) DEFAULT '0.0000' COMMENT 'FCURBACKPAY',
  `FPAYMENTPLAN` double(19,4) DEFAULT '0.0000' COMMENT 'FPAYMENTPLAN',
  `FCURREQPERCENT` double(19,4) DEFAULT '0.0000' COMMENT 'FCURREQPERCENT',
  `FALLREQPERCENT` double(19,4) DEFAULT '0.0000' COMMENT 'FALLREQPERCENT',
  `FIMAGESCHEDULE` double(19,4) DEFAULT '0.0000' COMMENT 'FIMAGESCHEDULE',
  `FCURPAID` double(19,4) DEFAULT '0.0000' COMMENT 'FCURPAID',
  `FPRJALLREQAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FPRJALLREQAMT',
  `FADDPRJALLREQAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FADDPRJALLREQAMT',
  `FPAYPARTAMATLALLREQAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FPAYPARTAMATLALLREQAMT',
  `FACTFDCPAYEENAMEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FACTFDCPAYEENAMEID',
  `FFDCPAYREQNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFDCPAYREQNUMBER',
  `FOPPINNERACCTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOPPINNERACCTID',
  `FPROVINCEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROVINCEID',
  `FCITYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCITYID',
  `FREGIONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREGIONID',
  `FFEETYPE` int(11) DEFAULT NULL COMMENT 'FFEETYPE',
  `FPROJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTID',
  `FPROJECTMANAGERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTMANAGERID',
  `FLSTPRJALLPAIDAMT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FLSTPRJALLPAIDAMT',
  `FLSTADDPRJALLPAIDAMT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FLSTADDPRJALLPAIDAMT',
  `FLSTAMATLALLPAIDAMT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FLSTAMATLALLPAIDAMT',
  `FLSTPRJALLREQAMT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FLSTPRJALLREQAMT',
  `FLSTADDPRJALLREQAMT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FLSTADDPRJALLREQAMT',
  `FLSTAMATLALLREQAMT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FLSTAMATLALLREQAMT',
  `FFDCPAYREQID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFDCPAYREQID',
  `FPAYEEACCOUNTNAME` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYEEACCOUNTNAME',
  `FPAYEEAREAID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYEEAREAID',
  `FVOUCHERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FVOUCHERID',
  `FVOUCHERTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FVOUCHERTYPEID',
  `FISEMERGENCY` int(11) NOT NULL DEFAULT '0' COMMENT 'FISEMERGENCY',
  `FBIZTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBIZTYPEID',
  `FISBOOKRL` int(11) DEFAULT NULL COMMENT 'FISBOOKRL',
  `FBGAMOUNT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FBGAMOUNT',
  `FISAPPOINTVOUCHER` int(11) NOT NULL DEFAULT '0' COMMENT 'FISAPPOINTVOUCHER',
  `FSRCAGENPAYMENTBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSRCAGENPAYMENTBILLID',
  `FAGENTPAYMENTBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAGENTPAYMENTBILLID',
  `FPAYMENTBILLTYPE` int(11) NOT NULL DEFAULT '1' COMMENT 'FPAYMENTBILLTYPE',
  `FAGENTPAYCOMPANYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAGENTPAYCOMPANYID',
  `FPAYBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYBILLTYPEID',
  `FISRELATEPAYBOOK` int(11) DEFAULT NULL COMMENT 'FISRELATEPAYBOOK',
  `FPAYEEACCOUNTBANKOID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYEEACCOUNTBANKOID',
  `FFEETYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFEETYPEID',
  `FISCTRLOPPACCT` int(11) DEFAULT '0' COMMENT 'FISCTRLOPPACCT',
  `FISREDBILL` int(11) DEFAULT '0' COMMENT 'FISREDBILL',
  `FISTRANSBILL` int(11) DEFAULT '0' COMMENT 'FISTRANSBILL',
  `FISTRANSOTHERBILL` int(11) DEFAULT '0' COMMENT 'FISTRANSOTHERBILL',
  `FACTRECACCOUNTBANK` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FACTRECACCOUNTBANK',
  `FVERIFIEDAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FVERIFIEDAMT',
  `FVERIFIEDAMTLOC` double(19,4) DEFAULT '0.0000' COMMENT 'FVERIFIEDAMTLOC',
  `FUNVERIFIEDAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FUNVERIFIEDAMT',
  `FUNVERIFIEDAMTLOC` double(19,4) DEFAULT '0.0000' COMMENT 'FUNVERIFIEDAMTLOC',
  `FISDIFFERPLACE` int(11) DEFAULT '0' COMMENT 'FISDIFFERPLACE',
  `FEDITFLAG` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'FEDITFLAG',
  `FISNEEDVOUCHER` int(11) DEFAULT '1' COMMENT 'FISNEEDVOUCHER',
  `FVOUCHERNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FVOUCHERNUMBER',
  `FISCOMMITTOBE` int(11) DEFAULT '0' COMMENT 'FISCOMMITTOBE',
  `FAPPROVERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAPPROVERID',
  `FAPPROVEDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAPPROVEDATE',
  `FUSAGE` varchar(210) COLLATE utf8_bin DEFAULT NULL COMMENT 'FUSAGE',
  `FRECPROVINCE` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FRECPROVINCE',
  `FRECCITY` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FRECCITY',
  `FDIFPLACE` int(11) DEFAULT '1' COMMENT 'FDIFPLACE',
  `FMERGENCYSTATE` int(11) DEFAULT '1' COMMENT 'FMERGENCYSTATE',
  `FBANKPAYSTATE` int(11) DEFAULT NULL COMMENT 'FBANKPAYSTATE',
  `FBANKRETURNINFO` varchar(1530) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBANKRETURNINFO',
  `FACCEPTER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FACCEPTER',
  `FACCEPTERDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FACCEPTERDATE',
  `FMIXENTRYVERIFY` int(11) DEFAULT '0' COMMENT 'FMIXENTRYVERIFY',
  `FLASTPAYEETYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTPAYEETYPEID',
  `FLASTPAYEENUMBER` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTPAYEENUMBER',
  `FLASTPAYEENAME` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTPAYEENAME',
  `FLASTPAYEEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTPAYEEID',
  `FISIMPFROMGL` int(11) DEFAULT '0' COMMENT 'FISIMPFROMGL',
  `FISNEEDPAY` int(11) NOT NULL DEFAULT '1' COMMENT 'FISNEEDPAY',
  `FADMINORGUNITID_SOURCEBILL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINORGUNITID_SOURCEBILL',
  `FPERSONID_SOURCEBILL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPERSONID_SOURCEBILL',
  `FASSTACTID_SOURCEBILL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSTACTID_SOURCEBILL',
  `FBILLDATE_SOURCEBILL` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBILLDATE_SOURCEBILL',
  `FASSTACTTYPEID_SOURCEBILL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSTACTTYPEID_SOURCEBILL',
  `FFRECCOUNTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFRECCOUNTRYID',
  `FISCOOPBUILD` int(11) NOT NULL DEFAULT '0' COMMENT 'FISCOOPBUILD',
  `FISREVERSELOCKAMOUNT` int(11) DEFAULT '1' COMMENT 'FISREVERSELOCKAMOUNT',
  `FTRANSUPBILLENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRANSUPBILLENTRYID',
  `FCONTRACTNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTRACTNUMBER',
  `FISDIFBANK` int(11) DEFAULT '0' COMMENT 'FISDIFBANK',
  `FSUBSETTDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FSUBSETTDATE',
  `FOPPFPITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOPPFPITEMID',
  `FOPPBGITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOPPBGITEMID',
  `FOPPBGITEMNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOPPBGITEMNAME',
  `FOPPBGITEMNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOPPBGITEMNUMBER',
  `FOUTBGITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOUTBGITEMID',
  `FOUTBGITEMNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOUTBGITEMNAME',
  `FOUTBGITEMNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOUTBGITEMNUMBER',
  `FCOSTCENTERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTCENTERID',
  `FPAYERINACCTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYERINACCTID',
  `FCOMMITBETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FCOMMITBETIME',
  `FSETTLEFEETYPE` int(11) DEFAULT NULL COMMENT 'FSETTLEFEETYPE',
  `FEXPECTDEALTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FEXPECTDEALTIME',
  `FSWIFTCODE` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSWIFTCODE',
  `FISLANDING` int(11) DEFAULT NULL COMMENT 'FISLANDING',
  `FPAYMENTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYMENTTYPEID',
  `CFISWSIMPORT` int(11) DEFAULT NULL COMMENT 'CFISWSIMPORT',
  `FPRINTCOUNT` int(11) DEFAULT '0' COMMENT 'FPRINTCOUNT',
  `CFISFEEDBACKFK` int(11) DEFAULT NULL COMMENT 'CFISFEEDBACKFK',
  `FBANKACCTNAME` varchar(210) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBANKACCTNAME',
  `FBANKNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBANKNUMBER',
  `FBATCHNO` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBATCHNO',
  `FPCAVOUCHERED` int(11) DEFAULT '0' COMMENT 'FPCAVOUCHERED',
  `FBILLDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBILLDATE',
  `CFACCOUNTSELFITEM1` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFACCOUNTSELFITEM1',
  `CFACCOUNTSELFITEM2` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFACCOUNTSELFITEM2',
  `CFACCOUNTSELFITEM3` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFACCOUNTSELFITEM3',
  `CFFSAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFSAUDITORID',
  `CFISVATVOUCHERVERIFIED` int(11) DEFAULT NULL COMMENT 'CFISVATVOUCHERVERIFIED',
  `CFHTBMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFHTBMID',
  `CFASSACTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFASSACTTYPEID',
  `CFCUSTOMERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCUSTOMERID',
  `CFYDYFYE` double(28,10) DEFAULT NULL COMMENT 'CFYDYFYE',
  `CFYDYSYE` double(28,10) DEFAULT NULL COMMENT 'CFYDYSYE',
  `FFUNDFLOWITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFUNDFLOWITEMID',
  `FMBGNUMBER` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMBGNUMBER',
  `FMBGNAME` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMBGNAME',
  `FBGCTRLAMT` double(17,4) DEFAULT '0.0000' COMMENT 'FBGCTRLAMT',
  `FBANKCHECKFLAG` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBANKCHECKFLAG',
  `FISBACKTOBE` int(11) DEFAULT '0' COMMENT 'FISBACKTOBE',
  `FREMITACCOUNTBANKID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREMITACCOUNTBANKID',
  `FPAYPLANBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYPLANBILLID',
  `FISCBPAY` int(11) DEFAULT '0' COMMENT 'FISCBPAY',
  `FCBPAYINFOID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCBPAYINFOID',
  `FISREFUNDMENTPAY` int(11) DEFAULT '0' COMMENT 'FISREFUNDMENTPAY',
  `FREFUNDPAYBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREFUNDPAYBILLID',
  `FISDIFFCURSETTLEMENT` int(11) NOT NULL DEFAULT '0' COMMENT 'FISDIFFCURSETTLEMENT',
  `CFACTPAYACCOUNTNOI` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFACTPAYACCOUNTNOI',
  `CFACTPAYAMOUNT` double(28,10) DEFAULT NULL COMMENT 'CFACTPAYAMOUNT',
  `CFACTCURRENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFACTCURRENCYID',
  `FISRELATEPAYELECBOOK` int(11) DEFAULT '0' COMMENT 'FISRELATEPAYELECBOOK',
  `FELECBILLSTATUS` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT 'FELECBILLSTATUS',
  `FTRADEDTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FTRADEDTIME',
  `CFSYNSTATUS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSYNSTATUS',
  `CFCONTRACTSTATE` int(11) DEFAULT NULL COMMENT 'CFCONTRACTSTATE',
  `CFCONTRACTCARDID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCONTRACTCARDID',
  `CFCONTRACTSTATE1` int(11) DEFAULT NULL COMMENT 'CFCONTRACTSTATE1',
  `CFORICURRENCY` double(28,10) DEFAULT NULL COMMENT 'CFORICURRENCY',
  `CFEXCHANGERATE2` double(28,10) DEFAULT NULL COMMENT 'CFEXCHANGERATE2',
  `FBILLCLAIMSTATUS` int(11) DEFAULT '10' COMMENT 'FBILLCLAIMSTATUS',
  `FPAYBILLCLAIM` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYBILLCLAIM',
  `CFGDZBXYSTATUS` int(11) DEFAULT NULL COMMENT 'CFGDZBXYSTATUS',
  `CFAPPROVEEXCHANGERATE` double(28,10) DEFAULT NULL COMMENT 'CFAPPROVEEXCHANGERATE',
  `CFISSENDDDL` int(11) DEFAULT NULL COMMENT 'CFISSENDDDL',
  `CFPAYEEBANKNUMBER1` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPAYEEBANKNUMBER1',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ods_eas_付款单';


-- zj_data.ods_eas_t_cas_paymentbillentry definition

CREATE TABLE `ods_eas_t_cas_paymentbillentry` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FSEQ` int(11) DEFAULT NULL COMMENT 'FSEQ',
  `FAMOUNT` double(19,4) DEFAULT '0.0000' COMMENT 'FAMOUNT',
  `FAMOUNTVC` double(19,4) DEFAULT '0.0000' COMMENT 'FAMOUNTVC',
  `FLOCALAMOUNT` double(19,4) DEFAULT '0.0000' COMMENT 'FLOCALAMOUNT',
  `FLOCALAMTVC` double(19,4) DEFAULT '0.0000' COMMENT 'FLOCALAMTVC',
  `FUNVCAMOUNT` double(19,4) DEFAULT '0.0000' COMMENT 'FUNVCAMOUNT',
  `FUNVCLOCAMOUNT` double(19,4) DEFAULT '0.0000' COMMENT 'FUNVCLOCAMOUNT',
  `FUNVERIFYEXGRATELOC` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FUNVERIFYEXGRATELOC',
  `FREBATE` double(19,4) DEFAULT '0.0000' COMMENT 'FREBATE',
  `FREBATEAMTVC` double(19,4) DEFAULT '0.0000' COMMENT 'FREBATEAMTVC',
  `FREBATELOCAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FREBATELOCAMT',
  `FREBATELOCAMTVC` double(19,4) DEFAULT '0.0000' COMMENT 'FREBATELOCAMTVC',
  `FACTUALAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FACTUALAMT',
  `FACTUALAMTVC` double(19,4) DEFAULT '0.0000' COMMENT 'FACTUALAMTVC',
  `FACTUALLOCAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FACTUALLOCAMT',
  `FACTUALLOCAMTVC` double(19,4) DEFAULT '0.0000' COMMENT 'FACTUALLOCAMTVC',
  `FREMARK` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREMARK',
  `FLOCKAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FLOCKAMT',
  `FLOCKLOCAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FLOCKLOCAMT',
  `FUNLOCKAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FUNLOCKAMT',
  `FUNLOCKLOCAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FUNLOCKLOCAMT',
  `FSOURCEBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEBILLENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLENTRYID',
  `FVCSTATUS` int(11) NOT NULL DEFAULT '10' COMMENT 'FVCSTATUS',
  `FPAYMENTBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYMENTBILLID',
  `FHISUNVCAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FHISUNVCAMOUNT',
  `FHISUNVCLOCAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FHISUNVCLOCAMOUNT',
  `FCOREBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLTYPEID',
  `FCOREBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLID',
  `FCOREBILLENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLENTRYID',
  `FCOREBILLNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLNUMBER',
  `FCOREBILLENTRYSEQ` int(11) DEFAULT NULL COMMENT 'FCOREBILLENTRYSEQ',
  `FTRACKNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRACKNUMBER',
  `FCURRENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCURRENCYID',
  `FCURPROJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCURPROJECTID',
  `FPRODUCTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPRODUCTTYPEID',
  `FCOSTAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FCOSTAMT',
  `FEXPENSETYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FEXPENSETYPEID',
  `FSOURCEBILLASSTACTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLASSTACTID',
  `FOPPACCOUNTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOPPACCOUNTID',
  `FFPITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFPITEMID',
  `FOTHERBILLTRANSASSTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOTHERBILLTRANSASSTTYPEID',
  `FPAYBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYBILLTYPEID',
  `FCONTRACTNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTRACTNUMBER',
  `FCONTRACTENTRYSEQ` int(11) DEFAULT '0' COMMENT 'FCONTRACTENTRYSEQ',
  `FCONTRACTBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTRACTBILLID',
  `FCONTRACTENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTRACTENTRYID',
  `FOUTBGITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOUTBGITEMID',
  `FOUTBGITEMNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOUTBGITEMNAME',
  `FOUTBGITEMNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOUTBGITEMNUMBER',
  `FPROJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTID',
  `FTRACKNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRACKNUMBERID',
  `FCOSTCENTERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTCENTERID',
  `FMATCHEDAMOUNT` double(17,4) DEFAULT '0.0000' COMMENT 'FMATCHEDAMOUNT',
  `FMATCHEDAMOUNTLOC` double(17,4) DEFAULT '0.0000' COMMENT 'FMATCHEDAMOUNTLOC',
  `FFUNDFLOWITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFUNDFLOWITEMID',
  `FPAYABLEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FPAYABLEDATE',
  `CFVAT` double(28,10) DEFAULT NULL COMMENT 'CFVAT',
  `CFINVOICENUMBER` varchar(600) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFINVOICENUMBER',
  `FMBGNUMBER` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMBGNUMBER',
  `FMBGNAME` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMBGNAME',
  `FBGCTRLAMT` double(17,4) DEFAULT '0.0000' COMMENT 'FBGCTRLAMT',
  `FSRCPLANBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSRCPLANBILLID',
  `FSRCPLANBILLENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSRCPLANBILLENTRYID',
  `CFOTHERTAX` double(28,10) DEFAULT NULL COMMENT 'CFOTHERTAX',
  `CFSTYLECHARACTERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSTYLECHARACTERID',
  `CFHTBMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFHTBMID',
  `CFREALTIMERATE` double(10,4) DEFAULT NULL COMMENT 'CFREALTIMERATE',
  `CFORIAMOUNT` double(28,10) DEFAULT NULL COMMENT 'CFORIAMOUNT',
  `CFTICKETID` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTICKETID',
  `CFBILLINGNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBILLINGNUMBER',
  `CFTICKESTATUS` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTICKESTATUS',
  `CFISELECINVOICE` int(11) DEFAULT NULL COMMENT 'CFISELECINVOICE',
  `CFINVOICETYPEENUM` int(11) DEFAULT NULL COMMENT 'CFINVOICETYPEENUM',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ods_eas_付款单分录';


-- zj_data.ods_mes_gxrwxf definition

CREATE TABLE `ods_mes_gxrwxf` (
  `id` text COLLATE utf8_bin,
  `work_cell_gid` text COLLATE utf8_bin,
  `节车号` text COLLATE utf8_bin,
  `项目号` text COLLATE utf8_bin,
  `车号` text COLLATE utf8_bin,
  `物料计数编码` bigint(20) DEFAULT NULL,
  `产品编码` text COLLATE utf8_bin,
  `产品名称` text COLLATE utf8_bin,
  `工序编码` text COLLATE utf8_bin,
  `工序名称` text COLLATE utf8_bin,
  `组编码` text COLLATE utf8_bin,
  `班组` text COLLATE utf8_bin,
  `订单类型` bigint(20) DEFAULT NULL,
  `工序类型` bigint(20) DEFAULT NULL,
  `计划开始时间` datetime DEFAULT NULL,
  `计划结束时间` datetime DEFAULT NULL,
  `实际开始时间` datetime DEFAULT NULL,
  `实际结束时间` datetime DEFAULT NULL,
  `produPlace` text COLLATE utf8_bin,
  `台位` text COLLATE utf8_bin,
  `工作人id` text COLLATE utf8_bin,
  `项目名称` text COLLATE utf8_bin,
  `issuedChenkPosition` text COLLATE utf8_bin,
  `issuedChenkDate` datetime DEFAULT NULL,
  `issuedChenkState` bigint(20) DEFAULT NULL,
  `物料需求` bigint(20) DEFAULT NULL,
  `派工单状态` bigint(20) DEFAULT NULL,
  `下达状态` bigint(20) DEFAULT NULL,
  `车间` text COLLATE utf8_bin,
  `产线` text COLLATE utf8_bin,
  `cellCode` text COLLATE utf8_bin,
  `工段` text COLLATE utf8_bin,
  `工序工时时长` double DEFAULT NULL,
  `是否消耗工时` bigint(20) DEFAULT NULL,
  `有关齐套统计总数` bigint(20) DEFAULT NULL,
  `齐套数量统计包括预计` bigint(20) DEFAULT NULL,
  `备注` text COLLATE utf8_bin,
  `委外状态` text COLLATE utf8_bin,
  `未来一周` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.ods_safeformhead definition

CREATE TABLE `ods_safeformhead` (
  `id` bigint(20) NOT NULL,
  `applicationNumber` text COLLATE utf8_bin NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `idNumber` text COLLATE utf8_bin NOT NULL,
  `companyName` text COLLATE utf8_bin NOT NULL,
  `phoneNumber` text COLLATE utf8_bin NOT NULL,
  `submitTime` text COLLATE utf8_bin NOT NULL,
  `startDate` text COLLATE utf8_bin NOT NULL,
  `startTime` text COLLATE utf8_bin NOT NULL,
  `workingHours` text COLLATE utf8_bin NOT NULL,
  `workLocation` text COLLATE utf8_bin NOT NULL,
  `workType` text COLLATE utf8_bin NOT NULL,
  `isProductWork` tinyint(1) NOT NULL,
  `projectName` text COLLATE utf8_bin NOT NULL,
  `vehicleNumber` text COLLATE utf8_bin NOT NULL,
  `trackPosition` text COLLATE utf8_bin NOT NULL,
  `workContent` text COLLATE utf8_bin NOT NULL,
  `workBasis` text COLLATE utf8_bin NOT NULL,
  `basisNumber` text COLLATE utf8_bin NOT NULL,
  `dangerTypes` text COLLATE utf8_bin NOT NULL,
  `notifierName` text COLLATE utf8_bin NOT NULL,
  `notifierNumber` text COLLATE utf8_bin NOT NULL,
  `notifierDepartment` text COLLATE utf8_bin NOT NULL,
  `accompaningCount` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.ods_t_sec_user definition

CREATE TABLE `ods_t_sec_user` (
  `FID` bigint(20) DEFAULT NULL,
  `FEID` bigint(20) DEFAULT NULL,
  `FTID` bigint(20) DEFAULT NULL,
  `FUID` bigint(20) DEFAULT NULL,
  `FOPENID` text COLLATE utf8_bin,
  `FNUMBER` text COLLATE utf8_bin,
  `FPHONE` text COLLATE utf8_bin,
  `FEMAIL` text COLLATE utf8_bin,
  `FSTATUS` text COLLATE utf8_bin,
  `FGENDER` text COLLATE utf8_bin,
  `FBIRTHDAY` datetime DEFAULT NULL,
  `FIDCARD` text COLLATE utf8_bin,
  `FAVATAR` text COLLATE utf8_bin,
  `FUSERTYPE` text COLLATE utf8_bin,
  `FNICKNAME` text COLLATE utf8_bin,
  `FFULLPINYIN` text COLLATE utf8_bin,
  `FSIMPLEPINYIN` text COLLATE utf8_bin,
  `FDPTID` text COLLATE utf8_bin,
  `FPOSITIONID` bigint(20) DEFAULT NULL,
  `FSORTCODE` text COLLATE utf8_bin,
  `FBILLSSATUSFIELD` text COLLATE utf8_bin,
  `FHIREDATE` text COLLATE utf8_bin,
  `FENABLE` text COLLATE utf8_bin,
  `FCREATORID` bigint(20) DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint(20) DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` double DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSOURCE` text COLLATE utf8_bin,
  `FMAINTAIN` text COLLATE utf8_bin,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint(20) DEFAULT NULL,
  `FHEADSCULPTURE` text COLLATE utf8_bin,
  `FTRUENAME` text COLLATE utf8_bin,
  `FCOUNTRYID` bigint(20) DEFAULT NULL,
  `FK_CRRC_BECOMEDAY` datetime DEFAULT NULL,
  `FK_CRRC_JOINDAY` datetime DEFAULT NULL,
  `FK_CRRC_PARTYDAY` datetime DEFAULT NULL,
  `FK_CRRC_POLITICAL` text COLLATE utf8_bin,
  `FK_CRRC_DIPLOMA` text COLLATE utf8_bin,
  `FK_CRRC_EMPTYPE` text COLLATE utf8_bin,
  `FK_CRRC_ISINSIDER` text COLLATE utf8_bin,
  `FK_CRRC_ISSTATEOFFICIALS` text COLLATE utf8_bin,
  `fk_crrc_professionaltitle` text COLLATE utf8_bin,
  `FK_CRRC_CERTIFIEDCOMPETEN` text COLLATE utf8_bin,
  `FK_CRRC_CERTIFIEDCOMGRADE` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.ods_tk_crrc_gxrwxf definition

CREATE TABLE `ods_tk_crrc_gxrwxf` (
  `FID` bigint(20) DEFAULT NULL,
  `FNUMBER` text COLLATE utf8_bin,
  `FNAME` text COLLATE utf8_bin,
  `FSTATUS` text COLLATE utf8_bin,
  `FCREATORID` bigint(20) DEFAULT NULL,
  `FMODIFIERID` bigint(20) DEFAULT NULL,
  `FENABLE` text COLLATE utf8_bin,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint(20) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD` text COLLATE utf8_bin,
  `FK_CRRC_TEXTFIELD1` text COLLATE utf8_bin,
  `FK_CRRC_TEXTFIELD2` text COLLATE utf8_bin,
  `FK_CRRC_TEXTFIELD3` text COLLATE utf8_bin,
  `FK_CRRC_TEXTFIELD4` text COLLATE utf8_bin,
  `FK_CRRC_TEXTFIELD5` text COLLATE utf8_bin,
  `FK_CRRC_TEXTFIELD6` text COLLATE utf8_bin,
  `FK_CRRC_PROJNAME` text COLLATE utf8_bin,
  `fk_crrc_stage_position` text COLLATE utf8_bin,
  `fk_crrc_group_code` text COLLATE utf8_bin,
  `FK_CRRC_GROUP_NAME` text COLLATE utf8_bin,
  `fk_crrc_datetimefield` text COLLATE utf8_bin,
  `FK_CRRC_PLAN_START_TIME` datetime DEFAULT NULL,
  `FK_CRRC_PLAN_FINISH_TIME` datetime DEFAULT NULL,
  `FK_CRRC_REAL_START_TIME` datetime DEFAULT NULL,
  `FK_CRRC_REAL_FINISH_TIME` datetime DEFAULT NULL,
  `fk_crrc_work_userid` text COLLATE utf8_bin,
  `FK_CRRC_WORKSHOP` text COLLATE utf8_bin,
  `fk_crrc_production_line` text COLLATE utf8_bin,
  `fk_crrc_work_section` text COLLATE utf8_bin,
  `FK_CRRC_DURATION` bigint(20) DEFAULT NULL,
  `FK_CRRC_TEXTFIELD7` text COLLATE utf8_bin,
  `FK_CRRC_EXC_USER` text COLLATE utf8_bin,
  `FK_CRRC_BILLSTATUSFIELD` text COLLATE utf8_bin,
  `FK_CRRC_TEXTFIELD8` text COLLATE utf8_bin,
  `FK_CRRC_WORKER` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.ods_v_crrc_project_report_new_mysql definition

CREATE TABLE `ods_v_crrc_project_report_new_mysql` (
  `id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'NAME',
  `code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'CODE',
  `short_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'SHORT_NAME',
  `proj_category_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_CATEGORY_NAME',
  `proj_category_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_CATEGORY_CODE',
  `location_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'LOCATION_NAME',
  `location_area` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'LOCATION_AREA',
  `location_area_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'LOCATION_AREA_CODE',
  `proj_genre_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_GENRE_NAME',
  `city_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'CITY_NAME',
  `stage_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'STAGE_NAME',
  `status` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'STATUS',
  `contract_amount` double DEFAULT NULL COMMENT 'CONTRACT_AMOUNT',
  `bid_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'BID_NAME',
  `sign_date` date DEFAULT NULL COMMENT 'SIGN_DATE',
  `pm_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'PM_ID',
  `pm_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'PM_NAME',
  `pm_dept_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'PM_DEPT_NAME',
  `nation_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'NATION_NAME',
  `nation_en` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'NATION_EN',
  `province` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROVINCE',
  `lat` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'LAT',
  `lon` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'LON',
  `level_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'LEVEL_NAME',
  `proj_process` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_PROCESS',
  `plan_start_date` date DEFAULT NULL COMMENT 'PLAN_START_DATE',
  `plan_end_date` date DEFAULT NULL COMMENT 'PLAN_END_DATE',
  `actual_start_date` date DEFAULT NULL COMMENT 'ACTUAL_START_DATE',
  `actual_end_date` date DEFAULT NULL COMMENT 'ACTUAL_END_DATE',
  `c_start` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_START',
  `c_end` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_END',
  `bid_proj_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'BID_PROJ_ID',
  `bid_date` date DEFAULT NULL COMMENT 'BID_DATE',
  `bid_user` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'BID_USER',
  `scale` int(11) DEFAULT NULL COMMENT 'SCALE',
  `budget` int(11) DEFAULT NULL COMMENT 'BUDGET',
  `target` int(11) DEFAULT NULL COMMENT 'TARGET',
  `act_cost` int(11) DEFAULT NULL COMMENT 'ACT_COST',
  `bid_dept_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'BID_DEPT_CODE',
  `bid_dep_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'BID_DEP_NAME'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='ods_v_crrc_project_report_new_mysql';


-- zj_data.ods_worklocation definition

CREATE TABLE `ods_worklocation` (
  `id` bigint(20) NOT NULL,
  `formApplicationNumber` text COLLATE utf8_bin NOT NULL,
  `workLocation` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.ods_worktime_new definition

CREATE TABLE `ods_worktime_new` (
  `项目号` text COLLATE utf8_bin,
  `跟踪号` text COLLATE utf8_bin,
  `节车号` text COLLATE utf8_bin,
  `工序号` text COLLATE utf8_bin,
  `工序名称` text COLLATE utf8_bin,
  `工作中心` text COLLATE utf8_bin,
  `定额工时合并` double DEFAULT NULL,
  `成本中心` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.pms_test definition

CREATE TABLE `pms_test` (
  `ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'ID',
  `STATUS` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'STATUS',
  `NAME_1` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'NAME_1',
  `CODE_1` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'CODE_1',
  `PLAN_START_DATE` date DEFAULT NULL COMMENT 'PLAN_START_DATE',
  `PLAN_END_DATE` date DEFAULT NULL COMMENT 'PLAN_END_DATE',
  `PROJ_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_ID',
  `POTENTIAL_PM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'POTENTIAL_PM',
  `PROJ_GENRE_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'PROJ_GENRE_ID',
  `SHORT_NAME` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'SHORT_NAME',
  `ID_1` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID_1',
  `RESP_DEPT` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'RESP_DEPT',
  `ID_2` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID_2',
  `START_TRAIN_NUM` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT 'START_TRAIN_NUM',
  `END_TRAIN_NUM` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT 'END_TRAIN_NUM',
  `ID_3` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID_3',
  `CODE` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'CODE',
  `CUSTOMER` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'CUSTOMER',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='pms联合多链接测试';


-- zj_data.pro_zlbh_detail definition

CREATE TABLE `pro_zlbh_detail` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `pro_apply_by` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '提报人',
  `pro_apply_dep` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '提报单位',
  `pro_apply_leader` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '提报单位领导',
  `pro_supervise_dep` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '督办单位',
  `pro_supervise_leader` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '督办单位领导',
  `pro_supervise_by` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '督办人',
  `pro_lead_dep` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '问题牵头单位',
  `pro_lead_leader` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '问题牵头单位领导',
  `pro_lead_by` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '问题牵头人',
  `pro_state` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '问题状态',
  `pro_unit_class` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '部件分类',
  `pro_source_name` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '问题来源',
  `pro_ability_class` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '功能分类',
  `pro_entity_model` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '实物失效模式',
  `pro_level` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '问题等级',
  `pro_arose_phase` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '发生阶段',
  `pro_biz_code` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '隶属板块',
  `pro_affect_level` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT '影响程度',
  `pro_remarks` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '整个文档的备注',
  `pro_localtion` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发现地点',
  `pro_final_judgment` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '责任终判单位',
  `pro_is_apply_upgrade` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '升级申请状态（1草稿，2未升级，3已升级）',
  `pro_is_establish` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '立档状态',
  `pro_class` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '问题类型(主表)',
  `pro_plan_time` date DEFAULT NULL COMMENT '问题计划完成时间',
  `pro_apply_time` date DEFAULT NULL COMMENT '提报时间',
  `pro_inst_end_time` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '流程结束时间',
  `pro_inst_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '流程实例ID',
  `pro_task_class` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '任务类型',
  `create_dept` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '任务创建部门',
  `create_by` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '任务创建人',
  `pro_task_dep_implement_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '整改参与人姓名',
  `implement_dep` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '整改参与单位',
  `pro_task_plan_time` date DEFAULT NULL COMMENT '任务计划完成时间',
  `create_time` date DEFAULT NULL COMMENT '任务创建时间',
  `inst_end_time` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '任务结束时间',
  `process_state` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '任务状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='pro_zlbh_detail';


-- zj_data.purreceival definition

CREATE TABLE `purreceival` (
  `projectno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目编码',
  `projectname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  `materialno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `mat_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `supplierno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商编码',
  `suppliername` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '供应商名称',
  `biztypeno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务类型编码',
  `biztypename` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '业务类型名称',
  `TransactionTypeno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '事务类型编码',
  `TransactionTypename` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '事务类型名称',
  `fbasestatus` int(11) DEFAULT NULL COMMENT '状态',
  `fbizdate` date DEFAULT NULL COMMENT '业务日期',
  `freceiptqty` double(100,0) DEFAULT NULL COMMENT '累计入库数量',
  `fqualifiedqty` double(100,0) DEFAULT NULL COMMENT '合格数量',
  `fqty` double(100,0) DEFAULT NULL COMMENT '到货数量',
  `fid` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '分录id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='采购收货宽表';


-- zj_data.qm_zlbh_pro_source definition

CREATE TABLE `qm_zlbh_pro_source` (
  `Id` bigint(20) NOT NULL COMMENT 'ID',
  `qm_pro_source_code` varchar(32) DEFAULT NULL COMMENT '问题来源编码',
  `qm_pro_source_name` varchar(32) DEFAULT NULL COMMENT '问题来源名称',
  `qm_pro_sourcee_parent_code` varchar(32) DEFAULT NULL COMMENT '问题来源父级编码',
  `qm_pro_source_parent_name` varchar(32) DEFAULT NULL COMMENT '问题来源父级名称',
  `qm_pro_source_remarks` varchar(255) DEFAULT NULL COMMENT '描述',
  `qm_pro_source_is_del` varchar(32) DEFAULT '0' COMMENT '删除状态（0否，1是）',
  `qm_pro_source_create_name` varchar(32) DEFAULT NULL,
  `qm_pro_source_create_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `qm_pro_source_create_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `qm_pro_source_up_name` varchar(32) DEFAULT NULL,
  `qm_pro_source_up_id` varchar(64) DEFAULT NULL COMMENT '更新人',
  `qm_pro_source_up_time` varchar(64) DEFAULT NULL COMMENT '更新时间',
  `tenant_id_` varchar(32) DEFAULT '-1' COMMENT '租户ID',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='问题来源';


-- zj_data.qms2_biz_inspect_plan_history_detail definition

CREATE TABLE `qms2_biz_inspect_plan_history_detail` (
  `inspect_plan_history_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '主键id',
  `version` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检验计划版本号',
  `inspect_plan_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检验计划id',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检验计划名称',
  `project_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关联项目id',
  `project_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关联项目编码',
  `project_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关联项目名称',
  `plan_complete_time` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计划完成编制时间',
  `plan_status` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检验计划状态',
  `process_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '计划流程id',
  `sign_people` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '会签人',
  `check_user` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '审核人',
  `approver` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '批准人',
  `root_dept_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '一级业务部门Id',
  `root_dept_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '一级业务部门名称',
  `create_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `modify_date` date DEFAULT NULL COMMENT '修改时间',
  `inspect_plan_history_detail_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '检验计划历史明细ID',
  `inspect_plan_detail_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验计划明细ID',
  `functree_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '构型编码',
  `functree_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '构型名称',
  `procedure_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '工序编码',
  `procedure_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '工序名称',
  `frtnumber` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '工艺路线编码',
  `frtname` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工艺路线名称',
  `deliver_materail_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '工艺路线交付物料编码',
  `task_type` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '任务时机（1：开工后，2：完工后）',
  `check_type` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '检验类型（自检，专检）',
  `is_flow_control` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '是否工序控制(1',
  `next_procedure_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '被控制工序',
  `next_procedure_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '被控制工序名称',
  `inspect_materail_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检验对象物料编号',
  `inspect_materail_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '检验对象物料名称',
  `complete_time` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '计划完成编制时间',
  `inspect_type` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验类别（株机执行、供应商执行）',
  `sampling_plan_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联的抽样方案',
  `station` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '工位',
  `status` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '文件状态，草稿/校核/审批/批准',
  `type` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '检验模板类型 0通用，1专用',
  `is_series` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '是否申请序列号',
  `designation_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '指派人ID',
  `designation_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '指派人名称',
  `plan_point_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '计划项名称',
  `plan_point_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '计划项编码',
  `deliver_materail_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '工艺路线交付物料名称',
  `inspect_plan_history_routing_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'inspect_plan_history_routing_id',
  PRIMARY KEY (`inspect_plan_history_id`,`inspect_plan_history_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='检验计划项发布最新版本表';


-- zj_data.qms2_biz_inspection_entity definition

CREATE TABLE `qms2_biz_inspection_entity` (
  `entity_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '检验实体ID',
  `material_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联物料id',
  `material_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联物料编码',
  `serial_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `batch_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '批次号',
  `maker` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '制造商',
  `produce_vender` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '生产厂家',
  `produce_vender_name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '生产厂商名称',
  `produce_date` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '生产时间',
  `model` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '型号',
  `stove_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '炉号',
  `entity_version` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '版本',
  `create_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `modify_date` date DEFAULT NULL COMMENT '修改时间',
  `is_active` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '激活标识',
  `is_delete` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `material_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名称',
  `technical_status_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '技术状态标识',
  `sup_wcord` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '客户产品标识序列号/单件码',
  `sup_material_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '客户物料标识代码',
  `spec` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '规格',
  `sup_user_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '生产单位客户代码',
  `electrical_Number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '电气代码',
  `electrical_position` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '电气位置',
  `assembler` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配人员',
  `assembler_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配人员姓名',
  `assembly_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配单位代码',
  `assembly_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配单位名称',
  `ci_code` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `global_position` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '装配位置代码',
  `global_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '装配位置名称',
  `auth_root_dept_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '录入单位代码',
  `auth_root_dept_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '录入单位名称',
  `root_entity_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '跟部件id',
  `parent_entity_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '父部件id',
  `tz_tag_flag` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'tz_tag_flag',
  `save_flag` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT 'save_flag',
  `ci_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验功能构型名称',
  `ci_name_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '构型业务编码',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='追溯实体';


-- zj_data.qms2_biz_inspection_execution_result definition

CREATE TABLE `qms2_biz_inspection_execution_result` (
  `execution_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '检验记录ID',
  `entity_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验实体ID',
  `production_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '生产编号',
  `file_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验文件id',
  `version` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验文件版本号',
  `project_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联项目id',
  `project_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联项目编码',
  `train_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '列车号',
  `carriage_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '节车号',
  `quantity` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验数量',
  `tracking_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '项目跟踪号',
  `check_result` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '检验结果  1不合格 0 合格',
  `check_status` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验状态',
  `ncr_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'NCR编码',
  `ncr_result` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'ncr评审结果 (1.返修、2.返工、3.报废、4.让步放行、5',
  `auth_dept_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '所属一级权限部门Id',
  `process_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '流程ID',
  `sign_user` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '会签人员',
  `process_status` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '审批状态',
  `parent_exe_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '父检验记录id',
  `detail_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'WMS到货明细id',
  `dispatch_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'MES派工单号',
  `inspector_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '检验员id',
  `inspector_name` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '检验员姓名',
  `create_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `modify_date` date DEFAULT NULL COMMENT '修改时间',
  `is_active` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '激活标识',
  `is_delete` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `relult_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '结果表Id',
  `checkpoints_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '文件关联项点历史id',
  `status` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验状态',
  `file_result` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '文件型结果',
  `file_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '文件原始名称',
  `file_uuid_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '文件uuid原始名称',
  `final_result` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '判定结果(0是合格)',
  `selt_user` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '自检人',
  `self_date` date DEFAULT NULL COMMENT '自检时间',
  `other_user` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '互检人',
  `other_date` date DEFAULT NULL COMMENT '互检时间',
  `tool_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '工具编号',
  `mutualed` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否已互检',
  `total` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '样本总量',
  `material_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联物料id',
  `material_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联物料编码',
  `serial_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `batch_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '批次号',
  `maker` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '制造商',
  `produce_vender` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '生产厂家',
  `produce_vender_name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '生产厂商名称',
  `produce_date` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '生产时间',
  `model` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '型号',
  `stove_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '炉号',
  `entity_version` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '版本',
  `material_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '物料名称',
  `technical_status_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '技术状态标识',
  `sup_wcord` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '客户产品标识序列号/单件码',
  `sup_material_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '客户物料标识代码',
  `spec` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '规格',
  `sup_user_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '生产单位客户代码',
  `electrical_Number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '电气代码',
  `electrical_position` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '电气位置',
  `assembler` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配人员',
  `assembler_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配人员姓名',
  `assembly_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配单位代码',
  `assembly_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配单位名称',
  `ci_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '装配构型编码',
  `global_position` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '装配位置代码',
  `global_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '装配位置名称',
  `auth_root_dept_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '录入单位代码',
  `auth_root_dept_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '录入单位名称',
  `root_entity_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '跟部件id',
  `parent_entity_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '父部件id',
  `tz_tag_flag` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'tz_tag_flag',
  `save_flag` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT 'save_flag',
  `ci_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验功能构型名称',
  `ci_name_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '构型业务编码',
  PRIMARY KEY (`execution_id`,`relult_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='检验结果宽表';


-- zj_data.qms2_biz_t_inspect_file_precurement definition

CREATE TABLE `qms2_biz_t_inspect_file_precurement` (
  `inspect_file_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'inspect_file_id',
  `code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验文件标识',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验文件名称',
  `version` varchar(8) COLLATE utf8_bin DEFAULT '1.0' COMMENT '检验文件版本号',
  `inspect_type` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验类别（株机执行、供应商执行）',
  `process_id` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '流程id',
  `sampling_plan_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联的抽样方案',
  `status` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '文件状态，1：新增；2：审核中；3：新增待发布；4：审核不通过；5：审批完成；6：修订保存 ；7：修订带发布',
  `sign_people` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '会签人，支持多人，用户id，逗号分割',
  `check_opinion` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '审核意见（同意、不同意）',
  `create_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `is_active` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '激活标识',
  `is_delete` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '删除标识',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `inspect_check_type` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '检验类型',
  `check_user` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '审核人',
  `functree_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '构型编码',
  `station` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '工位',
  `check_time` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '检测单创建时间点',
  `procedure_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '工序编码',
  `gist` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '检验依据',
  `approver` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '批准人',
  `type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '检验模板类型 0通用，1专用',
  `inspect_check_result` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '检验结果审批',
  `inspect_check_result_role` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '检验结果审批角色',
  `root_dept_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '一级业务部门Id',
  `frt_number` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '工艺路线编码',
  `procedure_material_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '工序物料编码',
  `is_control_file` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否中控模板',
  `is_send_mes` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'is_send_mes',
  `file_state` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '模板状态：新增、修订、发布',
  `root_dept_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '一级部门名称',
  `creater_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '编制人工号',
  `creater_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '编制人姓名',
  `plan_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '检验计划Id',
  `project_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '项目代号',
  `material_code` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '物料编码',
  `pj_cd` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '项目编码',
  `pj_name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '项目名称',
  PRIMARY KEY (`inspect_file_id`),
  KEY `index_d66f` (`inspect_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='检验文件策划';


-- zj_data.shr_tb_user_cerit_quali definition

CREATE TABLE `shr_tb_user_cerit_quali` (
  `loginid` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `staffid` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `stationName` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `political_status` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `POST_NAME` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `JOBNAME` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `CERTIFICATENO` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `QUALIALIAS` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VALIDITYTERM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `BEGINTIME` date DEFAULT NULL COMMENT '生效日期',
  `ENDTIME` date DEFAULT NULL COMMENT '失效日期',
  `STATUS` char(6) COLLATE utf8_bin DEFAULT NULL,
  `DEPARTMENT_NAME` varchar(4000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='数字化工位人员资质';


-- zj_data.student definition

CREATE TABLE `student` (
  `sid` int(8) NOT NULL,
  `sname` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `classid` int(8) NOT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.t_ap_otherbill definition

CREATE TABLE `t_ap_otherbill` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBIZDATE',
  `FHANDLERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHANDLERID',
  `FDESCRIPTION` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAUDITORID',
  `FSOURCEBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEFUNCTION` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEFUNCTION',
  `FCOMPANYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANYID',
  `FBILLDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBILLDATE',
  `FASSTACTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSTACTTYPEID',
  `FASSTACTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSTACTID',
  `FASSTACTNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSTACTNUMBER',
  `FASSTACTNAME_L1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSTACTNAME_L1',
  `FASSTACTNAME_L2` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSTACTNAME_L2',
  `FASSTACTNAME_L3` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSTACTNAME_L3',
  `FBILLSTATUS` int(11) NOT NULL DEFAULT '2' COMMENT 'FBILLSTATUS',
  `FCURRENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCURRENCYID',
  `FEXCHANGERATE` double(28,10) DEFAULT '1.0000000000' COMMENT 'FEXCHANGERATE',
  `FSETTLETYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSETTLETYPEID',
  `FAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FAMOUNT',
  `FAMOUNTLOCAL` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FAMOUNTLOCAL',
  `FABSTRACTNAME` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FABSTRACTNAME',
  `FVERIFYAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FVERIFYAMOUNT',
  `FVERIFYAMOUNTLOCAL` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FVERIFYAMOUNTLOCAL',
  `FUNVERIFYAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FUNVERIFYAMOUNT',
  `FUNVERIFYAMOUNTLOCAL` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FUNVERIFYAMOUNTLOCAL',
  `FAUDITDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAUDITDATE',
  `FVOUCHERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FVOUCHERID',
  `FFIVOUCHERED` int(11) NOT NULL DEFAULT '0' COMMENT 'FFIVOUCHERED',
  `FSOURCEBILLTYPE` int(11) DEFAULT NULL COMMENT 'FSOURCEBILLTYPE',
  `FCASHDISCOUNTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCASHDISCOUNTID',
  `FISREVERSED` int(11) NOT NULL DEFAULT '0' COMMENT 'FISREVERSED',
  `FISREVERSEBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISREVERSEBILL',
  `FISINTAX` int(11) NOT NULL DEFAULT '0' COMMENT 'FISINTAX',
  `FACCOUNTANTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FACCOUNTANTID',
  `FISTRANSBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISTRANSBILL',
  `FPURORGID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPURORGID',
  `FBILLTYPE` int(11) NOT NULL DEFAULT '1' COMMENT 'FBILLTYPE',
  `FISIMPORTBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISIMPORTBILL',
  `FVOUCHERNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FVOUCHERNUMBER',
  `FADMINORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINORGUNITID',
  `FPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPERSONID',
  `FBIZTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBIZTYPEID',
  `FPAYMENTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYMENTTYPEID',
  `FPURCHASEGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPURCHASEGROUPID',
  `FLASTEXHANGERATE` double(28,10) NOT NULL DEFAULT '0.0000000000' COMMENT 'FLASTEXHANGERATE',
  `FTOTALAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FTOTALAMOUNT',
  `FTOTALTAX` double(19,4) DEFAULT '0.0000' COMMENT 'FTOTALTAX',
  `FTOTALTAXAMOUNT` double(19,4) DEFAULT '0.0000' COMMENT 'FTOTALTAXAMOUNT',
  `FISEXCHANGED` int(11) NOT NULL DEFAULT '0' COMMENT 'FISEXCHANGED',
  `FISINITIALIZEBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISINITIALIZEBILL',
  `FVOUCHERTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FVOUCHERTYPEID',
  `FREDBLUETYPE` int(11) NOT NULL DEFAULT '0' COMMENT 'FREDBLUETYPE',
  `FYEAR` int(11) NOT NULL DEFAULT '2199' COMMENT 'FYEAR',
  `FPERIOD` int(11) NOT NULL DEFAULT '1' COMMENT 'FPERIOD',
  `FISSCMBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISSCMBILL',
  `FISPRICEWITHOUTTAX` int(11) NOT NULL DEFAULT '0' COMMENT 'FISPRICEWITHOUTTAX',
  `FISNEEDVOUCHER` int(11) DEFAULT '1' COMMENT 'FISNEEDVOUCHER',
  `FISALLOWANCEBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISALLOWANCEBILL',
  `FISAPPOINTVOUCHER` int(11) NOT NULL DEFAULT '0' COMMENT 'FISAPPOINTVOUCHER',
  `FPRICESOURCE` int(11) NOT NULL DEFAULT '101' COMMENT 'FPRICESOURCE',
  `FPAYCONDITIONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYCONDITIONID',
  `FISIMPFROMGL` int(11) DEFAULT '0' COMMENT 'FISIMPFROMGL',
  `FADMINORGUNITID_SOURCEBILL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINORGUNITID_SOURCEBILL',
  `FPERSONID_SOURCEBILL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPERSONID_SOURCEBILL',
  `FASSTACTID_SOURCEBILL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSTACTID_SOURCEBILL',
  `FBILLDATE_SOURCEBILL` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBILLDATE_SOURCEBILL',
  `FASSTACTTYPEID_SOURCEBILL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSTACTTYPEID_SOURCEBILL',
  `FISSPLITBILL` int(11) DEFAULT '0' COMMENT 'FISSPLITBILL',
  `FISGENCOOPBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISGENCOOPBILL',
  `FISCOOPBUILD` int(11) NOT NULL DEFAULT '0' COMMENT 'FISCOOPBUILD',
  `FCONTRACTNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTRACTNUMBER',
  `FBARGAINNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBARGAINNUMBER',
  `CFINVOICENO` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFINVOICENO',
  `FBILLTYPE_SOURCEBILL` int(11) DEFAULT NULL COMMENT 'FBILLTYPE_SOURCEBILL',
  `FISBIZBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISBIZBILL',
  `FISSELECTBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISSELECTBILL',
  `FCOSTCENTERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTCENTERID',
  `CFSUPUSER` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSUPUSER',
  `FASSTACTNAME` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSTACTNAME',
  `CFINVOICEACTUALDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFINVOICEACTUALDATE',
  `CFISCHECKINV` int(11) DEFAULT NULL COMMENT 'CFISCHECKINV',
  `CFISCHECKCON` int(11) DEFAULT NULL COMMENT 'CFISCHECKCON',
  `CFSUPCREATOR` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSUPCREATOR',
  `FBILLRELATIONOPTION` int(11) DEFAULT '0' COMMENT 'FBILLRELATIONOPTION',
  `FISTRANSOTHERBILL` int(11) DEFAULT '0' COMMENT 'FISTRANSOTHERBILL',
  `FISTRANSPOINT` int(11) DEFAULT '0' COMMENT 'FISTRANSPOINT',
  `CFSELECTED` int(11) DEFAULT NULL COMMENT 'CFSELECTED',
  `CFHTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFHTID',
  `CFFPBHHB` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFPBHHB',
  `CFISFP` int(11) DEFAULT NULL COMMENT 'CFISFP',
  `CFASSACTTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFASSACTTYPEID',
  `CFYFYEAMOUNT` double(28,10) DEFAULT NULL COMMENT 'CFYFYEAMOUNT',
  `CFYSYEAMOUNT` double(28,10) DEFAULT NULL COMMENT 'CFYSYEAMOUNT',
  `CFYFKCXJE` double(28,10) DEFAULT NULL COMMENT 'CFYFKCXJE',
  `CFPAYPLANINFO` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPAYPLANINFO',
  `FPAYERBANKID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYERBANKID',
  `FPAYERACCOUNTBANKID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYERACCOUNTBANKID',
  `FRECBANK` varchar(270) COLLATE utf8_bin DEFAULT NULL COMMENT 'FRECBANK',
  `FRECACCOUNTBANK` varchar(270) COLLATE utf8_bin DEFAULT NULL COMMENT 'FRECACCOUNTBANK',
  `FPAYERCURRENCYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPAYERCURRENCYID',
  `FPAYEREXCHANGERATE` double(28,10) DEFAULT '0.0000000000' COMMENT 'FPAYEREXCHANGERATE',
  `FPAYERAMOUNT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FPAYERAMOUNT',
  `FPAYERAMOUNTLOC` double(28,10) DEFAULT '0.0000000000' COMMENT 'FPAYERAMOUNTLOC',
  `FPREPAYBILLNUMBER` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPREPAYBILLNUMBER',
  `FPREPAYAMOUNT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FPREPAYAMOUNT',
  `FTHISAPAMOUNT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FTHISAPAMOUNT',
  `FPREPAYAMOUNTSTRING` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPREPAYAMOUNTSTRING',
  `FPREPAYBILLENTRYIDS` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPREPAYBILLENTRYIDS',
  `CFBARGAINNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBARGAINNUMBER',
  `FINVOICETYPE` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT 'FINVOICETYPE',
  `FINVOICENUMBER` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'FINVOICENUMBER',
  `FINVOICECODE` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'FINVOICECODE',
  `FISMATCHGENERATE` int(11) DEFAULT '0' COMMENT 'FISMATCHGENERATE',
  `CFISPAYPLANCREATED` int(11) DEFAULT NULL COMMENT 'CFISPAYPLANCREATED',
  `CFISZBJSC` int(11) DEFAULT NULL COMMENT 'CFISZBJSC',
  `CFINVOICEID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFINVOICEID',
  `CFKDISEND` int(11) DEFAULT NULL COMMENT 'CFKDISEND',
  `CFHTKPSTATE` int(11) DEFAULT NULL COMMENT 'CFHTKPSTATE',
  `CFGDZBXYSTATUS` int(11) DEFAULT NULL COMMENT 'CFGDZBXYSTATUS',
  `CFISSENDDDL` int(11) DEFAULT NULL COMMENT 'CFISSENDDDL',
  `CFISHASGDZB` int(11) DEFAULT NULL COMMENT 'CFISHASGDZB',
  `CFGDZBAMOUNT` double(28,10) DEFAULT NULL COMMENT 'CFGDZBAMOUNT',
  `CFISDP` int(11) DEFAULT NULL COMMENT 'CFISDP',
  `CFINVOICETYPEENUM` int(11) DEFAULT NULL COMMENT 'CFINVOICETYPEENUM',
  `CFBILLINGNO` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBILLINGNO',
  `CFINVOICESTATUS` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFINVOICESTATUS',
  `CFISALLFP` int(11) DEFAULT NULL COMMENT 'CFISALLFP',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='T_AP_OTHERBILL';


-- zj_data.t_ap_otherbillentry definition

CREATE TABLE `t_ap_otherbillentry` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FSEQ` int(11) DEFAULT NULL COMMENT 'FSEQ',
  `FMATERIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMATERIALID',
  `FMEASUREUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMEASUREUNITID',
  `FASSISTPROPERTYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSISTPROPERTYID',
  `FEXPENSEITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FEXPENSEITEMID',
  `FACCOUNTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FACCOUNTID',
  `FRECIEVEPAYAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FRECIEVEPAYAMOUNT',
  `FRECIEVEPAYAMOUNTLOCAL` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FRECIEVEPAYAMOUNTLOCAL',
  `FVERIFYAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FVERIFYAMOUNT',
  `FVERIFYAMOUNTLOCAL` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FVERIFYAMOUNTLOCAL',
  `FUNVERIFYAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FUNVERIFYAMOUNT',
  `FUNVERIFYAMOUNTLOCAL` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FUNVERIFYAMOUNTLOCAL',
  `FLOCKVERIFYAMT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FLOCKVERIFYAMT',
  `FLOCKVERIFYAMTLOCAL` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FLOCKVERIFYAMTLOCAL',
  `FLOCKUNVERIFYAMT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FLOCKUNVERIFYAMT',
  `FLOCKUNVERIFYAMTLOCAL` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FLOCKUNVERIFYAMTLOCAL',
  `FREMARK` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREMARK',
  `FQUANTITY` double(28,16) DEFAULT '0.0000000000000000' COMMENT 'FQUANTITY',
  `FPRICE` double(28,16) DEFAULT '0.0000000000000000' COMMENT 'FPRICE',
  `FTAXPRICE` double(28,16) DEFAULT '0.0000000000000000' COMMENT 'FTAXPRICE',
  `FACTUALPRICE` double(28,16) DEFAULT '0.0000000000000000' COMMENT 'FACTUALPRICE',
  `FDISCOUNTRATE` double(28,10) DEFAULT '0.0000000000' COMMENT 'FDISCOUNTRATE',
  `FTAXRATE` double(28,10) DEFAULT '0.0000000000' COMMENT 'FTAXRATE',
  `FTAXAMOUNT` double(19,4) DEFAULT '0.0000' COMMENT 'FTAXAMOUNT',
  `FTAXAMOUNTLOCAL` double(19,4) DEFAULT '0.0000' COMMENT 'FTAXAMOUNTLOCAL',
  `FAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FAMOUNT',
  `FAMOUNTLOCAL` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FAMOUNTLOCAL',
  `FPARENTID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FPARENTID',
  `FDISCOUNTAMOUNT` double(19,4) DEFAULT '0.0000' COMMENT 'FDISCOUNTAMOUNT',
  `FDISCOUNTAMOUNTLOCAL` double(19,4) DEFAULT '0.0000' COMMENT 'FDISCOUNTAMOUNTLOCAL',
  `FSOURCEBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEBILLENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLENTRYID',
  `FSOURCEBILLASSTACTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLASSTACTID',
  `FHISUNVERIFYAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FHISUNVERIFYAMOUNT',
  `FHISUNVERIFYAMOUNTLOCAL` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FHISUNVERIFYAMOUNTLOCAL',
  `FCOREBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLTYPEID',
  `FCOREBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLID',
  `FCOREBILLENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLENTRYID',
  `FCOREBILLNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLNUMBER',
  `FCOREBILLENTRYSEQ` int(11) DEFAULT NULL COMMENT 'FCOREBILLENTRYSEQ',
  `FTRACKNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRACKNUMBER',
  `FAPPRINTBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAPPRINTBILLID',
  `FAPPRINTBILLENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAPPRINTBILLENTRYID',
  `FASSISTUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSISTUNITID',
  `FASSISTQTY` double(28,16) DEFAULT '0.0000000000000000' COMMENT 'FASSISTQTY',
  `FDISCOUNTTYPE` int(11) NOT NULL DEFAULT '-1' COMMENT 'FDISCOUNTTYPE',
  `FOPPACCOUNTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOPPACCOUNTID',
  `FWRITTENOFFBASEQTY` double(28,16) DEFAULT '0.0000000000000000' COMMENT 'FWRITTENOFFBASEQTY',
  `FLOCALWRITTENOFFAMOUNT` double(19,4) DEFAULT '0.0000' COMMENT 'FLOCALWRITTENOFFAMOUNT',
  `FUNWRITEOFFBASEQTY` double(28,16) DEFAULT '0.0000000000000000' COMMENT 'FUNWRITEOFFBASEQTY',
  `FLOCALUNWRITEOFFAMOUNT` double(19,4) DEFAULT '0.0000' COMMENT 'FLOCALUNWRITEOFFAMOUNT',
  `FINVOICEDBASEQTY` double(28,16) DEFAULT '0.0000000000000000' COMMENT 'FINVOICEDBASEQTY',
  `FINVOICEDAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FINVOICEDAMT',
  `FBASEUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEUNITID',
  `FBASEQTY` double(28,16) NOT NULL DEFAULT '0.0000000000000000' COMMENT 'FBASEQTY',
  `FREALPRICE` double(28,16) NOT NULL DEFAULT '0.0000000000000000' COMMENT 'FREALPRICE',
  `FISINVOICED` int(11) NOT NULL DEFAULT '0' COMMENT 'FISINVOICED',
  `FISFULLWRITEOFF` int(11) NOT NULL DEFAULT '0' COMMENT 'FISFULLWRITEOFF',
  `FISPRESENT` int(11) NOT NULL DEFAULT '0' COMMENT 'FISPRESENT',
  `FINVOICENUMBER` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FINVOICENUMBER',
  `FVERIFYQTY` double(28,16) DEFAULT '0.0000000000000000' COMMENT 'FVERIFYQTY',
  `FLOCKVERIFYQTY` double(28,16) DEFAULT '0.0000000000000000' COMMENT 'FLOCKVERIFYQTY',
  `FROWTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FROWTYPEID',
  `FMATERIALNAME` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMATERIALNAME',
  `FAPPORTIONAMTLOCAL` double(19,4) DEFAULT '0.0000' COMMENT 'FAPPORTIONAMTLOCAL',
  `FREQUESTEDPAYAMT` double(19,4) DEFAULT '0.0000' COMMENT 'FREQUESTEDPAYAMT',
  `FAPPORTIONAMOUNT` double(17,4) DEFAULT '0.0000' COMMENT 'FAPPORTIONAMOUNT',
  `FUNAPPORTIONAMOUNT` double(17,4) DEFAULT '0.0000' COMMENT 'FUNAPPORTIONAMOUNT',
  `FCONTRACTNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTRACTNUMBER',
  `FCONTRACTENTRYSEQ` int(11) DEFAULT '0' COMMENT 'FCONTRACTENTRYSEQ',
  `FCONTRACTBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTRACTBILLID',
  `FCONTRACTENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTRACTENTRYID',
  `FUNITSTANDARDCOS` double(28,10) DEFAULT NULL COMMENT 'FUNITSTANDARDCOS',
  `FSTANDARDCOS` double(28,10) DEFAULT NULL COMMENT 'FSTANDARDCOS',
  `FRECSENDORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FRECSENDORGUNITID',
  `FPROJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTID',
  `FTRACKNUMBERZCID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRACKNUMBERZCID',
  `FREVERSEDBASEQTY` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FREVERSEDBASEQTY',
  `FISSELECTENTRY` int(11) NOT NULL DEFAULT '0' COMMENT 'FISSELECTENTRY',
  `FCOMPANYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANYID',
  `FBILLDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FBILLDATE',
  `FLOT` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLOT',
  `CFALLINKID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFALLINKID',
  `CFALLINKENTRYID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFALLINKENTRYID',
  `CFALLINK` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFALLINK',
  `CFPURINENTRYID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPURINENTRYID',
  `CFCONTRACTPRICE` double(28,10) DEFAULT NULL COMMENT 'CFCONTRACTPRICE',
  `FGYSIDMATERIAL` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'FGYSIDMATERIAL',
  `FPAYABLEDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FPAYABLEDATE',
  `CFTRACKTTXT` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTRACKTTXT',
  `CFTRACKTXTREMARK` varchar(375) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTRACKTXTREMARK',
  `CFFYLXID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFYLXID',
  `CFYWLBID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFYWLBID',
  `CFFPFLID` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFPFLID',
  `CFFPID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFPID',
  `FCOSTCENTERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTCENTERID',
  `FFUNDFLOWITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFUNDFLOWITEMID',
  `CFUNITTSTANDARDCOST` double(28,10) DEFAULT NULL COMMENT 'CFUNITTSTANDARDCOST',
  `CFSTANDARDCOST` double(28,10) DEFAULT NULL COMMENT 'CFSTANDARDCOST',
  `CFALINK` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFALINK',
  `CFALINKID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFALINKID',
  `CFALINKENTRYID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFALINKENTRYID',
  `CFTRACKTXT` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTRACKTXT',
  `FUNITTSTANDARDCOST` double(28,10) DEFAULT NULL COMMENT 'FUNITTSTANDARDCOST',
  `FSTANDARDCOST` double(28,10) DEFAULT NULL COMMENT 'FSTANDARDCOST',
  `FISQTYZERO` int(11) DEFAULT '0' COMMENT 'FISQTYZERO',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='T_AP_OTHERBILLENTRY';


-- zj_data.t_im_materialreqbill definition

CREATE TABLE `t_im_materialreqbill` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FCREATORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCREATORID',
  `FCREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FCREATETIME',
  `FLASTUPDATEUSERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLASTUPDATEUSERID',
  `FLASTUPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FLASTUPDATETIME',
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBIZDATE',
  `FHANDLERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHANDLERID',
  `FDESCRIPTION` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDESCRIPTION',
  `FHASEFFECTED` int(11) DEFAULT NULL COMMENT 'FHASEFFECTED',
  `FAUDITORID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FAUDITORID',
  `FSOURCEBILLID` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEFUNCTION` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEFUNCTION',
  `FAUDITTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAUDITTIME',
  `FBASESTATUS` int(11) DEFAULT NULL COMMENT 'FBASESTATUS',
  `FBIZTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBIZTYPEID',
  `FSOURCEBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLTYPEID',
  `FBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBILLTYPEID',
  `FYEAR` int(11) NOT NULL DEFAULT '2999' COMMENT 'FYEAR',
  `FPERIOD` int(11) NOT NULL DEFAULT '1' COMMENT 'FPERIOD',
  `FSTORAGEORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSTORAGEORGUNITID',
  `FADMINORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINORGUNITID',
  `FSTOCKERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSTOCKERID',
  `FVOUCHERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FVOUCHERID',
  `FTOTALQTY` double(28,16) NOT NULL DEFAULT '0.0000000000000000' COMMENT 'FTOTALQTY',
  `FTOTALAMOUNT` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FTOTALAMOUNT',
  `FFIVOUCHERED` int(11) DEFAULT '0' COMMENT 'FFIVOUCHERED',
  `FTOTALSTANDARDCOST` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FTOTALSTANDARDCOST',
  `FTOTALACTUALCOST` double(19,4) NOT NULL DEFAULT '0.0000' COMMENT 'FTOTALACTUALCOST',
  `FISREVERSED` int(11) DEFAULT NULL COMMENT 'FISREVERSED',
  `FTRANSACTIONTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRANSACTIONTYPEID',
  `FISINITBILL` int(11) NOT NULL DEFAULT '0' COMMENT 'FISINITBILL',
  `FMODIFIERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMODIFIERID',
  `FMODIFICATIONTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FMODIFICATIONTIME',
  `FCOSTCENTERORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTCENTERORGUNITID',
  `FPURCHASETYPE` int(11) DEFAULT '0' COMMENT 'FPURCHASETYPE',
  `FSUPPLIERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSUPPLIERID',
  `FGLIDENUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FGLIDENUMBER',
  `FSOURCBILLNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCBILLNUMBER',
  `FSCONSFRAMER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSCONSFRAMER',
  `FCHARGEITEMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCHARGEITEMID',
  `FBIZVOUCHERNUM` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBIZVOUCHERNUM',
  `FLOCALVOUNUM` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLOCALVOUNUM',
  `FLOCALVOUCHERID` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLOCALVOUCHERID',
  `FBIZVOUCHERID` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBIZVOUCHERID',
  `FPROCESSREQUEST` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROCESSREQUEST',
  `FUNITMANAGEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FUNITMANAGEID',
  `FSTARTWORKNUMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSTARTWORKNUMID',
  `FENDWORKNUMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FENDWORKNUMID',
  `FCOSTOBJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTOBJECTID',
  `CFFRISTAUDITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFFRISTAUDITID',
  `CFSECONDAUDITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSECONDAUDITID',
  `CFBIZVOUCHERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBIZVOUCHERID',
  `CFLOCALVOUCHERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFLOCALVOUCHERID',
  `FISBACKFLUSH` int(11) NOT NULL DEFAULT '0' COMMENT 'FISBACKFLUSH',
  `FBACKFLUSHBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBACKFLUSHBILLTYPEID',
  `FBACKFLUSHBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBACKFLUSHBILLID',
  `FMONTH` int(11) DEFAULT NULL COMMENT 'FMONTH',
  `FDAY` int(11) DEFAULT NULL COMMENT 'FDAY',
  `FSUPPLYSTOREORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSUPPLYSTOREORGUNITID',
  `FSUPPLYCOMPANYORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSUPPLYCOMPANYORGUNITID',
  `FDEMANDCOMPANYORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FDEMANDCOMPANYORGUNITID',
  `CFISAUDIT` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFISAUDIT',
  `CFDLMATERIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFDLMATERIALID',
  `CFPRINTCOUNTTD` int(11) DEFAULT NULL COMMENT 'CFPRINTCOUNTTD',
  `CFDISSTATUS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFDISSTATUS',
  `CFRESORDERSOURCE` int(11) DEFAULT NULL COMMENT 'CFRESORDERSOURCE',
  `CFSTARTDIRERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSTARTDIRERID',
  `CFSTARTDIRDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFSTARTDIRDATE',
  `CFENDDIRERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFENDDIRERID',
  `CFENDDIRDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFENDDIRDATE',
  `CFGOOUTERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFGOOUTERID',
  `CFGOOUTDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFGOOUTDATE',
  `CFALLINKID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFALLINKID',
  `CFPRINTNUMBER` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPRINTNUMBER',
  `CFISQUALITY` int(11) DEFAULT NULL COMMENT 'CFISQUALITY',
  `CFQUALITYCLASS` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFQUALITYCLASS',
  `CFQUALTITYREASON` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFQUALTITYREASON',
  `CFISCOMP` int(11) DEFAULT NULL COMMENT 'CFISCOMP',
  `CFPRINTCOUNT` int(11) DEFAULT NULL COMMENT 'CFPRINTCOUNT',
  `CFMAQDISBILLNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMAQDISBILLNUMBER',
  `CFBARCODEID` int(11) DEFAULT NULL COMMENT 'CFBARCODEID',
  `FUNITSOURCE` int(11) DEFAULT NULL COMMENT 'FUNITSOURCE',
  `CFISUNLOCKED` int(11) DEFAULT NULL COMMENT 'CFISUNLOCKED',
  `CFDISTNUMBER` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFDISTNUMBER',
  `CFCOMPOSNUMBER` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCOMPOSNUMBER',
  `CFCANCELSENDWMS` int(11) DEFAULT NULL COMMENT 'CFCANCELSENDWMS',
  `CFRETURNNUMBER` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFRETURNNUMBER',
  `CFWMSBILLCODE` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFWMSBILLCODE',
  `CFISHAND` int(11) DEFAULT NULL COMMENT 'CFISHAND',
  `CFREMARK` varchar(1200) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFREMARK',
  `CFWMSREDBILL` int(11) DEFAULT NULL COMMENT 'CFWMSREDBILL',
  `CFWASTERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFWASTERID',
  `CFWASTEDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CFWASTEDATE',
  `CFTXTWMSWORKNUMBER` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFTXTWMSWORKNUMBER',
  `CFISREPEATPUSHWMS` int(11) DEFAULT NULL COMMENT 'CFISREPEATPUSHWMS',
  `CFWMSPTBILLCODE` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFWMSPTBILLCODE',
  `CFLOCKTYPE` int(11) DEFAULT NULL COMMENT 'CFLOCKTYPE',
  `CFBUSINESSREPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBUSINESSREPID',
  `CFISTRAY` int(11) DEFAULT NULL COMMENT 'CFISTRAY',
  `CFISTARY` int(11) DEFAULT NULL COMMENT 'CFISTARY',
  `CFISSENDESB` int(11) DEFAULT NULL COMMENT 'CFISSENDESB',
  `CFISMATERIALMES` int(11) DEFAULT NULL COMMENT 'CFISMATERIALMES',
  `CFEXPENSETYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFEXPENSETYPEID',
  `CFBDPROJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFBDPROJECTID',
  `CFPROJECTACTIVITYI` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPROJECTACTIVITYI',
  `CFCOSTCENTERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCOSTCENTERID',
  `CFTOTALCOST` double(28,10) DEFAULT NULL COMMENT 'CFTOTALCOST',
  `CFMOMMORDERNUM` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMOMMORDERNUM',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='T_IM_MATERIALREQBILL';


-- zj_data.t_im_purinwarehsentry definition

CREATE TABLE `t_im_purinwarehsentry` (
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  `FSEQ` int(11) DEFAULT NULL COMMENT 'FSEQ',
  `FMATERIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMATERIALID',
  `FASSISTPROPERTYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSISTPROPERTYID',
  `FUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FUNITID',
  `FSOURCEBILLNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLNUMBER',
  `FSOURCEBILLENTRYSEQ` int(11) DEFAULT NULL COMMENT 'FSOURCEBILLENTRYSEQ',
  `FASSCOEFFICIENT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FASSCOEFFICIENT',
  `FBASESTATUS` int(11) DEFAULT NULL COMMENT 'FBASESTATUS',
  `FASSOCIATEQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FASSOCIATEQTY',
  `FSOURCEBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLTYPEID',
  `FBASEUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBASEUNITID',
  `FASSISTUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FASSISTUNITID',
  `FREASONCODEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREASONCODEID',
  `FSTORAGEORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSTORAGEORGUNITID',
  `FCOMPANYORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOMPANYORGUNITID',
  `FWAREHOUSEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FWAREHOUSEID',
  `FLOCATIONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLOCATIONID',
  `FSTOCKERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSTOCKERID',
  `FLOT` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FLOT',
  `FQTY` double(28,10) DEFAULT NULL COMMENT 'FQTY',
  `FASSISTQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FASSISTQTY',
  `FBASEQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FBASEQTY',
  `FREVERSEQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FREVERSEQTY',
  `FRETURNSQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FRETURNSQTY',
  `FPRICE` double(28,10) DEFAULT NULL COMMENT 'FPRICE',
  `FAMOUNT` double(28,10) DEFAULT NULL COMMENT 'FAMOUNT',
  `FUNITSTANDARDCOST` double(28,10) DEFAULT NULL COMMENT 'FUNITSTANDARDCOST',
  `FSTANDARDCOST` double(28,10) DEFAULT '0.0000000000' COMMENT 'FSTANDARDCOST',
  `FUNITACTUALCOST` double(28,10) DEFAULT NULL COMMENT 'FUNITACTUALCOST',
  `FACTUALCOST` double(28,10) DEFAULT NULL COMMENT 'FACTUALCOST',
  `FISPRESENT` int(11) DEFAULT NULL COMMENT 'FISPRESENT',
  `FMFG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'FMFG',
  `FEXP` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FEXP',
  `FREVERSEBASEQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FREVERSEBASEQTY',
  `FRETURNBASEQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FRETURNBASEQTY',
  `FPARENTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPARENTID',
  `FWRITTENOFFQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FWRITTENOFFQTY',
  `FWRITTENOFFAMOUNT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FWRITTENOFFAMOUNT',
  `FUNWRITEOFFQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FUNWRITEOFFQTY',
  `FUNWRITEOFFAMOUNT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FUNWRITEOFFAMOUNT',
  `FRECEIVEAMOUNT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FRECEIVEAMOUNT',
  `FPURORDERNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPURORDERNUMBER',
  `FPURORDERENTRYSEQ` int(11) DEFAULT NULL COMMENT 'FPURORDERENTRYSEQ',
  `FTAXRATE` double(28,10) DEFAULT '0.0000000000' COMMENT 'FTAXRATE',
  `FTAX` double(28,10) DEFAULT '0.0000000000' COMMENT 'FTAX',
  `FLOCALTAX` double(28,10) DEFAULT '0.0000000000' COMMENT 'FLOCALTAX',
  `FLOCALPRICE` double(28,10) DEFAULT '0.0000000000' COMMENT 'FLOCALPRICE',
  `FLOCALAMOUNT` double(28,10) DEFAULT '0.0000000000' COMMENT 'FLOCALAMOUNT',
  `FDREWQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FDREWQTY',
  `FIMPUTEDCOST` double(28,10) DEFAULT '0.0000000000' COMMENT 'FIMPUTEDCOST',
  `FWRITTENOFFBASEQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FWRITTENOFFBASEQTY',
  `FUNWRITEOFFBASEQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FUNWRITEOFFBASEQTY',
  `FPURORDERID` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPURORDERID',
  `FPURORDERENTRYID` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPURORDERENTRYID',
  `FCOREBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOREBILLTYPEID',
  `FUNRETURNEDBASEQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FUNRETURNEDBASEQTY',
  `FORDERPRICE` double(28,10) DEFAULT '0.0000000000' COMMENT 'FORDERPRICE',
  `FTAXPRICE` double(28,10) DEFAULT '0.0000000000' COMMENT 'FTAXPRICE',
  `FACTUALPRICE` double(28,10) DEFAULT '0.0000000000' COMMENT 'FACTUALPRICE',
  `FPURCHASEORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPURCHASEORGUNITID',
  `FPURCHASEGROUPID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPURCHASEGROUPID',
  `FPURCHASEPERSONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPURCHASEPERSONID',
  `FDREWBASEQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FDREWBASEQTY',
  `FTOTALMOVEQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FTOTALMOVEQTY',
  `FISREQUESTTORECEIVED` int(11) DEFAULT '0' COMMENT 'FISREQUESTTORECEIVED',
  `FISFULLWRITEOFF` int(11) DEFAULT '0' COMMENT 'FISFULLWRITEOFF',
  `FCANDIRECTREQQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FCANDIRECTREQQTY',
  `FCANDIRECTREQBASEQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'FCANDIRECTREQBASEQTY',
  `FBALANCESUPPLIERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBALANCESUPPLIERID',
  `FISCENTERBALANCE` int(11) DEFAULT '0' COMMENT 'FISCENTERBALANCE',
  `FISBETWEENCOMPANYSEND` int(11) DEFAULT '0' COMMENT 'FISBETWEENCOMPANYSEND',
  `FHASSAMECOU` int(11) NOT NULL DEFAULT '1' COMMENT 'FHASSAMECOU',
  `FRECEIVESTORAGEORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FRECEIVESTORAGEORGUNITID',
  `FPURCHASECOST` double(17,4) DEFAULT '0.0000' COMMENT 'FPURCHASECOST',
  `FPURCHASEFEE` double(17,4) DEFAULT '0.0000' COMMENT 'FPURCHASEFEE',
  `FUNITPURCHASECOST` double(28,10) NOT NULL DEFAULT '0.0000000000' COMMENT 'FUNITPURCHASECOST',
  `FMATERIALCOST` double(17,4) DEFAULT '0.0000' COMMENT 'FMATERIALCOST',
  `FUNITMATERIALCOST` double(21,8) DEFAULT '0.00000000' COMMENT 'FUNITMATERIALCOST',
  `FSCWRITTENOFFQTY` double(21,8) DEFAULT '0.00000000' COMMENT 'FSCWRITTENOFFQTY',
  `FSCWRITTENOFFBASEQTY` double(21,8) DEFAULT '0.00000000' COMMENT 'FSCWRITTENOFFBASEQTY',
  `FSCUNWRITTENOFFQTY` double(21,8) DEFAULT '0.00000000' COMMENT 'FSCUNWRITTENOFFQTY',
  `FSCUNWRITTENOFFBASEQTY` double(21,8) DEFAULT '0.00000000' COMMENT 'FSCUNWRITTENOFFBASEQTY',
  `FDOSINGTYPE` int(11) NOT NULL DEFAULT '3' COMMENT 'FDOSINGTYPE',
  `FPRODUCTTASKNUMBER` varchar(80) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPRODUCTTASKNUMBER',
  `FSUPPLIERLOTNO` varchar(800) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSUPPLIERLOTNO',
  `FHOUSEKNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FHOUSEKNUMBER',
  `FRECEIVABLEQTY` double(28,10) DEFAULT NULL COMMENT 'FRECEIVABLEQTY',
  `FELIGIBILITYQTY` double(28,10) DEFAULT NULL COMMENT 'FELIGIBILITYQTY',
  `FDISQTY` double(28,10) DEFAULT NULL COMMENT 'FDISQTY',
  `FENTREFACTORYDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FENTREFACTORYDATE',
  `FARTSTANDR` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FARTSTANDR',
  `FSTATATTRI` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSTATATTRI',
  `FFOURNUMBERORI` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'FFOURNUMBERORI',
  `CFTOTALDAWNQTY` double(28,10) DEFAULT '0.0000000000' COMMENT 'CFTOTALDAWNQTY',
  `FTOTALDAWNQTY` double(21,8) DEFAULT '0.00000000' COMMENT 'FTOTALDAWNQTY',
  `QTY` double(20,10) DEFAULT NULL COMMENT 'QTY',
  `FBASEUNITACTUALCOST` double(21,8) DEFAULT '0.00000000' COMMENT 'FBASEUNITACTUALCOST',
  `CFKACLASS` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFKACLASS',
  `FTAXAMOUNT` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FTAXAMOUNT',
  `FLOCALTAXAMOUNT` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FLOCALTAXAMOUNT',
  `FACTUALTAXPRICE` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FACTUALTAXPRICE',
  `FDISCOUNTRATE` double(21,8) NOT NULL DEFAULT '0.00000000' COMMENT 'FDISCOUNTRATE',
  `FDISCOUNTAMOUNT` double(17,4) NOT NULL DEFAULT '0.0000' COMMENT 'FDISCOUNTAMOUNT',
  `FPROJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FPROJECTID',
  `FTRACKNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRACKNUMBERID',
  `FCONTRACTNUMBER` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTRACTNUMBER',
  `FMOTHERENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FMOTHERENTRYID',
  `FCUSTOMERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCUSTOMERID',
  `FOUTLOCATIONID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOUTLOCATIONID',
  `FOUTWAREHOUSEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FOUTWAREHOUSEID',
  `REMARK` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'REMARK',
  `CFENDTRACKNUMBERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFENDTRACKNUMBERID',
  `CFSETTLEUNITPRICE` double(28,10) DEFAULT NULL COMMENT 'CFSETTLEUNITPRICE',
  `CFSETTLENUMBER` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSETTLENUMBER',
  `FTRANSACTIONTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FTRANSACTIONTYPEID',
  `FSUPPLIERID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSUPPLIERID',
  `FADMINORGUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FADMINORGUNITID',
  `FBILLBASESTATUS` int(11) DEFAULT '2' COMMENT 'FBILLBASESTATUS',
  `FYEAR` int(11) DEFAULT '2999' COMMENT 'FYEAR',
  `FPERIOD` int(11) DEFAULT '0' COMMENT 'FPERIOD',
  `FISINITBILL` int(11) DEFAULT '0' COMMENT 'FISINITBILL',
  `FBIZDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FBIZDATE',
  `FAUDITTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'FAUDITTIME',
  `FISREVERSED` int(11) DEFAULT '0' COMMENT 'FISREVERSED',
  `FFIVOUCHERED` int(11) DEFAULT '0' COMMENT 'FFIVOUCHERED',
  `FNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'FNUMBER',
  `FBILLTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBILLTYPEID',
  `FBIZTYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FBIZTYPEID',
  `CFLENGTH` double(21,8) DEFAULT NULL COMMENT 'CFLENGTH',
  `CFWIDTH` double(21,8) DEFAULT NULL COMMENT 'CFWIDTH',
  `CFCOMPURNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCOMPURNUMBER',
  `CFCOMPURID` int(11) DEFAULT NULL COMMENT 'CFCOMPURID',
  `CFCOMROWID` int(11) DEFAULT NULL COMMENT 'CFCOMROWID',
  `CFPARTMATERIALID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPARTMATERIALID',
  `CFNEWSOURCEENTRYID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFNEWSOURCEENTRYID',
  `CFALLINKID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFALLINKID',
  `CFALLINKENTRYID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFALLINKENTRYID',
  `CFENTRUSENTRYID` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFENTRUSENTRYID',
  `CFSOURCEBILLIDAL` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSOURCEBILLIDAL',
  `CFSOURCEBILLENTRYIDAL` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSOURCEBILLENTRYIDAL',
  `CFUNLOCKQTY` double(28,10) NOT NULL COMMENT 'CFUNLOCKQTY',
  `CFALLINKALLQTY` double(28,10) DEFAULT NULL COMMENT 'CFALLINKALLQTY',
  `CFALLINKSHQTY` double(28,10) DEFAULT NULL COMMENT 'CFALLINKSHQTY',
  `CFEASALLQTY` double(28,10) DEFAULT NULL COMMENT 'CFEASALLQTY',
  `CFEASSHQTY` double(28,10) DEFAULT NULL COMMENT 'CFEASSHQTY',
  `CFCURSTOREQTY` double(28,10) DEFAULT NULL COMMENT 'CFCURSTOREQTY',
  `CFPRICENOTES` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPRICENOTES',
  `CFALLINKUNQTY` double(28,10) DEFAULT NULL COMMENT 'CFALLINKUNQTY',
  `FREMARK` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT 'FREMARK',
  `CFCONTRACTPRICE` double(28,10) DEFAULT NULL COMMENT 'CFCONTRACTPRICE',
  `CFZCSTNID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFZCSTNID',
  `CFZCETNID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFZCETNID',
  `CFLOTNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFLOTNUMBER',
  `FRESERVATIONBILLOBJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FRESERVATIONBILLOBJECTID',
  `FRESERVATIONID` varchar(750) COLLATE utf8_bin DEFAULT NULL COMMENT 'FRESERVATIONID',
  `FINVUPDATETYPEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FINVUPDATETYPEID',
  `FSOURCEBILLENTRYCHECKID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLENTRYCHECKID',
  `CFCHANGEPROJECTID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCHANGEPROJECTID',
  `CFKACLASSID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFKACLASSID',
  `FSOURCEBILLID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLID',
  `FSOURCEBILLENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FSOURCEBILLENTRYID',
  `CFYKPSL` double(28,10) DEFAULT '0.0000000000' COMMENT 'CFYKPSL',
  `CFWKPSL` double(28,10) DEFAULT NULL COMMENT 'CFWKPSL',
  `CFWMSSTATUS` int(11) DEFAULT NULL COMMENT 'CFWMSSTATUS',
  `CFPURPRICE` double(28,10) DEFAULT NULL COMMENT 'CFPURPRICE',
  `CFPURCONTRACTNUMBER` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPURCONTRACTNUMBER',
  `CFWORKSHOP` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFWORKSHOP',
  `CFWORKSHOPTYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFWORKSHOPTYPE',
  `CFPURCONTRACTNUMBE` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFPURCONTRACTNUMBE',
  `FCOSTCENTERORGUNITID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCOSTCENTERORGUNITID',
  `CFSALOUTSTOCKENTRYID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSALOUTSTOCKENTRYID',
  `CFSALOUTSTOCKID` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSALOUTSTOCKID',
  `CFARINVOICENUMBER` varchar(750) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFARINVOICENUMBER',
  `CFOTHERNUMBER` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFOTHERNUMBER',
  `CFJDORDERNUMBER` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFJDORDERNUMBER',
  `CFCONTRACTNUMID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFCONTRACTNUMID',
  `CFHTKPPRICE` double(28,10) DEFAULT NULL COMMENT 'CFHTKPPRICE',
  `CFCANUNFREEZEQTY` double(28,10) DEFAULT NULL COMMENT 'CFCANUNFREEZEQTY',
  `CFCANUNFREEZEAMOUNT` double(28,10) DEFAULT NULL COMMENT 'CFCANUNFREEZEAMOUNT',
  `CFNCRWRITEOFFDIFFAMOUNT` double(28,10) DEFAULT NULL COMMENT 'CFNCRWRITEOFFDIFFAMOUNT',
  `CFHTPRICE` varchar(75) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFHTPRICE',
  `CFSALEISSUEENTRYID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSALEISSUEENTRYID',
  `CFSALEISSUEID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSALEISSUEID',
  `CFSALEISSUENO` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFSALEISSUENO',
  `CFISREDAPPLY` int(11) DEFAULT NULL COMMENT 'CFISREDAPPLY',
  `CFMANUFACTURER` varchar(66) COLLATE utf8_bin DEFAULT NULL COMMENT 'CFMANUFACTURER',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='T_IM_PURINWAREHSENTRY';


-- zj_data.t_tmp_pcpeccutetrack definition

CREATE TABLE `t_tmp_pcpeccutetrack` (
  `id` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'id',
  `projectid` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'projectid',
  `projectno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'projectno',
  `projectname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'projectname',
  `orgid` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'orgid',
  `orgno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'orgno',
  `orgname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'orgname',
  `trackid` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'trackid',
  `trackno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'trackno',
  `projectJCHid` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'projectJCHid',
  `projectJCHno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'projectJCHno',
  `prductmodelid` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'prductmodelid',
  `prductmodelno` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'prductmodelno',
  `prductmodelname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'prductmodelname',
  `productmodelTypeid` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'productmodelTypeid',
  `productmodelType` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'productmodelType',
  `planbegintime` datetime DEFAULT NULL COMMENT 'planbegintime',
  `planendtime` datetime DEFAULT NULL COMMENT 'planendtime',
  `planQty` decimal(28,2) DEFAULT NULL COMMENT 'planQty',
  `materialid` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'materialid',
  `materialno` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'materialno',
  `materialname` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'materialname',
  `productqty` decimal(28,2) DEFAULT NULL COMMENT 'productqty',
  `productplanBtime` datetime DEFAULT NULL COMMENT 'productplanBtime',
  `productplanEtime` datetime DEFAULT NULL COMMENT 'productplanEtime',
  `actualBtime` datetime DEFAULT NULL COMMENT 'actualBtime',
  `actualEtime` datetime DEFAULT NULL COMMENT 'actualEtime',
  `operationid` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'operationid',
  `paramvalue` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT 'paramvalue'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='T_tmp_PCPEccuteTrack';


-- zj_data.tabdiytable4565 definition

CREATE TABLE `tabdiytable4565` (
  `ID` int(11) DEFAULT NULL,
  `iOrd` int(11) DEFAULT NULL,
  `F48882` text COLLATE utf8_bin,
  `F48883` text COLLATE utf8_bin,
  `F48884` text COLLATE utf8_bin,
  `F48885` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- zj_data.task_full definition

CREATE TABLE `task_full` (
  `disCodeState` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '生产状态',
  `groupName` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'groupName',
  `produCode` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'produCode',
  `workPersionName` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'workPersionName',
  `udaTransmit` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'udaTransmit',
  `opType` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'opType',
  `singerCarCode` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'singerCarCode',
  `carCode` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'carCode',
  `plannedStartTime` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'plannedStartTime',
  `mrlNum` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'mrlNum',
  `actualBeginTime` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'actualBeginTime',
  `id` varchar(500) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `opCode` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'opCode',
  `project` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'project',
  `plannedEndTime` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'plannedEndTime',
  `nature` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'nature',
  `produName` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'produName',
  `startEmployeeNames` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'startEmployeeNames',
  `workPersion` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'workPersion',
  `opName` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'opName',
  `actualEndTime` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'actualEndTime',
  `adjustState` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'adjustState',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='task_full';


-- zj_data.test definition

CREATE TABLE `test` (
  `FCONTROLUNITID` varchar(44) COLLATE utf8_bin DEFAULT NULL COMMENT 'FCONTROLUNITID',
  `FID` varchar(44) COLLATE utf8_bin NOT NULL COMMENT 'FID',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='直接落地测试';


-- zj_data.test_cate definition

CREATE TABLE `test_cate` (
  `id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'ID',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='测试分类';


-- zj_data.test_goods definition

CREATE TABLE `test_goods` (
  `id` varchar(11) COLLATE utf8_bin NOT NULL COMMENT 'ID',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `cate_id` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '分类ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='测试商品';


-- zj_data.testylwl definition

CREATE TABLE `testylwl` (
  `LX` varchar(382) COLLATE utf8_bin NOT NULL COMMENT '类型',
  `NDJH` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '年度计划',
  `SJWC` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '实际完成',
  `HYBG` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '行业标杆',
  `ZBWCJD` int(11) DEFAULT NULL COMMENT '指标完成进度',
  `YLZD1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '预留字段1',
  `GXRQ` date DEFAULT NULL COMMENT '更新日期',
  `ZQ` date DEFAULT NULL COMMENT '账期',
  PRIMARY KEY (`LX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='testYLWL';


-- zj_data.vbap3_dataset_desensitization_rule_export definition

CREATE TABLE `vbap3_dataset_desensitization_rule_export` (
  `rule_id` varchar(255) DEFAULT NULL COMMENT 'rule_id',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'rule_name',
  `rule_desc` varchar(2000) DEFAULT NULL COMMENT 'rule_desc',
  `is_del` varchar(1) DEFAULT NULL COMMENT '1 删除 0 未删除',
  `create_time` varchar(255) DEFAULT NULL COMMENT 'create_time',
  `last_modified_time` varchar(255) DEFAULT NULL COMMENT 'last_modified_time',
  `start_index` varchar(5) DEFAULT NULL COMMENT 'start_index',
  `end_index` varchar(5) DEFAULT NULL COMMENT 'end_index',
  `ord` bigint(11) DEFAULT NULL COMMENT '排序',
  `replace_char` varchar(500) DEFAULT NULL COMMENT 'replace_char',
  `regular_expr` varchar(1000) DEFAULT NULL COMMENT '正则表达式',
  `formula_id` varchar(255) DEFAULT NULL COMMENT '公式id',
  `replace_first` bigint(5) DEFAULT NULL COMMENT '是否匹配首字符 0 否 1 是'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- zj_data.wms_asn definition

CREATE TABLE `wms_asn` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `DISCRIMINATOR` varchar(1020) COLLATE utf8_bin NOT NULL COMMENT 'DISCRIMINATOR',
  `VERSION` int(11) NOT NULL COMMENT 'VERSION',
  `WAREHOUSE_ID` int(11) NOT NULL COMMENT 'WAREHOUSE_ID',
  `COMPANY_ID` int(11) NOT NULL COMMENT 'COMPANY_ID',
  `BILL_TYPE_ID` int(11) NOT NULL COMMENT 'BILL_TYPE_ID',
  `CODE` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'CODE',
  `STATUS` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'STATUS',
  `SHELVES_STAUTS` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'SHELVES_STAUTS',
  `QUALITY_STAUTS` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'QUALITY_STAUTS',
  `RELATED_BILL1` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'RELATED_BILL1',
  `RELATED_BILL2` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'RELATED_BILL2',
  `RELATED_BILL3` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'RELATED_BILL3',
  `ORDER_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'ORDER_DATE',
  `ESTIMATE_DATE` date DEFAULT NULL COMMENT 'ESTIMATE_DATE',
  `START_RECEIVED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'START_RECEIVED_DATE',
  `END_RECEIVED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'END_RECEIVED_DATE',
  `FROM_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'FROM_NAME',
  `C_COUNTRY` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_COUNTRY',
  `C_PROVINCE` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_PROVINCE',
  `C_CITY` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_CITY',
  `C_ADDRESS` varchar(1020) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_ADDRESS',
  `C_POSTCODE` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_POSTCODE',
  `C_CONTACT_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_CONTACT_NAME',
  `C_MOBILE` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_MOBILE',
  `C_TELEPHONE` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_TELEPHONE',
  `C_FAX` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_FAX',
  `C_EMAIL` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'C_EMAIL',
  `EXPECTED_QUANTITY_BU` float(126,0) NOT NULL COMMENT 'EXPECTED_QUANTITY_BU',
  `RECEIVED_QUANTITY_BU` float(126,0) NOT NULL COMMENT 'RECEIVED_QUANTITY_BU',
  `MOVED_QUANTITY_BU` float(126,0) NOT NULL COMMENT 'MOVED_QUANTITY_BU',
  `QUALITY_PUTAWAY` char(4) COLLATE utf8_bin NOT NULL COMMENT 'QUALITY_PUTAWAY',
  `CREATOR_ID` int(11) DEFAULT NULL COMMENT 'CREATOR_ID',
  `CREATOR` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'CREATOR',
  `CREATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'CREATED_TIME',
  `LAST_OPERATOR_ID` int(11) DEFAULT NULL COMMENT 'LAST_OPERATOR_ID',
  `LAST_OPERATOR` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'LAST_OPERATOR',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'UPDATE_TIME',
  `SUPPLIER_ID` int(11) DEFAULT NULL COMMENT 'SUPPLIER_ID',
  `OUT_WAREHOUSE_ID` int(11) DEFAULT NULL COMMENT 'OUT_WAREHOUSE_ID',
  `ERPID` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'ERPID',
  `ERPBILLCODE` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'ERPBILLCODE',
  `INTERFACE_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'INTERFACE_DATE',
  `WORKTEAM` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'WORKTEAM',
  `PRINT_TIMES` int(11) DEFAULT '0' COMMENT 'PRINT_TIMES',
  `BE_PRINT` int(11) DEFAULT '0' COMMENT 'BE_PRINT',
  `PROJECT_ID` int(11) DEFAULT NULL COMMENT 'PROJECT_ID',
  `CUSTOMER_ID` int(11) DEFAULT NULL COMMENT 'CUSTOMER_ID',
  `EASCREATOR` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'EASCREATOR',
  `LASTCHECKUSERID` int(11) DEFAULT NULL COMMENT 'LASTCHECKUSERID',
  `LASTCHECKUSER` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'LASTCHECKUSER',
  `LASTCHECKDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'LASTCHECKDATE',
  `LASTRECEIVEUSERID` int(11) DEFAULT NULL COMMENT 'LASTRECEIVEUSERID',
  `LASTRECEIVEUSER` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'LASTRECEIVEUSER',
  `LASTRECEIVEDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'LASTRECEIVEDATE',
  `LAST_UPDATER` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'LAST_UPDATER',
  `LAST_UPDATETIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'LAST_UPDATETIME',
  `PRINTER` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'PRINTER',
  `WORKER` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'WORKER',
  `Q_WORKER` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'Q_WORKER',
  `SJ_WORKER` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'SJ_WORKER',
  `DEPARTMENT` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT 'DEPARTMENT',
  `RELATED_BILL4` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'RELATED_BILL4',
  `RECEIVE_WORKER` varchar(400) COLLATE utf8_bin DEFAULT NULL COMMENT 'RECEIVE_WORKER',
  `WORKTABLE_TYPE` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'WORKTABLE_TYPE',
  `WORKTABLE` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT 'WORKTABLE',
  `RETURN_NUMBER` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'RETURN_NUMBER',
  `SHIP_BATCH_CODE` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'SHIP_BATCH_CODE',
  `BE_SENT` char(4) COLLATE utf8_bin DEFAULT '0' COMMENT 'BE_SENT',
  `REQ_CODE` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'REQ_CODE',
  `DESCRIPTION` varchar(1020) COLLATE utf8_bin DEFAULT NULL COMMENT 'DESCRIPTION',
  `PRELIMINARY_QUALITY` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'PRELIMINARY_QUALITY',
  `DCP_NUMBER` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'DCP_NUMBER',
  `SHIP_NEED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'SHIP_NEED_DATE',
  `BE_SEND_MAIL` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'BE_SEND_MAIL',
  `BAR_CODE_ID` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'BAR_CODE_ID',
  `MANUFACTURER_ID` int(11) DEFAULT NULL COMMENT 'MANUFACTURER_ID',
  `DIRECT_CODE` varchar(150) COLLATE utf8_bin DEFAULT NULL COMMENT 'DIRECT_CODE',
  `SUPORG_ID` int(11) DEFAULT NULL COMMENT 'SUPORG_ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='WMS_ASN';


-- zj_data.yiliwulv definition

CREATE TABLE `yiliwulv` (
  `LX` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '类型',
  `NDJH` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '年度计划',
  `SJWC` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '实际完成',
  PRIMARY KEY (`LX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='dm_eas_一利五率';


-- zj_data.ylwl_final definition

CREATE TABLE `ylwl_final` (
  `LX` varchar(382) COLLATE utf8_bin NOT NULL COMMENT '类型',
  `NDJH` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '年度计划',
  `SJWC` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '实际完成',
  `HYBG` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '行业标杆',
  `ZBWCJD` int(11) DEFAULT NULL COMMENT '指标完成进度',
  `YLZD1` varchar(382) COLLATE utf8_bin DEFAULT NULL COMMENT '预留字段1',
  `GXRQ` date DEFAULT NULL COMMENT '更新日期',
  `ZQ` date DEFAULT NULL COMMENT '账期',
  PRIMARY KEY (`LX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='YLWL_FINAL';


CREATE DATABASE `zj_itsm`

USE `zj_itsm`;

-- zj_itsm.ci_type definition

CREATE TABLE `ci_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统自增ID',
  `type_name` varchar(1000) DEFAULT NULL COMMENT '配置项类型名',
  `task_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '定时任务执行时间',
  `type_id` int(6) DEFAULT NULL COMMENT '配置项属性ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48023 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- zj_itsm.ci_type_detail definition

CREATE TABLE `ci_type_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统自增ID',
  `type_name` varchar(255) DEFAULT NULL COMMENT '配置项类型名',
  `common_name` varchar(255) DEFAULT NULL COMMENT '配置项名',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `task_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '任务执行时间',
  `common_id` int(11) DEFAULT NULL COMMENT '配置项ID',
  `common_number` int(11) DEFAULT NULL COMMENT '配置项编号',
  `common_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3551206 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- zj_itsm.ci_type_test_zl definition

CREATE TABLE `ci_type_test_zl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统自增ID',
  `type_name` varchar(1000) DEFAULT NULL COMMENT '配置项类型名',
  `task_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '定时任务执行时间',
  `type_id` int(6) DEFAULT NULL COMMENT '配置项属性ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48023 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='增量数据测试表\r\n';


-- zj_itsm.dm_add_knowledge definition

CREATE TABLE `dm_add_knowledge` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='新增知识条目数';


-- zj_itsm.dm_affair_time_length definition

CREATE TABLE `dm_affair_time_length` (
  `ftitle` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '后台事务名称',
  `fstartedtime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '开始时间',
  `time_length` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处理时长',
  `standard_time_length` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '处理标准时长',
  `currenttime` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '当前时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='后台事务处理时长';


-- zj_itsm.dm_change_count definition

CREATE TABLE `dm_change_count` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `sys_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '系统名称',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='5大A类系统系统变更数量';


-- zj_itsm.dm_change_detail definition

CREATE TABLE `dm_change_detail` (
  `yyyy` longtext COLLATE utf8_bin COMMENT '年',
  `mm` longtext COLLATE utf8_bin COMMENT '月',
  `sys_name` longtext COLLATE utf8_bin COMMENT '系统',
  `applytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '申请时间',
  `title` longtext COLLATE utf8_bin COMMENT '标题',
  `person` longtext COLLATE utf8_bin COMMENT '负责人',
  `result` longtext COLLATE utf8_bin COMMENT '变更发布结果',
  `change_type` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT '变更类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='变更明细_系统变更清单';


-- zj_itsm.dm_change_detail_sys definition

CREATE TABLE `dm_change_detail_sys` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `sys_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '系统',
  `qty` int(11) DEFAULT NULL COMMENT '变更数量',
  `lv` double(100,2) DEFAULT NULL COMMENT '变更失败率',
  `content` longtext COLLATE utf8_bin,
  `person` longtext COLLATE utf8_bin,
  `jjqty` int(11) DEFAULT NULL COMMENT '紧急变更数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统变更清单';


-- zj_itsm.dm_change_fail_lv definition

CREATE TABLE `dm_change_fail_lv` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `sum` int(11) DEFAULT NULL COMMENT '总数',
  `lv` double(100,2) DEFAULT NULL COMMENT '失败率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='变更失败率';


-- zj_itsm.dm_close_qty definition

CREATE TABLE `dm_close_qty` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `isclose` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '是否关闭',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='关闭未关闭数量';


-- zj_itsm.dm_event_change_lv definition

CREATE TABLE `dm_event_change_lv` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `sum` int(11) DEFAULT NULL COMMENT '总数量',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `lv` double(100,2) DEFAULT NULL COMMENT '转变更率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='事件转变更率';


-- zj_itsm.dm_event_count definition

CREATE TABLE `dm_event_count` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `event_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '事件类型',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='事件统计';


-- zj_itsm.dm_event_problem_lv definition

CREATE TABLE `dm_event_problem_lv` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `sum` int(11) DEFAULT NULL COMMENT '总数量',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `lv` double(100,2) DEFAULT NULL COMMENT '转变更率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='事件转问题率';


-- zj_itsm.dm_host_status definition

CREATE TABLE `dm_host_status` (
  `status_en_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `status_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '状态名',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='服务器运行状态';


-- zj_itsm.dm_knowledge_source definition

CREATE TABLE `dm_knowledge_source` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `source` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '来源',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='按照知识来源统计';


-- zj_itsm.dm_knowledge_top definition

CREATE TABLE `dm_knowledge_top` (
  `knowledge_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '知识名称',
  `qty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '浏览数量',
  `yyyymmdd` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='知识浏览量';


-- zj_itsm.dm_knowledge_type definition

CREATE TABLE `dm_knowledge_type` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `knowledge_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '知识类型',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='按照知识类别统计';


-- zj_itsm.dm_nine_type_envent definition

CREATE TABLE `dm_nine_type_envent` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `sys_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '系统名称',
  `qty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='9大类别事件数量统计';


-- zj_itsm.dm_problem_change_lv definition

CREATE TABLE `dm_problem_change_lv` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `sum` int(11) DEFAULT NULL COMMENT '总数',
  `lv` double(100,2) DEFAULT NULL COMMENT '解决率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='问题转变更率';


-- zj_itsm.dm_problem_change_lv_copy1 definition

CREATE TABLE `dm_problem_change_lv_copy1` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `sum` int(11) DEFAULT NULL COMMENT '总数',
  `lv` double(100,2) DEFAULT NULL COMMENT '解决率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='问题转变更率';


-- zj_itsm.dm_problem_detail definition

CREATE TABLE `dm_problem_detail` (
  `problem_content` longtext COLLATE utf8_bin COMMENT '问题内容',
  `f_submitdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建日期',
  `f_completedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '完成日期',
  `handle_time` longtext COLLATE utf8_bin COMMENT '处理时长',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `person` longtext COLLATE utf8_bin COMMENT '处理人',
  `isclose` longtext COLLATE utf8_bin COMMENT '是否关闭',
  `isJiejue` longtext COLLATE utf8_bin COMMENT '是否解决',
  `yyyy` longtext COLLATE utf8_bin COMMENT '年',
  `mm` longtext COLLATE utf8_bin COMMENT '月'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='问题清单';


-- zj_itsm.dm_problem_knowledge_lv definition

CREATE TABLE `dm_problem_knowledge_lv` (
  `yyyymm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年月',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `sum` int(11) DEFAULT NULL COMMENT '总数',
  `lv` double(100,2) DEFAULT NULL COMMENT '解决率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='问题转变知识率';


-- zj_itsm.dm_problem_lv definition

CREATE TABLE `dm_problem_lv` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `sum` int(11) DEFAULT NULL,
  `lv` double(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='问题解决率';


-- zj_itsm.dm_problem_qty definition

CREATE TABLE `dm_problem_qty` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='问题数量';


-- zj_itsm.dm_problem_qty_0423 definition

CREATE TABLE `dm_problem_qty_0423` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='问题数量';


-- zj_itsm.dm_satisfaction_count definition

CREATE TABLE `dm_satisfaction_count` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `sum` int(11) DEFAULT NULL COMMENT '总数量',
  `qty` int(11) DEFAULT NULL COMMENT '满意数量',
  `lv` double(100,2) DEFAULT NULL COMMENT '满意率',
  `event_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '事件类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='满意度';


-- zj_itsm.dm_service_status definition

CREATE TABLE `dm_service_status` (
  `status_en_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `status_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '状态名',
  `qty` int(11) DEFAULT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='服务运行状态';


-- zj_itsm.dm_sfrlsj_lv definition

CREATE TABLE `dm_sfrlsj_lv` (
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `sum` int(11) DEFAULT NULL COMMENT '总数量',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `lv` double(100,4) DEFAULT NULL COMMENT '资源不足工单率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='容量管理资源不足工单率';


-- zj_itsm.dm_sla_lv definition

CREATE TABLE `dm_sla_lv` (
  `event_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '事件类型',
  `yyyy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '年',
  `mm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '月',
  `sum` int(11) DEFAULT NULL COMMENT '总数量',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `lv` double(100,2) DEFAULT NULL COMMENT 'sla达标率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='sla达标率';


-- zj_itsm.dm_tc_and_eas_data definition

CREATE TABLE `dm_tc_and_eas_data` (
  `service_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '服务类别',
  `fail_qty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '订阅失败',
  `unhandled_qty` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '未处理数量',
  `start_sysy` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '源系统',
  `end_sys` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '目标系统'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='TC和EAS数据流转完整性';


-- zj_itsm.st_change_flow_lv_excel definition

CREATE TABLE `st_change_flow_lv_excel` (
  `流程模块` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `指标名称` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `指标数量` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `统计频率` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `年月日` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='变更流程执行率';


-- zj_itsm.st_sys_peizhi_lv_excel definition

CREATE TABLE `st_sys_peizhi_lv_excel` (
  `sys_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '系统',
  `lv` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '符合率',
  `yyyymmdd` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='ITSM配置管理--各系统配置项符合率统计';


-- zj_itsm.st_sys_target_data_excel definition

CREATE TABLE `st_sys_target_data_excel` (
  `流程模块` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `指标名称` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `系统名称` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `指标数量` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `统计频率` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='运维工作总览表2';


-- zj_itsm.st_sys_target_data_excel_copy1 definition

CREATE TABLE `st_sys_target_data_excel_copy1` (
  `流程模块` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `指标名称` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `系统名称` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `指标数量` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `统计频率` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='运维工作总览表2';


-- zj_itsm.st_target_data_excel definition

CREATE TABLE `st_target_data_excel` (
  `流程模块` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `指标名称` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `指标数量` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `统计频率` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='运维工作总览表1';


-- zj_itsm.st_target_data_excel_copy1 definition

CREATE TABLE `st_target_data_excel_copy1` (
  `流程模块` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `指标名称` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `指标数量` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `统计频率` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='运维工作总览表1';
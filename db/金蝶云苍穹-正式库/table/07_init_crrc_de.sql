USE crrc_de;

-- crrc_de.t_dmp_baseproject definition

CREATE TABLE `t_dmp_baseproject` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FPRODUCT` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FLIFECYCLE` bigint NOT NULL DEFAULT '0',
  `FPROJECTDES` varchar(255) NOT NULL DEFAULT ' ',
  `FPROJECTMANAGER` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_BASEPROJECT_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_baseproject_l definition

CREATE TABLE `t_dmp_baseproject_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_BASEPROJECT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_bills_type definition

CREATE TABLE `t_dmp_bills_type` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_BILLS_TYPE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_bills_type_l definition

CREATE TABLE `t_dmp_bills_type_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_BILLS_TYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_bug definition

CREATE TABLE `t_dmp_bug` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FPROJECT` bigint NOT NULL DEFAULT '0',
  `FBUGTYPE` bigint NOT NULL DEFAULT '0',
  `FBUGDES` varchar(510) NOT NULL DEFAULT ' ',
  `FPIC` bigint NOT NULL DEFAULT '0',
  `FPRIORITY` bigint NOT NULL DEFAULT '0',
  `FDISCOVERY` varchar(100) NOT NULL DEFAULT ' ',
  `FTASK` bigint NOT NULL DEFAULT '0',
  `FDEVCOMPLETEDTIME` datetime DEFAULT NULL,
  `FVERIFICATIONDATE` datetime DEFAULT NULL,
  `FDISTRIBUTIONTIME` datetime DEFAULT NULL,
  `FRESTORER` bigint NOT NULL DEFAULT '0',
  `FVERIFIER` bigint NOT NULL DEFAULT '0',
  `FCLOUD` bigint NOT NULL DEFAULT '0',
  `FAPPLICATION` bigint NOT NULL DEFAULT '0',
  `FFIRSTMENU` bigint NOT NULL DEFAULT '0',
  `FSECONDMENU` bigint NOT NULL DEFAULT '0',
  `FAGING` bigint NOT NULL DEFAULT '0',
  `FOPERATIONSTEP` varchar(510) NOT NULL DEFAULT ' ',
  `FDATABASE` bigint NOT NULL DEFAULT '0',
  `FTESTITEM` bigint NOT NULL DEFAULT '0',
  `FDATAENV` varchar(100) NOT NULL DEFAULT ' ',
  `FPROJECTTEAM` bigint NOT NULL DEFAULT '0',
  `FBUGTITLE` varchar(100) NOT NULL DEFAULT ' ',
  `FROUTE` varchar(100) NOT NULL DEFAULT ' ',
  `FHANDLER` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_BUG_NUMBER` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_bug_type definition

CREATE TABLE `t_dmp_bug_type` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_BUG_TYPE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_bug_type_l definition

CREATE TABLE `t_dmp_bug_type_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_BUG_TYPE_L_LOCALID` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_database definition

CREATE TABLE `t_dmp_database` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_DATABASE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_database_l definition

CREATE TABLE `t_dmp_database_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_DATABASE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_lifecycle definition

CREATE TABLE `t_dmp_lifecycle` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_LIFECYCLE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_lifecycle_l definition

CREATE TABLE `t_dmp_lifecycle_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_LIFECYCLE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_lifecycle_stage definition

CREATE TABLE `t_dmp_lifecycle_stage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSTAGENAME` varchar(100) NOT NULL DEFAULT ' ',
  `FPRESTAGENAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_DMP_LIFECYCLE_STAGE_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_module definition

CREATE TABLE `t_dmp_module` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT '',
  `FSTATUS` varchar(30) NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FMANAGERID` bigint NOT NULL DEFAULT '0',
  `FPARENTMODULEID` bigint NOT NULL DEFAULT '0',
  `FMODULECODE` varchar(60) NOT NULL DEFAULT '',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  `FLEVELNUM` bigint NOT NULL DEFAULT '0',
  `FRELEVANCETEAM` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_MODULE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_module_l definition

CREATE TABLE `t_dmp_module_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_MODULE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_operator_log definition

CREATE TABLE `t_dmp_operator_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FACTION` varchar(100) NOT NULL DEFAULT ' ',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  `FRECEIVER` bigint NOT NULL DEFAULT '0',
  `FSTAGE` varchar(100) NOT NULL DEFAULT ' ',
  `FACTIONTYPE` varchar(2) NOT NULL DEFAULT ' ',
  `FSTAGETYPE` varchar(2) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_OPERATOR_LOG_BILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_personallot definition

CREATE TABLE `t_dmp_personallot` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPERSON` bigint NOT NULL DEFAULT '0',
  `FALLOTTIME` datetime DEFAULT NULL,
  `FROLE` bigint NOT NULL DEFAULT '0',
  `FREQUIRED` char(1) NOT NULL DEFAULT '0',
  `FPLANHOUR` decimal(5,2) NOT NULL DEFAULT '0.00',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_DMP_PERSONALLOT_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_priority definition

CREATE TABLE `t_dmp_priority` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_PRIORITY_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_priority_bug definition

CREATE TABLE `t_dmp_priority_bug` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_PRIORITY_BUG_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_priority_bug_l definition

CREATE TABLE `t_dmp_priority_bug_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_PRIORITY_BUG_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_priority_l definition

CREATE TABLE `t_dmp_priority_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_PRIORITY_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_product definition

CREATE TABLE `t_dmp_product` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  `FPRODUCTCODE` varchar(60) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_PROD_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_product_l definition

CREATE TABLE `t_dmp_product_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_PRODUCTL_ID` (`FID`,`FLOCALEID`),
  KEY `IDX_DMP_PRODUCT_L_ID` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_project_team definition

CREATE TABLE `t_dmp_project_team` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FMANAGERID` bigint NOT NULL DEFAULT '0',
  `FMEMBERNUM` bigint NOT NULL DEFAULT '0',
  `FMODULENUM` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_PROJECT_TEAM_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_project_team_l definition

CREATE TABLE `t_dmp_project_team_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_PROJECT_TEAM_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_projectteam definition

CREATE TABLE `t_dmp_projectteam` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTEAM` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_DMP_PROJECTTEAM_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_require definition

CREATE TABLE `t_dmp_require` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FREQUIREFROM` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FCLOUDID` bigint NOT NULL DEFAULT '0',
  `FAPPLICATIONID` bigint NOT NULL DEFAULT '0',
  `FTYPEID` bigint NOT NULL DEFAULT '0',
  `FPRIORITYID` bigint NOT NULL DEFAULT '0',
  `FEXPECTENDDATE` datetime DEFAULT NULL,
  `FPROJECTID` varchar(100) NOT NULL DEFAULT ' ',
  `FTASKID` varchar(100) NOT NULL DEFAULT ' ',
  `FREQUIREDESC` varchar(510) NOT NULL DEFAULT ' ',
  `FPROJECT` bigint NOT NULL DEFAULT '0',
  `FTASK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_REQUIRE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_require_l definition

CREATE TABLE `t_dmp_require_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_REQUIRE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_require_source definition

CREATE TABLE `t_dmp_require_source` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_REQUIRE_SOURCE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_require_source_l definition

CREATE TABLE `t_dmp_require_source_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_REQUIRE_SOURCE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_stage_role definition

CREATE TABLE `t_dmp_stage_role` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FROLEID` bigint NOT NULL DEFAULT '0',
  `FREQUIRED` varchar(60) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_DMP_STAGE_ROLE_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_task definition

CREATE TABLE `t_dmp_task` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDEMAND` bigint NOT NULL DEFAULT '0',
  `FPROJECT` bigint NOT NULL DEFAULT '0',
  `FTOTALDEFECTS` bigint NOT NULL DEFAULT '0',
  `FSECTIONSTART` datetime DEFAULT NULL,
  `FSECTIONEND` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(100) NOT NULL DEFAULT ' ',
  `FCLOUD` bigint NOT NULL DEFAULT '0',
  `FFUNCTION` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBILLSTATUSFIELD` varchar(30) NOT NULL DEFAULT ' ',
  `FGROUP` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FPRODUCT` bigint NOT NULL DEFAULT '0',
  `FTASKPLANHOUR` decimal(5,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_TASK_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_task_l definition

CREATE TABLE `t_dmp_task_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_TASK_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_task_lifecycle definition

CREATE TABLE `t_dmp_task_lifecycle` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FACTUALSTARTTIME` datetime DEFAULT NULL,
  `FACTUALENDTIME` datetime DEFAULT NULL,
  `FPLANSTARTTIME` datetime DEFAULT NULL,
  `FPLANENDTIME` datetime DEFAULT NULL,
  `FDEFECTS` bigint NOT NULL DEFAULT '0',
  `FSTAGENAME` varchar(100) NOT NULL DEFAULT ' ',
  `FWORKHOUR` decimal(5,2) NOT NULL DEFAULT '0.00',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_DMP_TASK_LIFECYCLE_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_team_module definition

CREATE TABLE `t_dmp_team_module` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMODULEID` bigint NOT NULL DEFAULT '0',
  `FMODULEMANGERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_DMP_TEAM_MODULE_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_team_role definition

CREATE TABLE `t_dmp_team_role` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FROLEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_DMP_TEAM_ROLE_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_team_user definition

CREATE TABLE `t_dmp_team_user` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_DMP_TEAM_USER_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_team_user_role definition

CREATE TABLE `t_dmp_team_user_role` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_TEAM_USER_ROLE_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_testing_item definition

CREATE TABLE `t_dmp_testing_item` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_TESTING_ITEM_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_testing_item_l definition

CREATE TABLE `t_dmp_testing_item_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_TESTING_ITEM_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_user_role definition

CREATE TABLE `t_dmp_user_role` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_USER_ROLE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_user_role_l definition

CREATE TABLE `t_dmp_user_role_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_USER_ROLE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_version definition

CREATE TABLE `t_dmp_version` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTID` bigint NOT NULL DEFAULT '0',
  `FSECVERSIONNO` bigint NOT NULL DEFAULT '0',
  `FFIXVERSIONNO` bigint NOT NULL DEFAULT '0',
  `FMAINVERSIONNO` bigint NOT NULL DEFAULT '0',
  `FRELEASEDATE` datetime DEFAULT NULL,
  `FDESC` varchar(510) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DMP_VERSION_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_dmp_version_l definition

CREATE TABLE `t_dmp_version_l` (
  `FPKID` varchar(18) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_DMP_VERSION_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_de.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_de.t_wf_jobrecord definition

CREATE TABLE `t_wf_jobrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCKEXPTIME` datetime DEFAULT NULL,
  `FLOCKOWNERID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FRETRIES` int NOT NULL DEFAULT '3',
  `FEXCEPTIONMSG` longtext COLLATE utf8mb4_unicode_ci,
  `FDUEDATE` datetime DEFAULT NULL,
  `FREPEAT` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERCFG` longtext COLLATE utf8mb4_unicode_ci,
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FExecutor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUCCESS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fendtime` datetime DEFAULT NULL,
  `fduration` bigint NOT NULL DEFAULT '0',
  `fstate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROOTJOBID` bigint NOT NULL DEFAULT '0',
  `FBIZTRACENO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_JOBRECORD_LOCKSTATE` (`FLOCKEXPTIME`,`fstate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_de.tk_crrc_fj definition

CREATE TABLE `tk_crrc_fj` (
  `FPKID` bigint NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FBasedataId` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_de.tk_crrc_total_table1 definition

CREATE TABLE `tk_crrc_total_table1` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_crrc_modifier` bigint DEFAULT NULL,
  `fk_crrc_auditdate` datetime DEFAULT NULL,
  `fk_crrc_createtime` datetime DEFAULT NULL,
  `fk_crrc_creator` bigint DEFAULT NULL,
  `fk_crrc_modifytime` datetime DEFAULT NULL,
  `fk_crrc_data_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_purpose` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_auditor1` bigint DEFAULT NULL,
  `fk_crrc_fs` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_department` bigint DEFAULT NULL,
  `fk_crrc_leader` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_de.tk_crrc_wuhan_contract definition

CREATE TABLE `tk_crrc_wuhan_contract` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_crrc_modify_time` datetime DEFAULT NULL,
  `fk_crrc_contract_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_combofield3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_company_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_authorization` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_contract_class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_contract_tax` decimal(23,10) DEFAULT NULL,
  `fk_crrc_other_instruction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_textfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_contract_amount` decimal(23,10) DEFAULT NULL,
  `fk_crrc_datefield` datetime DEFAULT NULL,
  `fk_crrc_datefield1` datetime DEFAULT NULL,
  `fk_crrc_contract_types` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_contract_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
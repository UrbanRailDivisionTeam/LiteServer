USE crrc_cpcfias;

-- crrc_cpcfias.t_eba_benchindicator definition

CREATE TABLE `t_eba_benchindicator` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FUNIT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3',
  `FFORMULAEXPRESSION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMULAEXPRESSION_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPLAIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPLAIN_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FFORMULA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMULA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FISSYSTEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EBA_BENCHINDICATOR` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_benchindicator_l definition

CREATE TABLE `t_eba_benchindicator_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EBA_BENCHINDICATOR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_benchindicator_r3 definition

CREATE TABLE `t_eba_benchindicator_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_benchindicatorcl_r3 definition

CREATE TABLE `t_eba_benchindicatorcl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_benchindicatorclass definition

CREATE TABLE `t_eba_benchindicatorclass` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISSYSTEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORDER` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EBA_BENCHINDICATORCLASS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_benchindicatorclass_l definition

CREATE TABLE `t_eba_benchindicatorclass_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EBA_BENCHINDICATORCLASS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_benchmark_schema definition

CREATE TABLE `t_eba_benchmark_schema` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FACCOUNT_ORGANIZATION` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNT_TABLE` bigint NOT NULL DEFAULT '0',
  `FPERIOD_TYPE` bigint NOT NULL DEFAULT '0',
  `FBOOK_TYPE` bigint NOT NULL DEFAULT '0',
  `FBENCHMARK_COMPANY` bigint NOT NULL DEFAULT '0',
  `FVIEWID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EBA_BM_SCH_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_benchmark_schema_l definition

CREATE TABLE `t_eba_benchmark_schema_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EBA_BM_SCH_L_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_benchmark_schema_r3 definition

CREATE TABLE `t_eba_benchmark_schema_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_bizindicator definition

CREATE TABLE `t_eba_bizindicator` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FISSYSTEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSOURCEAPPLICATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSINDICATOR` bigint NOT NULL DEFAULT '0',
  `FBENCHMARKLIBRARY` bigint NOT NULL DEFAULT '0',
  `FUNIT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAININDICATOR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EBA_BIZINDICATOR` (`FUSEORGID`,`FENABLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_bizindicator_l definition

CREATE TABLE `t_eba_bizindicator_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EBA_BIZINDICATOR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_bizindicator_r3 definition

CREATE TABLE `t_eba_bizindicator_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_bizindicatorgrou_r3 definition

CREATE TABLE `t_eba_bizindicatorgrou_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_bizindicatorgroup definition

CREATE TABLE `t_eba_bizindicatorgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISSYSTEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORDER` int NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EBA_BIZINDICATORGROUP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_bizindicatorgroup_l definition

CREATE TABLE `t_eba_bizindicatorgroup_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EBA_BIZINDICATORGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_industrycategory definition

CREATE TABLE `t_eba_industrycategory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FDATASOURCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EBA_INDUSTRY_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_industrycategory_l definition

CREATE TABLE `t_eba_industrycategory_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  UNIQUE KEY `IDX_T_EBA_INDUSTRY_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_industrycategory_r3 definition

CREATE TABLE `t_eba_industrycategory_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_mark_schema_detail definition

CREATE TABLE `t_eba_mark_schema_detail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDEVIATION_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERCENTAGE_OR_VALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FICON_REGION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FINDICATOR` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EBA_MK_SCH_D_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_markcompany definition

CREATE TABLE `t_eba_markcompany` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCURRENCYTYPE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDATASOURCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSYSTEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EBA_MKCOM_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_markcompany_l definition

CREATE TABLE `t_eba_markcompany_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  UNIQUE KEY `IDX_EBA_MKCOM_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_markcompany_r3 definition

CREATE TABLE `t_eba_markcompany_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_markdata definition

CREATE TABLE `t_eba_markdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMARKCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FBENCHMARKID` bigint NOT NULL DEFAULT '0',
  `FREPORTPERIOD` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTDATE` datetime DEFAULT NULL,
  `FREPORTDATA` decimal(23,8) NOT NULL DEFAULT '0.00000000',
  `FDATASOURCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSYSTEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EBA_MARKDATA_COM` (`FMARKCOMPANYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_markdata_l definition

CREATE TABLE `t_eba_markdata_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  UNIQUE KEY `IDX_EBA_MARKDATA_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_eba_markdata_r3 definition

CREATE TABLE `t_eba_markdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_faf_cmdimmapping definition

CREATE TABLE `t_faf_cmdimmapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEM` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FCMMODEL` bigint NOT NULL DEFAULT '0',
  `FCMDIMENSION` bigint NOT NULL DEFAULT '0',
  `FCMDIMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMDIMNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERMODEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_FAF_CMDIMMAPPING_1` (`FDIMENSION`),
  KEY `IDX_FAF_CMDIMMAPPING_2` (`FCMMODEL`,`FCMDIMENSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_faf_cmmeasuremapping definition

CREATE TABLE `t_faf_cmmeasuremapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEM` bigint NOT NULL DEFAULT '0',
  `FMEASURE` bigint NOT NULL DEFAULT '0',
  `FCMMODEL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_FAF_CMMEASUREMAPPING_1` (`FMEASURE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_faf_cmmsmapentry definition

CREATE TABLE `t_faf_cmmsmapentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCMDIMENSION` bigint NOT NULL DEFAULT '0',
  `FCMDIMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMDIMNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERMODEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FMEMBERNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_FAF_CMMSMAPENTRY_1` (`FID`),
  KEY `IDX_FAF_CMMSMAPENTRY_2` (`FCMDIMENSION`,`FMEMBERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_faf_dsfilterapi definition

CREATE TABLE `t_faf_dsfilterapi` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBCMDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FTEXTFILTER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXTFILTER_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_FAF_DSFILTERAPI_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_faf_epmdimmapping definition

CREATE TABLE `t_faf_epmdimmapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEM` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FEPMMODEL` bigint NOT NULL DEFAULT '0',
  `FEPMDIMENSION` bigint NOT NULL DEFAULT '0',
  `FEPMDIMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEPMDIMNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERMODEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_FAF_EPMDIMMAPPING_1` (`FDIMENSION`),
  KEY `IDX_FAF_EPMDIMMAPPING_2` (`FEPMMODEL`,`FEPMDIMENSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_faf_epmmeasuremapping definition

CREATE TABLE `t_faf_epmmeasuremapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEM` bigint NOT NULL DEFAULT '0',
  `FEPMMODEL` bigint NOT NULL DEFAULT '0',
  `FMEASURE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_FAF_EPMMEASUREMAPPING_1` (`FMEASURE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_faf_epmmsmapentry definition

CREATE TABLE `t_faf_epmmsmapentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEPMDIMENSION` bigint NOT NULL DEFAULT '0',
  `FEPMDIMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEPMDIMNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERMODEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FMEMBERNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_FAF_EPMMSMAPENTRY_1` (`FID`),
  KEY `IDX_FAF_EPMMSMAPENTRY_2` (`FEPMDIMENSION`,`FMEMBERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_faf_modelupgradedetail definition

CREATE TABLE `t_faf_modelupgradedetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FANAMODEL` bigint NOT NULL DEFAULT '0',
  `FSUMMARYTABLENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILTABLENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPGRADECOUNTINPURPOSE` int NOT NULL DEFAULT '0',
  `FUPGRADECOUNTINFACT` int NOT NULL DEFAULT '0',
  `FUPGRADESTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FERRORMESSAGE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_FAF_MODELUPGRADEDETAIL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_faf_modelupgraderecord definition

CREATE TABLE `t_faf_modelupgraderecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FANASYSTEM` bigint NOT NULL DEFAULT '0',
  `FLASTEDTASKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_FAF_MODELUPGRADERECORD` (`FANASYSTEM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_faf_olapfilter definition

CREATE TABLE `t_faf_olapfilter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONDITION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONVAL` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONTEXT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FLOGIC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_OLAPFILTER_DIMENSIONID` (`FDIMENSIONID`),
  KEY `IDX_OLAPFILTER_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_account definition

CREATE TABLE `t_pa_account` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FPARENT` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_ACCOUNT_BAS` (`FSTATUS`,`FENABLE`),
  KEY `IDX_PA_ACCOUNT_SEACHAR` (`FNUMBER`),
  KEY `IDX_T_PA_ACCOUNT_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PA_ACCOUNT_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_account_bit definition

CREATE TABLE `t_pa_account_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_account_l definition

CREATE TABLE `t_pa_account_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_ACCOUNT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_account_r3 definition

CREATE TABLE `t_pa_account_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_account_u definition

CREATE TABLE `t_pa_account_u` (
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDATAID`,`FUSEORGID`),
  KEY `IDX_PA_ACCOUNT_U` (`FCREATEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_accountexc definition

CREATE TABLE `t_pa_accountexc` (
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDATAID`,`FUSEORGID`),
  KEY `IDX_PA_ACCOUNTEXC_UO` (`FUSEORGID`),
  KEY `IDX_T_PA_ACCOUNTEXC_UO` (`FUSEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_accounttype definition

CREATE TABLE `t_pa_accounttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_ACCOUNTTYPE_FILTER` (`FSTATUS`,`FENABLE`),
  KEY `IDX_PA_ACCOUNTTYPE_SEARCH` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_accounttype_l definition

CREATE TABLE `t_pa_accounttype_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_ACCOUNTTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_accounttype_r3 definition

CREATE TABLE `t_pa_accounttype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_accountusereg definition

CREATE TABLE `t_pa_accountusereg` (
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISASSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FASSIGNORGID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUSEORGID`,`FDATAID`),
  KEY `IDX_PA_ACCOUNTUSEREG_FADMID` (`FADMINORGID`),
  KEY `IDX_T_PA_ACCOUNTUSEREG_D` (`FDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_accperiodlock definition

CREATE TABLE `t_pa_accperiodlock` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODELID` bigint NOT NULL DEFAULT '0',
  `FDATE` datetime DEFAULT NULL,
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FPERIODTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FISOPEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_ACCPERIODLOCK` (`FANALYSISSYSTEMID`,`FANALYSISMODELID`,`FORGID`,`FPERIODID`,`FISOPEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_accperiodlock_l definition

CREATE TABLE `t_pa_accperiodlock_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_ACCPERIODLOCK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_accperiodlock_r3 definition

CREATE TABLE `t_pa_accperiodlock_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_adexecdetail definition

CREATE TABLE `t_pa_adexecdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXECUTION_LOGID` bigint NOT NULL DEFAULT '0',
  `FSOURCE_ID` bigint NOT NULL DEFAULT '0',
  `FTARGET_ID` bigint NOT NULL DEFAULT '0',
  `FAD_EXECUTION_LOGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_ADEXECDETAIL_1` (`FEXECUTION_LOGID`),
  KEY `IDX_PA_ADEXECDETAIL_2` (`FAD_EXECUTION_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_adexeclog definition

CREATE TABLE `t_pa_adexeclog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXECUTION_LOGID` bigint NOT NULL DEFAULT '0',
  `FEXECUTION_STATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXECUTION_TIME` datetime DEFAULT NULL,
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FREMARK_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FAD_ID` bigint NOT NULL DEFAULT '0',
  `FDETAILTIME` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_ADEXECLOG_1` (`FEXECUTION_LOGID`),
  KEY `IDX_PA_ADEXECLOG_2` (`FAD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_analysismodel definition

CREATE TABLE `t_pa_analysismodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANALYSIS_SYSTEM` bigint NOT NULL DEFAULT '0',
  `FTABLENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABLENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODTYPEID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_NUMBER_SYSTEM` (`FNUMBER`,`FANALYSIS_SYSTEM`),
  KEY `IDX_PA_ANALYSISMODEL` (`FSTATUS`,`FENABLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_analysismodel_l definition

CREATE TABLE `t_pa_analysismodel_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_ANALYSISMODEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_analysismodel_r3 definition

CREATE TABLE `t_pa_analysismodel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_analysisperiod definition

CREATE TABLE `t_pa_analysisperiod` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FISADJUST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FHIERARCHICAL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FYMONTH` int NOT NULL DEFAULT '0',
  `FYQUARTER` int NOT NULL DEFAULT '0',
  `FMONTH` int NOT NULL DEFAULT '0',
  `FSEMIANNUAL` int NOT NULL DEFAULT '0',
  `FYEAR` int NOT NULL DEFAULT '0',
  `FQUARTER` int NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_ANALYSISPERIOD_PARENT` (`FPARENTID`),
  KEY `IDX_PA_ANALYSISPERIOD_YM` (`FYMONTH`),
  KEY `IDX_PA_ANALYSISPERIOD_YQ` (`FYQUARTER`),
  KEY `IDX_PA_ANALYSISPERIOD_Y` (`FYEAR`),
  KEY `IDX_PA_ANALYSISPERIOD_LONGN` (`FLONGNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_analysisperiod_l definition

CREATE TABLE `t_pa_analysisperiod_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `PA_ANALYSISPERIOD_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_analysisperiod_r3 definition

CREATE TABLE `t_pa_analysisperiod_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_anasystemsetting definition

CREATE TABLE `t_pa_anasystemsetting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMODULERANGE` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIBE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_PA_ANALYSIS_NK` (`FNUMBER`),
  KEY `IDX_PA_ANALYSIS_MK` (`FMODULERANGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_anasystemsetting_l definition

CREATE TABLE `t_pa_anasystemsetting_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIBE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_ANASYSTEMSETTING_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_anasystemsetting_r3 definition

CREATE TABLE `t_pa_anasystemsetting_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessplan definition

CREATE TABLE `t_pa_businessplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODELID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULECOUNT` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_BUSINESSPLAN` (`FNUMBER`),
  KEY `IDX_T_PA_BUSINESSPLAN_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PA_BUSINESSPLAN_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessplan_bit definition

CREATE TABLE `t_pa_businessplan_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessplan_l definition

CREATE TABLE `t_pa_businessplan_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_PLAN_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessplan_r3 definition

CREATE TABLE `t_pa_businessplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessplan_u definition

CREATE TABLE `t_pa_businessplan_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_BUSINESSPLAN_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessplanexc definition

CREATE TABLE `t_pa_businessplanexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_BUSINESSPLANEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessplanusereg definition

CREATE TABLE `t_pa_businessplanusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_BUSINESSPLANUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessrule definition

CREATE TABLE `t_pa_businessrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODELID` bigint NOT NULL DEFAULT '0',
  `FPERIODTYPE` bigint NOT NULL DEFAULT '0',
  `FSTARTPERIODID` bigint NOT NULL DEFAULT '0',
  `FENDPERIODID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTTYPEID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTFILTER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTFILTER_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODBASETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_BUSINESS_RULE` (`FNUMBER`),
  KEY `IDX_T_PA_BUSINESSRULE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PA_BUSINESSRULE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessrule_bit definition

CREATE TABLE `t_pa_businessrule_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessrule_l definition

CREATE TABLE `t_pa_businessrule_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PA_BUSINESS_RULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessrule_r3 definition

CREATE TABLE `t_pa_businessrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessrule_u definition

CREATE TABLE `t_pa_businessrule_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_BUSINESSRULE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessruleexc definition

CREATE TABLE `t_pa_businessruleexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_BUSINESSRULEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_businessruleusereg definition

CREATE TABLE `t_pa_businessruleusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_BUSINESSRULEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_busiplanruleentry definition

CREATE TABLE `t_pa_busiplanruleentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRULENUMBER` bigint NOT NULL DEFAULT '0',
  `FRULEDESC` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_BUSIPLAN_ENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_busirulestepentry definition

CREATE TABLE `t_pa_busirulestepentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FHANDLETYPE` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTEPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDERIVATIONMODELID` bigint NOT NULL DEFAULT '0',
  `FSHAREMODELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_BUSI_RULE_STEPENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_columnentryconfig definition

CREATE TABLE `t_pa_columnentryconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBERNAME` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FMEMBERID` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERNUMBER` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMEMBERNAMEENCODE` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_COLUMNENTRYCONFIG_1` (`FDIMENSION`),
  KEY `IDX_COLUMNENTRYCONFIG_2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dataadjust definition

CREATE TABLE `t_pa_dataadjust` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODELID` bigint NOT NULL DEFAULT '0',
  `FPERIODTYPE` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FADJUSTDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADJUSTSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADJUSTJSON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADJUSTJSON_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FPERIODBASETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_DATAADJUST` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_datasourceconfig definition

CREATE TABLE `t_pa_datasourceconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDATASOURCE_TYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENTITY_NUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTBOOKSTYPE` bigint NOT NULL DEFAULT '0',
  `FENTITYFILTER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYFILTER_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FISSYSTEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPARAMSRCNAME` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMSRC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMSRC_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSYNCTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_PA_DATASOURCE_CONFIG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_datasourceconfig_l definition

CREATE TABLE `t_pa_datasourceconfig_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_DATASOURCE_CONFIG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_datasourceconfig_r3 definition

CREATE TABLE `t_pa_datasourceconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationmode_mr_s definition

CREATE TABLE `t_pa_derivationmode_mr_s` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSOURCEFIELD` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_DERIVATIONMODE_MR_S` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationmode_mr_t definition

CREATE TABLE `t_pa_derivationmode_mr_t` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FTARGETFIELD` bigint NOT NULL DEFAULT '0',
  `FDEFAULTTEXT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEFAULTTEXTE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPEBASEDATA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPEASSISTANT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_DERIVATIONMODE_MR_T` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationmode_mt_s definition

CREATE TABLE `t_pa_derivationmode_mt_s` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FMTSOURCE` bigint NOT NULL DEFAULT '0',
  `FMTSOURCEFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTSOURCEFIELDNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTMSOURCEFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTMSOURCEFIELDNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTSOURCEFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTMSOURCEFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_DERIVATIONMODE_MT_S` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationmode_mt_t definition

CREATE TABLE `t_pa_derivationmode_mt_t` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FMTTARGET` bigint NOT NULL DEFAULT '0',
  `FMTTARGETFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTTARGETFIELDNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTMTARGETFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTMTARGETFIELDNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTMDEFAULTTEXT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTMDEFAULTTEXTE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTMFIELDTYPEBASEDATA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTMFIELDTYPEASSISTANT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTTARGETFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMTMTARGETFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_MT_T_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationmode_send definition

CREATE TABLE `t_pa_derivationmode_send` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSENDDIMENSION` bigint NOT NULL DEFAULT '0',
  `FCOMBOFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONTYPEBASEDATA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONTYPEASSISTANT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONTEXT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SEND_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationrule definition

CREATE TABLE `t_pa_derivationrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODELID` bigint NOT NULL DEFAULT '0',
  `FDERIVATIONMODE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FMAPPINGMAP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAPPINGMAPTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAPPINGRELATIONSHIPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_DERIVATION_RULE` (`FANALYSISMODELID`),
  KEY `IDX_T_PA_DERIVATIONRULE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PA_DERIVATIONRULE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationrule_bit definition

CREATE TABLE `t_pa_derivationrule_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationrule_l definition

CREATE TABLE `t_pa_derivationrule_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_DERIVATIONRULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationrule_r3 definition

CREATE TABLE `t_pa_derivationrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationrule_u definition

CREATE TABLE `t_pa_derivationrule_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_DERIVATIONRULE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationruleexc definition

CREATE TABLE `t_pa_derivationruleexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_DERIVATIONRULEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_derivationruleusereg definition

CREATE TABLE `t_pa_derivationruleusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_DERIVATIONRULEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_detailsummarymapping definition

CREATE TABLE `t_pa_detailsummarymapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODEL` bigint NOT NULL DEFAULT '0',
  `FSUMMARYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCREATETIMESTAMP` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_SUMMARYDETAIL` (`FANALYSISMODEL`,`FSUMMARYID`,`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dimension definition

CREATE TABLE `t_pa_dimension` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDIMENSIONSRCID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTSOURCEID` bigint NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPEFIELD` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPTYPE` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FASSTACTTYPE` bigint NOT NULL DEFAULT '0',
  `FSYSTEMSOURCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_PA_DIMENSION_NBSYS` (`FNUMBER`,`FSYSTEMID`),
  KEY `IDX_PA_DIMENSION` (`FSYSTEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dimension_l definition

CREATE TABLE `t_pa_dimension_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_DIMENSION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dimension_r3 definition

CREATE TABLE `t_pa_dimension_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dimensionentry definition

CREATE TABLE `t_pa_dimensionentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSION_ID` bigint NOT NULL DEFAULT '0',
  `FFIELD_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELD_NUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELD_NUMBER_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FNECESSITY_DIM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_DIMENSION_ENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dimensionentryentity definition

CREATE TABLE `t_pa_dimensionentryentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_DIMENSIONENTRYENTITY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dimensionenums definition

CREATE TABLE `t_pa_dimensionenums` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_DIMENSIONENUMS_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dimensionmapentry definition

CREATE TABLE `t_pa_dimensionmapentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONFIELD` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMDEFAULTVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONSELECTTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMAPPINGRELATIONSHIP` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_DIMENSIONMAPENTRY` (`FDIMENSIONFIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dsanalysisdata definition

CREATE TABLE `t_pa_dsanalysisdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXTID` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHID` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA1` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA2` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA3` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA4` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA5` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA6` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA7` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA8` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA9` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA10` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA11` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA12` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA13` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA14` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA15` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA16` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA17` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA18` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA19` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA20` bigint NOT NULL DEFAULT '0',
  `FTEXT1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT3` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT4` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT5` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT6` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT7` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT8` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT9` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT10` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECIMAL1` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL2` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL3` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL4` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL5` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL6` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL7` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL8` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL9` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL10` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `UK_PA_DSANALYSISDATA` (`FEXTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dscurrmaindata definition

CREATE TABLE `t_pa_dscurrmaindata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_DSCURRMAINDATA` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dsorgmaindata definition

CREATE TABLE `t_pa_dsorgmaindata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_DSORGMAINDATA` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dstempdata definition

CREATE TABLE `t_pa_dstempdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXTID` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHID` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORG` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNT` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIOD` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA1` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA2` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA3` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA4` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA5` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA6` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA7` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA8` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA9` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA10` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA11` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA12` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA13` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA14` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA15` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA16` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA17` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA18` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA19` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTANTDATA20` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT3` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT4` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT5` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT6` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT7` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT8` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT9` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT10` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECIMAL1` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL2` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL3` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL4` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL5` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL6` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL7` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL8` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL9` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL10` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `UK_T_PA_DSTEMPDATA_EXTID` (`FEXTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_dsvoucherdata definition

CREATE TABLE `t_pa_dsvoucherdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXTID` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHID` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FACCOUNT` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA1` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA2` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA3` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA4` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA5` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA6` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA7` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA8` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA9` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA10` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA11` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA12` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA13` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA14` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA15` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA16` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA17` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA18` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA19` bigint NOT NULL DEFAULT '0',
  `FASSISTANTDATA20` bigint NOT NULL DEFAULT '0',
  `FTEXT1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT3` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT4` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT5` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT6` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT7` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT8` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT9` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT10` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECIMAL1` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL2` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL3` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL4` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL5` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL6` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL7` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL8` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL9` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDECIMAL10` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATETIME` datetime DEFAULT NULL,
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCUSTOMERID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FBORROWERID` bigint NOT NULL DEFAULT '0',
  `FCOSTDEPTID` bigint NOT NULL DEFAULT '0',
  `FCOSTCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FEXPENSEITEMEDITID` bigint NOT NULL DEFAULT '0',
  `FPAYEEID` bigint NOT NULL DEFAULT '0',
  `FCOSTCENTERID` bigint NOT NULL DEFAULT '0',
  `FTRIPEXPENSEITEMID` bigint NOT NULL DEFAULT '0',
  `FASSETCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FUSESTATUSID` bigint NOT NULL DEFAULT '0',
  `FINVSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FFLEXAUXPROPID` bigint NOT NULL DEFAULT '0',
  `FLOTID` bigint NOT NULL DEFAULT '0',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACEID` bigint NOT NULL DEFAULT '0',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FPAYABLESID` bigint NOT NULL DEFAULT '0',
  `FRECEIVABLESID` bigint NOT NULL DEFAULT '0',
  `FFUNDFLOWITEMID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTBANKSID` bigint NOT NULL DEFAULT '0',
  `FRECEIVINGBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FVOUCHERTYPEID` bigint NOT NULL DEFAULT '0',
  `FPROJECT2ID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `UK_PA_DSVOUCHERDATA` (`FEXTID`),
  KEY `IDX_PA_ORG_PERIOD` (`FORG`,`FPERIOD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_executionlog definition

CREATE TABLE `t_pa_executionlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANALYSIS_SYSTEM` bigint NOT NULL DEFAULT '0',
  `FANALYSIS_MODEL` bigint NOT NULL DEFAULT '0',
  `FORGFIELD` bigint NOT NULL DEFAULT '0',
  `FBUSINESS_PLAN` bigint NOT NULL DEFAULT '0',
  `FBUSINESS_RULE` bigint NOT NULL DEFAULT '0',
  `FEXECUTION_TIME` datetime DEFAULT NULL,
  `FDETAILTIME` bigint NOT NULL DEFAULT '0',
  `FEXECUTION_STATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXECUTION_MODE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXECUTION_TYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FITEMCLASSTYPEFIELD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTPERIOD` bigint NOT NULL DEFAULT '0',
  `FENDPERIOD` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FREMARK_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_EXECUTION_LOG_1` (`FANALYSIS_SYSTEM`,`FANALYSIS_MODEL`,`FORGFIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindex definition

CREATE TABLE `t_pa_fasindex` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FCATEGORY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGGREGATE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAGGMEASUREID` bigint NOT NULL DEFAULT '0',
  `FPRECISION` int NOT NULL DEFAULT '20',
  `FINDEXFORMULA` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEXFORMULADESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONCONDITION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONCONDITION_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FPARENT` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FISSYSTEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FUNITBASEDATA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FUNITCATEGORY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_T_PA_FASINDEX_NUMER` (`FNUMBER`,`FSYSTEMID`),
  UNIQUE KEY `IDX_T_PA_FASINDEX_NAME` (`FNAME`,`FSYSTEMID`),
  KEY `IDX_T_PA_FASINDEX_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PA_FASINDEX_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindex_bit definition

CREATE TABLE `t_pa_fasindex_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindex_defgroup definition

CREATE TABLE `t_pa_fasindex_defgroup` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_FASINDEX_FORMULAARGS_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindex_formulaargs definition

CREATE TABLE `t_pa_fasindex_formulaargs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PA_FASINDEX_FORMULAARGS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindex_l definition

CREATE TABLE `t_pa_fasindex_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_FASINDEX_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindex_r3 definition

CREATE TABLE `t_pa_fasindex_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindex_u definition

CREATE TABLE `t_pa_fasindex_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_FASINDEX_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindexexc definition

CREATE TABLE `t_pa_fasindexexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_FASINDEXEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindexgroup definition

CREATE TABLE `t_pa_fasindexgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '1',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_T_PA_FASINDEXGROUP_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindexgroup_l definition

CREATE TABLE `t_pa_fasindexgroup_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_FASINDEXGROUP_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindexgroup_r3 definition

CREATE TABLE `t_pa_fasindexgroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_fasindexusereg definition

CREATE TABLE `t_pa_fasindexusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_FASINDEXUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_formulasetting definition

CREATE TABLE `t_pa_formulasetting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLEAFFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHOWFORM` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_FORMULASTING_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_formulasetting_l definition

CREATE TABLE `t_pa_formulasetting_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_FORMULARSETING_L_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_formulasetting_r3 definition

CREATE TABLE `t_pa_formulasetting_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_incomedefine definition

CREATE TABLE `t_pa_incomedefine` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEM` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODEL` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FMEASURE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_INCOMEDEFINE_2` (`FNAME`),
  KEY `IDX_PA_INCOMEDEFINE_1` (`FNUMBER`,`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_incomedefine_l definition

CREATE TABLE `t_pa_incomedefine_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_INCOMEDEFINE_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_incomedefine_r3 definition

CREATE TABLE `t_pa_incomedefine_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_incomedefinecol definition

CREATE TABLE `t_pa_incomedefinecol` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOLDIMENSION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_INCOMEDIFINECOL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_incomedefinerow definition

CREATE TABLE `t_pa_incomedefinerow` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREPORTITEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTEGERFIELD` int NOT NULL DEFAULT '0',
  `FDSEQ` int NOT NULL DEFAULT '0',
  `FCALCULATIONRULE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALCULATIONRULE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCALCULATIONDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALCULATIONDESC_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_INCOMEDEFINEROW` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_mappingentry definition

CREATE TABLE `t_pa_mappingentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSOURCEDIMCRC` bigint NOT NULL DEFAULT '0',
  `FSOURCEDIMTEXT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETDIMTEXT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_MAPPINGENTRY_FK` (`FID`),
  KEY `IDX_PA_MAPPINGENTRY_CRCK` (`FSOURCEDIMCRC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_mappingrelationsh_r3 definition

CREATE TABLE `t_pa_mappingrelationsh_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_mappingrelationship definition

CREATE TABLE `t_pa_mappingrelationship` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FANASYSTEM` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_PA_MAPPING_RELATION_NK` (`FNUMBER`,`FANASYSTEM`),
  KEY `IDX_PA_MAPPINGENTRY_SK` (`FANASYSTEM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_mappingrelationship_l definition

CREATE TABLE `t_pa_mappingrelationship_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_MAPPING_RELATIONSHIP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_measure definition

CREATE TABLE `t_pa_measure` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FMEASURETYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAGGREGATIONTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMEASUREID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONATTR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONATTRNB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSITUATIONTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSYSTEMSOURCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_PA_MEASURE_NBSYS` (`FNUMBER`,`FSYSTEMID`),
  KEY `IDX_PA_MEASURE` (`FSYSTEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_measure_l definition

CREATE TABLE `t_pa_measure_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_MEASURE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_measure_r3 definition

CREATE TABLE `t_pa_measure_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_measureentry definition

CREATE TABLE `t_pa_measureentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEASURE_ID` bigint NOT NULL DEFAULT '0',
  `FMEASURE_FIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEASURE_FIELDNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_MEASURE_ENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_measureentryconfig definition

CREATE TABLE `t_pa_measureentryconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSHOWORDER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_MEASUREENTRYCONFIG_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_measuremapentry definition

CREATE TABLE `t_pa_measuremapentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEASUREID` bigint NOT NULL DEFAULT '0',
  `FMEASUREFIELD` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEASUREDEFAULTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONDITIONDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONDITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONDITION_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSELECTTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDIMMEASUREFIELD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_MEASUREMAPENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_offexecdetail definition

CREATE TABLE `t_pa_offexecdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXECUTION_LOGID` bigint NOT NULL DEFAULT '0',
  `FSOURCE_ID` bigint NOT NULL DEFAULT '0',
  `FTARGET_ID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_OFFEXECDETAIL_1` (`FEXECUTION_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_paramgroup definition

CREATE TABLE `t_pa_paramgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PARAMGROUP_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_paramgroup_l definition

CREATE TABLE `t_pa_paramgroup_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PARAMGROUPL_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_paramgroup_r3 definition

CREATE TABLE `t_pa_paramgroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_paramtemplate definition

CREATE TABLE `t_pa_paramtemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FPLUGINNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TEMPLATE_GROUP` (`FGROUPID`),
  KEY `IDX_PA_TEMPLATE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_paramtemplate_l definition

CREATE TABLE `t_pa_paramtemplate_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TEMPLATEL_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_paramtemplate_r3 definition

CREATE TABLE `t_pa_paramtemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_paramtemplateentry definition

CREATE TABLE `t_pa_paramtemplateentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARAMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOBJECTTYPEID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINPUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFORMID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCAPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELYPARAMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQUESTTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFILTER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEFAULTVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TEMPLATEENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportdefinition definition

CREATE TABLE `t_pa_reportdefinition` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FANALYSIS_MODEL` bigint NOT NULL DEFAULT '0',
  `FPUBLISHTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_REPORTDEFINITION_1` (`FANALYSIS_MODEL`),
  KEY `IDX_REPORTDEFINITION_2` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportdefinition_l definition

CREATE TABLE `t_pa_reportdefinition_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_REPORTDEFINITION_L_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportdefinition_r3 definition

CREATE TABLE `t_pa_reportdefinition_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportitem definition

CREATE TABLE `t_pa_reportitem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FCOMPTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFORMULA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMULA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FPARENT` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FFORMULADESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMULADESC_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FFORMULACOM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMULACOM_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_REPORTITEM_NGC` (`FNUMBER`,`FGROUPID`,`FCOMPTYPE`),
  KEY `IDX_PA_REPORTITEM_GC` (`FGROUPID`,`FCOMPTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportitem_dep definition

CREATE TABLE `t_pa_reportitem_dep` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FITEMNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_REPORTDEP_1` (`FID`),
  KEY `IDX_PA_REPORTDEP_2` (`FITEMNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportitem_l definition

CREATE TABLE `t_pa_reportitem_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_REPORTITEM_L_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportitem_r3 definition

CREATE TABLE `t_pa_reportitem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportitemtype definition

CREATE TABLE `t_pa_reportitemtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_REPORTSHOW_DIM` (`FDIMENSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportitemtype_l definition

CREATE TABLE `t_pa_reportitemtype_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_REPORTITEMTYPE_L_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportitemtype_r3 definition

CREATE TABLE `t_pa_reportitemtype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportmeasuresconfig definition

CREATE TABLE `t_pa_reportmeasuresconfig` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_REPORTMEASURESCONFIG_1` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportpermrole definition

CREATE TABLE `t_pa_reportpermrole` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_REPORTPERMROLE_1` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_reportpermuser definition

CREATE TABLE `t_pa_reportpermuser` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_REPORTPERMUSER_1` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_resultadjust definition

CREATE TABLE `t_pa_resultadjust` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FADJUSTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_RESULTADJUST_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_resultentry definition

CREATE TABLE `t_pa_resultentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRY_BUSINESSRULE` bigint NOT NULL DEFAULT '0',
  `FSTEPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRY_EXECUTIONTIME` datetime DEFAULT NULL,
  `FENTRY_EXECUTIONSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRULE_ID` bigint NOT NULL DEFAULT '0',
  `FENTRY_WRITEOFFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FENTRY_BUSINESSPLAN` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_RESULTENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_rowentryconfig definition

CREATE TABLE `t_pa_rowentryconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREPORTITEM` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ROWENTRYCONFIG_1` (`FREPORTITEM`),
  KEY `IDX_ROWENTRYCONFIG_2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_ruleconditionentity definition

CREATE TABLE `t_pa_ruleconditionentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONDITIONSETTING` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETURNRESULT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIBE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPRESSION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERSTRING` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERSTRING_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCONDITIONRESULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_CONDITION_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_ruleexecdetail definition

CREATE TABLE `t_pa_ruleexecdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXECUTION_LOGID` bigint NOT NULL DEFAULT '0',
  `FRULE_EXECUTION_LOGID` bigint NOT NULL DEFAULT '0',
  `FSOURCE_ID` bigint NOT NULL DEFAULT '0',
  `FTARGET_ID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_RULEEXECDETAIL_1` (`FEXECUTION_LOGID`),
  KEY `IDX_PA_RULEEXECDETAIL_2` (`FRULE_EXECUTION_LOGID`),
  KEY `IDX_PA_RULEEXECDETAIL_3` (`FTARGET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_ruleexeclog definition

CREATE TABLE `t_pa_ruleexeclog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXECUTION_LOGID` bigint NOT NULL DEFAULT '0',
  `FRULE_TYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FRULE_ID` bigint NOT NULL DEFAULT '0',
  `FEXECUTION_STATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXECUTION_TIME` datetime DEFAULT NULL,
  `FDETAILTIME` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FREMARK_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_RULE_EXECUTION_LOG_1` (`FEXECUTION_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharebase definition

CREATE TABLE `t_pa_sharebase` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_SHAREBASE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharefactor definition

CREATE TABLE `t_pa_sharefactor` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FANALYSIS_SYSTEM` bigint NOT NULL DEFAULT '0',
  `FDESCRIBE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFACTORTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FANALYSIS_MODEL` bigint NOT NULL DEFAULT '0',
  `FUNITFIELD` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_SHARE_FACTOR_1` (`FANALYSIS_SYSTEM`,`FANALYSIS_MODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharefactor_l definition

CREATE TABLE `t_pa_sharefactor_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_SHARE_FACTOR_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharefactor_r3 definition

CREATE TABLE `t_pa_sharefactor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharefactordim definition

CREATE TABLE `t_pa_sharefactordim` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_SHARE_FACTOR_DIM_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharefactorentry definition

CREATE TABLE `t_pa_sharefactorentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDIMENSIONJSON` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FDIMENSIONJSON_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FVALUE_IDS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVALUE_IDS_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_SHARE_FACTOR_ENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharerule definition

CREATE TABLE `t_pa_sharerule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FRECEIVERULE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHAREFACTOR` bigint NOT NULL DEFAULT '0',
  `FMEASURE` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODELID` bigint NOT NULL DEFAULT '0',
  `FLIMITTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTRATIOBOX` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLIMITBOX` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTFILTER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTFILTER_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_SHARE_RULE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharerule_l definition

CREATE TABLE `t_pa_sharerule_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_SHARE_RULE_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_shareruleentry definition

CREATE TABLE `t_pa_shareruleentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRECEIVEDIMENSION` bigint NOT NULL DEFAULT '0',
  `FCOMBORECEIVE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVEDIMVALUE` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVEDIMID` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVEMATENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVEDIMTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVEDIMENSIONTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVEDIMENSIONTEXT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_SHARERULEENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_shareruleentrysend definition

CREATE TABLE `t_pa_shareruleentrysend` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSENDDIMENSION` bigint NOT NULL DEFAULT '0',
  `FCOMBOFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONVALUE` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONID` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDDIMTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDMATENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONTEXT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_SHARERULEENTRYSEND` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharerulenew definition

CREATE TABLE `t_pa_sharerulenew` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FRECEIVERULE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHAREFACTOR` bigint NOT NULL DEFAULT '0',
  `FMEASURE` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODELID` bigint NOT NULL DEFAULT '0',
  `FLIMITTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTRATIOBOX` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLIMITBOX` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTFILTER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTFILTER_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_SHARE_RULENEW` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharerulenew_l definition

CREATE TABLE `t_pa_sharerulenew_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_SHARE_RULENEW_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharerulenew_r3 definition

CREATE TABLE `t_pa_sharerulenew_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharesavelimit definition

CREATE TABLE `t_pa_sharesavelimit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSUBVALUELIMIT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBVALUELIMIT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSUBDATAIDLIMIT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_SHARESAVELIMIT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sharesavesubdata definition

CREATE TABLE `t_pa_sharesavesubdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSUBVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBVALUE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSUBDATAID` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PA_SHARE_SAVESUBDATA` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sourcedimmapping definition

CREATE TABLE `t_pa_sourcedimmapping` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_SOURCEDIM_MAPPING_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_sourcemodelmapping definition

CREATE TABLE `t_pa_sourcemodelmapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODEL` bigint NOT NULL DEFAULT '0',
  `FMODELTABLEID` bigint NOT NULL DEFAULT '0',
  `FSOURCENUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEENTITYID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_SOURCEMODEL` (`FANALYSISMODEL`,`FMODELTABLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_syncdataparam definition

CREATE TABLE `t_pa_syncdataparam` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSYSTEM` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FOPERATION` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIMETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATERANGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNT` bigint NOT NULL DEFAULT '0',
  `FSTRATDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FDATE` datetime DEFAULT NULL,
  `FPERIODBASEDATA` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSPLAN` bigint NOT NULL DEFAULT '0',
  `FBUSINESSRULE` bigint NOT NULL DEFAULT '0',
  `FPERIODOFFSET` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_SYNCDATAPARAM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_syncdataparam_l definition

CREATE TABLE `t_pa_syncdataparam_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_SYNCDATAPARAM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_syncdataparam_r3 definition

CREATE TABLE `t_pa_syncdataparam_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_syncdataparamacpd definition

CREATE TABLE `t_pa_syncdataparamacpd` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_SYNCDATAPARAMACPD_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_syncdataparamanpd definition

CREATE TABLE `t_pa_syncdataparamanpd` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_SYNCDATAPARAMANPD_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_syncdataparamorg definition

CREATE TABLE `t_pa_syncdataparamorg` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_SYNCDATAPARAMORG_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_syncdataschema definition

CREATE TABLE `t_pa_syncdataschema` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCEID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_PA_SYNCDATASCHEMA_UN` (`FNUMBER`,`FMODELID`),
  KEY `IDX_PA_SYNCDATASCHEMA` (`FSTATUS`,`FENABLE`,`FANALYSISMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_syncdataschema_l definition

CREATE TABLE `t_pa_syncdataschema_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_SYNCDATASCHEMA_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_syncdataschema_r3 definition

CREATE TABLE `t_pa_syncdataschema_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_targetdimmapping definition

CREATE TABLE `t_pa_targetdimmapping` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_TARGETDIM_MAPPING_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_tasklog definition

CREATE TABLE `t_pa_tasklog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSYNCDATASCHEMEID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FUPDATETIME` datetime DEFAULT NULL,
  `FTASKTYPE` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FINSTANCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKOPERATETOKEN` bigint NOT NULL DEFAULT '0',
  `FDATASYNCTASKID` bigint NOT NULL DEFAULT '0',
  `FANALYSISMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASOURCEID` bigint NOT NULL DEFAULT '0',
  `FSYNCSCHEMENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_TASK_LOG` (`FDATASYNCTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_taskpreview definition

CREATE TABLE `t_pa_taskpreview` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSYNCDATASCHEMEID` bigint NOT NULL DEFAULT '0',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FUPDATETIME` datetime DEFAULT NULL,
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTASKTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXECUTIONTIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATICSTATUS_INFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATICSTATUS_INFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSYNCSCHEMENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_TASK_PREVIEW` (`FSYNCDATASCHEMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_verificationlog definition

CREATE TABLE `t_pa_verificationlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FANALYSISSYSTEM` bigint NOT NULL DEFAULT '0',
  `FBASEPERIOD` bigint NOT NULL DEFAULT '0',
  `FVERIFICATIONRESULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSPARE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANALYSISMODEL` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FRETURNRESULT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONDITIONSETTING` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PK_T_PA_VERIFICATION_LOG_1` (`FANALYSISSYSTEM`),
  KEY `IDX_PK_T_PA_VERIFICATION_LOG_2` (`FBASEPERIOD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_verificationrules definition

CREATE TABLE `t_pa_verificationrules` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FANASYSTEMSETTING` bigint NOT NULL DEFAULT '0',
  `FANALYSIS_MODEL` bigint NOT NULL DEFAULT '0',
  `FCONTROLMODE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVERIFICATIONTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVERIFICATIONLINK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PA_VERIFICATION_RULE_1` (`FNUMBER` DESC),
  KEY `IDX_PA_VERIFICATION_RULE_2` (`FANASYSTEMSETTING`,`FANALYSIS_MODEL`),
  KEY `IDX_T_PA_VERIFICATIONRULES_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PA_VERIFICATIONRULES_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_verificationrules_bit definition

CREATE TABLE `t_pa_verificationrules_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_verificationrules_l definition

CREATE TABLE `t_pa_verificationrules_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PA_DERIVATION_RULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_verificationrules_r3 definition

CREATE TABLE `t_pa_verificationrules_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_verificationrules_u definition

CREATE TABLE `t_pa_verificationrules_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_VERIFICATIONRULES_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_verificationrulesexc definition

CREATE TABLE `t_pa_verificationrulesexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_VERIFICATIONRULESEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pa_verificationrulesusereg definition

CREATE TABLE `t_pa_verificationrulesusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PA_VERIFICATIONRULESUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_defaultdimension definition

CREATE TABLE `t_rsa_defaultdimension` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_RSA_DEFAULTDIMENSION` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_exelog definition

CREATE TABLE `t_rsa_exelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FRISKITEMID` bigint NOT NULL DEFAULT '0',
  `FCHECKTIME` datetime DEFAULT NULL,
  `FRESULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTASKKEY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILMESSAGE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILMESSAGE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEVENTCOUNT` int NOT NULL DEFAULT '0',
  `FTIMETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_RSA_EXELOG_SEARCH` (`FBILLNO`),
  KEY `IDX_RSA_EXELOG_TASKKEY` (`FTASKKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_exelogentry definition

CREATE TABLE `t_rsa_exelogentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEVENTID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_RSA_EXELOGENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_noticeuser definition

CREATE TABLE `t_rsa_noticeuser` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_RSA_NOTICEUSER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_otherdimension definition

CREATE TABLE `t_rsa_otherdimension` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_RSA_OTHERDIMENSION` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskevent definition

CREATE TABLE `t_rsa_riskevent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FCHECKTIME` datetime DEFAULT NULL,
  `FRISKITEMID` bigint NOT NULL DEFAULT '0',
  `FRISKLEVELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFASINDEXID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRANG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOTHERDIMENSIONVALUE` varchar(251) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOTHERDIMENSIONVALUE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FINFLUENCE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTIMETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMERICALUNIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_RSA_RISKEVENT` (`FORGID`,`FPERIODID`),
  KEY `IDX_RSA_RISKEVENT_SEARCH` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskgroup definition

CREATE TABLE `t_rsa_riskgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_RSA_RISKGROUP_SEARCH` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskgroup_l definition

CREATE TABLE `t_rsa_riskgroup_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_RSA_RISKGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskgroup_r3 definition

CREATE TABLE `t_rsa_riskgroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskitem definition

CREATE TABLE `t_rsa_riskitem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FFASINDEXID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUETYPE` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00',
  `FNUMERICALUNIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_RSA_RISKITEM_SEARCH` (`FNUMBER`),
  KEY `IDX_T_RSA_RISKITEM_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_RSA_RISKITEM_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskitem_bit definition

CREATE TABLE `t_rsa_riskitem_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskitem_l definition

CREATE TABLE `t_rsa_riskitem_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_RSA_RISKITEM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskitem_r3 definition

CREATE TABLE `t_rsa_riskitem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskitem_u definition

CREATE TABLE `t_rsa_riskitem_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_RSA_RISKITEM_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskitementry definition

CREATE TABLE `t_rsa_riskitementry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSTART` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEND` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVELID` bigint NOT NULL DEFAULT '0',
  `FINFLUENCE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_RSA_RISKITEMENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskitemexc definition

CREATE TABLE `t_rsa_riskitemexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_RSA_RISKITEMEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_riskitemusereg definition

CREATE TABLE `t_rsa_riskitemusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_RSA_RISKITEMUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_risklevel definition

CREATE TABLE `t_rsa_risklevel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_RSA_RISKLEVEL_SEARCH` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_risklevel_l definition

CREATE TABLE `t_rsa_risklevel_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_RSA_RISKLEVEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpcfias.t_rsa_risklevel_r3 definition

CREATE TABLE `t_rsa_risklevel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
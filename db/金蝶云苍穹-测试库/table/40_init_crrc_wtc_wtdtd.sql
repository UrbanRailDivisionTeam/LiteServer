USE crrc_wtc_wtdtd;

-- crrc_wtc_wtdtd.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_adjustresult definition

CREATE TABLE `t_wtte_adjustresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FITEM` bigint NOT NULL DEFAULT '0',
  `FVALUESTRINGAFTER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUETRANSBEFORE` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUETRANSAFTER` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALCULATEDATE` datetime DEFAULT NULL,
  `FATTPERSON` bigint NOT NULL DEFAULT '0',
  `FBEMOVEITEM` bigint NOT NULL DEFAULT '0',
  `FVALUESTRINGBEFORE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` int NOT NULL DEFAULT '0',
  `FADJUSTTRIMID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_ADJUSTRESULT` (`FADJUSTTRIMID`),
  KEY `IDX_WTTE_ADJUSTRESULT_A` (`FATTPERSON`,`FCALCULATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_attrecordhis_r3 definition

CREATE TABLE `t_wtte_attrecordhis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_attstaterecord definition

CREATE TABLE `t_wtte_attstaterecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFROZENSTARTDATE` datetime DEFAULT NULL,
  `FFROZENENDDATE` datetime DEFAULT NULL,
  `FACCOUNTTO` datetime DEFAULT NULL,
  `FLOCKTO` datetime DEFAULT NULL,
  `FSTORAGETO` datetime DEFAULT NULL,
  `FTASKDETAIL` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_ASRECORD_FDETAIL` (`FTASKDETAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_attstaterecord_r3 definition

CREATE TABLE `t_wtte_attstaterecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_billincrcalclog definition

CREATE TABLE `t_wtte_billincrcalclog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FCALCSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRDESC` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETRYNUM` int NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FCOSTTIME` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISVALID` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_BILLINCRCALCLOG` (`FBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_billincrcalclog_r3 definition

CREATE TABLE `t_wtte_billincrcalclog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_calrecord_r3 definition

CREATE TABLE `t_wtte_calrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_calreport definition

CREATE TABLE `t_wtte_calreport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJSONTEXT` varchar(780) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJSONTEXT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FTOTALTASKID` bigint NOT NULL DEFAULT '0',
  `FSUBTASKID` bigint NOT NULL DEFAULT '0',
  `FSERIALNUM` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_CALREPORT_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_calreportex definition

CREATE TABLE `t_wtte_calreportex` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLABELINFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABELINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCALREPORTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_CALREPORTEX` (`FCALREPORTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_calresultlistop definition

CREATE TABLE `t_wtte_calresultlistop` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCALRESULT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPARATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALLOG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTSTARTDATE` datetime DEFAULT NULL,
  `FACTENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_CALRESULTLISTOP_R` (`FCALRESULT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_countmsgrecord definition

CREATE TABLE `t_wtte_countmsgrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FCOUNTNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNDATE` datetime DEFAULT NULL,
  `FCONTENT` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FMANAGESCOPEID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FAGREEDWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FMANAGESCOPEVID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGVID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYVID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONVID` bigint NOT NULL DEFAULT '0',
  `FJOBVID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPVID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGVID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEVID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_COUNTMSGRECORD` (`FNUMBER`),
  KEY `IDX_WTTE_COUNTMSGRECORD_2` (`FATTPERSONID`,`FASSIGNDATE`),
  KEY `IDX_WTTE_CMRECORD_ATTFILE` (`FATTFILEVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_countmsgrecord_l definition

CREATE TABLE `t_wtte_countmsgrecord_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_COUNTMSGRECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_countmsgrecord_r3 definition

CREATE TABLE `t_wtte_countmsgrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_countmsgrecordh definition

CREATE TABLE `t_wtte_countmsgrecordh` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCOUNTNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYVID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTVID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBVID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FCONTENT` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FASSIGNDATE` datetime DEFAULT NULL,
  `FMANAGESCOPEVID` bigint NOT NULL DEFAULT '0',
  `FMANAGESCOPEID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGVID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FAGREEDWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPVID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGVID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEVID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_COUNTMSGRECORDH` (`FNUMBER`),
  KEY `IDX_WTTE_COUNTMSGRECORDH_2` (`FATTPERSONID`,`FASSIGNDATE`),
  KEY `IDX_WTTE_CMRECORDH_ATTFILE` (`FATTFILEVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_countmsgrecordh_l definition

CREATE TABLE `t_wtte_countmsgrecordh_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_COUNTMSGRECORDH_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_countmsgrecordh_r3 definition

CREATE TABLE `t_wtte_countmsgrecordh_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dailydetdisentry definition

CREATE TABLE `t_wtte_dailydetdisentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDSOURCE` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPLAYNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFREEZE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIELDVALUE` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_DAILYDETDISENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dailydetdisentry_l definition

CREATE TABLE `t_wtte_dailydetdisentry_l` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPLAYNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAILYDETDISENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dailydetscheme definition

CREATE TABLE `t_wtte_dailydetscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_DAILYDETSCHEME` (`FNUMBER`),
  KEY `IDX_T_WTTE_DAILYDETSCHEME_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_WTTE_DAILYDETSCHEME_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dailydetscheme_bit definition

CREATE TABLE `t_wtte_dailydetscheme_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dailydetscheme_l definition

CREATE TABLE `t_wtte_dailydetscheme_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAILYDETSCHEME_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dailydetscheme_r3 definition

CREATE TABLE `t_wtte_dailydetscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dailydetscheme_u definition

CREATE TABLE `t_wtte_dailydetscheme_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_WTTE_DAILYDETSCHEME_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dailydetschemeexc definition

CREATE TABLE `t_wtte_dailydetschemeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_WTTE_DAILYDETSCHEMEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dailydetschemeusereg definition

CREATE TABLE `t_wtte_dailydetschemeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_WTTE_DAILYDETSCHEMEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dailydetsortentry definition

CREATE TABLE `t_wtte_dailydetsortentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSORTNAME` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSORTMETHOD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSORTVALUE` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_DAILYDETSORTENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_datajson definition

CREATE TABLE `t_wtte_datajson` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FOWNDATE` datetime DEFAULT NULL,
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FDATAJSON_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FUPVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' V1.0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_DATAJSON` (`FPERSONID`,`FOWNDATE`,`FVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_datajson_r3 definition

CREATE TABLE `t_wtte_datajson_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydemoveentry definition

CREATE TABLE `t_wtte_daydemoveentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FATTITEMTOID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_DAYDEMOVEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydemovehisentry definition

CREATE TABLE `t_wtte_daydemovehisentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTITEMTOID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_DAYDEMOVEHISENTRY` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dayderesetentry definition

CREATE TABLE `t_wtte_dayderesetentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_DAYDERESETENTRY` (`FID`),
  KEY `IDX_DAYDERESETFFATTFILEID` (`FATTFILEBASEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dayderesethisentry definition

CREATE TABLE `t_wtte_dayderesethisentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_DAYDERESETHISENTRY` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dayderesetitem definition

CREATE TABLE `t_wtte_dayderesetitem` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAYDERESETITEM` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dayderesetitemhis definition

CREATE TABLE `t_wtte_dayderesetitemhis` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAYDERESETITEMHIS` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetail definition

CREATE TABLE `t_wtte_daydetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FREVISIONHISID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FATTITEMTOID` bigint NOT NULL DEFAULT '0',
  `FVALUEBEFORE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FVALUEAFTER` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FVALUEAFTERTO` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FVALUEBEFORETO` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FREVISIONDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_FREVISIONHISID` (`FREVISIONHISID`),
  KEY `IDX_DAYFATTFILEBASEID` (`FATTFILEBASEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetail_r3 definition

CREATE TABLE `t_wtte_daydetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailmove definition

CREATE TABLE `t_wtte_daydetailmove` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FENDDATE` datetime DEFAULT NULL,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_DAYDETAILMOVE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailmove_l definition

CREATE TABLE `t_wtte_daydetailmove_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAYDETAILMOVE_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailmove_r3 definition

CREATE TABLE `t_wtte_daydetailmove_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailmovehi_r3 definition

CREATE TABLE `t_wtte_daydetailmovehi_r3` (
  `fvid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailmovehis definition

CREATE TABLE `t_wtte_daydetailmovehis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINITDATASOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITBATCH` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_WTTE_DAYDETAILMOVEHIS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailmovehis_l definition

CREATE TABLE `t_wtte_daydetailmovehis_l` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAYDETAILMOVEHIS_L` (`FLOCALEID`,`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailreset definition

CREATE TABLE `t_wtte_daydetailreset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_DAYDETAILRESET` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailreset_l definition

CREATE TABLE `t_wtte_daydetailreset_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAYDETAILRESET_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailreset_r3 definition

CREATE TABLE `t_wtte_daydetailreset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailreseth_r3 definition

CREATE TABLE `t_wtte_daydetailreseth_r3` (
  `fvid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailresethis definition

CREATE TABLE `t_wtte_daydetailresethis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINITDATASOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITBATCH` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_WTTE_DAYDETAILRESETHIS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailresethis_l definition

CREATE TABLE `t_wtte_daydetailresethis_l` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAYDETAILRESETHIS_L` (`FLOCALEID`,`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailtrim definition

CREATE TABLE `t_wtte_daydetailtrim` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_DAYDETAILTRIM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailtrim_l definition

CREATE TABLE `t_wtte_daydetailtrim_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAYDETAILTRIM_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailtrim_r3 definition

CREATE TABLE `t_wtte_daydetailtrim_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailtrimhi_r3 definition

CREATE TABLE `t_wtte_daydetailtrimhi_r3` (
  `fvid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailtrimhis definition

CREATE TABLE `t_wtte_daydetailtrimhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINITDATASOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITBATCH` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_WTTE_DAYDETAILTRIMHIS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetailtrimhis_l definition

CREATE TABLE `t_wtte_daydetailtrimhis_l` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAYDETAILTRIMHIS_L` (`FLOCALEID`,`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetrimentry definition

CREATE TABLE `t_wtte_daydetrimentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_DAYDETRIMENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetrimhisentry definition

CREATE TABLE `t_wtte_daydetrimhisentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_DAYDETRIMHISENTRY` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetrimitem definition

CREATE TABLE `t_wtte_daydetrimitem` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAYDETRIMITEM` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_daydetrimitemhis definition

CREATE TABLE `t_wtte_daydetrimitemhis` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DAYDETRIMITEMHIS` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_dyqttypeid definition

CREATE TABLE `t_wtte_dyqttypeid` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_DYQTTYPEID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_evaplan definition

CREATE TABLE `t_wtte_evaplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FADMINORG` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORG` bigint NOT NULL DEFAULT '0',
  `FBEGINDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FATTPERSON` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FPLANSHARE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATESCOPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVATODATE` datetime DEFAULT NULL,
  `FFILTERS` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_EVAPLAN_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_evaplan_l definition

CREATE TABLE `t_wtte_evaplan_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_EVAPLAN_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_evaplan_r3 definition

CREATE TABLE `t_wtte_evaplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_evaresult definition

CREATE TABLE `t_wtte_evaresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEGINDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FEVAPROPERTY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVASOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOST` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAVESTEP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCALSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIETASKSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTASKEXREASON` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_EVARESULT_FVERSION` (`FVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_evaresult_l definition

CREATE TABLE `t_wtte_evaresult_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_EVARESULT_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_evaresult_r3 definition

CREATE TABLE `t_wtte_evaresult_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_exmultiitem definition

CREATE TABLE `t_wtte_exmultiitem` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_EXMULTIITEM` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_exmultiitemhis definition

CREATE TABLE `t_wtte_exmultiitemhis` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_EXMULTIITEMHIS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_expushrecord definition

CREATE TABLE `t_wtte_expushrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVER` bigint NOT NULL DEFAULT '0',
  `FMSGTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FPUSHSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUSHTIME` datetime DEFAULT NULL,
  `FEXINFO` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FREADSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZCREATOR` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_EXPUSHRECORD_NUM` (`FNUMBER`),
  KEY `IDX_WTTE_EXPUSHRECORD_UNITE` (`FCREATETIME`,`FPUSHSTATUS`,`FREADSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_expushrecord_r3 definition

CREATE TABLE `t_wtte_expushrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_exrecord definition

CREATE TABLE `t_wtte_exrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FSHFITID` bigint NOT NULL DEFAULT '0',
  `FEXATTRIBUTEID` bigint NOT NULL DEFAULT '0',
  `FATTITEMVID` bigint NOT NULL DEFAULT '0',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FATTITEMVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCONFIRMSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIRMPERSONID` bigint NOT NULL DEFAULT '0',
  `FCONFIRMTIME` datetime DEFAULT NULL,
  `FEXPROCESSID` bigint NOT NULL DEFAULT '0',
  `FRECORDDATE` datetime DEFAULT NULL,
  `FEXORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCOMPANYVID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONVID` bigint NOT NULL DEFAULT '0',
  `FJOBVID` bigint NOT NULL DEFAULT '0',
  `FSHIFTVID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFILIATEADMINORGVID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FPUNCHCARDPAIRID` bigint NOT NULL DEFAULT '0',
  `FTBPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FATTITEMORVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FMANAGESCOPEID` bigint NOT NULL DEFAULT '0',
  `FMANAGESCOPEVID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FAGREEDWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FPUNCHCARDPOINT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGVID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPVID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FEXRECORDCONFIRMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_EXRECORD_FPERSONID` (`FATTPERSONID`),
  KEY `IDX_WTTE_EXRECORD_FREDATE` (`FRECORDDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_exrecord_a definition

CREATE TABLE `t_wtte_exrecord_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FSHIFTDATE` datetime DEFAULT NULL,
  `FFILTERTYPE` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_EXRECORD_A` (`FATTFILEVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_exrecord_l definition

CREATE TABLE `t_wtte_exrecord_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_EXRECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_exrecord_r3 definition

CREATE TABLE `t_wtte_exrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_exrecordconfirm definition

CREATE TABLE `t_wtte_exrecordconfirm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRECORDDATE` datetime DEFAULT NULL,
  `FCONFIRMTIME` datetime DEFAULT NULL,
  `FCONFIRMPERSONID` bigint NOT NULL DEFAULT '0',
  `FPUNCHCARDPAIRID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FATTITEMVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSHIFTDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_EXRECORDCONFIRM_A` (`FRECORDDATE`,`FATTPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_exrecordconfirm_r3 definition

CREATE TABLE `t_wtte_exrecordconfirm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_exrecordhis definition

CREATE TABLE `t_wtte_exrecordhis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FSHFITID` bigint NOT NULL DEFAULT '0',
  `FEXATTRIBUTEID` bigint NOT NULL DEFAULT '0',
  `FATTITEMVID` bigint NOT NULL DEFAULT '0',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FATTITEMVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCONFIRMSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIRMPERSONID` bigint NOT NULL DEFAULT '0',
  `FCONFIRMTIME` datetime DEFAULT NULL,
  `FRECORDDATE` datetime DEFAULT NULL,
  `FEXORGID` bigint NOT NULL DEFAULT '0',
  `FEXPROCESSID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCOMPANYVID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONVID` bigint NOT NULL DEFAULT '0',
  `FJOBVID` bigint NOT NULL DEFAULT '0',
  `FSHIFTVID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFILIATEADMINORGVID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FPUNCHCARDPAIRID` bigint NOT NULL DEFAULT '0',
  `FTBPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FATTITEMORVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FMANAGESCOPEID` bigint NOT NULL DEFAULT '0',
  `FMANAGESCOPEVID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FAGREEDWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FPUNCHCARDPOINT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGVID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPVID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_EXRECORDHIS_FPERSONID` (`FATTPERSONID`),
  KEY `IDX_WTTE_EXRECORDHIS_FREDATE` (`FRECORDDATE`),
  KEY `IDX_WTTE_EXRECORDHIS_FATTFILE` (`FATTFILEVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_exrecordhis_l definition

CREATE TABLE `t_wtte_exrecordhis_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_EXRECORDHIS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_exrecordhis_r3 definition

CREATE TABLE `t_wtte_exrecordhis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_fieldscheme definition

CREATE TABLE `t_wtte_fieldscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FSHOWSCHEME` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDUSE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` decimal(23,0) NOT NULL DEFAULT '0',
  `FDATASOURCE` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_FIELDSCHEME` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_fieldscheme_l definition

CREATE TABLE `t_wtte_fieldscheme_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_FIELDSCHEME_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_fieldscheme_r3 definition

CREATE TABLE `t_wtte_fieldscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_hisexmultiitem definition

CREATE TABLE `t_wtte_hisexmultiitem` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_HISEXMULTIITEM` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_hisexmultiitemhis definition

CREATE TABLE `t_wtte_hisexmultiitemhis` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_HISEXMULTIITEMHIS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_info definition

CREATE TABLE `t_wtte_info` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFROZENTO` datetime DEFAULT NULL,
  `FACCOUNTTO` datetime DEFAULT NULL,
  `FLOCKTO` datetime DEFAULT NULL,
  `FSTORAGETO` datetime DEFAULT NULL,
  `FBACKTRACKTIME` datetime DEFAULT NULL,
  `FACCOUNTERRORTIME` datetime DEFAULT NULL,
  `FALLOWREACCOUNTTIME` datetime DEFAULT NULL,
  `FISSTOPEVALUATE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPERSONNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FPERSONNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIRMTO` datetime DEFAULT NULL,
  `FFROZENSTARTDATE` datetime DEFAULT NULL,
  `FFROZENENDDATE` datetime DEFAULT NULL,
  `FMAYBECULTBYPARAM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFROZENERID` bigint NOT NULL DEFAULT '0',
  `FLOCKERID` bigint NOT NULL DEFAULT '0',
  `FSTORAGEERID` bigint NOT NULL DEFAULT '0',
  `FFROZENTIME` datetime DEFAULT NULL,
  `FLOCKTIME` datetime DEFAULT NULL,
  `FSTORAGETIME` datetime DEFAULT NULL,
  `FLOCKACTION` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `LOCKACTION` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILEBOID` bigint NOT NULL DEFAULT '0',
  `FISINFOEXC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXCSTARTDATE` datetime DEFAULT NULL,
  `FEXCENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_INFO` (`FPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_info_l definition

CREATE TABLE `t_wtte_info_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_INFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_infohis definition

CREATE TABLE `t_wtte_infohis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FFROZENTO` datetime DEFAULT NULL,
  `FACCOUNTTO` datetime DEFAULT NULL,
  `FLOCKTO` datetime DEFAULT NULL,
  `FSTORAGETO` datetime DEFAULT NULL,
  `FBACKTRACKTIME` datetime DEFAULT NULL,
  `FACCOUNTERRORTIME` datetime DEFAULT NULL,
  `FALLOWREACCOUNTTIME` datetime DEFAULT NULL,
  `FISSTOPEVALUATE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPERSONNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FCONFIRMTO` datetime DEFAULT NULL,
  `FFROZENSTARTDATE` datetime DEFAULT NULL,
  `FFROZENENDDATE` datetime DEFAULT NULL,
  `FMAYBECULTBYPARAM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFROZENERID` bigint NOT NULL DEFAULT '0',
  `FLOCKERID` bigint NOT NULL DEFAULT '0',
  `FSTORAGEERID` bigint NOT NULL DEFAULT '0',
  `FFROZENTIME` datetime DEFAULT NULL,
  `FLOCKTIME` datetime DEFAULT NULL,
  `FSTORAGETIME` datetime DEFAULT NULL,
  `FLOCKACTION` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `LOCKACTION` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILEBOID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_WTTE_INFOHIS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_infohis_l definition

CREATE TABLE `t_wtte_infohis_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_INFOHIS_L` (`FVID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_perioddetail definition

CREATE TABLE `t_wtte_perioddetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FREVISIONHISID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FATTPERIODID` bigint NOT NULL DEFAULT '0',
  `FVALUEBEFORE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FVALUEAFTER` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FATTITEMTOID` bigint NOT NULL DEFAULT '0',
  `FVALUEAFTERTO` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FVALUEBEFORETO` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_PERIODDETAIL` (`FREVISIONHISID`),
  KEY `IDX_FATTFILEBASEID` (`FATTFILEBASEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_perioddetail_r3 definition

CREATE TABLE `t_wtte_perioddetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_perioditemreset definition

CREATE TABLE `t_wtte_perioditemreset` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_PERIODITEMRESET` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_perioditemresethis definition

CREATE TABLE `t_wtte_perioditemresethis` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `INDEX_WTTE_PERIODITEMMOVEHIS` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_perioditemtrim definition

CREATE TABLE `t_wtte_perioditemtrim` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_PERIODITEMTRIM` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodmove definition

CREATE TABLE `t_wtte_periodmove` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_PERIODMOVE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodmove_l definition

CREATE TABLE `t_wtte_periodmove_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_PERIODMOVE_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodmove_r3 definition

CREATE TABLE `t_wtte_periodmove_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodmoveentry definition

CREATE TABLE `t_wtte_periodmoveentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FATTITEMTOID` bigint NOT NULL DEFAULT '0',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_PERIODMOVEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodmovehis definition

CREATE TABLE `t_wtte_periodmovehis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENDDATE` datetime DEFAULT NULL,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINITDATASOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITBATCH` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_WTTE_PERIODMOVEHIS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodmovehis_l definition

CREATE TABLE `t_wtte_periodmovehis_l` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_PERIODMOVEHIS_L` (`FLOCALEID`,`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodmovehis_r3 definition

CREATE TABLE `t_wtte_periodmovehis_r3` (
  `fvid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodmovehisentry definition

CREATE TABLE `t_wtte_periodmovehisentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FATTITEMTOID` bigint NOT NULL DEFAULT '0',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_PERIODMOVEHISENTRY` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodreset definition

CREATE TABLE `t_wtte_periodreset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX__WTTE_PERIODRESET` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodreset_l definition

CREATE TABLE `t_wtte_periodreset_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_PERIODRESET_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodreset_r3 definition

CREATE TABLE `t_wtte_periodreset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodresetentry definition

CREATE TABLE `t_wtte_periodresetentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_PERIODRESETENTRY` (`FID`),
  KEY `IDX_PERIODRESETFFATTFILEID` (`FATTFILEBASEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodresethis definition

CREATE TABLE `t_wtte_periodresethis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENDDATE` datetime DEFAULT NULL,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINITDATASOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITBATCH` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_WTTE_PERIODRESETHIS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodresethis_l definition

CREATE TABLE `t_wtte_periodresethis_l` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_PERIODRESETHIS_L` (`FLOCALEID`,`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodresethis_r3 definition

CREATE TABLE `t_wtte_periodresethis_r3` (
  `fvid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodresethisentr definition

CREATE TABLE `t_wtte_periodresethisentr` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_PERIODRESETHISENTR` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodtrim definition

CREATE TABLE `t_wtte_periodtrim` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_PERIODTRIM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodtrim_l definition

CREATE TABLE `t_wtte_periodtrim_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_PERIODTRIM_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodtrim_r3 definition

CREATE TABLE `t_wtte_periodtrim_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodtrimentry definition

CREATE TABLE `t_wtte_periodtrimentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_PERIODTRIMENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodtrimhis definition

CREATE TABLE `t_wtte_periodtrimhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENDDATE` datetime DEFAULT NULL,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINITDATASOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITBATCH` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_WTTE_PERIODTRIMHIS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodtrimhis_l definition

CREATE TABLE `t_wtte_periodtrimhis_l` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_PERIODTRIMHIS_L` (`FLOCALEID`,`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodtrimhis_r3 definition

CREATE TABLE `t_wtte_periodtrimhis_r3` (
  `fvid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodtrimhisentry definition

CREATE TABLE `t_wtte_periodtrimhisentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_PERIODTRIMHISENTRY` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_periodtrimitemhis definition

CREATE TABLE `t_wtte_periodtrimitemhis` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_PERIODTRIMITEMHIS` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_persumdisentry definition

CREATE TABLE `t_wtte_persumdisentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDNAME` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPLAYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFREEZE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIELDSOURCE` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDVALUE` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_PERSUMDISENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_persumdisentry_l definition

CREATE TABLE `t_wtte_persumdisentry_l` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPLAYNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_PERSUMDISENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_persumscheme definition

CREATE TABLE `t_wtte_persumscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FDAILYDETSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_PERSUMSCHEME` (`FNUMBER`),
  KEY `IDX_T_WTTE_PERSUMSCHEME_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_WTTE_PERSUMSCHEME_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_persumscheme_bit definition

CREATE TABLE `t_wtte_persumscheme_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_persumscheme_l definition

CREATE TABLE `t_wtte_persumscheme_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_PERSUMSCHEME_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_persumscheme_r3 definition

CREATE TABLE `t_wtte_persumscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_persumscheme_u definition

CREATE TABLE `t_wtte_persumscheme_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_WTTE_PERSUMSCHEME_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_persumschemeexc definition

CREATE TABLE `t_wtte_persumschemeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_WTTE_PERSUMSCHEMEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_persumschemeusereg definition

CREATE TABLE `t_wtte_persumschemeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_WTTE_PERSUMSCHEMEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_persumsortentry definition

CREATE TABLE `t_wtte_persumsortentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSORTNAME` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSORTMETHOD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSORTVALUE` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_PERSUMSORTENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qtcalculate definition

CREATE TABLE `t_wtte_qtcalculate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEGINDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAVESTEP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOST` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIETASKSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTASKEXREASON` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FTIEPLANID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_QTCALCULATE_FVERSION` (`FVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qtcalculate_l definition

CREATE TABLE `t_wtte_qtcalculate_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_QTCALCULATE_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qtcalculate_r3 definition

CREATE TABLE `t_wtte_qtcalculate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qtdetailaddentry definition

CREATE TABLE `t_wtte_qtdetailaddentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FQUOTATYPEID` bigint NOT NULL DEFAULT '0',
  `FGENESTARTDATE` datetime DEFAULT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_QTDETAILADDENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qtdetailcarryaj definition

CREATE TABLE `t_wtte_qtdetailcarryaj` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FQTTYPEID` bigint NOT NULL DEFAULT '0',
  `FQTDETAILSCOPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERYYEAR` datetime DEFAULT NULL,
  `FQUERYMONTH` datetime DEFAULT NULL,
  `FCDSTARTDATE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCDSDELAY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCDSDELAYVALUE` int NOT NULL DEFAULT '0',
  `FCDSDELAYUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCDENDDATE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCDEDELAY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCDEDELAYVALUE` int NOT NULL DEFAULT '0',
  `FCDEDELAYUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPASTDURATIONID` bigint NOT NULL DEFAULT '0',
  `FCDDURATIONID` bigint NOT NULL DEFAULT '0',
  `FCDPASTDURATIONID` bigint NOT NULL DEFAULT '0',
  `FCDMODE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCDTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCDVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCDPERCENT` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCDPASTPERCENT` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCDVESTDAY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCDVDELAY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCDVDELAYVALUE` int NOT NULL DEFAULT '0',
  `FCDVDELAYUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_QTCARRYAJ_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qtdetailcarryaj_l definition

CREATE TABLE `t_wtte_qtdetailcarryaj_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_QTDETAILCARRYAJ_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qtdetailcarryaj_r3 definition

CREATE TABLE `t_wtte_qtdetailcarryaj_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qtdetailcdrecd definition

CREATE TABLE `t_wtte_qtdetailcdrecd` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FQTDETAILID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  `FQTTYPEID` bigint NOT NULL DEFAULT '0',
  `FFREEZEVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FOWNVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPASTVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FUSEDVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCANBEODVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCDEDVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FUSABLEVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FUSEODVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FGENSTARTDATE` datetime DEFAULT NULL,
  `FGENENDDATE` datetime DEFAULT NULL,
  `FUSESTARTDATE` datetime DEFAULT NULL,
  `FCROSSDAY` datetime DEFAULT NULL,
  `FUSEENDDATE` datetime DEFAULT NULL,
  `FPERIODCIRCLEID` bigint NOT NULL DEFAULT '0',
  `FPERIODNUM` int NOT NULL DEFAULT '0',
  `FSOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_QTDETAILCDRECD` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qtdetailextensi_r3 definition

CREATE TABLE `t_wtte_qtdetailextensi_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qtdetailextension definition

CREATE TABLE `t_wtte_qtdetailextension` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FQTTYPEID` bigint NOT NULL DEFAULT '0',
  `FQTDETAILSCOPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERYYEAR` datetime DEFAULT NULL,
  `FQUERYMONTH` datetime DEFAULT NULL,
  `FQTDETAILID` bigint NOT NULL DEFAULT '0',
  `FDELAYUSEDATE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELAYMETHOD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELAYVALUE` int NOT NULL DEFAULT '0',
  `FDELAYUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODCIRCLEID` bigint NOT NULL DEFAULT '0',
  `FPERIODNUM` int NOT NULL DEFAULT '0',
  `FSOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCROSSDAY` datetime DEFAULT NULL,
  `FGENSTARTDATE` datetime DEFAULT NULL,
  `FGENENDDATE` datetime DEFAULT NULL,
  `FUSESTARTDATE` datetime DEFAULT NULL,
  `FUSEENDDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_QTDELEXTSION_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qtdetailextension_l definition

CREATE TABLE `t_wtte_qtdetailextension_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_QTDETAILEXTENSION_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qttiesubtask definition

CREATE TABLE `t_wtte_qttiesubtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FSUBTASKSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFRESHTIME` datetime DEFAULT NULL,
  `FATTFILETOTALCOUNT` int NOT NULL DEFAULT '0',
  `FRUNATTFILE` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTFILE` int NOT NULL DEFAULT '0',
  `FFAILEDATTFILE` int NOT NULL DEFAULT '0',
  `FNOTRUNATTFILE` int NOT NULL DEFAULT '0',
  `FTOTALATTPERSON` int NOT NULL DEFAULT '0',
  `FRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTPERSON` int NOT NULL DEFAULT '0',
  `FFAILEDATTPERSON` int NOT NULL DEFAULT '0',
  `FNOTRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_QTTIESUBTASK_FTASKID` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qttiesubtask_r3 definition

CREATE TABLE `t_wtte_qttiesubtask_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qttietask definition

CREATE TABLE `t_wtte_qttietask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FTASKSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIMECOST` bigint NOT NULL DEFAULT '0',
  `FTASKDESC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FTOTALSUBTASK` int NOT NULL DEFAULT '0',
  `FFINISHEDSUBTASK` int NOT NULL DEFAULT '0',
  `FREFRESHTIME` datetime DEFAULT NULL,
  `FPROGRESS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FCATEGORY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHASSUBTASK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCALSTARTDATE` datetime DEFAULT NULL,
  `FCALENDDATE` datetime DEFAULT NULL,
  `FTOTALATTFILE` int NOT NULL DEFAULT '0',
  `FRUNATTFILE` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTFILE` int NOT NULL DEFAULT '0',
  `FFAILEDATTFILE` int NOT NULL DEFAULT '0',
  `FNOTRUNATTFILE` int NOT NULL DEFAULT '0',
  `FTOTALATTPERSON` int NOT NULL DEFAULT '0',
  `FRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTPERSON` int NOT NULL DEFAULT '0',
  `FFAILEDATTPERSON` int NOT NULL DEFAULT '0',
  `FNOTRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FCALSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FERRCAUSE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRCAUSE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_QTTIETASK_FTASKID` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qttietask_l definition

CREATE TABLE `t_wtte_qttietask_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKDESC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_QTTIETASK_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qttietask_r3 definition

CREATE TABLE `t_wtte_qttietask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qttietaskdetail definition

CREATE TABLE `t_wtte_qttietaskdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSUBTASKID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FATTFILEBOID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONJOBID` bigint NOT NULL DEFAULT '0',
  `FATTTAGID` bigint NOT NULL DEFAULT '0',
  `FEXINFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FREALCALSTARTDATE` datetime DEFAULT NULL,
  `FREALCALENDDATE` datetime DEFAULT NULL,
  `FTASKDETAILSTATE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWTTEINFOID` bigint NOT NULL DEFAULT '0',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTIESTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_QTTIETASKDETAIL_FTID` (`FTASKID`),
  KEY `IDX_WTTE_QTTIETASKDETAIL_FSID` (`FSUBTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qttietaskdetail_r3 definition

CREATE TABLE `t_wtte_qttietaskdetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_qttypeid definition

CREATE TABLE `t_wtte_qttypeid` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_QTTYPEID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadatajson definition

CREATE TABLE `t_wtte_quotadatajson` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FDATAJSON_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FQTTYPEID` bigint NOT NULL DEFAULT '0',
  `FPERIODNUM` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_QUOTADATAJSON` (`FPERSONID`,`FVERSION`,`FQTTYPEID`,`FPERIODNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadatajson_r3 definition

CREATE TABLE `t_wtte_quotadatajson_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadetail definition

CREATE TABLE `t_wtte_quotadetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBID` bigint NOT NULL DEFAULT '0',
  `FATTITEMVID` bigint NOT NULL DEFAULT '0',
  `FATTITEMVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FATTITEMVALUESTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENSTARTDATE` datetime DEFAULT NULL,
  `FGENENDDATE` datetime DEFAULT NULL,
  `FUSESTARTDATE` datetime DEFAULT NULL,
  `FUSEENDDATE` datetime DEFAULT NULL,
  `FTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEATTITEMID` bigint NOT NULL DEFAULT '0',
  `FCROSSSTARTDATE` datetime DEFAULT NULL,
  `FCROSSENDDATE` datetime DEFAULT NULL,
  `FPERIODCIRCLEID` bigint NOT NULL DEFAULT '0',
  `FPERIODNUM` int NOT NULL DEFAULT '0',
  `FQTTYPEID` bigint NOT NULL DEFAULT '0',
  `FGENTIME` datetime DEFAULT NULL,
  `FASSIGNDATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSABLEVALUEID` bigint NOT NULL DEFAULT '0',
  `FSOURCEATTITEMIDS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FVESTDAY` datetime DEFAULT NULL,
  `FVESTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_QUOTADETAIL_FBID` (`FBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadetail_r3 definition

CREATE TABLE `t_wtte_quotadetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadetailadd definition

CREATE TABLE `t_wtte_quotadetailadd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `INDEX_WTTE_QUOTADETAILADD` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadetailadd_l definition

CREATE TABLE `t_wtte_quotadetailadd_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_QUOTADETAILADD_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadetailadd_r3 definition

CREATE TABLE `t_wtte_quotadetailadd_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadetailhis definition

CREATE TABLE `t_wtte_quotadetailhis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBID` bigint NOT NULL DEFAULT '0',
  `FATTITEMVID` bigint NOT NULL DEFAULT '0',
  `FATTITEMVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FATTITEMVALUESTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENSTARTDATE` datetime DEFAULT NULL,
  `FGENENDDATE` datetime DEFAULT NULL,
  `FUSESTARTDATE` datetime DEFAULT NULL,
  `FUSEENDDATE` datetime DEFAULT NULL,
  `FTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEATTITEMID` bigint NOT NULL DEFAULT '0',
  `FCROSSSTARTDATE` datetime DEFAULT NULL,
  `FCROSSENDDATE` datetime DEFAULT NULL,
  `FPERIODCIRCLEID` bigint NOT NULL DEFAULT '0',
  `FPERIODNUM` int NOT NULL DEFAULT '0',
  `FQTTYPEID` bigint NOT NULL DEFAULT '0',
  `FGENTIME` datetime DEFAULT NULL,
  `FASSIGNDATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEATTITEMIDS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FVESTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVESTDAY` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_QUOTADETAILHIS_FBID` (`FBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadetailhis_r3 definition

CREATE TABLE `t_wtte_quotadetailhis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadetailmdfy definition

CREATE TABLE `t_wtte_quotadetailmdfy` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FQTTYPEID` bigint NOT NULL DEFAULT '0',
  `FQTDETAILSCOPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERYYEAR` datetime DEFAULT NULL,
  `FQUERYMONTH` datetime DEFAULT NULL,
  `FQTDETAILID` bigint NOT NULL DEFAULT '0',
  `FMDFYMETHOD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODCIRCLEID` bigint NOT NULL DEFAULT '0',
  `FPERIODNUM` int NOT NULL DEFAULT '0',
  `FSOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCROSSDAY` datetime DEFAULT NULL,
  `FGENSTARTDATE` datetime DEFAULT NULL,
  `FGENENDDATE` datetime DEFAULT NULL,
  `FUSESTARTDATE` datetime DEFAULT NULL,
  `FUSEENDDATE` datetime DEFAULT NULL,
  `FMDFYVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_QTDETAILMDFY_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadetailmdfy_l definition

CREATE TABLE `t_wtte_quotadetailmdfy_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_QUOTADETAILMDFY_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_quotadetailmdfy_r3 definition

CREATE TABLE `t_wtte_quotadetailmdfy_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_recordcleanlog definition

CREATE TABLE `t_wtte_recordcleanlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FMAXHISVERSION` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_RECORDCLEANLOG_START` (`FSTARTTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_recordcleanlog_r3 definition

CREATE TABLE `t_wtte_recordcleanlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_reportanalysis definition

CREATE TABLE `t_wtte_reportanalysis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTOTALTASKCOST` int NOT NULL DEFAULT '0',
  `FSHARDINGNUM` int NOT NULL DEFAULT '0',
  `FSHARDINGLIMIT` int NOT NULL DEFAULT '0',
  `FMAINTASKSTART` datetime DEFAULT NULL,
  `FMAINTASKEND` datetime DEFAULT NULL,
  `FMAINTASKID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANALYSISDATA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANALYSISDATA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FRICHTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRICHTEXT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_REPORTANALYSIS_A` (`FMAINTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revision definition

CREATE TABLE `t_wtte_revision` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FTRIMTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_REVISION` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revision_l definition

CREATE TABLE `t_wtte_revision_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_REVISION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revisionallhis definition

CREATE TABLE `t_wtte_revisionallhis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDAT` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FADJUSTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTITEMTOID` bigint NOT NULL DEFAULT '0',
  `FREVISIONTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_REVISIONALLHIS` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revisionallhis_r3 definition

CREATE TABLE `t_wtte_revisionallhis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revisionentry definition

CREATE TABLE `t_wtte_revisionentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTPERSON` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FITEM` bigint NOT NULL DEFAULT '0',
  `FTRIMTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` int NOT NULL DEFAULT '0',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTFILEIDS` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEMOVEITEM` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTFILEAUTHID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTENDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_REVISIONENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revisionentryhi_r3 definition

CREATE TABLE `t_wtte_revisionentryhi_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revisionentryhis definition

CREATE TABLE `t_wtte_revisionentryhis` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTPERSON` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FITEM` bigint NOT NULL DEFAULT '0',
  `FTRIMTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` int NOT NULL DEFAULT '0',
  `FBEMOVEITEM` bigint NOT NULL DEFAULT '0',
  `FITEMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FATTFILEIDS` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTFILEAUTHID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTENDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTTE_REVISIONENTRYHIS` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revisionhis definition

CREATE TABLE `t_wtte_revisionhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRIMTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_WTTE_REVISIONHIS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revisionhis_l definition

CREATE TABLE `t_wtte_revisionhis_l` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_REVISIONHIS_L` (`FVID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revisionsentry definition

CREATE TABLE `t_wtte_revisionsentry` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILE` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPERSON` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_WTTE_REVISIONSENTRY` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revisionsentryh_r3 definition

CREATE TABLE `t_wtte_revisionsentryh_r3` (
  `fdetailid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fdetailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_revisionsentryhis definition

CREATE TABLE `t_wtte_revisionsentryhis` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTFILE` bigint NOT NULL DEFAULT '0',
  `FREVISION` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPERSON` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_WTTE_REVISIONSENTRYHIS` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settle definition

CREATE TABLE `t_wtte_settle` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSETTLETYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTLEMODE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTLEPERIODID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSETTLESTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIFYDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_SETTLE_FTASKID` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settle_r3 definition

CREATE TABLE `t_wtte_settle_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settleinfo definition

CREATE TABLE `t_wtte_settleinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FATTPERIODID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FFROZENSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROZENDATE` datetime DEFAULT NULL,
  `FFROZENUSER` bigint NOT NULL DEFAULT '0',
  `FLOCKSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCKDATE` datetime DEFAULT NULL,
  `FLOCKUSER` bigint NOT NULL DEFAULT '0',
  `FSTORAGESTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGEDATE` datetime DEFAULT NULL,
  `FSTORAGEUSER` bigint NOT NULL DEFAULT '0',
  `FPERATTPERIOD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKDETAILID` bigint NOT NULL DEFAULT '0',
  `FBUSSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTPERATTPERIODPK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_SI_FTDID` (`FTASKDETAILID`),
  KEY `IDX_SETTLE_FILE` (`FATTFILEID`),
  KEY `IDX_SETTLE_PERSON` (`FATTPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settleinfo_r3 definition

CREATE TABLE `t_wtte_settleinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settleinfohis definition

CREATE TABLE `t_wtte_settleinfohis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FATTPERIODID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FFROZENSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROZENDATE` datetime DEFAULT NULL,
  `FFROZENUSER` bigint NOT NULL DEFAULT '0',
  `FLOCKSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCKDATE` datetime DEFAULT NULL,
  `FLOCKUSER` bigint NOT NULL DEFAULT '0',
  `FSTORAGESTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGEDATE` datetime DEFAULT NULL,
  `FSTORAGEUSER` bigint NOT NULL DEFAULT '0',
  `FPERATTPERIOD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKDETAILID` bigint NOT NULL DEFAULT '0',
  `FBUSSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTPERATTPERIODPK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_SIHIS_FTDID` (`FTASKDETAILID`),
  KEY `IDX_SETTLEHIS_FILE` (`FATTFILEID`),
  KEY `IDX_SETTLEHIS_PERSON` (`FATTPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settleinfohis_r3 definition

CREATE TABLE `t_wtte_settleinfohis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settlesubtask definition

CREATE TABLE `t_wtte_settlesubtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FSUBTASKSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFRESHTIME` datetime DEFAULT NULL,
  `FATTFILETOTALCOUNT` int NOT NULL DEFAULT '0',
  `FRUNATTFILE` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTFILE` int NOT NULL DEFAULT '0',
  `FFAILEDATTFILE` int NOT NULL DEFAULT '0',
  `FNOTRUNATTFILE` int NOT NULL DEFAULT '0',
  `FTOTALATTPERSON` int NOT NULL DEFAULT '0',
  `FRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTPERSON` int NOT NULL DEFAULT '0',
  `FFAILEDATTPERSON` int NOT NULL DEFAULT '0',
  `FNOTRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_SEST_FTASKID` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settlesubtask_r3 definition

CREATE TABLE `t_wtte_settlesubtask_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settletask definition

CREATE TABLE `t_wtte_settletask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FTASKSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIMECOST` bigint NOT NULL DEFAULT '0',
  `FTASKDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALSUBTASK` int NOT NULL DEFAULT '0',
  `FFINISHEDSUBTASK` int NOT NULL DEFAULT '0',
  `FREFRESHTIME` datetime DEFAULT NULL,
  `FPROGRESS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FCATEGORY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHASSUBTASK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCALSTARTDATE` datetime DEFAULT NULL,
  `FCALENDDATE` datetime DEFAULT NULL,
  `FTOTALATTFILE` int NOT NULL DEFAULT '0',
  `FRUNATTFILE` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTFILE` int NOT NULL DEFAULT '0',
  `FFAILEDATTFILE` int NOT NULL DEFAULT '0',
  `FNOTRUNATTFILE` int NOT NULL DEFAULT '0',
  `FTOTALATTPERSON` int NOT NULL DEFAULT '0',
  `FRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTPERSON` int NOT NULL DEFAULT '0',
  `FFAILEDATTPERSON` int NOT NULL DEFAULT '0',
  `FNOTRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_SETASK_FVERSION` (`FVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settletask_l definition

CREATE TABLE `t_wtte_settletask_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_SETTLETASK_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settletask_r3 definition

CREATE TABLE `t_wtte_settletask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settletaskdetai_r3 definition

CREATE TABLE `t_wtte_settletaskdetai_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_settletaskdetail definition

CREATE TABLE `t_wtte_settletaskdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSUBTASKID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FATTFILEBOID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONJOBID` bigint NOT NULL DEFAULT '0',
  `FATTTAGID` bigint NOT NULL DEFAULT '0',
  `FEXINFO` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FREALCALSTARTDATE` datetime DEFAULT NULL,
  `FREALCALENDDATE` datetime DEFAULT NULL,
  `FTASKDETAILSTATE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_SETASKDETAILTID` (`FTASKID`),
  KEY `IDX_WTTE_SETD_FILE` (`FATTFILEID`),
  KEY `IDX_WTTE_SETASKDETAILSTID` (`FSUBTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_tieengingstate definition

CREATE TABLE `t_wtte_tieengingstate` (
  `FTIEENGINGID` bigint NOT NULL,
  `FTASKID` bigint DEFAULT NULL,
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQUEST` longtext COLLATE utf8mb4_unicode_ci,
  `FLINESUM` bigint DEFAULT NULL,
  `FLINESUCCESS` bigint DEFAULT NULL,
  `FLINEFAILED` bigint DEFAULT NULL,
  `FLINENOTRUN` bigint DEFAULT NULL,
  `FCHAINSUM` bigint DEFAULT NULL,
  `FCHAINFINISH` bigint DEFAULT NULL,
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGELEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FTASKSTATUSREFRESHTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FTIEENGINGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_tielinestate definition

CREATE TABLE `t_wtte_tielinestate` (
  `FLINEID` bigint NOT NULL,
  `FATTPERSONID` bigint DEFAULT NULL,
  `FBEGINDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCHAINSUM` bigint DEFAULT NULL,
  `FCHAINFINISH` bigint DEFAULT NULL,
  `FTIETODATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGELEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FTIEENGINGID` bigint DEFAULT NULL,
  `FTASKID` bigint DEFAULT NULL,
  `FTASKSTATUSREFRESHTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FLINEID`),
  KEY `IDX_WTTE_TIELINESTATE` (`FTIEENGINGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_tielinestate_r3 definition

CREATE TABLE `t_wtte_tielinestate_r3` (
  `flineid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`flineid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_tiesubtask definition

CREATE TABLE `t_wtte_tiesubtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FSUBTASKSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFRESHTIME` datetime DEFAULT NULL,
  `FATTFILETOTALCOUNT` int NOT NULL DEFAULT '0',
  `FRUNATTFILE` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTFILE` int NOT NULL DEFAULT '0',
  `FFAILEDATTFILE` int NOT NULL DEFAULT '0',
  `FNOTRUNATTFILE` int NOT NULL DEFAULT '0',
  `FTOTALATTPERSON` int NOT NULL DEFAULT '0',
  `FRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTPERSON` int NOT NULL DEFAULT '0',
  `FFAILEDATTPERSON` int NOT NULL DEFAULT '0',
  `FNOTRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_TIESUBTASK_FTASKID` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_tiesubtask_r3 definition

CREATE TABLE `t_wtte_tiesubtask_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_tietask definition

CREATE TABLE `t_wtte_tietask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FTASKSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIMECOST` bigint NOT NULL DEFAULT '0',
  `FTASKDESC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FTOTALSUBTASK` int NOT NULL DEFAULT '0',
  `FFINISHEDSUBTASK` int NOT NULL DEFAULT '0',
  `FREFRESHTIME` datetime DEFAULT NULL,
  `FPROGRESS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FCATEGORY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHASSUBTASK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCALSTARTDATE` datetime DEFAULT NULL,
  `FCALENDDATE` datetime DEFAULT NULL,
  `FTOTALATTFILE` int NOT NULL DEFAULT '0',
  `FRUNATTFILE` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTFILE` int NOT NULL DEFAULT '0',
  `FFAILEDATTFILE` int NOT NULL DEFAULT '0',
  `FNOTRUNATTFILE` int NOT NULL DEFAULT '0',
  `FTOTALATTPERSON` int NOT NULL DEFAULT '0',
  `FRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FSUCCEEDATTPERSON` int NOT NULL DEFAULT '0',
  `FFAILEDATTPERSON` int NOT NULL DEFAULT '0',
  `FNOTRUNATTPERSON` int NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FERRCAUSE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRCAUSE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_TIETASK_FVERSION` (`FVERSION`),
  KEY `IDX_WTTE_TIETASK_FSTARTDATE` (`FSTARTDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_tietask_l definition

CREATE TABLE `t_wtte_tietask_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKDESC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTTE_TIETASK_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_tietask_r3 definition

CREATE TABLE `t_wtte_tietask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_tietaskdetail definition

CREATE TABLE `t_wtte_tietaskdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSUBTASKID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FATTFILEBOID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONJOBID` bigint NOT NULL DEFAULT '0',
  `FATTTAGID` bigint NOT NULL DEFAULT '0',
  `FEXINFO` varchar(780) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FREALCALSTARTDATE` datetime DEFAULT NULL,
  `FREALCALENDDATE` datetime DEFAULT NULL,
  `FTASKDETAILSTATE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWTTEINFOID` bigint NOT NULL DEFAULT '0',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FAGREEDWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FTIESTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FACCOUNTTO` datetime DEFAULT NULL,
  `FLOCKTO` datetime DEFAULT NULL,
  `FATTFILESTARTDATE` datetime DEFAULT NULL,
  `FATTFILEENDDATE` datetime DEFAULT NULL,
  `FALLOWREACCOUNTTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTTE_TIETASKDETAIL_FSUBID` (`FSUBTASKID`),
  KEY `IDX_WTTE_TIETASKDETAIL_FTID` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtdtd.t_wtte_tietaskdetail_r3 definition

CREATE TABLE `t_wtte_tietaskdetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
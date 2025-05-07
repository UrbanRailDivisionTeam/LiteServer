USE crrc_wtc_wtte;

-- crrc_wtc_wtte.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_checkcard definition

CREATE TABLE `t_wtpm_checkcard` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTCARD` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHIFTDATE` datetime DEFAULT NULL,
  `FSHIFTID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEBOID` bigint NOT NULL DEFAULT '0',
  `FWEEK` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATETYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_CHECKCARD` (`FSHIFTDATE`,`FATTPERSONID`),
  KEY `IDX_WTPM_CHECKCARD_B` (`FATTFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_checkcard_r3 definition

CREATE TABLE `t_wtpm_checkcard_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_checkcardentry definition

CREATE TABLE `t_wtpm_checkcardentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHECKPOINT` datetime DEFAULT NULL,
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FADDRESS` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOINTDESCID` bigint NOT NULL DEFAULT '0',
  `FACCESSTAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOINTTAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FCHECKPOINTUTC` datetime DEFAULT NULL,
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FDEVICEID` bigint NOT NULL DEFAULT '0',
  `FMATCHDATE` datetime DEFAULT NULL,
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTPM_CHECKCARDENTRY` (`FID`),
  KEY `IDX_WTPM_CHECKENTRY_A` (`FMATCHDATE`,`FATTPERSONID`,`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_lackcard definition

CREATE TABLE `t_wtpm_lackcard` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FATTCARD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHIFTDATE` datetime DEFAULT NULL,
  `FSHIFTID` bigint NOT NULL DEFAULT '0',
  `FATTMODE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWEEK` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATETYPEID` bigint NOT NULL DEFAULT '0',
  `FLACKPOINT` datetime DEFAULT NULL,
  `FPOINTDESCID` bigint NOT NULL DEFAULT '0',
  `FATTFILEBOID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FLACKPOINTUTC` datetime DEFAULT NULL,
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_LACKCARD_A` (`FSHIFTDATE`,`FATTPERSONID`,`FLACKPOINT`),
  KEY `IDX_WTPM_LACKCARD_B` (`FATTFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_lackcard_r3 definition

CREATE TABLE `t_wtpm_lackcard_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchexdetail definition

CREATE TABLE `t_wtpm_matchexdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEVADATE` datetime DEFAULT NULL,
  `FEXCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXINFO` varchar(780) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_MATCHEXDETAIL_A` (`FTASKID`,`FATTFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchexdetail_r3 definition

CREATE TABLE `t_wtpm_matchexdetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchresult definition

CREATE TABLE `t_wtpm_matchresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FTASKSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_MATCHRESULT_B` (`FCREATETIME`,`FCREATORID`),
  KEY `IDX_WTPM_MATCHRESULT_A` (`FVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchresult_l definition

CREATE TABLE `t_wtpm_matchresult_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTPM_MATCHRESULT_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchresult_r3 definition

CREATE TABLE `t_wtpm_matchresult_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchsubtask definition

CREATE TABLE `t_wtpm_matchsubtask` (
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
  KEY `IDX_WTPM_MATCHSUBTASK_A` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchsubtask_r3 definition

CREATE TABLE `t_wtpm_matchsubtask_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchtask definition

CREATE TABLE `t_wtpm_matchtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMATCHSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_MATCHTASK_A` (`FVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchtask_l definition

CREATE TABLE `t_wtpm_matchtask_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKDESC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTPM_MATCHTASK_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchtask_r3 definition

CREATE TABLE `t_wtpm_matchtask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchtaskdetail definition

CREATE TABLE `t_wtpm_matchtaskdetail` (
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
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_MATCHTASKDETAIL_A` (`FTASKID`),
  KEY `IDX_WTPM_MATCHTASKDETAIL_B` (`FTASKID`,`FSUBTASKID`,`FATTFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_matchtaskdetail_r3 definition

CREATE TABLE `t_wtpm_matchtaskdetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_multicard definition

CREATE TABLE `t_wtpm_multicard` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTCARD` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHIFTDATE` datetime DEFAULT NULL,
  `FSHIFTID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEBOID` bigint NOT NULL DEFAULT '0',
  `FWEEK` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATETYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_MULTICARD` (`FSHIFTDATE`,`FATTPERSONID`),
  KEY `IDX_WTPM_MULTICARD_B` (`FATTFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_multicard_r3 definition

CREATE TABLE `t_wtpm_multicard_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_multicardentry definition

CREATE TABLE `t_wtpm_multicardentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEFFECTIVEPOINT` datetime DEFAULT NULL,
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FADDRESS` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMUSTPOINT` datetime DEFAULT NULL,
  `FPOINTDESCID` bigint NOT NULL DEFAULT '0',
  `FACCESSTAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOINTTAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FMULTIPOINTUTC` datetime DEFAULT NULL,
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FMUSTPOINTDESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FMATCHDATE` datetime DEFAULT NULL,
  `FDEVICEID` bigint NOT NULL DEFAULT '0',
  `FAPPLYREASONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTPM_MULTICARDENTRY` (`FID`),
  KEY `IDX_WTPM_MULTIENTRY_A` (`FMATCHDATE`,`FATTPERSONID`,`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_oncecard definition

CREATE TABLE `t_wtpm_oncecard` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTCARD` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHIFTDATE` datetime DEFAULT NULL,
  `FSHIFTID` bigint NOT NULL DEFAULT '0',
  `FACCESSTAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FONCEPOINT` datetime DEFAULT NULL,
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FPOINTTAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FONCERANGE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FONCEPOINTUTC` datetime DEFAULT NULL,
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEBOID` bigint NOT NULL DEFAULT '0',
  `FWEEK` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATETYPEID` bigint NOT NULL DEFAULT '0',
  `FDEVICEID` bigint NOT NULL DEFAULT '0',
  `FAPPLYREASONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_ONCECARD` (`FSHIFTDATE`,`FATTPERSONID`),
  KEY `IDX_WTPM_ONCECARD_B` (`FATTFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_oncecard_r3 definition

CREATE TABLE `t_wtpm_oncecard_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_pointtaglog definition

CREATE TABLE `t_wtpm_pointtaglog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FVESTINGDATE` datetime DEFAULT NULL,
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FMULTIPOINTUTC` datetime DEFAULT NULL,
  `FWORKTAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULTIPOINT` datetime DEFAULT NULL,
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCESSTAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOINTTAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDEVICEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_POINTTAGLOG_A` (`FVESTINGDATE`,`FATTPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_pointtaglog_r3 definition

CREATE TABLE `t_wtpm_pointtaglog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_punchcardequip definition

CREATE TABLE `t_wtpm_punchcardequip` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FSIGNSOURCEID` bigint NOT NULL DEFAULT '0',
  `FATTEPLACEID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FADDRESS` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_PUNCHCARDEQUIP` (`FNUMBER`),
  KEY `IDX_T_WTPM_PUNCHCARDEQUIP_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_WTPM_PUNCHCARDEQUIP_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_punchcardequip_bit definition

CREATE TABLE `t_wtpm_punchcardequip_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_punchcardequip_l definition

CREATE TABLE `t_wtpm_punchcardequip_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADDRESS` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTPM_PUNCHCARDEQUIP_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_punchcardequip_r3 definition

CREATE TABLE `t_wtpm_punchcardequip_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_punchcardequip_u definition

CREATE TABLE `t_wtpm_punchcardequip_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_WTPM_PUNCHCARDEQUIP_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_punchcardequipexc definition

CREATE TABLE `t_wtpm_punchcardequipexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_WTPM_PUNCHCARDEQUIPEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_punchcardequipusereg definition

CREATE TABLE `t_wtpm_punchcardequipusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_WTPM_PUNCHCARDEQUIPUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardapply definition

CREATE TABLE `t_wtpm_signcardapply` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHIFTBOID` bigint NOT NULL DEFAULT '0',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOPENSHIFT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FISWITHORG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISWITHPERSON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FISVALID` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUBMITTER` bigint NOT NULL DEFAULT '0',
  `FSUBMITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SIGNCARDAPPLY` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardapply_r3 definition

CREATE TABLE `t_wtpm_signcardapply_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardexcper definition

CREATE TABLE `t_wtpm_signcardexcper` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTPM_SIGNCARDEXCPER` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardexdetai_r3 definition

CREATE TABLE `t_wtpm_signcardexdetai_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardexdetail definition

CREATE TABLE `t_wtpm_signcardexdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKDETAILID` bigint NOT NULL DEFAULT '0',
  `FEVADATE` datetime DEFAULT NULL,
  `FEXCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXINFO` varchar(780) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSUBTASKID` bigint NOT NULL DEFAULT '0',
  `FSUPPLEWORKTIME` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SIGNCARDEXDETAIL` (`FSUBTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardextra definition

CREATE TABLE `t_wtpm_signcardextra` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FEXTEAATTFILEID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSORGRELID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXTRAREMARK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTPM_SIGNCARDEXTRA` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardgenex definition

CREATE TABLE `t_wtpm_signcardgenex` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCEPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCEPTION_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCOUNT` int NOT NULL DEFAULT '0',
  `FTRACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SIGNCARDGENEX` (`FBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardgenex_r3 definition

CREATE TABLE `t_wtpm_signcardgenex_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardinfo definition

CREATE TABLE `t_wtpm_signcardinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSIGNDATE` datetime DEFAULT NULL,
  `FSUPPLEWORKTIME` int NOT NULL DEFAULT '0',
  `FSIGNPOINT` datetime DEFAULT NULL,
  `FAPPLYREASONID` bigint NOT NULL DEFAULT '0',
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FACCESSTAG` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FEQUIPMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FPOINTTAG` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SIGNCARDINFO` (`FBILLID`),
  KEY `IDX_WTPM_SIGNCARD_SIGNDATE` (`FSIGNDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardlist definition

CREATE TABLE `t_wtpm_signcardlist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FCARD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONLD` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUPSIGNINFOID` bigint NOT NULL DEFAULT '0',
  `FISVALID` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISBATCH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FISINWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SIGNCARDLIST` (`FBILLID`),
  KEY `IDX_WTPM_SIGNCARDLIST_BILLNO` (`FBILLNO`),
  KEY `IDX_WTPM_SCATTFILE` (`FATTFILEVID`),
  KEY `IDX_WTPM_SCATTFILEBO` (`FATTFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardorg definition

CREATE TABLE `t_wtpm_signcardorg` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORGTYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGCLASSID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTPM_SIGNCARDORG` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardrangein_r3 definition

CREATE TABLE `t_wtpm_signcardrangein_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardrangeinfo definition

CREATE TABLE `t_wtpm_signcardrangeinfo` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FSUPPLEWORKTIME` int NOT NULL DEFAULT '0',
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FACCESSTAG` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FEQUIPMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOINTTAG` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYREASONID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSIGNDATE` datetime DEFAULT NULL,
  `FEQUIPMENTID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSIGNPOINT` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTPM_SIGNCARDRANGEINFO` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardsubtask definition

CREATE TABLE `t_wtpm_signcardsubtask` (
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
  KEY `IDX_WTPM_SIGNCARDSUBTASK` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardsubtask_r3 definition

CREATE TABLE `t_wtpm_signcardsubtask_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardtask definition

CREATE TABLE `t_wtpm_signcardtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FMATCHSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SIGNCARDTASK` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardtask_l definition

CREATE TABLE `t_wtpm_signcardtask_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKDESC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTPM_SIGNCARDTASK_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardtask_r3 definition

CREATE TABLE `t_wtpm_signcardtask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardtaskdet_r3 definition

CREATE TABLE `t_wtpm_signcardtaskdet_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardtaskdetail definition

CREATE TABLE `t_wtpm_signcardtaskdetail` (
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
  `FDESC` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONLD` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FTOTAL` int NOT NULL DEFAULT '0',
  `FSUCCESS` int NOT NULL DEFAULT '0',
  `FFAIL` int NOT NULL DEFAULT '0',
  `FMATCHSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SIGNCARDTASKDETAIL` (`FSUBTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardtasklog definition

CREATE TABLE `t_wtpm_signcardtasklog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SIGNCARDTASKLOG` (`FBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_signcardtasklog_r3 definition

CREATE TABLE `t_wtpm_signcardtasklog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supquotapool definition

CREATE TABLE `t_wtpm_supquotapool` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FTIMESCOPE` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIMESCOPEBEGIN` datetime DEFAULT NULL,
  `FTIMESCOPEEND` datetime DEFAULT NULL,
  `FREASONID` bigint NOT NULL DEFAULT '0',
  `FNORMALUSABLE` int NOT NULL DEFAULT '0',
  `FNORMALUSED` int NOT NULL DEFAULT '0',
  `FNORMALFREEZE` int NOT NULL DEFAULT '0',
  `FNORMALREMAIN` int NOT NULL DEFAULT '0',
  `FABOVEUSABLE` int NOT NULL DEFAULT '0',
  `FABOVEUSED` int NOT NULL DEFAULT '0',
  `FABOVEFREEZE` int NOT NULL DEFAULT '0',
  `FABOVEREMAIN` int NOT NULL DEFAULT '0',
  `FSIGN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISVALID` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FALLOWABOVE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SUPPOOL_SIGN` (`FSIGN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supquotapool_r3 definition

CREATE TABLE `t_wtpm_supquotapool_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsign definition

CREATE TABLE `t_wtpm_supsign` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHIFTBOID` bigint NOT NULL DEFAULT '0',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPENSHIFT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISWITHORG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISWITHPERSON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FATTFILEBASEID` bigint NOT NULL DEFAULT '0',
  `FSUBMITTER` bigint NOT NULL DEFAULT '0',
  `FSUBMITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SUPSIGN` (`FBILLNO`),
  KEY `IDX_WTPM_SUPSIGNATTFILE` (`FATTFILEBASEID`),
  KEY `IDX_WTPM_SUPSIGNATTFILEBO` (`FATTFILEID`),
  KEY `IDX_WTPM_SUPSIGNPERSON` (`FPERSONID`),
  KEY `IDX_WTPM_SUPSIGNCREATOR` (`FCREATORID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignbatch definition

CREATE TABLE `t_wtpm_supsignbatch` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FISWITHORG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISWITHPERSON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISVALID` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAPPLYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FBATCHSUPTYPE` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHIFTBOID` bigint NOT NULL DEFAULT '0',
  `FOPENSHIFT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUBMITTER` bigint NOT NULL DEFAULT '0',
  `FSUBMITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SUPSIGNBATCH` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignbatch_r3 definition

CREATE TABLE `t_wtpm_supsignbatch_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignbatchinf_r3 definition

CREATE TABLE `t_wtpm_supsignbatchinf_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignbatchinfo definition

CREATE TABLE `t_wtpm_supsignbatchinfo` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSUPPLEWORKTIME` int NOT NULL DEFAULT '0',
  `FAPPLYREASONID` bigint NOT NULL DEFAULT '0',
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FACCESSTAG` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FPOINTTAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FEQUIPMENTID` bigint NOT NULL DEFAULT '0',
  `FSIGNDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTPM_SUPSIGNBATCHINFO` (`FID`),
  KEY `IDX_WTPM_SUPSIGNBATCHINFO_DATE` (`FSIGNDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignexcper definition

CREATE TABLE `t_wtpm_supsignexcper` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTPM_SUPSIGNEXCPER` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignexdetail definition

CREATE TABLE `t_wtpm_supsignexdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKDETAILID` bigint NOT NULL DEFAULT '0',
  `FEVADATE` datetime DEFAULT NULL,
  `FEXCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXINFO` varchar(780) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSUBTASKID` bigint NOT NULL DEFAULT '0',
  `FSUPPLEWORKTIME` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SUPSIGNEXDETAIL` (`FSUBTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignexdetail_r3 definition

CREATE TABLE `t_wtpm_supsignexdetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignextra definition

CREATE TABLE `t_wtpm_supsignextra` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FEXTEAATTFILEID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSORGRELID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXTRAREMARK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTPM_SUPSIGNEXTRA` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsigninfo definition

CREATE TABLE `t_wtpm_supsigninfo` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSIGNDATE` datetime DEFAULT NULL,
  `FSUPPLEWORKTIME` int NOT NULL DEFAULT '0',
  `FAPPLYREASONID` bigint NOT NULL DEFAULT '0',
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FACCESSTAG` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSIGNPOINT` datetime DEFAULT NULL,
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FPOINTTAG` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTPOLICYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEQUIPMENTID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTPM_SUPSIGNINFO` (`FID`),
  KEY `IDX_WTPM_SUPSIGN_SIGNDATE` (`FSIGNDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsigninfo_r3 definition

CREATE TABLE `t_wtpm_supsigninfo_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignlist definition

CREATE TABLE `t_wtpm_supsignlist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FATTPERSONID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FCARD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONLD` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISBATCH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FISINWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUPSIGNINFOID` bigint NOT NULL DEFAULT '0',
  `FISVALID` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  `FISCHECKPASS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SUPSIGNLIST` (`FBILLID`),
  KEY `IDX_WTPM_PERSONID` (`FATTPERSONID`),
  KEY `IDX_WTPM_SUPSIGNBILLNO` (`FBILLNO`),
  KEY `IDX_WTPM_BATCHADATTFILE` (`FATTFILEVID`),
  KEY `IDX_WTPM_BATCHADATTFILEBO` (`FATTFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignmultipri definition

CREATE TABLE `t_wtpm_supsignmultipri` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSIGNDATE` datetime DEFAULT NULL,
  `FSUPPLEWORKTIME` int NOT NULL DEFAULT '0',
  `FAPPLYREASONID` bigint NOT NULL DEFAULT '0',
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FACCESSTAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOINTTAG` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FEQUIPMENTID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTPM_SUPSIGNMULTIPRI` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignorg definition

CREATE TABLE `t_wtpm_supsignorg` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORGTYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGCLASSID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_WTPM_SUPSIGNORG` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignsubtask definition

CREATE TABLE `t_wtpm_supsignsubtask` (
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
  KEY `IDX_T_WTPM_SUPSIGNSUBTASK` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsignsubtask_r3 definition

CREATE TABLE `t_wtpm_supsignsubtask_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsigntask definition

CREATE TABLE `t_wtpm_supsigntask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FMATCHSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SUPSIGNTASK` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsigntask_l definition

CREATE TABLE `t_wtpm_supsigntask_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKDESC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_WTPM_SUPSIGNTASK_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsigntask_r3 definition

CREATE TABLE `t_wtpm_supsigntask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsigntaskdeta_r3 definition

CREATE TABLE `t_wtpm_supsigntaskdeta_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsigntaskdetail definition

CREATE TABLE `t_wtpm_supsigntaskdetail` (
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
  `FDESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONLD` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FAGREEDLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FTOTAL` int NOT NULL DEFAULT '0',
  `FSUCCESS` int NOT NULL DEFAULT '0',
  `FFAIL` int NOT NULL DEFAULT '0',
  `FMATCHSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SUPSIGNTASKDETAIL` (`FSUBTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsigntasklog definition

CREATE TABLE `t_wtpm_supsigntasklog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTPM_SUPSIGNTASKLOG` (`FBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtte.t_wtpm_supsigntasklog_r3 definition

CREATE TABLE `t_wtpm_supsigntasklog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
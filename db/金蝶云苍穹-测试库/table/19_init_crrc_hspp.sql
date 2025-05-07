USE crrc_hspp;

-- crrc_hspp.t_hspp_salarycalendar definition

CREATE TABLE `t_hspp_salarycalendar` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FSALARYFILEID` bigint NOT NULL DEFAULT '0',
  `FSALARYFILEVID` bigint NOT NULL DEFAULT '0',
  `FPAYROLLDATE` datetime DEFAULT NULL,
  `FCALCOUNT` bigint NOT NULL DEFAULT '0',
  `FPAYSUBJECTID` bigint NOT NULL DEFAULT '0',
  `FPAYSUBJECTVID` bigint NOT NULL DEFAULT '0',
  `FSALARYVIEWID` bigint NOT NULL DEFAULT '0',
  `FRELEASETIMESTAMP` bigint NOT NULL DEFAULT '0',
  `FRELEASETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FBIGINTFIELD` bigint NOT NULL DEFAULT '0',
  `FDATEFIELD` datetime DEFAULT NULL,
  `FSALARYVIEWVID` bigint NOT NULL DEFAULT '0',
  `FINVALIDTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCAPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FPAYROLLGRPID` bigint NOT NULL DEFAULT '0',
  `FSALARYSLIPDATA` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_HSPP_SALARYCALENDAR` (`FPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salarycalendar_l definition

CREATE TABLE `t_hspp_salarycalendar_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCAPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HSPP_SALARYCALENDAR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salarycalendar_r3 definition

CREATE TABLE `t_hspp_salarycalendar_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryslipdetai_r3 definition

CREATE TABLE `t_hspp_salaryslipdetai_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryslipdetail definition

CREATE TABLE `t_hspp_salaryslipdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENCRYKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALARYSLIPDATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HSPP_SALARYSLIPDETAIL` (`FENCRYKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryslipdetail_r3 definition

CREATE TABLE `t_hspp_salaryslipdetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryslippwd definition

CREATE TABLE `t_hspp_salaryslippwd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FPASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPASSWORD_ENP` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HSPP_SALARYSLIPPWD` (`FPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryslippwd_r3 definition

CREATE TABLE `t_hspp_salaryslippwd_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryslipstatu_r3 definition

CREATE TABLE `t_hspp_salaryslipstatu_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryslipstatus definition

CREATE TABLE `t_hspp_salaryslipstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSLIPID` bigint NOT NULL DEFAULT '0',
  `FSALARYCALENDARID` bigint NOT NULL DEFAULT '0',
  `FISVIEW` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISCONFIRM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISRECYCLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENCRYPTLEVEL` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENCRYPTTYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINVALIDTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HSPP_SALARYSLIPSTATUS` (`FSLIPID`),
  KEY `IDX_HSPP_SALARYSLIPSTATUS_1` (`FSALARYCALENDARID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryslipstatus_r3 definition

CREATE TABLE `t_hspp_salaryslipstatus_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryview definition

CREATE TABLE `t_hspp_salaryview` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FMVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FISMODIFY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSENDBYAUTO` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSENDBYMAIL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSALARYCLASSREF` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPUSHNOTIFY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPUSHCHANNEL` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFYMODE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERYSCOPE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERYTIME` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISNEEDCONFIRM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCURRENCYTYPE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSHOWPAYFLOW` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAILSENDERID` bigint NOT NULL DEFAULT '0',
  `FEMAILTHEME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAILCONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FEMAILCONTENT_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYNOTES` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEFAULTTITLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUTOENDNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HSPP_SALARYVIEW` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryview_l definition

CREATE TABLE `t_hspp_salaryview_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYNOTES` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEFAULTTITLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUTOENDNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HSPP_SALARYVIEW_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryviewdet_h definition

CREATE TABLE `t_hspp_salaryviewdet_h` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSALARYITEMID` bigint NOT NULL DEFAULT '0',
  `FISZERODISPLAY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISEMPTYDISPLAY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FITEMDISPLAYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_HSPP_SALARYVIEWDET_H_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryviewdet_h_l definition

CREATE TABLE `t_hspp_salaryviewdet_h_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FITEMDISPLAYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HSPP_SALARYVIEWDET_H_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryviewdetail definition

CREATE TABLE `t_hspp_salaryviewdetail` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSALARYITEMID` bigint NOT NULL DEFAULT '0',
  `FISZERODISPLAY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISEMPTYDISPLAY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FITEMDISPLAYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_HSPP_SALARYVIEWDETAIL_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryviewdetail_l definition

CREATE TABLE `t_hspp_salaryviewdetail_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FITEMDISPLAYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HSPP_SALARYVIEWDETAIL_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryviewent_h definition

CREATE TABLE `t_hspp_salaryviewent_h` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FISAUTOENDSUMMARY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSALARYITEMTYPEID` bigint NOT NULL DEFAULT '0',
  `FSTRUINSTAGID` bigint NOT NULL DEFAULT '0',
  `FISAUTOENDTOPSHOW` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FITEMCOUNT` int NOT NULL DEFAULT '0',
  `FGROUPNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPDISPLAYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HSPP_SALARYVIEWENT_H_FK` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryviewent_h_l definition

CREATE TABLE `t_hspp_salaryviewent_h_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPDISPLAYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HSPP_SALARYVIEWENT_H_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryviewentry definition

CREATE TABLE `t_hspp_salaryviewentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FISAUTOENDSUMMARY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSALARYITEMTYPEID` bigint NOT NULL DEFAULT '0',
  `FSTRUINSTAGID` bigint NOT NULL DEFAULT '0',
  `FISAUTOENDTOPSHOW` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FITEMCOUNT` int NOT NULL DEFAULT '0',
  `FGROUPNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPDISPLAYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HSPP_SALARYVIEWENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryviewentry_l definition

CREATE TABLE `t_hspp_salaryviewentry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPDISPLAYNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HSPP_SALARYVIEWENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryviewhis definition

CREATE TABLE `t_hspp_salaryviewhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLASTVERSION` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FPREVBRED` datetime DEFAULT NULL,
  `FISMODIFY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSENDBYAUTO` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSENDBYMAIL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSALARYCLASSREF` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPUSHNOTIFY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPUSHCHANNEL` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFYMODE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERYSCOPE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERYTIME` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISNEEDCONFIRM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCURRENCYTYPE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSHOWPAYFLOW` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAILSENDERID` bigint NOT NULL DEFAULT '0',
  `FEMAILTHEME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAILCONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FEMAILCONTENT_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREVMODIFYNOTES` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYNOTES` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEFAULTTITLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUTOENDNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FVID`),
  KEY `IDX_HSPP_SALARYVIEWHIS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salaryviewhis_l definition

CREATE TABLE `t_hspp_salaryviewhis_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREVMODIFYNOTES` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYNOTES` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEFAULTTITLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUTOENDNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HSPP_SALARYVIEWHIS_L` (`FVID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_salcalendarmulsum definition

CREATE TABLE `t_hspp_salcalendarmulsum` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HSPP_SALCALENDARMULSUM` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_smsmessage definition

CREATE TABLE `t_hspp_smsmessage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FPHONE` bigint NOT NULL DEFAULT '0',
  `FBUSINESSTYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSEND` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTIVETIME` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HSPP_SMSMESSAGE` (`FPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_hspp_smsmessage_r3 definition

CREATE TABLE `t_hspp_smsmessage_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_abmlpb3bqe60w_4 definition

CREATE TABLE `temp_abmlpb3bqe60w_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_abmlpb4eusw74_4 definition

CREATE TABLE `temp_abmlpb4eusw74_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_abmlpb56lob9c_4 definition

CREATE TABLE `temp_abmlpb56lob9c_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_abmlpb5ycjoqo_4 definition

CREATE TABLE `temp_abmlpb5ycjoqo_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_abtbsbc6qi134_a definition

CREATE TABLE `temp_abtbsbc6qi134_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_abtbsbcywcc1s_a definition

CREATE TABLE `temp_abtbsbcywcc1s_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_abtbsbdmwdp1c_a definition

CREATE TABLE `temp_abtbsbdmwdp1c_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_abtbsbe5hm0ao_a definition

CREATE TABLE `temp_abtbsbe5hm0ao_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_bbmlpb6qiehvk_4 definition

CREATE TABLE `temp_bbmlpb6qiehvk_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_bbmlpb7jd88w0_4 definition

CREATE TABLE `temp_bbmlpb7jd88w0_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_bbmlpb869arr4_4 definition

CREATE TABLE `temp_bbmlpb869arr4_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_bbmlpb8ofk5j4_4 definition

CREATE TABLE `temp_bbmlpb8ofk5j4_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_bbtbsbew4jif4_a definition

CREATE TABLE `temp_bbtbsbew4jif4_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_bbtbsbfk9jpc0_a definition

CREATE TABLE `temp_bbtbsbfk9jpc0_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_bbtbsbgc5fdog_a definition

CREATE TABLE `temp_bbtbsbgc5fdog_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_bbtbsbgw4lnuo_a definition

CREATE TABLE `temp_bbtbsbgw4lnuo_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_cbmlpb9fhgl4w_4 definition

CREATE TABLE `temp_cbmlpb9fhgl4w_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_cbmlpba6ycd8g_4 definition

CREATE TABLE `temp_cbmlpba6ycd8g_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_cbmlpbayp7sao_4 definition

CREATE TABLE `temp_cbmlpbayp7sao_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_cbmlpbbgvh62o_4 definition

CREATE TABLE `temp_cbmlpbbgvh62o_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_cbtbsbhjknu2o_a definition

CREATE TABLE `temp_cbtbsbhjknu2o_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_cbtbsbi9dlla8_a definition

CREATE TABLE `temp_cbtbsbi9dlla8_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_cbtbsbj14hgxs_a definition

CREATE TABLE `temp_cbtbsbj14hgxs_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hspp.temp_cbtbsbjj5qlfk_a definition

CREATE TABLE `temp_cbtbsbjj5qlfk_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
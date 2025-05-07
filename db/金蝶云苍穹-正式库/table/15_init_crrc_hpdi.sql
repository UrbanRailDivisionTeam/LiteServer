USE crrc_hpdi;

-- crrc_hpdi.t_hpdi_bizdata definition

CREATE TABLE `t_hpdi_bizdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEMPPOSORGRELVID` bigint NOT NULL DEFAULT '0',
  `FSALARYFILEID` bigint NOT NULL DEFAULT '0',
  `FPAYROLLGRPID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBIZITEMID` bigint NOT NULL DEFAULT '0',
  `FEFFECTIVEDATE` datetime DEFAULT NULL,
  `FEXPIRYDATE` datetime DEFAULT NULL,
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITDATE` datetime DEFAULT NULL,
  `FCALSALARYDATE` datetime DEFAULT NULL,
  `FBIZDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORMSG` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSSALARYERROR` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATACODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHNUM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZITEMGROUPID` bigint NOT NULL DEFAULT '0',
  `FSUBMISSION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALPERIODID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSORGRELID` bigint NOT NULL DEFAULT '0',
  `FAPPLYNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATEDDESC` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATIONRECORD` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCALFREQUENCYID` bigint NOT NULL DEFAULT '0',
  `FOVERDUE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATARECORDID` bigint NOT NULL DEFAULT '0',
  `FDEPEMPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_BIZDATA` (`FBIZDATACODE`),
  KEY `IDX_HPDI_BIZDATA_EMPITEMEFF` (`FEMPPOSORGRELID`,`FBIZITEMID`,`FEFFECTIVEDATE`),
  KEY `IDX_HPDI_BIZDATARECORDID` (`FBIZDATARECORDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdata_l definition

CREATE TABLE `t_hpdi_bizdata_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FERRORMSG` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_BIZDATA_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdata_r3 definition

CREATE TABLE `t_hpdi_bizdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatabill definition

CREATE TABLE `t_hpdi_bizdatabill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FIMPORTTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FBIZITEMGROUPID` bigint NOT NULL DEFAULT '0',
  `FPERSONCOUNT` int NOT NULL DEFAULT '0',
  `FBIZITEMCOUNT` int NOT NULL DEFAULT '0',
  `FBIZDATACOUNT` int NOT NULL DEFAULT '0',
  `FBIZDATAOBJRULEID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATARULEVERSION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATAFAILCOUNT` int NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALPERIODID` bigint NOT NULL DEFAULT '0',
  `FHANDLETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_BIZDATABILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatabill_l definition

CREATE TABLE `t_hpdi_bizdatabill_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_BIZDATABILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatabilldetail definition

CREATE TABLE `t_hpdi_bizdatabilldetail` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBIZITEMID` bigint NOT NULL DEFAULT '0',
  `FVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTIVEDATE` datetime DEFAULT NULL,
  `FEXPIRYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_HPDI_BIZDATABILLDETAIL` (`FENTRYID`),
  KEY `IDX_HPDI_BIZDATABILLDETAIL_IE` (`FBIZITEMID`,`FEFFECTIVEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatabillent definition

CREATE TABLE `t_hpdi_bizdatabillent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEMPPOSORGRELVID` bigint NOT NULL DEFAULT '0',
  `FSALARYFILEID` bigint NOT NULL DEFAULT '0',
  `FPAYROLLGRPID` bigint NOT NULL DEFAULT '0',
  `FBIZITEMID` bigint NOT NULL DEFAULT '0',
  `FEFFECTIVEDATE` datetime DEFAULT NULL,
  `FEXPIRYDATE` datetime DEFAULT NULL,
  `FBIZDATE` datetime DEFAULT NULL,
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAAPPROVESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVEDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORMSG` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITERROR` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATACODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPPOSORGRELID` bigint NOT NULL DEFAULT '0',
  `FRELATIONDATA` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATEDDESC` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATEEXPIRYDATE` datetime DEFAULT NULL,
  `FCALFREQUENCYID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEFFECTIVEDATEENT` datetime DEFAULT NULL,
  `FEXPIRYDATEENT` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_BIZDATABILLENT` (`FBIZDATACODE`),
  KEY `IDX_HPDI_BIZDATABILLENT_EMP` (`FEMPPOSORGRELID`),
  KEY `IDX_HPDI_BIZDATABILLENT_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatabillent_l definition

CREATE TABLE `t_hpdi_bizdatabillent_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FERRORMSG` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_BIZDATABILLENT_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatabillent_r3 definition

CREATE TABLE `t_hpdi_bizdatabillent_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatabillitem definition

CREATE TABLE `t_hpdi_bizdatabillitem` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_BIZDATABILLITEM` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdataerrorlog definition

CREATE TABLE `t_hpdi_bizdataerrorlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATESTAGE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZITEMGROUPID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FOPERATETIME` datetime DEFAULT NULL,
  `FOPERATENUM` bigint NOT NULL DEFAULT '0',
  `FOVERINPUTNUM` bigint NOT NULL DEFAULT '0',
  `FNOTINTIMEWINDOWNUM` bigint NOT NULL DEFAULT '0',
  `FNOTPASSAUDITNUM` bigint NOT NULL DEFAULT '0',
  `FNOTMATCHFILENUM` bigint NOT NULL DEFAULT '0',
  `FMATCHMOREFILENUM` bigint NOT NULL DEFAULT '0',
  `FOTHERNUM` bigint NOT NULL DEFAULT '0',
  `FTOTALNUM` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_BIZDATAERRORLOG` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdataerrorlog_r3 definition

CREATE TABLE `t_hpdi_bizdataerrorlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdataoperateh_r3 definition

CREATE TABLE `t_hpdi_bizdataoperateh_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdataoperatehis definition

CREATE TABLE `t_hpdi_bizdataoperatehis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSORGRELID` bigint NOT NULL DEFAULT '0',
  `FBIZITEMID` bigint NOT NULL DEFAULT '0',
  `FCURRENTBIZDATACODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATEBIZDATACODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEFORUPDATEDATE` datetime DEFAULT NULL,
  `FAFTERUPDATEDATE` datetime DEFAULT NULL,
  `FOPERATETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATER` bigint NOT NULL DEFAULT '0',
  `FOPERATETIME` datetime DEFAULT NULL,
  `FBIZDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_BIZDATAOPERATEHIS` (`FCURRENTBIZDATACODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatarecord definition

CREATE TABLE `t_hpdi_bizdatarecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEMPPOSORGRELVID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSORGRELID` bigint NOT NULL DEFAULT '0',
  `FSALARYFILEID` bigint NOT NULL DEFAULT '0',
  `FPAYROLLGRPID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FEFFECTIVEDATE` datetime DEFAULT NULL,
  `FEXPIRYDATE` datetime DEFAULT NULL,
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITDATE` datetime DEFAULT NULL,
  `FCALSALARYDATE` datetime DEFAULT NULL,
  `FBIZDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORMSG` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSSALARYERROR` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATACODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHNUM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZITEMGROUPID` bigint NOT NULL DEFAULT '0',
  `FSUBMISSION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALPERIODID` bigint NOT NULL DEFAULT '0',
  `FAPPLYNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATEDDESC` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATIONRECORD` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCALFREQUENCYID` bigint NOT NULL DEFAULT '0',
  `FOVERDUE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPEMPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_BIZDATARECORD` (`FBIZDATACODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatarecord_l definition

CREATE TABLE `t_hpdi_bizdatarecord_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FERRORMSG` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_BIZDATARECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatarecord_r3 definition

CREATE TABLE `t_hpdi_bizdatarecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatarelation definition

CREATE TABLE `t_hpdi_bizdatarelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISCONFILCT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAOBTAINTIME` datetime DEFAULT NULL,
  `FBIZDATACODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATIONBIZDATACODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_BIZDATARELATION` (`FBIZDATACODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_bizdatarelation_r3 definition

CREATE TABLE `t_hpdi_bizdatarelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_busieventrel definition

CREATE TABLE `t_hpdi_busieventrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISBUSINESSEVENTBO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  `FEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_BUSIEVENTREL` (`FEVENTID`),
  KEY `IDX_HPDI_BUSIEVENTREL_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_busieventrel_r3 definition

CREATE TABLE `t_hpdi_busieventrel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_buvalueconfig definition

CREATE TABLE `t_hpdi_buvalueconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMSGSUBSCRIBERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_BUVALUECONFIG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_buvalueconfig_l definition

CREATE TABLE `t_hpdi_buvalueconfig_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_BUVALUECONFIG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_buvalueconfig_r3 definition

CREATE TABLE `t_hpdi_buvalueconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_buvalueconfigent definition

CREATE TABLE `t_hpdi_buvalueconfigent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRELYCONDITION` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPIDEPLOYENTITY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPIDEPLOYENTITYFIELD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPIDEPLOYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_BUVALUECONFIGENT` (`FAPIDEPLOYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_event definition

CREATE TABLE `t_hpdi_event` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEVENTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTEWAY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTBATCHTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_EVENT` (`FOPERATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_event_r3 definition

CREATE TABLE `t_hpdi_event_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_eventrelhis definition

CREATE TABLE `t_hpdi_eventrelhis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FVID` bigint NOT NULL DEFAULT '0',
  `FPRESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREBSED` datetime DEFAULT NULL,
  `FPREBSLED` datetime DEFAULT NULL,
  `FBUSIEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_EVENTRELHIS` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_eventrelhis_r3 definition

CREATE TABLE `t_hpdi_eventrelhis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_msgreceive definition

CREATE TABLE `t_hpdi_msgreceive` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGSUBNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMSGCONTENT` longtext COLLATE utf8mb4_unicode_ci,
  `FMSGCENTERBOID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMSGCLOUDID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGBUSINESSTYPEID` bigint NOT NULL DEFAULT '0',
  `FMSGACTIONID` bigint NOT NULL DEFAULT '0',
  `FSENDERID` bigint NOT NULL DEFAULT '0',
  `FSENDTIME` datetime DEFAULT NULL,
  `FMSGBOID` bigint NOT NULL DEFAULT '0',
  `FMSGRECEIVEDATE` datetime DEFAULT NULL,
  `FBUMAPSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTASKCREATESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FERRORMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_MSGRECEIVE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_msgreceive_l definition

CREATE TABLE `t_hpdi_msgreceive_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_MSGRECEIVE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_msgreceive_r3 definition

CREATE TABLE `t_hpdi_msgreceive_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_msgrecvcenter definition

CREATE TABLE `t_hpdi_msgrecvcenter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMSGSUBNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIONID` bigint NOT NULL DEFAULT '0',
  `FACTIONTYPEID` bigint NOT NULL DEFAULT '0',
  `FMSGTITLE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGRECEIVEDATE` datetime DEFAULT NULL,
  `FTASKCREATEDATE` datetime DEFAULT NULL,
  `FMSGCENTERID` bigint NOT NULL DEFAULT '0',
  `FACTIONEVENTID` bigint NOT NULL DEFAULT '0',
  `FTASCENTERKID` bigint NOT NULL DEFAULT '0',
  `FAPIPUBCLOUD` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPIPUBAPP` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETASKLOG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBSCRIBEBDID` bigint NOT NULL DEFAULT '0',
  `FBUMAPSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKCENTERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGPARAMS` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_MSGRECVCENTER` (`FTASKCENTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_msgrecvcenter_r3 definition

CREATE TABLE `t_hpdi_msgrecvcenter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_oppkg definition

CREATE TABLE `t_hpdi_oppkg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FOPTPLID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALIAS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_OPPKG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_oppkg_l definition

CREATE TABLE `t_hpdi_oppkg_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALIAS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_OPPKG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_oppkgent definition

CREATE TABLE `t_hpdi_oppkgent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEXECUTESEQ` int NOT NULL DEFAULT '0',
  `FOPERATIONID` bigint NOT NULL DEFAULT '0',
  `FISENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMUST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_OPPKGENT` (`FOPERATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_oppkgexc definition

CREATE TABLE `t_hpdi_oppkgexc` (
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDATAID`,`FUSEORGID`),
  KEY `IDX_HPDI_OPPKGEXC` (`FCREATEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_oppkgusereg definition

CREATE TABLE `t_hpdi_oppkgusereg` (
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISASSIGN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUSEORGID`,`FDATAID`),
  KEY `IDX_HPDI_OPPKGUSEREG` (`FCREATEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_optpl definition

CREATE TABLE `t_hpdi_optpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALIAS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_OPTPL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_optpl_l definition

CREATE TABLE `t_hpdi_optpl_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALIAS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_OPTPL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_optplent definition

CREATE TABLE `t_hpdi_optplent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEXECUTESEQ` int NOT NULL DEFAULT '0',
  `FOPERATIONID` bigint NOT NULL DEFAULT '0',
  `FISMUST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_OPTPLENT` (`FOPERATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_optplexc definition

CREATE TABLE `t_hpdi_optplexc` (
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDATAID`,`FUSEORGID`),
  KEY `IDX_HPDI_OPTPLEXC` (`FCREATEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_optplusereg definition

CREATE TABLE `t_hpdi_optplusereg` (
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISASSIGN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUSEORGID`,`FDATAID`),
  KEY `IDX_HPDI_OPTPLUSEREG` (`FCREATEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_orgmsgrecvcente_r3 definition

CREATE TABLE `t_hpdi_orgmsgrecvcente_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_orgmsgrecvcenter definition

CREATE TABLE `t_hpdi_orgmsgrecvcenter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMSGSUBNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIONID` bigint NOT NULL DEFAULT '0',
  `FACTIONTYPEID` bigint NOT NULL DEFAULT '0',
  `FMSGTITLE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGRECEIVEDATE` datetime DEFAULT NULL,
  `FMSGCENTERID` bigint NOT NULL DEFAULT '0',
  `FACTIONEVENTID` bigint NOT NULL DEFAULT '0',
  `FAPIPUBCLOUD` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPIPUBAPP` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBSCRIBEBDID` bigint NOT NULL DEFAULT '0',
  `FMSGRECVCENTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTASKCREATEDATE` datetime DEFAULT NULL,
  `FMSGSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKCENTERID` bigint NOT NULL DEFAULT '0',
  `FTASKCREATESTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGFAILMSG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGPARAMS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_ORGMSGRECVCENTER` (`FMSGRECVCENTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_orgmsgrecvcenter_r3 definition

CREATE TABLE `t_hpdi_orgmsgrecvcenter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payactgent_l definition

CREATE TABLE `t_hpdi_payactgent_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRECONDITIONDESC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollact definition

CREATE TABLE `t_hpdi_payrollact` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALIAS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREPAYROLLACTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_PAYROLLACT` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollact_l definition

CREATE TABLE `t_hpdi_payrollact_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALIAS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_PAYROLLACT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollact_r3 definition

CREATE TABLE `t_hpdi_payrollact_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactent definition

CREATE TABLE `t_hpdi_payrollactent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTRIGGERCOLLAID` bigint NOT NULL DEFAULT '0',
  `FEXECUTESEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_PAYROLLACTENT` (`FTRIGGERCOLLAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactg definition

CREATE TABLE `t_hpdi_payrollactg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPAYACTGRPTPLID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYROLLACTGTPLID` bigint NOT NULL DEFAULT '0',
  `FMSGSUBSCRIBERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSCENEID` bigint NOT NULL DEFAULT '0',
  `FPOLICYID` bigint NOT NULL DEFAULT '0',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSIONSOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_PAYROLLACTG` (`FNUMBER`),
  KEY `IDX_T_HPDI_PAYROLLACTG_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_HPDI_PAYROLLACTG_MASTER` (`FMASTERID`),
  KEY `IDX_HPDI_PAYROLLACTG_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactg_bit definition

CREATE TABLE `t_hpdi_payrollactg_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactg_l definition

CREATE TABLE `t_hpdi_payrollactg_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_PAYROLLACTG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactg_m definition

CREATE TABLE `t_hpdi_payrollactg_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactg_r3 definition

CREATE TABLE `t_hpdi_payrollactg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactg_u definition

CREATE TABLE `t_hpdi_payrollactg_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_hpdi_payrollactg_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactgent definition

CREATE TABLE `t_hpdi_payrollactgent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPAYROLLACTID` bigint NOT NULL DEFAULT '0',
  `FISEXECUTE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXECUTESEQ` int NOT NULL DEFAULT '0',
  `FFIELDMAPID` bigint NOT NULL DEFAULT '0',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_PAYROLLACTGENT` (`FPAYROLLACTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactgexc definition

CREATE TABLE `t_hpdi_payrollactgexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_hpdi_payrollactgExc_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactgtpl definition

CREATE TABLE `t_hpdi_payrollactgtpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALIAS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_PAYROLLACTGTPL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactgtpl_l definition

CREATE TABLE `t_hpdi_payrollactgtpl_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALIAS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_PAYROLLACTGTPL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactgtpl_r3 definition

CREATE TABLE `t_hpdi_payrollactgtpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactgtplent definition

CREATE TABLE `t_hpdi_payrollactgtplent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEXECUTESEQ` int NOT NULL DEFAULT '0',
  `FPAYROLLACTID` bigint NOT NULL DEFAULT '0',
  `FISMUSTEXECUTE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_PAYROLLACTGTPLENT` (`FPAYROLLACTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_payrollactgusereg definition

CREATE TABLE `t_hpdi_payrollactgusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`),
  KEY `IDX_T_HPDI_PAYROLLACTGUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_salaryvbilldetail definition

CREATE TABLE `t_hpdi_salaryvbilldetail` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPINDEX` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_HPDI_SALARYVBILLDETAIL` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_salaryverbill definition

CREATE TABLE `t_hpdi_salaryverbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGTEAMID` bigint NOT NULL DEFAULT '0',
  `FPERSONNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIONID` bigint NOT NULL DEFAULT '0',
  `FFLOWTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDUTYWORKROLEID` bigint NOT NULL DEFAULT '0',
  `FORGMSGRECVCENTERID` bigint NOT NULL DEFAULT '0',
  `FTASKRULEID` bigint NOT NULL DEFAULT '0',
  `FTASKCENTERID` bigint NOT NULL DEFAULT '0',
  `FPERSONVID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEVID` bigint NOT NULL DEFAULT '0',
  `FDEPEMPVID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELBILLID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPVID` bigint NOT NULL DEFAULT '0',
  `FCHANGETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FTASKRULEVID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_SALVBILL_FTASKCID` (`FTASKCENTERID`),
  KEY `IDX_HPDI_SALVBILL_FBILLNO` (`FBILLNO`),
  KEY `IDX_HPDI_SALVBILL_FRELBILLID` (`FRELBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_salaryverbill_l definition

CREATE TABLE `t_hpdi_salaryverbill_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_SALARYVERBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_salaryverbillent definition

CREATE TABLE `t_hpdi_salaryverbillent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBIZAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJECTID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCARDTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRIGGERCOLLAID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_SALARYVERBILLENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_sinsurvbilldetail definition

CREATE TABLE `t_hpdi_sinsurvbilldetail` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPINDEX` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_HPDI_SINSURVBILLDETAIL` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_sinsurverbill definition

CREATE TABLE `t_hpdi_sinsurverbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGTEAMID` bigint NOT NULL DEFAULT '0',
  `FPERSONNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIONID` bigint NOT NULL DEFAULT '0',
  `FFLOWTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDUTYWORKROLEID` bigint NOT NULL DEFAULT '0',
  `FORGMSGRECVCENTERID` bigint NOT NULL DEFAULT '0',
  `FTASKRULEID` bigint NOT NULL DEFAULT '0',
  `FTASKCENTERID` bigint NOT NULL DEFAULT '0',
  `FPERSONVID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEVID` bigint NOT NULL DEFAULT '0',
  `FDEPEMPVID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELBILLID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPVID` bigint NOT NULL DEFAULT '0',
  `FCHANGETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FTASKRULEVID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_SINVBILL_FRELBILLID` (`FRELBILLID`),
  KEY `IDX_HPDI_SINSVBILL_FTASKCID` (`FTASKCENTERID`),
  KEY `IDX_HPDI_SINVBILL_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_sinsurverbill_l definition

CREATE TABLE `t_hpdi_sinsurverbill_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_SINSURVERBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_sinsurverbillent definition

CREATE TABLE `t_hpdi_sinsurverbillent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBIZAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJECTID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCARDTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRIGGERCOLLAID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_SINSURVERBILLENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_subapiset definition

CREATE TABLE `t_hpdi_subapiset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `FMSGSUBSCRIBERID` bigint NOT NULL DEFAULT '0',
  `FMSGPUBLISHERID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_SUBAPISET_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_subapiset_l definition

CREATE TABLE `t_hpdi_subapiset_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_SUBAPISET_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_subapiset_r3 definition

CREATE TABLE `t_hpdi_subapiset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_subapisetent definition

CREATE TABLE `t_hpdi_subapisetent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAPIDEPLOYID` bigint NOT NULL DEFAULT '0',
  `FISCONVERTOBJECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTARGETOBJECTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_SUBAPISETENT_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_subapisetindetail definition

CREATE TABLE `t_hpdi_subapisetindetail` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDSOURCE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_HPDI_SUBAPISETINDET_ENID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_subapisetindetail_l definition

CREATE TABLE `t_hpdi_subapisetindetail_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_SUBAPISETINDETAIL_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_subapisetotdetail definition

CREATE TABLE `t_hpdi_subapisetotdetail` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAPIFIELDTYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPIFIELDNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FAPIFIELDKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAPFIELDKEY` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAPBASEDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_HPDI_SUBAPISETODET_ENID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_subapisetotdetail_l definition

CREATE TABLE `t_hpdi_subapisetotdetail_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPIFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_SUBAPISETOTDETAIL_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_summaryvbill definition

CREATE TABLE `t_hpdi_summaryvbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGTEAMID` bigint NOT NULL DEFAULT '0',
  `FPERSONNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIONID` bigint NOT NULL DEFAULT '0',
  `FFLOWTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDUTYWORKROLEID` bigint NOT NULL DEFAULT '0',
  `FORGMSGRECVCENTERID` bigint NOT NULL DEFAULT '0',
  `FTASKRULEID` bigint NOT NULL DEFAULT '0',
  `FTASKCENTERID` bigint NOT NULL DEFAULT '0',
  `FPERSONVID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEVID` bigint NOT NULL DEFAULT '0',
  `FDEPEMPVID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELBILLID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPVID` bigint NOT NULL DEFAULT '0',
  `FCHANGETIME` datetime DEFAULT NULL,
  `FEXECUTESEQ` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FTASKRULEVID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_SUMVBILL_FBILLNO` (`FBILLNO`),
  KEY `IDX_HPDI_SUMVBILL_FTASKCID` (`FTASKCENTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_summaryvbill_l definition

CREATE TABLE `t_hpdi_summaryvbill_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_SUMMARYVBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_sumverpractg definition

CREATE TABLE `t_hpdi_sumverpractg` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_SUMVERPRACTG` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskcenter definition

CREATE TABLE `t_hpdi_taskcenter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORGMSGRECVCENTERID` bigint NOT NULL DEFAULT '0',
  `FTASKRULEID` bigint NOT NULL DEFAULT '0',
  `FTASKCREATEMANNER` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKEXECUTESTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKEXECUTEDATE` datetime DEFAULT NULL,
  `FEXECUTEFAILMSG` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKRULEVID` bigint NOT NULL DEFAULT '0',
  `FTASKEXECUTENUM` int NOT NULL DEFAULT '0',
  `FEXECUTESEQ` int NOT NULL DEFAULT '0',
  `FFLOWTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGTEAMID` bigint NOT NULL DEFAULT '0',
  `FDUTYWORKROLEID` bigint NOT NULL DEFAULT '0',
  `FCHANGETIME` datetime DEFAULT NULL,
  `FSUMVERIFYBILLID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_TASKCENTER` (`FORGMSGRECVCENTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskcenter_l definition

CREATE TABLE `t_hpdi_taskcenter_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_TASKCENTER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskcenter_r3 definition

CREATE TABLE `t_hpdi_taskcenter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskcenterent definition

CREATE TABLE `t_hpdi_taskcenterent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPAYROLLACTGID` bigint NOT NULL DEFAULT '0',
  `FPAYROLLACTGVID` bigint NOT NULL DEFAULT '0',
  `FSTOPEXECAFTERFAIL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTASKEXECUTESTATUSENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXECUTEFAILMSGENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTASKEXECUTETIME` datetime DEFAULT NULL,
  `FTASKEXECMANNER` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKEXECUSERID` bigint NOT NULL DEFAULT '0',
  `FISMANUALVERIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_TASKCENTERENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskrule definition

CREATE TABLE `t_hpdi_taskrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGSUBSCRIBERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXECPLANJSON` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEDULEID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMMEDIATELY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSIONSOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSCENEID` bigint NOT NULL DEFAULT '0',
  `FPOLICYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_TASKRULE` (`FNUMBER`),
  KEY `IDX_T_HPDI_TASKRULE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_HPDI_TASKRULE_MASTER` (`FMASTERID`),
  KEY `IDX_HPDI_TASKRULE_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskrule_bit definition

CREATE TABLE `t_hpdi_taskrule_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskrule_l definition

CREATE TABLE `t_hpdi_taskrule_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_TASKRULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskrule_m definition

CREATE TABLE `t_hpdi_taskrule_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskrule_r3 definition

CREATE TABLE `t_hpdi_taskrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskrule_u definition

CREATE TABLE `t_hpdi_taskrule_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_hpdi_taskrule_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskruleent definition

CREATE TABLE `t_hpdi_taskruleent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEXECUTESEQ` int NOT NULL DEFAULT '0',
  `FPAYROLLACTGID` bigint NOT NULL DEFAULT '0',
  `FSTOPEXECAFTERFAIL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  `FISMANUALVERIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRULEDESIGNID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_TASKRULEENT` (`FPAYROLLACTGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskruleexc definition

CREATE TABLE `t_hpdi_taskruleexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_hpdi_taskruleExc_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taskruleusereg definition

CREATE TABLE `t_hpdi_taskruleusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`),
  KEY `IDX_T_HPDI_TASKRULEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taxvbilldetail definition

CREATE TABLE `t_hpdi_taxvbilldetail` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPINDEX` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_HPDI_TAXVBILLDETAIL` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taxverbill definition

CREATE TABLE `t_hpdi_taxverbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGTEAMID` bigint NOT NULL DEFAULT '0',
  `FPERSONNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIONID` bigint NOT NULL DEFAULT '0',
  `FFLOWTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDUTYWORKROLEID` bigint NOT NULL DEFAULT '0',
  `FORGMSGRECVCENTERID` bigint NOT NULL DEFAULT '0',
  `FTASKRULEID` bigint NOT NULL DEFAULT '0',
  `FTASKCENTERID` bigint NOT NULL DEFAULT '0',
  `FPERSONVID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEVID` bigint NOT NULL DEFAULT '0',
  `FDEPEMPVID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELBILLID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPVID` bigint NOT NULL DEFAULT '0',
  `FCHANGETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FTASKRULEVID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_TAXVBILL_FTASKCID` (`FTASKCENTERID`),
  KEY `IDX_HPDI_TAXVBILL_FRELBILLID` (`FRELBILLID`),
  KEY `IDX_HPDI_TAXVBILL_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taxverbill_l definition

CREATE TABLE `t_hpdi_taxverbill_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_TAXVERBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_taxverbillent definition

CREATE TABLE `t_hpdi_taxverbillent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBIZAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJECTID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCARDTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRIGGERCOLLAID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HPDI_TAXVERBILLENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_triggercolla definition

CREATE TABLE `t_hpdi_triggercolla` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FOPERATIONTYPEID` bigint NOT NULL DEFAULT '0',
  `FOPERATIONCLSID` bigint NOT NULL DEFAULT '0',
  `FENTITYOBJECTID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALIAS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_TRIGGERCOLLA` (`FENTITYOBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_triggercolla_l definition

CREATE TABLE `t_hpdi_triggercolla_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALIAS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HPDI_TRIGGERCOLLA_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_triggercolla_r3 definition

CREATE TABLE `t_hpdi_triggercolla_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_verifybillconfi_r3 definition

CREATE TABLE `t_hpdi_verifybillconfi_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_hpdi_verifybillconfig definition

CREATE TABLE `t_hpdi_verifybillconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCLOUDNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFYAPP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FGROUP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HPDI_VERCFG_FROMID` (`FFORMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_isv_xxx_r3 definition

CREATE TABLE `t_isv_xxx_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_abmlpc7cgtts0_4 definition

CREATE TABLE `temp_abmlpc7cgtts0_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_abmlpc80qu9z4_4 definition

CREATE TABLE `temp_abmlpc80qu9z4_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_abmlpc8pptr7k_4 definition

CREATE TABLE `temp_abmlpc8pptr7k_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_abmlpc91nc9vk_4 definition

CREATE TABLE `temp_abmlpc91nc9vk_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_abtbsco2hfj7k_a definition

CREATE TABLE `temp_abtbsco2hfj7k_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_abtbscot4c2kg_a definition

CREATE TABLE `temp_abtbscot4c2kg_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_abtbscpf6g9vk_a definition

CREATE TABLE `temp_abtbscpf6g9vk_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_abtbscq1xihvk_a definition

CREATE TABLE `temp_abtbscq1xihvk_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_bbmlpc9n5gtts_4 definition

CREATE TABLE `temp_bbmlpc9n5gtts_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_bbmlpcaavi39c_4 definition

CREATE TABLE `temp_bbmlpcaavi39c_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_bbmlpcaxwketc_4 definition

CREATE TABLE `temp_bbmlpcaxwketc_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_bbmlpcbizpj40_4 definition

CREATE TABLE `temp_bbmlpcbizpj40_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_bbtbscqipueww_a definition

CREATE TABLE `temp_bbtbscqipueww_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_bbtbscrd3lgxs_a definition

CREATE TABLE `temp_bbtbscrd3lgxs_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_bbtbscrxwri0w_a definition

CREATE TABLE `temp_bbtbscrxwri0w_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_bbtbscsgd00lc_a definition

CREATE TABLE `temp_bbtbscsgd00lc_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_cbmlpcc070dmo_4 definition

CREATE TABLE `temp_cbmlpcc070dmo_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_cbmlpccrsvyf4_4 definition

CREATE TABLE `temp_cbmlpccrsvyf4_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_cbmlpcdbx2jgg_4 definition

CREATE TABLE `temp_cbmlpcdbx2jgg_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_cbmlpcdunb400_4 definition

CREATE TABLE `temp_cbmlpcdunb400_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_cbtbsct2f47wg_a definition

CREATE TABLE `temp_cbtbsct2f47wg_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_cbtbsctqk4etc_a definition

CREATE TABLE `temp_cbtbsctqk4etc_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_cbtbscuft3y0w_a definition

CREATE TABLE `temp_cbtbscuft3y0w_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hpdi.temp_cbtbscuz3b8qo_a definition

CREATE TABLE `temp_cbtbscuz3b8qo_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
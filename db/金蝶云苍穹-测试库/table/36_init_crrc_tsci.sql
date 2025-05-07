USE crrc_tsci;

-- crrc_tsci.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advadminorgs definition

CREATE TABLE `t_tsirm_advadminorgs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_ADVADMINORGS_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advbill definition

CREATE TABLE `t_tsirm_advbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FAUDITSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FADVERTBUORG` bigint NOT NULL DEFAULT '0',
  `FADMINORG` bigint NOT NULL DEFAULT '0',
  `FCATEGORY` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONEXID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_ADVBILL_FPOSID` (`FPOSITIONEXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advbill_l definition

CREATE TABLE `t_tsirm_advbill_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOWNODE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOWNODEAUDITOR` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_ADVBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advbillentity definition

CREATE TABLE `t_tsirm_advbillentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSID` bigint NOT NULL DEFAULT '0',
  `FISDISPOSCODE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FPOSCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSALARYTYPEID` bigint NOT NULL DEFAULT '0',
  `FSALARYDOWN` bigint NOT NULL DEFAULT '0',
  `FSALARYUP` bigint NOT NULL DEFAULT '0',
  `FISSALARYNEGO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FHOLDOFFTYPID` bigint NOT NULL DEFAULT '0',
  `FWORKEXPDOWN` int NOT NULL DEFAULT '0',
  `FWORKEXPUP` int NOT NULL DEFAULT '0',
  `FISWORKEXPLIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FISEDULIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECRUITNUM` int NOT NULL DEFAULT '0',
  `FISRECNUMLIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECMAIL` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  `FADVID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISAUDIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECRUSCENEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FLOWJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSIRM_ADVBILLENTITY_FADVID` (`FADVID`),
  KEY `IDX_TSIRM_ADVBILLENTITY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advbillentity_i definition

CREATE TABLE `t_tsirm_advbillentity_i` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FISURGENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISTOP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISREWARD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARD` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FID` bigint NOT NULL DEFAULT '0',
  `FRECURRENCYID` int NOT NULL DEFAULT '0',
  `FREWARDPOINT` int NOT NULL DEFAULT '0',
  `FREWARDRULEDESC` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREWARDRULEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSIRM_ADVERTENTITY_I_ISTOP` (`FISTOP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advbillentity_l definition

CREATE TABLE `t_tsirm_advbillentity_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSRESPON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSQUAL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQORG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSHIGHLIGHT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_ADVBILLENTITY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advbillentity_wa definition

CREATE TABLE `t_tsirm_advbillentity_wa` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_IRWORKADDR_WA_FWAID` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advbillhentity_wa definition

CREATE TABLE `t_tsirm_advbillhentity_wa` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_IRWORKADDRH_WA_FWAID` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advertex definition

CREATE TABLE `t_tsirm_advertex` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISDISPOSCODE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FPOSCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSALARYTYPEID` bigint NOT NULL DEFAULT '0',
  `FSALARYDOWN` bigint NOT NULL DEFAULT '0',
  `FSALARYUP` bigint NOT NULL DEFAULT '0',
  `FISSALARYNEGO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FHOLDOFFTYPID` bigint NOT NULL DEFAULT '0',
  `FWORKEXPDOWN` int NOT NULL DEFAULT '0',
  `FWORKEXPUP` int NOT NULL DEFAULT '0',
  `FISWORKEXPLIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FISEDULIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECRUITNUM` int NOT NULL DEFAULT '0',
  `FISRECNUMLIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  `FSTOPTIME` datetime DEFAULT NULL,
  `FVID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEID` bigint NOT NULL DEFAULT '0',
  `FREFRESHTIME` datetime DEFAULT NULL,
  `FAPPROVESTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBTIME` datetime DEFAULT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FADVERTISEMENTRD` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUSCENEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FMODIFYUSER` bigint NOT NULL DEFAULT '0',
  `FFAILREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVERTBUORG` bigint NOT NULL DEFAULT '0',
  `FADMINORG` bigint NOT NULL DEFAULT '0',
  `FLOWJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_ADVERTEX_FPOSID` (`FPOSID`),
  KEY `IDX_TSIRM_ADVERTEX_FNUMBER` (`FNUMBER`),
  KEY `IDX_TSIRM_ADVERTEX_FAPPROVEID` (`FAPPROVEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advertex_i definition

CREATE TABLE `t_tsirm_advertex_i` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISURGENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISTOP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISREWARD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARD` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FRECURRENCYID` int NOT NULL DEFAULT '0',
  `FREWARDPOINT` int NOT NULL DEFAULT '0',
  `FREWARDRULEDESC` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREWARDRULEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_ADVERTEX_I_ISTOP` (`FISTOP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advertex_l definition

CREATE TABLE `t_tsirm_advertex_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSRESPON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSQUAL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQORG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSHIGHLIGHT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_ADVERTEX_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advertex_r3 definition

CREATE TABLE `t_tsirm_advertex_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advertorgs definition

CREATE TABLE `t_tsirm_advertorgs` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_ADVERTORGSID` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_advertorgsrecord definition

CREATE TABLE `t_tsirm_advertorgsrecord` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_ADVERTORGSRECORDID` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfile definition

CREATE TABLE `t_tsirm_appfile` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONSNAPID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FDELIVERYRECID` bigint NOT NULL DEFAULT '0',
  `FAPPRESID` bigint NOT NULL DEFAULT '0',
  `FISBINDDELYREC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENTERLINKTIME` datetime DEFAULT NULL,
  `FELIMINATETIME` datetime DEFAULT NULL,
  `FFILESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALIDRECRUCHNLNMID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FRECRUPROCID` bigint NOT NULL DEFAULT '0',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBSTATUSID` bigint NOT NULL DEFAULT '0',
  `FOFFERSTATUSID` bigint NOT NULL DEFAULT '0',
  `FINTVPROGRESS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVEVALRESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPOLYFEEDBACKRESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBRANKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETSALARYSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPLOYAPPRLSATATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FQACHECKRESULT` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBGSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_APPFILE_FPOS` (`FPOSITIONID`),
  KEY `IDX_TSIRM_APPFILE_FNAME` (`FNAME`),
  KEY `IDX_TSIRM_APPFILE_FPHONE` (`FPHONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfile_a definition

CREATE TABLE `t_tsirm_appfile_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIRTHDAY` datetime DEFAULT NULL,
  `FHIGHESTEDUSCHOOLID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTSPECIALTY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FRESACQMTHDID` bigint NOT NULL DEFAULT '0',
  `FRECRUCHNLNMID` bigint NOT NULL DEFAULT '0',
  `FNOFKFILTERFKNUM` int NOT NULL DEFAULT '0',
  `FSUITFILTERFKNUM` int NOT NULL DEFAULT '0',
  `FNOSUITFILTERFKNUM` int NOT NULL DEFAULT '0',
  `FPENDFILTERFKNUM` int NOT NULL DEFAULT '0',
  `FTFPOSFILTERFKNUM` int NOT NULL DEFAULT '0',
  `FLASTFILTERFKSTARTTIME` datetime DEFAULT NULL,
  `FFILTERSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWTIME` datetime DEFAULT NULL,
  `FEMPLOYRECOMNEWESTTIME` datetime DEFAULT NULL,
  `FEMPLOYAPPRLNEWESTTIME` datetime DEFAULT NULL,
  `FLASTHIREJOBRANKSTARTTIME` datetime DEFAULT NULL,
  `FLASTHIRESALARYSTARTIME` datetime DEFAULT NULL,
  `FLASTEXAMWTIME` datetime DEFAULT NULL,
  `FLASTEXAMWSCORE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FLASTEXAMATIME` datetime DEFAULT NULL,
  `FLASTEXAMARESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPTIME` datetime DEFAULT NULL,
  `FENDEMPTIME` datetime DEFAULT NULL,
  `FEMPLOYEESID` bigint NOT NULL DEFAULT '0',
  `FRECENTNOTICTIME` datetime DEFAULT NULL,
  `FLASTRESULT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECENTCFGMSGSCENEID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEENUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONCHANGETYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_APPFILE_A_FAPPLYTIME` (`FAPPLYTIME`),
  KEY `IDX_TSIRM_APPFILE_A_FEMPNUM` (`FEMPLOYEENUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfile_l definition

CREATE TABLE `t_tsirm_appfile_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTEXAMWNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTEXAMATITLE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_APPFILE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfile_r3 definition

CREATE TABLE `t_tsirm_appfile_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfileflowloc_r3 definition

CREATE TABLE `t_tsirm_appfileflowloc_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfileflowlock definition

CREATE TABLE `t_tsirm_appfileflowlock` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FLOCKTIME` datetime DEFAULT NULL,
  `FAUTOUNLOCKTIME` datetime DEFAULT NULL,
  `FLOCKERID` bigint NOT NULL DEFAULT '0',
  `FISLOCKED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FUNLOCKTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_APPFILEFK_FSTDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfilelabel definition

CREATE TABLE `t_tsirm_appfilelabel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJTYPEID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJID` bigint NOT NULL DEFAULT '0',
  `FLABELCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM__LABEL_TAGOBJ` (`FTAGOBJTYPEID`,`FTAGOBJID`,`FLABELID`),
  KEY `IDX_TSIRM__LABEL_ID` (`FLABELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfilelabel_r3 definition

CREATE TABLE `t_tsirm_appfilelabel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfilestatusr_r3 definition

CREATE TABLE `t_tsirm_appfilestatusr_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfilestatusrec definition

CREATE TABLE `t_tsirm_appfilestatusrec` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOPERATETIME` datetime DEFAULT NULL,
  `FREASONID` bigint NOT NULL DEFAULT '0',
  `FDETAILEDREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FOPERATETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORID` bigint NOT NULL DEFAULT '0',
  `FOLDFILESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWFILESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_AFSTSREC_APPFILE` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfilestatusrec_l definition

CREATE TABLE `t_tsirm_appfilestatusrec_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILEDREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_APPFILESTATUSREC_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfiletask definition

CREATE TABLE `t_tsirm_appfiletask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPLICATIONID` bigint NOT NULL DEFAULT '0',
  `FARGINTVID` bigint NOT NULL DEFAULT '0',
  `FROUNDID` bigint NOT NULL DEFAULT '0',
  `FINTVGROUPID` bigint NOT NULL DEFAULT '0',
  `FSIGNINTIME` datetime DEFAULT NULL,
  `FINTVTIME` datetime DEFAULT NULL,
  `FSIGNINSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLICATIONANSWER` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVEVLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVERSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FURGEANSWERTIME` datetime DEFAULT NULL,
  `FURGEINTVEVLTIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FREFUSALCAUSE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_ARGINTVID` (`FARGINTVID`),
  KEY `IDX_TSIRM_INTVGROUPID` (`FINTVGROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfiletask_l definition

CREATE TABLE `t_tsirm_appfiletask_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFUSALCAUSE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_APPFILETASK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfiletask_r3 definition

CREATE TABLE `t_tsirm_appfiletask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfiletrace definition

CREATE TABLE `t_tsirm_appfiletrace` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FOUTRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FINRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FOUTRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FINCTLINKTIME` datetime DEFAULT NULL,
  `FINCTSTATUSTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FRECRURSNID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_AFTRACE_FAFID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_appfiletrace_r3 definition

CREATE TABLE `t_tsirm_appfiletrace_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_argintv definition

CREATE TABLE `t_tsirm_argintv` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARRANGEANTIME` datetime DEFAULT NULL,
  `FINTERVIEWARRANGERID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWTITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUITMENTSTAGE` bigint NOT NULL DEFAULT '0',
  `FINTVORGFRM` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEPTIONIST` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCCPERSON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVEVLSTS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL2COPIEDPERSON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSMS2COPIEDPERSON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEMAIL2INTERVIEWER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSMS2INTERVIEWER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEMAIL2RECEPTIONIST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSMS2RECEPTIONIST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNOTICEINTERVIEWER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNOTICECOPIEDPERSON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNOTICERECEPTIONIST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECPTHEME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOPITHEME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTETHEME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTXTMAILINTERVIEWER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTXTMAILINTERVIEWER_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FTXTMAILCANDIDATE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTXTMAILCANDIDATE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FTXTMAILUNAWARES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTXTMAILUNAWARES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FTXTSMSINTERVIEWER` varchar(450) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTXTSMSUNAWARES` varchar(450) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTXTSMSCANDIDATE` varchar(450) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPICTUREFIELD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_ARGINTVHRID` (`FINTERVIEWARRANGERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_argintv_l definition

CREATE TABLE `t_tsirm_argintv_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWTITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_ARGINTV_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_argintv_r3 definition

CREATE TABLE `t_tsirm_argintv_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_attention definition

CREATE TABLE `t_tsirm_attention` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTRESUME` bigint NOT NULL DEFAULT '0',
  `FATTRESUMETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_ATTENTION_SID` (`FATTRESUME`),
  KEY `IDX_TSIRM_ATTENTION_FCREATORID` (`FCREATORID`),
  KEY `IDX_TSIRM_ATTENTION_TYPE` (`FATTRESUMETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_attention_r3 definition

CREATE TABLE `t_tsirm_attention_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_authorizer definition

CREATE TABLE `t_tsirm_authorizer` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_AUTHORIZER_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_bizcount definition

CREATE TABLE `t_tsirm_bizcount` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMARK` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZSTAFF` bigint NOT NULL DEFAULT '0',
  `FBIZSTAFFNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNT` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_BIZCOUNT_STAFF` (`FBIZSTAFF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_blacklist definition

CREATE TABLE `t_tsirm_blacklist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOBJID` bigint NOT NULL DEFAULT '0',
  `FADDSOURCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOPERTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAPPLICANT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLDEPART` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FBLAREASON` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_BLACKLIST_FOBJID` (`FOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_blacklist_r3 definition

CREATE TABLE `t_tsirm_blacklist_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_busieventreltp_r3 definition

CREATE TABLE `t_tsirm_busieventreltp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_busieventreltpl definition

CREATE TABLE `t_tsirm_busieventreltpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISBUSINESSEVENTBO` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  `FEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_BUSIEVENTRELTPL` (`FSOURCEENTITY`,`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_canintventry definition

CREATE TABLE `t_tsirm_canintventry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FINDEXDATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_INDEXDATE` (`FINDEXDATE`),
  KEY `IDX_TSIRM_CANINTVENTRY1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_cannotintventry definition

CREATE TABLE `t_tsirm_cannotintventry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FINDEXDATE` datetime DEFAULT NULL,
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDATASOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHANNELID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSIRM_INDEXDATE` (`FINDEXDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_certdetail definition

CREATE TABLE `t_tsirm_certdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPID` bigint NOT NULL DEFAULT '0',
  `FSHASTR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOLDTIME` datetime DEFAULT NULL,
  `FOPERATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_TSIRM_CERTDETAIL_PID` (`FPID` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_certdetail_r3 definition

CREATE TABLE `t_tsirm_certdetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_channelrelatio_r3 definition

CREATE TABLE `t_tsirm_channelrelatio_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_channelrelation definition

CREATE TABLE `t_tsirm_channelrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FARGINTVID` bigint NOT NULL DEFAULT '0',
  `FROUNDID` bigint NOT NULL DEFAULT '0',
  `FINTVGROUPID` bigint NOT NULL DEFAULT '0',
  `FCHANNELTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_CHANNELID` (`FCHANNELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_chedupentity definition

CREATE TABLE `t_tsirm_chedupentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBLOCK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBLOCKMARK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDMARK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSIRM_CHEDUPENTITY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_chedupruler definition

CREATE TABLE `t_tsirm_chedupruler` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FHANDLERCLASS` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDUPLICATETYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_CHEDUPRULER_BIZTYPE` (`FBIZTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_chedupruler_l definition

CREATE TABLE `t_tsirm_chedupruler_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_CHEDUPRULER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_chedupruler_r3 definition

CREATE TABLE `t_tsirm_chedupruler_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_empcvrel definition

CREATE TABLE `t_tsirm_empcvrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FEMPID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISOPEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_EMPCVREL_FEMPID` (`FEMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_empcvrel_r3 definition

CREATE TABLE `t_tsirm_empcvrel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_empcvrelentry definition

CREATE TABLE `t_tsirm_empcvrelentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FCVID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_EMPCVRELENTRY_EID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_empdelivbill definition

CREATE TABLE `t_tsirm_empdelivbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDELIVERYID` bigint NOT NULL DEFAULT '0',
  `FDELIVCVID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_EMPDELIVBILL` (`FDELIVCVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_empdelivery definition

CREATE TABLE `t_tsirm_empdelivery` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FDELIVERYPERID` bigint NOT NULL DEFAULT '0',
  `FDELIVCVID` bigint NOT NULL DEFAULT '0',
  `FCVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FDELIVTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVERTID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISNEWAPPFILE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_EMPDELIVERY_FAPPLY` (`FAPPLYTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_empdelivery_r3 definition

CREATE TABLE `t_tsirm_empdelivery_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_emprel definition

CREATE TABLE `t_tsirm_emprel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FEMPID` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTSTATEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FLABRELSTATUSCLSID` bigint NOT NULL DEFAULT '0',
  `FREASON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_EMPREL_FSTDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_emprel_l definition

CREATE TABLE `t_tsirm_emprel_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_EMPREL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_emprel_r3 definition

CREATE TABLE `t_tsirm_emprel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_eventrelhistpl definition

CREATE TABLE `t_tsirm_eventrelhistpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FVID` bigint NOT NULL DEFAULT '0',
  `FPRESTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREBSED` datetime DEFAULT NULL,
  `FPREBSLED` datetime DEFAULT NULL,
  `FBUSIEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_EVENTRELHISTPL` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_eventrelhistpl_r3 definition

CREATE TABLE `t_tsirm_eventrelhistpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_eventtpl definition

CREATE TABLE `t_tsirm_eventtpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEVENTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTEWAY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTBATCHTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_EVENTTPL` (`FCANCELEDEVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_eventtpl_r3 definition

CREATE TABLE `t_tsirm_eventtpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_examresult definition

CREATE TABLE `t_tsirm_examresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FEXAMTIME` datetime DEFAULT NULL,
  `FSCORE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMTYPE` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDELETED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FATTACHFILENUM` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_EXAMRESULT_APPFILEID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_examresult_l definition

CREATE TABLE `t_tsirm_examresult_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_EXAMRESULT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_examresult_r3 definition

CREATE TABLE `t_tsirm_examresult_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_groupcandate definition

CREATE TABLE `t_tsirm_groupcandate` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_GROUPCANDATEFDID` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hhuntingrecord definition

CREATE TABLE `t_tsirm_hhuntingrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANORGID` bigint NOT NULL DEFAULT '0',
  `FCANRANK` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FOFFERDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPOSID` bigint NOT NULL DEFAULT '0',
  `FMANAGEINFOID` bigint NOT NULL DEFAULT '0',
  `FCANJOB` bigint NOT NULL DEFAULT '0',
  `FBASESALARY` int NOT NULL DEFAULT '0',
  `FSALARYCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FISGIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARDNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCANAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FONBARDINGDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_HRECORD_APPFILE` (`FCANAPPFILEID`),
  KEY `IDX_TSIRM_HRECORD_SUPPLIER` (`FSUPPLIERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hhuntingrecord_l definition

CREATE TABLE `t_tsirm_hhuntingrecord_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_HHUNTINGRECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hireap definition

CREATE TABLE `t_tsirm_hireap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBATCHNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITOR` bigint NOT NULL DEFAULT '0',
  `FSUBMITTIME` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_HIREAP_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hireap_l definition

CREATE TABLE `t_tsirm_hireap_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_HIREAP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hireapentry definition

CREATE TABLE `t_tsirm_hireapentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FCURPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FGENDER` bigint NOT NULL DEFAULT '0',
  `FAGE` int NOT NULL DEFAULT '0',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIALTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FEMPLOYEENUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDURATION` int NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPEMPID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSUBMITOR` bigint NOT NULL DEFAULT '0',
  `FSUBMITTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPLANDATE` datetime DEFAULT NULL,
  `FLABORRELTYPE` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUS` bigint NOT NULL DEFAULT '0',
  `FCHGCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHGSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHGBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSIRM_HIREAPENTRY_FAFID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hireapentry_a definition

CREATE TABLE `t_tsirm_hireapentry_a` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMORGID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FJOBCLASSID` bigint NOT NULL DEFAULT '0',
  `FJOBFAMILYID` bigint NOT NULL DEFAULT '0',
  `FJOBSEQID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FPOSTTYPEID` bigint NOT NULL DEFAULT '0',
  `FSTDPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROBATIONTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROBATIONNUM` int NOT NULL DEFAULT '0',
  `FWORKADDRID` bigint NOT NULL DEFAULT '0',
  `FSOCAREAID` bigint NOT NULL DEFAULT '0',
  `FDEPTCHARGEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPECLSID` bigint NOT NULL DEFAULT '0',
  `FLABRELSTATUSCLSID` bigint NOT NULL DEFAULT '0',
  `FISPROBATION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURPOSITIONTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURSTDPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FCURJOBID` bigint NOT NULL DEFAULT '0',
  `FCURJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FCURJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FCURDEPTID` bigint NOT NULL DEFAULT '0',
  `FCURCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FCURPOSTTYPEID` bigint NOT NULL DEFAULT '0',
  `FCURWORKADDRID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSIRM_HIREAPENTRYB_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hireapentry_l definition

CREATE TABLE `t_tsirm_hireapentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_HIREAPENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hirecleader definition

CREATE TABLE `t_tsirm_hirecleader` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_HIRECLEADER_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hirecsuperior definition

CREATE TABLE `t_tsirm_hirecsuperior` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_HIRECSUPERIOR_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hireleader definition

CREATE TABLE `t_tsirm_hireleader` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_HIRELEADER_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hiresuperior definition

CREATE TABLE `t_tsirm_hiresuperior` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_HIRESUPERIOR_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_hobby definition

CREATE TABLE `t_tsirm_hobby` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_HOBBY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvcalendar definition

CREATE TABLE `t_tsirm_intvcalendar` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWERID` bigint NOT NULL DEFAULT '0',
  `FHIDDENAGING` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_INTERVIEWERID` (`FINTERVIEWERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvcalendar_l definition

CREATE TABLE `t_tsirm_intvcalendar_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_INTVCALENDAR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvcalendar_r3 definition

CREATE TABLE `t_tsirm_intvcalendar_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvcandate definition

CREATE TABLE `t_tsirm_intvcandate` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_INTVCANDATEFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intver definition

CREATE TABLE `t_tsirm_intver` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_INTVERFDID` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intverfilemul definition

CREATE TABLE `t_tsirm_intverfilemul` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_INTVERFILEMULFDID` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intverhr definition

CREATE TABLE `t_tsirm_intverhr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_INTVERHRID` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvevl definition

CREATE TABLE `t_tsirm_intvevl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FARGINTVID` bigint NOT NULL DEFAULT '0',
  `FROUNDID` bigint NOT NULL DEFAULT '0',
  `FINTVGROUPID` bigint NOT NULL DEFAULT '0',
  `FAPPFILETASKID` bigint NOT NULL DEFAULT '0',
  `FAPPLICATIONID` bigint NOT NULL DEFAULT '0',
  `FRESUMEID` bigint NOT NULL DEFAULT '0',
  `FINTVTASKID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWERID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWEVALUATORID` bigint NOT NULL DEFAULT '0',
  `FINTVEVLRSLT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWCONTENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWEVALUATIONTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_INTVEVLATORID` (`FINTERVIEWEVALUATORID`),
  KEY `IDX_TSIRM_INTVEVLAAPPFILEID` (`FAPPLICATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvevl_r3 definition

CREATE TABLE `t_tsirm_intvevl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvevlans definition

CREATE TABLE `t_tsirm_intvevlans` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTVEVLQUNRID` bigint NOT NULL DEFAULT '0',
  `FINTVEVLID` bigint NOT NULL DEFAULT '0',
  `FINSPECTDIMID` bigint NOT NULL DEFAULT '0',
  `FINSPECTQUID` bigint NOT NULL DEFAULT '0',
  `FSUBOPTIONID` bigint NOT NULL DEFAULT '0',
  `FSUBANSWER` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_OPTIONID` (`FSUBOPTIONID`),
  KEY `IDX_TSIRM_QUESTIONID` (`FINSPECTQUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvevlans_l definition

CREATE TABLE `t_tsirm_intvevlans_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBANSWER` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_INTVEVLANS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvevlentry definition

CREATE TABLE `t_tsirm_intvevlentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTVEVLID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSIRM_INTVEVLENTRYFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvgroupentry definition

CREATE TABLE `t_tsirm_intvgroupentry` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FINTVDATE` datetime DEFAULT NULL,
  `FINTVSTARTTIME` int NOT NULL DEFAULT '0',
  `FINTVENDTIME` int NOT NULL DEFAULT '0',
  `FADMINDIVISIONID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWLOCATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWROOM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANDATEVEDIOADDRESS` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVERVEDIOADDRESS` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FADDRESSDETAILID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_TSIRM_INTVGROUPAPP` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvgroupentry_l definition

CREATE TABLE `t_tsirm_intvgroupentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWLOCATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWROOM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_INTVGROUPENTRY_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvgroupentry_r3 definition

CREATE TABLE `t_tsirm_intvgroupentry_r3` (
  `fdetailid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fdetailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvroundentry definition

CREATE TABLE `t_tsirm_intvroundentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWTHEMEID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWSTAGEID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWMETHODID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWEVLID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSIRM_INTVROUNDFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvroundentry_r3 definition

CREATE TABLE `t_tsirm_intvroundentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvtask definition

CREATE TABLE `t_tsirm_intvtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FARGINTVID` bigint NOT NULL DEFAULT '0',
  `FROUNDID` bigint NOT NULL DEFAULT '0',
  `FINTVGROUPID` bigint NOT NULL DEFAULT '0',
  `FINTVERFILELD` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWERID` bigint NOT NULL DEFAULT '0',
  `FPASSEDPERSON` bigint NOT NULL DEFAULT '0',
  `FPASSEDPERSONFROM` bigint NOT NULL DEFAULT '0',
  `FINTERVERANSWER` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FURGEINTVEVLTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_INTERVIEWER` (`FINTERVIEWERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvtask_l definition

CREATE TABLE `t_tsirm_intvtask_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_INTVTASK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_intvtask_r3 definition

CREATE TABLE `t_tsirm_intvtask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_irposter definition

CREATE TABLE `t_tsirm_irposter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPICADDR` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RPOSTER_FPARENTID` (`FPARENTID`),
  KEY `IDX_TSIRM_RPOSTER_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_irposterentry definition

CREATE TABLE `t_tsirm_irposterentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPOSID` bigint NOT NULL DEFAULT '0',
  `FADVID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RPOSTERENTRY_EID` (`FENTRYID`),
  KEY `IDX_TSIRM_IRPOSTERENTRY1` (`FADVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_irposteropr definition

CREATE TABLE `t_tsirm_irposteropr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPOSTERID` bigint NOT NULL DEFAULT '0',
  `FOPTTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RPOSTEROPR_POSTER` (`FPOSTERID`),
  KEY `IDX_TSIRM_IRPOSTEROPR1` (`FOPTTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_irrdetail definition

CREATE TABLE `t_tsirm_irrdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FREWARDTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDETAILREWARD` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FDETAILPOINT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FDETAILCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPOINTITEM` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRRECORDID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMANAGEINFOID` bigint NOT NULL DEFAULT '0',
  `FRECCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FREWARDRULEID` bigint NOT NULL DEFAULT '0',
  `FCLASSLEVELID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_IRRDETAIL_FRRECORDID` (`FRRECORDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_irrdetail_l definition

CREATE TABLE `t_tsirm_irrdetail_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_IRRDETAIL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_irrrecord definition

CREATE TABLE `t_tsirm_irrrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARD` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FREWARDPOINT` int NOT NULL DEFAULT '0',
  `FRECRUITLINK` bigint NOT NULL DEFAULT '0',
  `FRECRUITSTATUS` bigint NOT NULL DEFAULT '0',
  `FRESPONID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FRPTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRPFROM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRPNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRPORGID` bigint NOT NULL DEFAULT '0',
  `FCANMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSBIZID` bigint NOT NULL DEFAULT '0',
  `FPOSORGID` bigint NOT NULL DEFAULT '0',
  `FCANPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTERID` bigint NOT NULL DEFAULT '0',
  `FPOSID` bigint NOT NULL DEFAULT '0',
  `FADVID` bigint NOT NULL DEFAULT '0',
  `FRELATIONSHIP` bigint NOT NULL DEFAULT '0',
  `FMODIFYSTATUSDATE` datetime DEFAULT NULL,
  `FCANAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FONBARDINGDATE` datetime DEFAULT NULL,
  `FCANRANK` bigint NOT NULL DEFAULT '0',
  `FJOBNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALCOST` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTOTALPOINT` int NOT NULL DEFAULT '0',
  `FISGIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARDNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREWARDCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FMANAGEINFOID` bigint NOT NULL DEFAULT '0',
  `FCANNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECOMMENDUSERID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FGIVESTATE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_IRRRECORD_CREATORID` (`FCREATORID`),
  KEY `IDX_TSIRM_IRRRECORD_FPOSTERID` (`FPOSTERID`),
  KEY `IDX_TSIRM_IRRRECORD_APPFILEID` (`FCANAPPFILEID`),
  KEY `IDX_TSIRM_IRRRECORD_POSID` (`FPOSID`),
  KEY `IDX_TSIRM_IRRRECORD_ADVID` (`FADVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_irrrecord_l definition

CREATE TABLE `t_tsirm_irrrecord_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRPCOMMON` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_IRRRECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_irworkaddr definition

CREATE TABLE `t_tsirm_irworkaddr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_IRWORKADDR_FWAID` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_irworkaddrh definition

CREATE TABLE `t_tsirm_irworkaddrh` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_IRWORKADDRH_FWAID` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_operateemploye_r3 definition

CREATE TABLE `t_tsirm_operateemploye_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_operateemployee definition

CREATE TABLE `t_tsirm_operateemployee` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_OPFEMPLOYEEID` (`FEMPLOYEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_operationmanag_r3 definition

CREATE TABLE `t_tsirm_operationmanag_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_operationmanage definition

CREATE TABLE `t_tsirm_operationmanage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FACTIVATIONSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVATIONTIME` datetime DEFAULT NULL,
  `FLASTLOGINTIME` datetime DEFAULT NULL,
  `FFIRSTLOGINTIME` datetime DEFAULT NULL,
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FFAILREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILREASONCOMBO` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_OFEMPLOYEEID` (`FEMPLOYEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_operationmanagerd definition

CREATE TABLE `t_tsirm_operationmanagerd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FACTIVATIONSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAILREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FACTIVATIONTIME` datetime DEFAULT NULL,
  `FOPERATEVAL` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATIONMANAGEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_FOPERATIONMANAGEID` (`FOPERATIONMANAGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posadminorgs definition

CREATE TABLE `t_tsirm_posadminorgs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSADMINORGS` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posemployorgs definition

CREATE TABLE `t_tsirm_posemployorgs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSEMPLOYORGS` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_position definition

CREATE TABLE `t_tsirm_position` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONPRIORITY` int NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FMANAGEINFOID` bigint NOT NULL DEFAULT '0',
  `FHOLDOFFTYPID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FEMPRELATIONTYPEID` bigint NOT NULL DEFAULT '0',
  `FRECRUITNUM` int NOT NULL DEFAULT '0',
  `FISRECNUMLIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FWORKCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FENTRYJOBID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBGRADE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARRIVALTIME` datetime DEFAULT NULL,
  `FENTRYPOSITION` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FWORKCITYID` bigint NOT NULL DEFAULT '0',
  `FISSALARYNEGO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSALARYTYPEID` bigint NOT NULL DEFAULT '0',
  `FSALARYDOWN` bigint NOT NULL DEFAULT '0',
  `FSALARYUP` bigint NOT NULL DEFAULT '0',
  `FPOSRESPON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANOPOSREQUIREMENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANDIDATORNUM` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_POSITION_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_position_a definition

CREATE TABLE `t_tsirm_position_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISSEXLIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSEX` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISAGELIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAGEDOWN` int NOT NULL DEFAULT '0',
  `FAGEUP` int NOT NULL DEFAULT '0',
  `FISWORKEXPLIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FWORKEXPDOWN` int NOT NULL DEFAULT '0',
  `FWORKEXPUP` int NOT NULL DEFAULT '0',
  `FISEDULIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FSUCCADVCOUNT` bigint NOT NULL DEFAULT '0',
  `FERRADVCOUNT` bigint NOT NULL DEFAULT '0',
  `FSTOPADVCOUNT` bigint NOT NULL DEFAULT '0',
  `FRECRUSCENEID` bigint NOT NULL DEFAULT '0',
  `FJOBSEQ` bigint NOT NULL DEFAULT '0',
  `FJOBFAMILY` bigint NOT NULL DEFAULT '0',
  `FJOBCLASS` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_POSITION_A_FAGEUP` (`FAGEUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_position_l definition

CREATE TABLE `t_tsirm_position_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKADDRESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSRESPON` longtext COLLATE utf8mb4_unicode_ci,
  `FPOSQUAL` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANOPOSREQUIREMENT` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSITION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_position_r3 definition

CREATE TABLE `t_tsirm_position_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_positionbill definition

CREATE TABLE `t_tsirm_positionbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONSNAPID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_POSITIONBILL_POS` (`FPOSITIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_positionmanage definition

CREATE TABLE `t_tsirm_positionmanage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCRECRUPROCID` bigint NOT NULL DEFAULT '0',
  `FCFGRESURULEID` bigint NOT NULL DEFAULT '0',
  `FSECLEVEL` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FINTVEVLQUNRID` bigint NOT NULL DEFAULT '0',
  `FUSEKREWARDRULE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARDDEFAULTCONF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARDRULEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FALLOWUPDATECONF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_POSITIONMANAGE_POS` (`FPOSITIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_positionmanage_r3 definition

CREATE TABLE `t_tsirm_positionmanage_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_positionrule definition

CREATE TABLE `t_tsirm_positionrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FDISTRIMODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEYWORD` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_PRULE_FPOSITIONID` (`FPOSITIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_positionrule_l definition

CREATE TABLE `t_tsirm_positionrule_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEYWORD` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSITIONRULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_positionrule_r3 definition

CREATE TABLE `t_tsirm_positionrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_positionsnap definition

CREATE TABLE `t_tsirm_positionsnap` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONPRIORITY` int NOT NULL DEFAULT '0',
  `FISABANDON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FHOLDOFFTYPID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FRECRUITNUM` int NOT NULL DEFAULT '0',
  `FISRECNUMLIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FWORKCITYID` bigint NOT NULL DEFAULT '0',
  `FWORKCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FENTRYJOBID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBGRADE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARRIVALTIME` datetime DEFAULT NULL,
  `FENTRYPOSITION` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FISSALARYNEGO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSALARYTYPEID` bigint NOT NULL DEFAULT '0',
  `FSALARYDOWN` bigint NOT NULL DEFAULT '0',
  `FSALARYUP` bigint NOT NULL DEFAULT '0',
  `FPOSRESPON` longtext COLLATE utf8mb4_unicode_ci,
  `FANOPOSREQUIREMENT` longtext COLLATE utf8mb4_unicode_ci,
  `FCANDIDATORNUM` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSIRM_POSITIONSNAP_FID` (`FPOSITIONID`),
  KEY `IDX_TSIRM_POSITIONSNAP_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_positionsnap_a definition

CREATE TABLE `t_tsirm_positionsnap_a` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FISSEXLIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSEX` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISAGELIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAGEDOWN` int NOT NULL DEFAULT '0',
  `FAGEUP` int NOT NULL DEFAULT '0',
  `FISWORKEXPLIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FWORKEXPDOWN` int NOT NULL DEFAULT '0',
  `FWORKEXPUP` int NOT NULL DEFAULT '0',
  `FISEDULIMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FSUCCADVCOUNT` bigint NOT NULL DEFAULT '0',
  `FERRADVCOUNT` bigint NOT NULL DEFAULT '0',
  `FSTOPADVCOUNT` bigint NOT NULL DEFAULT '0',
  `FRECRUSCENEID` bigint NOT NULL DEFAULT '0',
  `FEMPRELATIONTYPEID` bigint NOT NULL DEFAULT '0',
  `FJOBSEQ` bigint NOT NULL DEFAULT '0',
  `FJOBFAMILY` bigint NOT NULL DEFAULT '0',
  `FJOBCLASS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSIRM_POSSNAP_A_FAGEUP` (`FAGEUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_positionsnap_l definition

CREATE TABLE `t_tsirm_positionsnap_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKADDRESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSRESPON` longtext COLLATE utf8mb4_unicode_ci,
  `FPOSQUAL` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANOPOSREQUIREMENT` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSITIONSNAP_L` (`FVID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_positionsnap_r3 definition

CREATE TABLE `t_tsirm_positionsnap_r3` (
  `fvid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posmailrel definition

CREATE TABLE `t_tsirm_posmailrel` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FMAILINFOID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSIRM_POSMAILREL_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posmailrel_r3 definition

CREATE TABLE `t_tsirm_posmailrel_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posordinator definition

CREATE TABLE `t_tsirm_posordinator` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSORDINATOR_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posprin definition

CREATE TABLE `t_tsirm_posprin` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSPRIN_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posspadminorgs definition

CREATE TABLE `t_tsirm_posspadminorgs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSSPADMINORGS` (`FVID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posspemployorgs definition

CREATE TABLE `t_tsirm_posspemployorgs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSSPEMPLOYORGS` (`FVID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posspworkaddrs definition

CREATE TABLE `t_tsirm_posspworkaddrs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSSPWORKADDRS_FVID` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posworkaddr definition

CREATE TABLE `t_tsirm_posworkaddr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSWORKADDR_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posworkaddrs definition

CREATE TABLE `t_tsirm_posworkaddrs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSWORKADDRS_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_posworkaddrsnap definition

CREATE TABLE `t_tsirm_posworkaddrsnap` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_POSWORKADDRSNAP_FVID` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_processinst definition

CREATE TABLE `t_tsirm_processinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FRQMTPROCID` bigint NOT NULL DEFAULT '0',
  `FBOID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZFID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISOVER` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FINRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FOUTRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FOUTRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FINCTLINKTIME` datetime DEFAULT NULL,
  `FINCTSTATUSTIME` datetime DEFAULT NULL,
  `FRECRURSNID` bigint NOT NULL DEFAULT '0',
  `FDURATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_PROCESSINST` (`FBOID`,`FBIZFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_processinst_r3 definition

CREATE TABLE `t_tsirm_processinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rdelivery definition

CREATE TABLE `t_tsirm_rdelivery` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FDELIVERYPERID` bigint NOT NULL DEFAULT '0',
  `FRECRUCHNLMEDIAID` bigint NOT NULL DEFAULT '0',
  `FAPPMTHDID` bigint NOT NULL DEFAULT '0',
  `FRESACQMTHDID` bigint NOT NULL DEFAULT '0',
  `FRECRUCHNLNMID` bigint NOT NULL DEFAULT '0',
  `FISFILEDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RDELIVERY_FAPPLY` (`FAPPLYTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rdelivery_a definition

CREATE TABLE `t_tsirm_rdelivery_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEMAILSOURCEID` bigint NOT NULL DEFAULT '0',
  `FEMAILTITLE` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTACHNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLEPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTACHPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLECITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTACHCITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RDELIVERY_A` (`FEMAILSOURCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rdelivery_r3 definition

CREATE TABLE `t_tsirm_rdelivery_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_recplan definition

CREATE TABLE `t_tsirm_recplan` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FRECREQID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSIRM_RECPLAN_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_refusalreason definition

CREATE TABLE `t_tsirm_refusalreason` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_REFUSALREASON` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_reservere definition

CREATE TABLE `t_tsirm_reservere` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTALPOOLID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FRESERVETIME` datetime DEFAULT NULL,
  `FRESERVEPERID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISVALID` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMERGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RESERVERE_FTALPOOLID` (`FTALPOOLID`),
  KEY `IDX_TSIRM_RESERVERE_FSTDRSMID` (`FSTDRSMID`),
  KEY `IDX_TSIRM_RESERVERE_FISVALID` (`FISVALID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_reservere_r3 definition

CREATE TABLE `t_tsirm_reservere_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_resscr definition

CREATE TABLE `t_tsirm_resscr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFILTERRECOMMENDERID` bigint NOT NULL DEFAULT '0',
  `FFILTERREMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTICEMETHOD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERRECOMMENDTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RESSCR_FIRECER` (`FFILTERRECOMMENDERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_resscr_r3 definition

CREATE TABLE `t_tsirm_resscr_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_resscrtask definition

CREATE TABLE `t_tsirm_resscrtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESSCRID` bigint NOT NULL DEFAULT '0',
  `FAPPLICATIONFILEID` bigint NOT NULL DEFAULT '0',
  `FFILTERHANDLEPEOPLEID` bigint NOT NULL DEFAULT '0',
  `FCANDIDATEID` bigint NOT NULL DEFAULT '0',
  `FRECRUITMENTPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FRECRUITMENTSTAGEID` bigint NOT NULL DEFAULT '0',
  `FFILTERDEADLINE` datetime DEFAULT NULL,
  `FFILTERFEEDBACKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERFEEDBACKCONCLUSION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERFEEDBACKCONTIME` datetime DEFAULT NULL,
  `FFILTEROPINION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERRECOMMENDERID` bigint NOT NULL DEFAULT '0',
  `FFLOWTASKNUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RESSCRTASK_FAPPFEPID` (`FAPPLICATIONFILEID`,`FFILTERHANDLEPEOPLEID`),
  KEY `IDX_TSIRM_RESSCRTASK_FEPIDCT` (`FFILTERHANDLEPEOPLEID`,`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsm definition

CREATE TABLE `t_tsirm_rsm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FDELIVERYID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHOTO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENDER` bigint NOT NULL DEFAULT '0',
  `FAGE` int NOT NULL DEFAULT '0',
  `FWORKINGYEARS` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FBIRTHDAY` datetime DEFAULT NULL,
  `FPROPBIRTHDAY` datetime DEFAULT NULL,
  `FPARTWT` datetime DEFAULT NULL,
  `FJOBSTATUSID` bigint NOT NULL DEFAULT '0',
  `FNATREGID` bigint NOT NULL DEFAULT '0',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHIGHESTEDUSCHOOLID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTDEGREEID` bigint NOT NULL DEFAULT '0',
  `FHESTSPECIALTYCATID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTSPECIALTY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECENTCOMPANY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECENTPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLANGUAGEVERSIONID` bigint NOT NULL DEFAULT '0',
  `FISLANGUAGEVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FNATIONID` bigint NOT NULL DEFAULT '0',
  `FPOLITICSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FCERTIFICATETYPEID` bigint NOT NULL DEFAULT '0',
  `FCERTIFICATENUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTIFICATENUMBER_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCVSTARTDATE` datetime DEFAULT NULL,
  `FCVENDINGDATE` datetime DEFAULT NULL,
  `FMARITALSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROCREATIONSTATUSID` bigint NOT NULL DEFAULT '0',
  `FEXPCJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FEXPCFUNCTIONID` bigint NOT NULL DEFAULT '0',
  `FEXPCCITYID` bigint NOT NULL DEFAULT '0',
  `FEXPCARRIVALDATE` datetime DEFAULT NULL,
  `FTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPLOYEESID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEENUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSM_APPFILE` (`FAPPFILEID`),
  KEY `IDX_TSIRM_RESUME_PHONE` (`FPHONE`),
  KEY `IDX_TSIRM_RESUME_EMAIL` (`FEMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsm_a definition

CREATE TABLE `t_tsirm_rsm_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRESUMESTOADD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRGSTPRMTRSDID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIRTHPLACE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEALTHSTATUSID` bigint NOT NULL DEFAULT '0',
  `FNATIVEPLACETEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIVEPLACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTRESIDENCEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCOMPAGRRESTR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISCRIMRECD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISBUSCONFINTR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSELFEVALUATION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTORG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPTANLSALCURCID` bigint NOT NULL DEFAULT '0',
  `FEXPTANLSAL` int NOT NULL DEFAULT '0',
  `FEXPTMONSALCURCID` bigint NOT NULL DEFAULT '0',
  `FEXPTMONSAL` int NOT NULL DEFAULT '0',
  `FCURANLSAL` int NOT NULL DEFAULT '0',
  `FCURANLSALCURCID` bigint NOT NULL DEFAULT '0',
  `FCURFXDSAL` int NOT NULL DEFAULT '0',
  `FCURFXDSALCURCID` bigint NOT NULL DEFAULT '0',
  `FCURBONUS` int NOT NULL DEFAULT '0',
  `FCURBONUSCURCID` bigint NOT NULL DEFAULT '0',
  `FCURWELFCURCID` bigint NOT NULL DEFAULT '0',
  `FCURLTICURCID` bigint NOT NULL DEFAULT '0',
  `FCURLTI` int NOT NULL DEFAULT '0',
  `FCURWELF` int NOT NULL DEFAULT '0',
  `FHOMEPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMSOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCOMPEMP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FACCPLACECHANGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISRELATIONWORK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRSMPUBSCOPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSHLDCTORG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRSMREMARK` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMUPDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSM_A` (`FCURANLSAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsm_r3 definition

CREATE TABLE `t_tsirm_rsm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmacdachv definition

CREATE TABLE `t_tsirm_rsmacdachv` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FPAPERTITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFERENCECOUNT` int NOT NULL DEFAULT '0',
  `FAFLTJOURNAL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOURNALABBR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOURNALGRADEID` bigint NOT NULL DEFAULT '0',
  `FJOURNALCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FRSCHDIREC` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOAUTHOR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBDATE` datetime DEFAULT NULL,
  `FTUTOR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTUTORPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKSURL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKSDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMACDACHV` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmactvexp definition

CREATE TABLE `t_tsirm_rsmactvexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FACTIVITYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYPLACE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMACTVEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmawrhon definition

CREATE TABLE `t_tsirm_rsmawrhon` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FAWARDNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAWARDDATE` datetime DEFAULT NULL,
  `FAWARDINGUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAWARDDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMAWRHON` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmbankcard definition

CREATE TABLE `t_tsirm_rsmbankcard` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FACCOUNTBANKID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCARDNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMBANKCARD_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmeduexp definition

CREATE TABLE `t_tsirm_rsmeduexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFSTUDY` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FSCHOOLNAMEID` bigint NOT NULL DEFAULT '0',
  `FOTHSCHNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIALTYCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FSPECIALTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FDEGREEID` bigint NOT NULL DEFAULT '0',
  `FISHIGHESTEDU` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEDUCATIONFORMID` bigint NOT NULL DEFAULT '0',
  `FISFULLTIME` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISDBLDEGREESPECIALTY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTUTORNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLASSRANK` int NOT NULL DEFAULT '0',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSRELATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIALISTRANK` int NOT NULL DEFAULT '0',
  `FGRADEPOINT` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FISHASMAKEUPCOUR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMAKEUPCOUR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISOVERSEASEXP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSCHOOLCOUREGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMEDUEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmeduexp_r3 definition

CREATE TABLE `t_tsirm_rsmeduexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmempproexp_r3 definition

CREATE TABLE `t_tsirm_rsmempproexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmemptrainfil_r3 definition

CREATE TABLE `t_tsirm_rsmemptrainfil_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmemrgcontact_r3 definition

CREATE TABLE `t_tsirm_rsmemrgcontact_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmemrgctc definition

CREATE TABLE `t_tsirm_rsmemrgctc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FEMERGENCYCONTACT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FECRELATIONID` bigint NOT NULL DEFAULT '0',
  `FECPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMEMRGCTC_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmfamilymemb_r3 definition

CREATE TABLE `t_tsirm_rsmfamilymemb_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmfmlmbr definition

CREATE TABLE `t_tsirm_rsmfmlmbr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FRELATIONWITHMEID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISOURSTAFF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMFMLMBR` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmhobby definition

CREATE TABLE `t_tsirm_rsmhobby` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_RSMHOBBY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmintegrity definition

CREATE TABLE `t_tsirm_rsmintegrity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWEIGHT` int NOT NULL DEFAULT '0',
  `FRESUME` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPERTIES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPERTIES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FISKEYFIELD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODULAR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMINTEGRITY_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmintegrity_l definition

CREATE TABLE `t_tsirm_rsmintegrity_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_RSMINTEGRITY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmintegrity_r3 definition

CREATE TABLE `t_tsirm_rsmintegrity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsminterexp definition

CREATE TABLE `t_tsirm_rsminterexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FWORKUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERNRESP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSJOB` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSRELATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMINTEREXP` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmlabel definition

CREATE TABLE `t_tsirm_rsmlabel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJTYPEID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJID` bigint NOT NULL DEFAULT '0',
  `FLABELCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMLABEL` (`FTAGOBJTYPEID`,`FTAGOBJID`,`FLABELID`),
  KEY `IDX_TSIRM_RSMLABEL_ID` (`FLABELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmlabel_r3 definition

CREATE TABLE `t_tsirm_rsmlabel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmlangabl definition

CREATE TABLE `t_tsirm_rsmlangabl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCERTIFICATETITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLANGUAGENAMEID` bigint NOT NULL DEFAULT '0',
  `FLANGCERTSCORE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FLISTANDSPKABLID` bigint NOT NULL DEFAULT '0',
  `FLITERACYID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FLANGUAGECERTID` bigint NOT NULL DEFAULT '0',
  `FSPOKENID` bigint NOT NULL DEFAULT '0',
  `FREADID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMLANGABL_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmlangabl_r3 definition

CREATE TABLE `t_tsirm_rsmlangabl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmpatinv definition

CREATE TABLE `t_tsirm_rsmpatinv` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FPATENTNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPATENTCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FINVENTOR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLICATIONDATE` datetime DEFAULT NULL,
  `FPTSTARTDATE` datetime DEFAULT NULL,
  `FPTENDINGDATE` datetime DEFAULT NULL,
  `FCOUNTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPATENTNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPATENTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPATENTURL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPATENTDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDPATINV_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmpercontact_r3 definition

CREATE TABLE `t_tsirm_rsmpercontact_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmpercre_r3 definition

CREATE TABLE `t_tsirm_rsmpercre_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmpereduexp_r3 definition

CREATE TABLE `t_tsirm_rsmpereduexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmperf definition

CREATE TABLE `t_tsirm_rsmperf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FWORKSDATE` datetime DEFAULT NULL,
  `FWORKSNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKSDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMPERF_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmperlgabilit_r3 definition

CREATE TABLE `t_tsirm_rsmperlgabilit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmperocpqual_r3 definition

CREATE TABLE `t_tsirm_rsmperocpqual_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmposorgrel definition

CREATE TABLE `t_tsirm_rsmposorgrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FISRECENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPRIMARY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDURATION` int NOT NULL DEFAULT '0',
  `FDURATIONTEXT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMPOSORGREL` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmposorgrel_l definition

CREATE TABLE `t_tsirm_rsmposorgrel_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_RSMPOSORGREL_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmposorgrel_r3 definition

CREATE TABLE `t_tsirm_rsmposorgrel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmpreworkexp_r3 definition

CREATE TABLE `t_tsirm_rsmpreworkexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmprjexp definition

CREATE TABLE `t_tsirm_rsmprjexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FPROJECTDURATION` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROJECTNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBELONGSCOMPANY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTJOB` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTRESP` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTPERF` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTURL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMPRJEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmprjexp_r3 definition

CREATE TABLE `t_tsirm_rsmprjexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmproskl definition

CREATE TABLE `t_tsirm_rsmproskl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSKILLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEDURATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERYID` bigint NOT NULL DEFAULT '0',
  `FSKILLDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMPROSKL` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmpubscope definition

CREATE TABLE `t_tsirm_rsmpubscope` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMPUBSCOPE_FRSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmpubscope_l definition

CREATE TABLE `t_tsirm_rsmpubscope_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_RSMPUBSCOPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmpubscope_r3 definition

CREATE TABLE `t_tsirm_rsmpubscope_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmrschprj definition

CREATE TABLE `t_tsirm_rsmrschprj` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FRSCHDIREC` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMRSCHPRJ_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmrsmpatinv_r3 definition

CREATE TABLE `t_tsirm_rsmrsmpatinv_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmschjob definition

CREATE TABLE `t_tsirm_rsmschjob` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FJOB` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPACHV` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMSCHJOB_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmsochp definition

CREATE TABLE `t_tsirm_rsmsochp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSOCIALHOMEPAGE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMSOCHP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmtrnexp definition

CREATE TABLE `t_tsirm_rsmtrnexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FTRAININGDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRAININGINST` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRAININGCOURSE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRAININGPLACE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTIFICATETITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTIFICATENO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMTRNEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmvolexp definition

CREATE TABLE `t_tsirm_rsmvolexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FVOLEXP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMVOLEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmworkexp definition

CREATE TABLE `t_tsirm_rsmworkexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFWORK` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCOMPANYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSCATID` bigint NOT NULL DEFAULT '0',
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FWORKRESPONSIBILITY` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKACHIEVEMENT` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISRECWORK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOMPANYSIZE` int NOT NULL DEFAULT '0',
  `FINDUSTRYTYPEID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYNATUREID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUITREASONID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FANNUALSALARY` int NOT NULL DEFAULT '0',
  `FUNDERLINGNUMBER` int NOT NULL DEFAULT '0',
  `FREPORTOBJECT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMWORKEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmworkexp_r3 definition

CREATE TABLE `t_tsirm_rsmworkexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmworkrela definition

CREATE TABLE `t_tsirm_rsmworkrela` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_RSMWORKRELA_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_rsmworkrela_r3 definition

CREATE TABLE `t_tsirm_rsmworkrela_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_sharer definition

CREATE TABLE `t_tsirm_sharer` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTALENTPOOLID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FSHARTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_SHAR_FUSERID` (`FUSERID`),
  KEY `IDX_TSIRM_SHAR_FTMPID` (`FTALENTPOOLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_sharerecord definition

CREATE TABLE `t_tsirm_sharerecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBOID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHARERID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHARERJOBNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHAREDATE` datetime DEFAULT NULL,
  `FRECEIVERID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVERJOBNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALIDITYDATE` datetime DEFAULT NULL,
  `FSENDSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_SHARERECORD` (`FBOID`,`FSHARERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdadminorgs definition

CREATE TABLE `t_tsirm_stdadminorgs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_STDADMINORGS` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdeduexp definition

CREATE TABLE `t_tsirm_stdeduexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFSTUDY` int NOT NULL DEFAULT '0',
  `FSCHOOLNAMEID` bigint NOT NULL DEFAULT '0',
  `FOTHSCHNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIALTYCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FSPECIALTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FDEGREEID` bigint NOT NULL DEFAULT '0',
  `FISHIGHESTEDU` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEDUCATIONFORMID` bigint NOT NULL DEFAULT '0',
  `FISFULLTIME` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISDBLDEGREESPECIALTY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTUTORNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLASSRANK` int NOT NULL DEFAULT '0',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSRELATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIALISTRANK` int NOT NULL DEFAULT '0',
  `FGRADEPOINT` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FISHASMAKEUPCOUR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMAKEUPCOUR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISOVERSEASEXP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSCHOOLCOUREGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDEDUEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdeduexp_r3 definition

CREATE TABLE `t_tsirm_stdeduexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdlangabl definition

CREATE TABLE `t_tsirm_stdlangabl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLANGUAGENAMEID` bigint NOT NULL DEFAULT '0',
  `FLISTANDSPKABLID` bigint NOT NULL DEFAULT '0',
  `FLITERACYID` bigint NOT NULL DEFAULT '0',
  `FSPOKENID` bigint NOT NULL DEFAULT '0',
  `FREADID` bigint NOT NULL DEFAULT '0',
  `FLANGCERTSCORE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FLANGUAGECERTID` bigint NOT NULL DEFAULT '0',
  `FCERTIFICATETITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDLANG_FSTDRSM` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdlangabl_r3 definition

CREATE TABLE `t_tsirm_stdlangabl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdposorgrel definition

CREATE TABLE `t_tsirm_stdposorgrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FDURATION` int NOT NULL DEFAULT '0',
  `FISRECENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISPRIMARY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDPOSORGREL_STDRSM` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdposorgrel_r3 definition

CREATE TABLE `t_tsirm_stdposorgrel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdprjexp definition

CREATE TABLE `t_tsirm_stdprjexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FPROJECTDURATION` int NOT NULL DEFAULT '0',
  `FPROJECTNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBELONGSCOMPANY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTJOB` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTRESP` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTPERF` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTURL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDPRJEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdprjexp_r3 definition

CREATE TABLE `t_tsirm_stdprjexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdrelationwor_r3 definition

CREATE TABLE `t_tsirm_stdrelationwor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdrelationwork definition

CREATE TABLE `t_tsirm_stdrelationwork` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDRELATIONWORK_FSID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdrsm definition

CREATE TABLE `t_tsirm_stdrsm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENDER` bigint NOT NULL DEFAULT '0',
  `FAGE` int NOT NULL DEFAULT '0',
  `FWORKINGYEARS` int NOT NULL DEFAULT '0',
  `FPARTWT` datetime DEFAULT NULL,
  `FJOBSTATUSID` bigint NOT NULL DEFAULT '0',
  `FNATREGID` bigint NOT NULL DEFAULT '0',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHIGHESTEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTEDUSCHOOLID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTSPECIALTY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECENTCOMPANY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECENTPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FNATIONID` bigint NOT NULL DEFAULT '0',
  `FPOLITICSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FEXPCFUNCTIONID` bigint NOT NULL DEFAULT '0',
  `FEXPCCITYID` bigint NOT NULL DEFAULT '0',
  `FMID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKTIME` datetime DEFAULT NULL,
  `FISMERGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPOSITIONNUM` int NOT NULL DEFAULT '0',
  `FRECSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUCHNLNMID` bigint NOT NULL DEFAULT '0',
  `FTALENTPOOLNUM` int NOT NULL DEFAULT '0',
  `FSUSPHOTO` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABLEINFO` bigint NOT NULL DEFAULT '0',
  `FWORKINGYEAR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATARANGE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITION` bigint NOT NULL DEFAULT '0',
  `FATTENTION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRGSTPRMTRSDID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTRESIDENCEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEDUCATIONFORMID` bigint NOT NULL DEFAULT '0',
  `FPOSCATID` bigint NOT NULL DEFAULT '0',
  `FINDUSTRYTYPEID` bigint NOT NULL DEFAULT '0',
  `FACTIVATIONMODEID` bigint NOT NULL DEFAULT '0',
  `FACTIVATIONTIME` datetime DEFAULT NULL,
  `FSTDRSMUPDTIME` datetime DEFAULT NULL,
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FADDSOURCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBLATIME` datetime DEFAULT NULL,
  `FBLAREASON` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELTIME` datetime DEFAULT NULL,
  `FPORPHOTO` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDRSM_PHONE` (`FPHONE`),
  KEY `IDX_TSIRM_STDRSM_EMAIL` (`FEMAIL`),
  KEY `IDX_TSIRM_STDRSM_FULLNAME` (`FFULLNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdrsm_a definition

CREATE TABLE `t_tsirm_stdrsm_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNATIVEPLACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCOMPAGRRESTR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISCRIMRECD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISBUSCONFINTR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSELFEVALUATION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTORG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISFRESHGRADUATE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXPTANLSALCURCID` bigint NOT NULL DEFAULT '0',
  `FEXPTANLSAL` int NOT NULL DEFAULT '0',
  `FEXPTMONSALCURCID` bigint NOT NULL DEFAULT '0',
  `FEXPTMONSAL` int NOT NULL DEFAULT '0',
  `FCURANLSALCURCID` bigint NOT NULL DEFAULT '0',
  `FCURANLSAL` int NOT NULL DEFAULT '0',
  `FCURFXDSALCURCID` bigint NOT NULL DEFAULT '0',
  `FCURFXDSAL` int NOT NULL DEFAULT '0',
  `FCURBONUSCURCID` bigint NOT NULL DEFAULT '0',
  `FCURBONUS` int NOT NULL DEFAULT '0',
  `FCURWELFCURCID` bigint NOT NULL DEFAULT '0',
  `FCURWELF` int NOT NULL DEFAULT '0',
  `FCURLTICURCID` bigint NOT NULL DEFAULT '0',
  `FCURLTI` int NOT NULL DEFAULT '0',
  `FHOMEPHONE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHOTO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIRTHDAY` datetime DEFAULT NULL,
  `FHIGHESTDEGREEID` bigint NOT NULL DEFAULT '0',
  `FHESTSPECIALTYCATID` bigint NOT NULL DEFAULT '0',
  `FLANGUAGEVERSIONID` bigint NOT NULL DEFAULT '0',
  `FISLANGUAGEVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCERTIFICATETYPEID` bigint NOT NULL DEFAULT '0',
  `FCERTIFICATENUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCVSTARTDATE` datetime DEFAULT NULL,
  `FCVENDINGDATE` datetime DEFAULT NULL,
  `FMARITALSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROCREATIONSTATUSID` bigint NOT NULL DEFAULT '0',
  `FEXPCJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FEXPCARRIVALDATE` datetime DEFAULT NULL,
  `FPROPBIRTHDAY` datetime DEFAULT NULL,
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDATASTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FISMODIFY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISOPEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEMPID` bigint NOT NULL DEFAULT '0',
  `FNATIVEPLACETEXT` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTIFICATENUMBER_ENP` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDRSM_A_PHONE` (`FHOMEPHONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdrsm_b definition

CREATE TABLE `t_tsirm_stdrsm_b` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FHISVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FACCPLACECHANGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISRELATIONWORK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISCOMPEMP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEMPLOYEENUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIRTHPLACE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEALTHSTATUSID` bigint NOT NULL DEFAULT '0',
  `FLABRELSTATUSCLSID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCURRDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FRSMPUBSCOPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYHRID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONHRID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDRSM_B_VERSION` (`FHISVERSION`),
  KEY `IDX_TSIRM_STDRSM_B_EMPNUM` (`FEMPLOYEENUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdrsm_r3 definition

CREATE TABLE `t_tsirm_stdrsm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdrsmlabel definition

CREATE TABLE `t_tsirm_stdrsmlabel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJTYPEID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJID` bigint NOT NULL DEFAULT '0',
  `FLABELCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDRSMLABEL` (`FTAGOBJTYPEID`,`FTAGOBJID`,`FLABELID`),
  KEY `IDX_TSIRM_STDRSMLABEL_ID` (`FLABELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdrsmlabel_r3 definition

CREATE TABLE `t_tsirm_stdrsmlabel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdrsmsimilar definition

CREATE TABLE `t_tsirm_stdrsmsimilar` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FSIMILARRSM` bigint NOT NULL DEFAULT '0',
  `FSTDRSMHIS` bigint NOT NULL DEFAULT '0',
  `FDUPLICATETYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDRSMSIMILAR_STD` (`FSTDRSMID`),
  KEY `IDX_TSIRM_STDRSMSIMILAR_DUP` (`FDUPLICATETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdrsmsimilar_r3 definition

CREATE TABLE `t_tsirm_stdrsmsimilar_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdrsmsyncdata_r3 definition

CREATE TABLE `t_tsirm_stdrsmsyncdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdworkexp definition

CREATE TABLE `t_tsirm_stdworkexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFWORK` int NOT NULL DEFAULT '0',
  `FCOMPANYNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSCATID` bigint NOT NULL DEFAULT '0',
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FWORKRESPONSIBILITY` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKACHIEVEMENT` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISRECWORK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOMPANYSIZE` int NOT NULL DEFAULT '0',
  `FINDUSTRYTYPEID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYNATUREID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUITREASONID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FANNUALSALARY` int NOT NULL DEFAULT '0',
  `FUNDERLINGNUMBER` int NOT NULL DEFAULT '0',
  `FREPORTOBJECT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_STDWORKEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_stdworkexp_r3 definition

CREATE TABLE `t_tsirm_stdworkexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_talentpoolmgt definition

CREATE TABLE `t_tsirm_talentpoolmgt` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYPID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FNODETYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSECLEVEL` bigint NOT NULL DEFAULT '0',
  `FPOOLTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_TAL_FPARENTID` (`FPARENTID`),
  KEY `IDX_TSTP_TAL_FRECRUTYPID` (`FRECRUTYPID`),
  KEY `IDX_TSIRM_TAL_FLONGNUMBER` (`FLONGNUMBER`),
  KEY `IDX_TSIRM_TAL_FORGID` (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_talentpoolmgt_l definition

CREATE TABLE `t_tsirm_talentpoolmgt_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_TALENTPOOLMGT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_talentpoolmgt_r3 definition

CREATE TABLE `t_tsirm_talentpoolmgt_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_tracerecord definition

CREATE TABLE `t_tsirm_tracerecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FTRACKPERID` bigint NOT NULL DEFAULT '0',
  `FTRACKTIME` datetime DEFAULT NULL,
  `FJOBSTATUSID` bigint NOT NULL DEFAULT '0',
  `FTRACKFEED` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMID` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_TRACERECORD_SID` (`FSTDRSMID`),
  KEY `IDX_TSIRM_TRACERECORD_STAID` (`FJOBSTATUSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_tracerecord_l definition

CREATE TABLE `t_tsirm_tracerecord_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_TRACERECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_tracerecord_r3 definition

CREATE TABLE `t_tsirm_tracerecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_unifarginfo_r3 definition

CREATE TABLE `t_tsirm_unifarginfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_unifarginfotpl_r3 definition

CREATE TABLE `t_tsirm_unifarginfotpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_unifyarginfo definition

CREATE TABLE `t_tsirm_unifyarginfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FARGINTVID` bigint NOT NULL DEFAULT '0',
  `FROUNDID` bigint NOT NULL DEFAULT '0',
  `FUNIFYINTVTIME` int NOT NULL DEFAULT '0',
  `FUNIFYDURATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIFADMINDIVISIONID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIFYINTERVIEWADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIFYFINTERVIEWROOM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHALFBEGINTIME` int NOT NULL DEFAULT '0',
  `FHALFENDTIME` int NOT NULL DEFAULT '0',
  `FUNIFYPERSONNUM` int NOT NULL DEFAULT '0',
  `FUNIFYGROUPNUM` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_UNIFARGINTVID` (`FARGINTVID`),
  KEY `IDX_TSIRM_UNIFFROUNDID` (`FROUNDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_unifyarginfo_l definition

CREATE TABLE `t_tsirm_unifyarginfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIFYINTERVIEWADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIFYFINTERVIEWROOM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_UNIFYARGINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_unifyintver definition

CREATE TABLE `t_tsirm_unifyintver` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_UNIFYINTVERFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_unifyintverhr definition

CREATE TABLE `t_tsirm_unifyintverhr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_UNIFYINTVERHRFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_useradvertrel definition

CREATE TABLE `t_tsirm_useradvertrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FADVERTID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIRM_USERADVERTREL_FUSER` (`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_useradvertrel_l definition

CREATE TABLE `t_tsirm_useradvertrel_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIRM_USERADVERTREL_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsci.t_tsirm_useradvertrel_r3 definition

CREATE TABLE `t_tsirm_useradvertrel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
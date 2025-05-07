USE crrc_tsc;

-- crrc_tsc.t_jtestj_1_r3 definition

CREATE TABLE `t_jtestj_1_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsirm_sharerecord_r3 definition

CREATE TABLE `t_tsirm_sharerecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_businessevent definition

CREATE TABLE `t_tso_businessevent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETHOD` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICETYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_BUSINESSEVENT` (`FBUSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_businessevent_l definition

CREATE TABLE `t_tso_businessevent_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_BUSINESSEVENT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_businessevent_r3 definition

CREATE TABLE `t_tso_businessevent_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_cannoticecr definition

CREATE TABLE `t_tso_cannoticecr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_CANNOTICECR_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_cannoticesr definition

CREATE TABLE `t_tso_cannoticesr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_CANNOTICESR_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_hireapproval definition

CREATE TABLE `t_tso_hireapproval` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FBATCHNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FSUBMITOR` bigint NOT NULL DEFAULT '0',
  `FSUBMITTIME` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_HIREAPPROVAL_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_hireapprovalentry definition

CREATE TABLE `t_tso_hireapprovalentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FJOBRANKID` bigint NOT NULL DEFAULT '0',
  `FSALARYID` bigint NOT NULL DEFAULT '0',
  `FSALARYEXPTID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTINFOID` bigint NOT NULL DEFAULT '0',
  `FADVERTNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSO_HIREAPPROVALENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_hireapprovalentry_a definition

CREATE TABLE `t_tso_hireapprovalentry_a` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCURYESARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURYESARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURTFIXSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURTFIXSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURBONUSNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURBONUSNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURTBENEFITSNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURTBENEFITSNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FFCURTLONGINCNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FFCURTLONGINCNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPMONSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FEXPMONSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPYEARSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FEXPYEARSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPTREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSO_HIREAPPRENTRYA_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_hireapprovalentry_b definition

CREATE TABLE `t_tso_hireapprovalentry_b` (
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
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROBATIONTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROBATIONNUM` int NOT NULL DEFAULT '0',
  `FWORKADDRID` bigint NOT NULL DEFAULT '0',
  `FSOCAREAID` bigint NOT NULL DEFAULT '0',
  `FDEPTCHARGEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPECLSID` bigint NOT NULL DEFAULT '0',
  `FLABRELSTATUSCLSID` bigint NOT NULL DEFAULT '0',
  `FISPROBATION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSO_HIREAPPRENTRYB_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_hireapprovalentry_c definition

CREATE TABLE `t_tso_hireapprovalentry_c` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FFORMALCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FBASICWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FBASICWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FACHIEVEMENTWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FACHIEVEMENTWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPOSITIONWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPOSITIONWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FMONTHLYSALARY` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FMONTHLYSALARY_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FYEARENDBONUS` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FYEARENDBONUS_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPAYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYNUM` int NOT NULL DEFAULT '0',
  `FFORMALREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROBBASICWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBBASICWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBACHIEVEMENTWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBACHIEVEMENTWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBPOSITIONWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBPOSITIONWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBMONTHLYSALARY` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBMONTHLYSALARY_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSO_HIREAPPRENTRYC_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_hireapprovalentry_d definition

CREATE TABLE `t_tso_hireapprovalentry_d` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FTRAFFICFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FTRAFFICFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FRESTAURANTFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FRESTAURANTFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCOMMUNICATIONFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCOMMUNICATIONFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FRENTFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FRENTFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FHOUSINGFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FHOUSINGFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FWELFAREREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FRSSHARNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FYEARSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FYEARSHARNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FOPSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FOPSHARNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FOPVALNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FOPVALNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESTAURANTFEECOMPANY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMUNICAFEECOMPANY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRENTFEECOMPANY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOUSINGFEECOMPANY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEARSHARCURID` bigint NOT NULL DEFAULT '0',
  `FOPVALCURID` bigint NOT NULL DEFAULT '0',
  `FTRAFFICFEECOMPANY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSO_HIREAPPRENTRYD_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_hireapprovalentry_e definition

CREATE TABLE `t_tso_hireapprovalentry_e` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTTERMTYPEID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTYEAR` int NOT NULL DEFAULT '0',
  `FCONTRACTMONTH` int NOT NULL DEFAULT '0',
  `FCONTRACTUNITID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSO_HIREAPPRENTRYE_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_hireapprovalentry_l definition

CREATE TABLE `t_tso_hireapprovalentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVERTNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_HIREAPPROVALENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_induction definition

CREATE TABLE `t_tso_induction` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FINDUCTIONNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPEPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPECOMPANYID` bigint NOT NULL DEFAULT '0',
  `FPEJOBID` bigint NOT NULL DEFAULT '0',
  `FPOSTTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPPERIODTERM` int NOT NULL DEFAULT '0',
  `FPPERIODTERMUNIT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FPEMPLOYMENTTIME` datetime DEFAULT NULL,
  `FVALIDTIME` datetime DEFAULT NULL,
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FINDUCTIONSTATUS` bigint NOT NULL DEFAULT '0',
  `FABANDONBOX` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPLACEWORK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_INDUCTION_OFFERID` (`FOFFERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_induction_l definition

CREATE TABLE `t_tso_induction_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLACEWORK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_INDUCTION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_induction_r3 definition

CREATE TABLE `t_tso_induction_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_inductioncorpus definition

CREATE TABLE `t_tso_inductioncorpus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FADMORGID` bigint NOT NULL DEFAULT '0',
  `FRECRUSCENE` bigint NOT NULL DEFAULT '0',
  `FPEPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPECOMPANYID` bigint NOT NULL DEFAULT '0',
  `FPEJOBID` bigint NOT NULL DEFAULT '0',
  `FPOSTASSIGNMODE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPESTDPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(900) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLICANTID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FRECRUTYP` bigint NOT NULL DEFAULT '0',
  `FISDELETE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDUCTIONSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAUNCHINDTIME` datetime DEFAULT NULL,
  `FLAUNCHINDSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBREAKUPTYPEID` bigint NOT NULL DEFAULT '0',
  `FBREAKUPREASONID` bigint NOT NULL DEFAULT '0',
  `FBREAKUPREASONTEXT` longtext COLLATE utf8mb4_unicode_ci,
  `FLAUNCHINDERRDESC` longtext COLLATE utf8mb4_unicode_ci,
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSUNITID` bigint NOT NULL DEFAULT '0',
  `FATSSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANDIDATEPHONE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANDIDATEEMAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANDIDATENAME` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANDIDATEGENDERID` bigint NOT NULL DEFAULT '0',
  `FCANDIDATEAGE` int NOT NULL DEFAULT '0',
  `FCANDIDATENATIONID` bigint NOT NULL DEFAULT '0',
  `FCANDIDATEWORKAGE` decimal(10,1) NOT NULL DEFAULT '0.0',
  `FHIGHESTEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FSCHOOLNAMEID` bigint NOT NULL DEFAULT '0',
  `FSPECIALTYCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FCREDENTIALSTYPEID` bigint NOT NULL DEFAULT '0',
  `FCREDENTIALSNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDUCTIONREASONDESC` longtext COLLATE utf8mb4_unicode_ci,
  `FATSREASONDESC` longtext COLLATE utf8mb4_unicode_ci,
  `FERRORREASONTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIALTYCATEGORY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLOYMENTTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_INDUCTCORPUS_OFFERID` (`FOFFERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_inductioncorpus_a definition

CREATE TABLE `t_tso_inductioncorpus_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTPSYS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATANUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPTENANTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUPOSIID` bigint NOT NULL DEFAULT '0',
  `FPPERIODTERM` int NOT NULL DEFAULT '0',
  `FPPERIODTERMUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABRELSTATCLSID` bigint NOT NULL DEFAULT '0',
  `FISHAVEPERIODTERM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPERVISORID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FPOSTTYPEID` bigint NOT NULL DEFAULT '0',
  `FPLACEWORKID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FPEMPLOYMENTTIME` datetime DEFAULT NULL,
  `FLABORRELTYPECLSID` bigint NOT NULL DEFAULT '0',
  `FEMPRELATIONTYPEID` bigint NOT NULL DEFAULT '0',
  `FTPSYSFIELD` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPCYTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_INDUCTION_A` (`FTPDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_inductioncorpus_r3 definition

CREATE TABLE `t_tso_inductioncorpus_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_inductionsuper definition

CREATE TABLE `t_tso_inductionsuper` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_INDUCTIONSUPER` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offer definition

CREATE TABLE `t_tso_offer` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPINDEXES` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOFFERAUDITNO` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUSID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FBUSUNITID` bigint NOT NULL DEFAULT '0',
  `FRECRUTYP` bigint NOT NULL DEFAULT '0',
  `FRECRUSCENE` bigint NOT NULL DEFAULT '0',
  `FAPPLICANTID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FISGTANNEX` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEPANNEX` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDELETE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFYCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFYCODE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATECONTENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATECONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCANDIDATEGENDER` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANDIDATEAGE` bigint NOT NULL DEFAULT '0',
  `FCANDIDATEEMAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANDIDATEPHONE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANDIDATENATIONID` bigint NOT NULL DEFAULT '0',
  `FCANDIDATEWORKAGE` decimal(5,1) NOT NULL DEFAULT '0.0',
  `FCANDIDATENAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPEPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPECOMPANYID` bigint NOT NULL DEFAULT '0',
  `FPEJOBID` bigint NOT NULL DEFAULT '0',
  `FRECRUPOSIID` bigint NOT NULL DEFAULT '0',
  `FOFFERLETTERID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPEMPLOYMENTTIME` datetime DEFAULT NULL,
  `FINDUCTIONSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABANDONTIME` datetime DEFAULT NULL,
  `FABANDONREASON` bigint NOT NULL DEFAULT '0',
  `FABANDONDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLETTERCHGAUDITNO` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLETTERCHGAUDITSTAT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANDIDATEGENDERID` bigint NOT NULL DEFAULT '0',
  `FBREAKUPREASONTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPECTEDMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAUNCHINDERRDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBDUTIES` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_TSO_OFFER_FPINDEX` (`FPINDEXES`),
  KEY `IDX_TSO_OFFER_FAPPID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offer_a definition

CREATE TABLE `t_tso_offer_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONTTYPE` bigint NOT NULL DEFAULT '0',
  `FCONTTERMTYPE` bigint NOT NULL DEFAULT '0',
  `FCONTTERM` int NOT NULL DEFAULT '0',
  `FADMORGID` bigint NOT NULL DEFAULT '0',
  `FSUPERVISORID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FPLACEWORKID` bigint NOT NULL DEFAULT '0',
  `FPOSTTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPPERIODTERM` int NOT NULL DEFAULT '0',
  `FPPERIODTERMUNIT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPECLSID` bigint NOT NULL DEFAULT '0',
  `FLABRELSTATCLSID` bigint NOT NULL DEFAULT '0',
  `FISHAVEPERIODTERM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBREAKUPTYPEID` bigint NOT NULL DEFAULT '0',
  `FBREAKUPREASONID` bigint NOT NULL DEFAULT '0',
  `FTPSYSFIELD` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPESTDPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FEMPRELATIONTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSTASSIGNMODE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAUNCHINDSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAUNCHINDTIME` datetime DEFAULT NULL,
  `FLAUNCHINDERRDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPSYS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATANUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPTENANTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FRECRURSNID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_OFFER_A_FORGID` (`FADMORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offer_b definition

CREATE TABLE `t_tso_offer_b` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FWELPAYCUID` bigint NOT NULL DEFAULT '0',
  `FTRAFAOW` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTRAFAOWUNIT` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIETARYAOW` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTIETARYAOWUNIT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMUNICATAOW` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMUNICATAOWUNIT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRENTALAOW` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRENTALAOWUNIT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOUSAOW` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHOUSAOWUNIT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSNUM` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRSUNIT` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSYEARVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRSYEARCUID` bigint NOT NULL DEFAULT '0',
  `FOPTIONNUM` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOPTIONUNIT` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTIONYEARVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOPTIONCUID` bigint NOT NULL DEFAULT '0',
  `FREGPAYCUID` bigint NOT NULL DEFAULT '0',
  `FREGBWAGES` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREGPOSSUB` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREGPRP` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREGMONTHLY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREGYEARBONUS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRPEPAYCUID` bigint NOT NULL DEFAULT '0',
  `FPRPEBWAGES` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRPEPOSSUB` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRPEPRP` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRPEMONTHLY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRPESACALTYPE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPESARATIO` decimal(16,2) NOT NULL DEFAULT '0.00',
  `FETREMARK` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWELREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPEREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTREGPAYCUID` bigint NOT NULL DEFAULT '0',
  `FCURRENTSALARY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXPECTEDSALARY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSALARYSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALARYTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_OFFER_B_FPAYID` (`FWELPAYCUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offer_c definition

CREATE TABLE `t_tso_offer_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FSCHOOLNAMEID` bigint NOT NULL DEFAULT '0',
  `FSPECIALTYCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FSPECIALTYCATEGORY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORREASONTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHOOLNAMETEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_OFFER_C_FEDID` (`FHIGHESTEDUCATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offer_l definition

CREATE TABLE `t_tso_offer_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEVALIDDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELAYDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABANDONDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREJECTDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FETREMARK` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWELREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPEREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLNCHINDERRDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBREAKUPREASONTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPECTEDMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAUNCHINDERRDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBDUTIES` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_OFFER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offer_r3 definition

CREATE TABLE `t_tso_offer_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerapprouser definition

CREATE TABLE `t_tso_offerapprouser` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_OFFERAPPROUSER_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerapprove definition

CREATE TABLE `t_tso_offerapprove` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBUSUNITID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYCONTENT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLICANTID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FAPPLYCOMPLETETIME` datetime DEFAULT NULL,
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATEDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FBARCODE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPLOYID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABANDONDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELETESTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_OFFERAPPROVE_FNOID` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerapprove_l definition

CREATE TABLE `t_tso_offerapprove_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATEDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABANDONDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_OFFERAPPROVE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerapproveentry definition

CREATE TABLE `t_tso_offerapproveentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSIGNSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATEDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDELETE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSO_OFFERAPPROVEENTRY_FOF` (`FOFFERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerapproveentry_l definition

CREATE TABLE `t_tso_offerapproveentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATEDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_OFFERAPPROVEENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerchangebill definition

CREATE TABLE `t_tso_offerchangebill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOFFERLETTERID` bigint NOT NULL DEFAULT '0',
  `FCHANGELETTERVALIDID` bigint NOT NULL DEFAULT '0',
  `FAPPLYUSERID` bigint NOT NULL DEFAULT '0',
  `FAPPLYDATETIME` datetime DEFAULT NULL,
  `FAPPLYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FAPPLYCOMPLETETIME` datetime DEFAULT NULL,
  `FABANDONDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELETESTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_FOFFERLETTERID` (`FOFFERLETTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerchangebill_l definition

CREATE TABLE `t_tso_offerchangebill_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABANDONDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_OFFERCHANGEBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerchangevalid definition

CREATE TABLE `t_tso_offerchangevalid` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDTIME` datetime DEFAULT NULL,
  `FVALIDTIME` datetime DEFAULT NULL,
  `FLASTREPLYTIME` datetime DEFAULT NULL,
  `FOFFERLETTERID` bigint NOT NULL DEFAULT '0',
  `FCHANGEREASON` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWLASTREPLYTIME` datetime DEFAULT NULL,
  `FNEWVALIDTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLETTERAUDIT` int NOT NULL DEFAULT '0',
  `FLETTERVALIDSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDELETE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_OFFERCHANGEVALID` (`FOFFERLETTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerchangevalid_l definition

CREATE TABLE `t_tso_offerchangevalid_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEREASON` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_OFFERCHANGEVALID_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerchangevalid_r3 definition

CREATE TABLE `t_tso_offerchangevalid_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offercontact definition

CREATE TABLE `t_tso_offercontact` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FCONTACTID` bigint NOT NULL DEFAULT '0',
  `FCONTACTPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACTEMAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FOFFERLETTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_OFFERCONTACT_FOFID` (`FOFFERID`),
  KEY `IDX_TSO_OFFERCONTACT_FLEID` (`FOFFERLETTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offercontact_r3 definition

CREATE TABLE `t_tso_offercontact_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerfieswit definition

CREATE TABLE `t_tso_offerfieswit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FPAGEKEY` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPLAYCONT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_OFFERFIESWIT_FIDPKEY` (`FOFFERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerfieswit_r3 definition

CREATE TABLE `t_tso_offerfieswit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerletter definition

CREATE TABLE `t_tso_offerletter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLETTERAUDITNO` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOFFERAUDITNO` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLICANTID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUSID` bigint NOT NULL DEFAULT '0',
  `FREPLYSTATUSID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUSID` bigint NOT NULL DEFAULT '0',
  `FVALIDTIME` datetime DEFAULT NULL,
  `FSENDUSERID` bigint NOT NULL DEFAULT '0',
  `FSENDTIME` datetime DEFAULT NULL,
  `FLASTSENDTIME` datetime DEFAULT NULL,
  `FLASTREPLYTIME` datetime DEFAULT NULL,
  `FREPLYTIME` datetime DEFAULT NULL,
  `FABANDONTIME` datetime DEFAULT NULL,
  `FABANDONREASON` bigint NOT NULL DEFAULT '0',
  `FREJECTREASON` bigint NOT NULL DEFAULT '0',
  `FABANDONDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREJECTDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEVALIDDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELAYDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FLETTERCONTENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLETTERCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCANDIDATEEMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDELETE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FOFFERAUDITID` bigint NOT NULL DEFAULT '0',
  `FISGTANNEX` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEPANNEX` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFYCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFYCODE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FREPLYDAY` int NOT NULL DEFAULT '0',
  `FLETTERVALIDDAY` int NOT NULL DEFAULT '0',
  `FLOGINTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELAYREPLAYDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTREASONSIGN` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTADDRESSID` bigint NOT NULL DEFAULT '0',
  `FPLOYMENTTIME` datetime DEFAULT NULL,
  `FSENDLETTERCONTENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDLETTERCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSENDTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANNOTICEOPEN` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FRCPERNOTICEOPEN` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_OFFERLETTER_FOFID` (`FOFFERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerletter_l definition

CREATE TABLE `t_tso_offerletter_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEVALIDDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELAYDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABANDONDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREJECTDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELAYREPLAYDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_OFFERLETTER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerletter_r3 definition

CREATE TABLE `t_tso_offerletter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerletterrecor_r3 definition

CREATE TABLE `t_tso_offerletterrecor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerletterrecord definition

CREATE TABLE `t_tso_offerletterrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSENDEMAIL` varchar(320) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDUSER` bigint NOT NULL DEFAULT '0',
  `FSENDTIME` datetime DEFAULT NULL,
  `FVALIDTIME` datetime DEFAULT NULL,
  `FREPLYSTATUSID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FREPLYTIME` datetime DEFAULT NULL,
  `FREJECTREASON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREJECTREASONID` bigint NOT NULL DEFAULT '0',
  `FOFFERLETTERID` bigint NOT NULL DEFAULT '0',
  `FLETTERCONTENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLETTERCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FREPLYUSERID` bigint NOT NULL DEFAULT '0',
  `FREPLYUSERNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSO_RECORD_LETTERID` (`FOFFERLETTERID`),
  KEY `IDX_TSO_RECORD_APPFILEID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerltrapprouser definition

CREATE TABLE `t_tso_offerltrapprouser` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_OFFERLTRAPPROUSER_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offerrecrude definition

CREATE TABLE `t_tso_offerrecrude` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_OFFERRECRUDE_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_offersupervisor definition

CREATE TABLE `t_tso_offersupervisor` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_OFFERSUPERVISOR` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_rcpernoticecr definition

CREATE TABLE `t_tso_rcpernoticecr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_RCPERNOTICECR_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tso_rcpernoticesr definition

CREATE TABLE `t_tso_rcpernoticesr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSO_RCPERNOTICESR_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_advadminorgs definition

CREATE TABLE `t_tspr_advadminorgs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_ADVADMINORGS_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_advbill definition

CREATE TABLE `t_tspr_advbill` (
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
  KEY `IDX_TSPR_ADVBILL_FPOSID` (`FPOSITIONEXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_advbill_l definition

CREATE TABLE `t_tspr_advbill_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOWNODE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOWNODEAUDITOR` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_ADVBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_advbillentity definition

CREATE TABLE `t_tspr_advbillentity` (
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
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSPR_ADVBILLENTITY_FADVID` (`FADVID`),
  KEY `IDX_TSPR_ADVBILLENTITY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_advbillentity_i definition

CREATE TABLE `t_tspr_advbillentity_i` (
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
  KEY `IDX_TSPR_ADVERTENTITY_I_ISTOP` (`FISTOP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_advbillentity_l definition

CREATE TABLE `t_tspr_advbillentity_l` (
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
  KEY `IDX_TSPR_ADVBILLENTITY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_advbillentity_wa definition

CREATE TABLE `t_tspr_advbillentity_wa` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_IRWORKADDR_WA_FWAID` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_advertex definition

CREATE TABLE `t_tspr_advertex` (
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
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_ADVERTEX_FPOSID` (`FPOSID`),
  KEY `IDX_TSPR_ADVERTEX_FNUMBER` (`FNUMBER`),
  KEY `IDX_TSPR_ADVERTEX_FAPPROVEID` (`FAPPROVEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_advertex_i definition

CREATE TABLE `t_tspr_advertex_i` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISURGENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISTOP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISREWARD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARD` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FRECURRENCYID` int NOT NULL DEFAULT '0',
  `FREWARDPOINT` int NOT NULL DEFAULT '0',
  `FREWARDRULEDESC` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREWARDRULEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_ADVERTEX_I_ISTOP` (`FISTOP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_advertex_l definition

CREATE TABLE `t_tspr_advertex_l` (
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
  KEY `IDX_TSPR_ADVERTEX_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_advertex_r3 definition

CREATE TABLE `t_tspr_advertex_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfile definition

CREATE TABLE `t_tspr_appfile` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONSNAPID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FDELIVERYRECID` bigint NOT NULL DEFAULT '0',
  `FAPPRESID` bigint NOT NULL DEFAULT '0',
  `FISBINDDELYREC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
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
  `FPHONE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FARFRSMID` bigint NOT NULL DEFAULT '0',
  `FRECRUTYP` bigint NOT NULL DEFAULT '0',
  `FLASTEXAMATITLE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_APPFILE_FPOS` (`FPOSITIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfile_a definition

CREATE TABLE `t_tspr_appfile_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIRTHDAY` datetime DEFAULT NULL,
  `FHIGHESTEDUSCHOOLID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTSPECIALTY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
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
  `FHIRETIME` datetime DEFAULT NULL,
  `FEMPTIME` datetime DEFAULT NULL,
  `FENDEMPTIME` datetime DEFAULT NULL,
  `FTPSYS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATANUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABORRELTIME` datetime DEFAULT NULL,
  `FPINDEX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_TSPR_APPFILE_A_FPINDEX` (`FPINDEX`),
  KEY `IDX_TSPR_APPFILE_A_FAPPLYTIME` (`FAPPLYTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfile_l definition

CREATE TABLE `t_tspr_appfile_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTEXAMWNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTEXAMATITLE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_APPFILE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfile_r3 definition

CREATE TABLE `t_tspr_appfile_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfileflowlock definition

CREATE TABLE `t_tspr_appfileflowlock` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FLOCKTIME` datetime DEFAULT NULL,
  `FAUTOUNLOCKTIME` datetime DEFAULT NULL,
  `FLOCKERID` bigint NOT NULL DEFAULT '0',
  `FISLOCKED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FUNLOCKTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_APPFILEFK_FSTDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfileflowlock_r3 definition

CREATE TABLE `t_tspr_appfileflowlock_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfilestatusre_r3 definition

CREATE TABLE `t_tspr_appfilestatusre_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfilestatusrec definition

CREATE TABLE `t_tspr_appfilestatusrec` (
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
  KEY `IDX_TSPR_AFSTSREC_APPFILE` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfilestatusrec_l definition

CREATE TABLE `t_tspr_appfilestatusrec_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILEDREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_APPFILESTATUSREC_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfiletask definition

CREATE TABLE `t_tspr_appfiletask` (
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
  KEY `IDX_TSPR_INTVGROUPID` (`FINTVGROUPID`),
  KEY `IDX_TSPR_TASKARGINTVID` (`FARGINTVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfiletask_l definition

CREATE TABLE `t_tspr_appfiletask_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFUSALCAUSE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_APPFILETASK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfiletask_r3 definition

CREATE TABLE `t_tspr_appfiletask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfiletrace definition

CREATE TABLE `t_tspr_appfiletrace` (
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
  KEY `IDX_TSPR_AFTRACE_FAFID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_appfiletrace_r3 definition

CREATE TABLE `t_tspr_appfiletrace_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_argintv definition

CREATE TABLE `t_tspr_argintv` (
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
  KEY `IDX_TSPR_ARGINTVHRID` (`FINTERVIEWARRANGERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_argintv_l definition

CREATE TABLE `t_tspr_argintv_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWTITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_ARGINTV_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_argintv_r3 definition

CREATE TABLE `t_tspr_argintv_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_authorizer definition

CREATE TABLE `t_tspr_authorizer` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_AUTHORIZER_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_background definition

CREATE TABLE `t_tspr_background` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FCONCLUSION` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBGSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDELETED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_BACKGROUND1` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_background_r3 definition

CREATE TABLE `t_tspr_background_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_bizcount definition

CREATE TABLE `t_tspr_bizcount` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMARK` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZSTAFF` bigint NOT NULL DEFAULT '0',
  `FBIZSTAFFNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNT` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_BIZCOUNT_STAFF` (`FBIZSTAFF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_canintventry definition

CREATE TABLE `t_tspr_canintventry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FINDEXDATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_INDEXDATE` (`FINDEXDATE`),
  KEY `IDX_TSPR_CANINTVENTRY1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_cannotintventry definition

CREATE TABLE `t_tspr_cannotintventry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FINDEXDATE` datetime DEFAULT NULL,
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDATASOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHANNELID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSPR_INDEXDATE` (`FINDEXDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_channelrelation definition

CREATE TABLE `t_tspr_channelrelation` (
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
  KEY `IDX_TSPR_CHANNELID` (`FCHANNELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_channelrelation_r3 definition

CREATE TABLE `t_tspr_channelrelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_examresult definition

CREATE TABLE `t_tspr_examresult` (
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
  KEY `IDX_TSPR_EXAMRESULT_APPFILEID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_examresult_l definition

CREATE TABLE `t_tspr_examresult_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_EXAMRESULT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_examresult_r3 definition

CREATE TABLE `t_tspr_examresult_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_groupcandate definition

CREATE TABLE `t_tspr_groupcandate` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_GROUPCANDATEFDID` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hirejobrank definition

CREATE TABLE `t_tspr_hirejobrank` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FHANDLETIME` datetime DEFAULT NULL,
  `FHANDLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROBATIONNUM` int NOT NULL DEFAULT '0',
  `FPROBATIONTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FWORKADDRID` bigint NOT NULL DEFAULT '0',
  `FSOCAREAID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FLABORRELTYPECLSID` bigint NOT NULL DEFAULT '0',
  `FLABRELSTATUSCLSID` bigint NOT NULL DEFAULT '0',
  `FISPROBATION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_HJR_APPFILEID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hirejobrank_r3 definition

CREATE TABLE `t_tspr_hirejobrank_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hirejobrankbill definition

CREATE TABLE `t_tspr_hirejobrankbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FJOBRANKID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FHANDLETIME` datetime DEFAULT NULL,
  `FHANDLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROBATIONNUM` int NOT NULL DEFAULT '0',
  `FPROBATIONTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FJOBCLASSID` bigint NOT NULL DEFAULT '0',
  `FJOBFAMILYID` bigint NOT NULL DEFAULT '0',
  `FJOBSEQID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FWORKADDRID` bigint NOT NULL DEFAULT '0',
  `FSOCAREAID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FFLOWTASKNUM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPECLSID` bigint NOT NULL DEFAULT '0',
  `FLABRELSTATUSCLSID` bigint NOT NULL DEFAULT '0',
  `FISPROBATION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_HJRBILL_HJRID` (`FJOBRANKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hirejobrankbill_s definition

CREATE TABLE `t_tspr_hirejobrankbill_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCURYESARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURYESARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURTFIXSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURTFIXSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURBONUSNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURBONUSNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURTBENEFITSNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURTBENEFITSNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FFCURTLONGINCNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FFCURTLONGINCNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPMONSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FEXPMONSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPYEARSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FEXPYEARSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPTREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_HIREJOBRANKBILL_S` (`FCURRENCYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hirerecommend definition

CREATE TABLE `t_tspr_hirerecommend` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FHANDLETIME` datetime DEFAULT NULL,
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FFEEDBACKRESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVICEREASON` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FFLOWTASKNUM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_HIRERECOM_APPFILEID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hirerecommend_l definition

CREATE TABLE `t_tspr_hirerecommend_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVICEREASON` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_HIRERECOMMEND_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hiresalary definition

CREATE TABLE `t_tspr_hiresalary` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FHANDLETIME` datetime DEFAULT NULL,
  `FHANDLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FFORMALCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FBASICWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FBASICWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FACHIEVEMENTWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FACHIEVEMENTWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPOSITIONWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPOSITIONWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FMONTHLYSALARY` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FMONTHLYSALARY_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FYEARENDBONUS` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FYEARENDBONUS_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FFORMALREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBBASICWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBBASICWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBACHIEVEMENTWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBACHIEVEMENTWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBPOSITIONWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBPOSITIONWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBMONTHLYSALARY` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBMONTHLYSALARY_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRAFFICFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FTRAFFICFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FTRAFFICFEECOMPANY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESTAURANTFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FRESTAURANTFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FRESTAURANTFEECOMPANY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMUNICATIONFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCOMMUNICATIONFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCOMMUNICAFEECOMPANY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRENTFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FRENTFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FRENTFEECOMPANY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_HIRESALARY` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hiresalary_a definition

CREATE TABLE `t_tspr_hiresalary_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FHOUSINGFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FHOUSINGFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FHOUSINGFEECOMPANY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWELFAREREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FRSSHARNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FYEARSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FYEARSHARNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FYEARSHARCURID` bigint NOT NULL DEFAULT '0',
  `FOPSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FOPSHARNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FOPVALNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FOPVALNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FOPVALCURID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_HIRESALARY_A` (`FOPVALCURID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hiresalary_r3 definition

CREATE TABLE `t_tspr_hiresalary_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hiresalarybill definition

CREATE TABLE `t_tspr_hiresalarybill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSALARYID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FHANDLETIME` datetime DEFAULT NULL,
  `FHANDLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FFLOWTASKNUM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FFORMALCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FBASICWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FBASICWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FACHIEVEMENTWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FACHIEVEMENTWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPOSITIONWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPOSITIONWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FMONTHLYSALARY` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FMONTHLYSALARY_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FYEARENDBONUS` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FYEARENDBONUS_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FFORMALREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYNUM` int NOT NULL DEFAULT '0',
  `FPROBBASICWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBBASICWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBACHIEVEMENTWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBACHIEVEMENTWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBPOSITIONWAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBPOSITIONWAGE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBMONTHLYSALARY` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBMONTHLYSALARY_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROBREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRAFFICFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FTRAFFICFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FTRAFFICFEECOMPANY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESTAURANTFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FRESTAURANTFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_HIRESALARYBILL` (`FSALARYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hiresalarybill_a definition

CREATE TABLE `t_tspr_hiresalarybill_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRESTAURANTFEECOMPANY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMUNICATIONFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCOMMUNICATIONFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCOMMUNICAFEECOMPANY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRENTFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FRENTFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FRENTFEECOMPANY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOUSINGFEE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FHOUSINGFEE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FHOUSINGFEECOMPANY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWELFAREREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FRSSHARNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FYEARSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FYEARSHARNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FYEARSHARCURID` bigint NOT NULL DEFAULT '0',
  `FOPSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FOPSHARNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FOPVALNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FOPVALNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FOPVALCURID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBRANKADMINORGID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMORGID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FJOBCLASSID` bigint NOT NULL DEFAULT '0',
  `FJOBFAMILYID` bigint NOT NULL DEFAULT '0',
  `FJOBSEQID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FPOSTTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROBATIONNUM` int NOT NULL DEFAULT '0',
  `FPROBATIONTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKADDRID` bigint NOT NULL DEFAULT '0',
  `FSOCAREAID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPECLSID` bigint NOT NULL DEFAULT '0',
  `FLABRELSTATUSCLSID` bigint NOT NULL DEFAULT '0',
  `FISPROBATION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_HIRESALARYBILL_A` (`FOPVALCURID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hiresalarybill_s definition

CREATE TABLE `t_tspr_hiresalarybill_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCURYESARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURYESARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURTFIXSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURTFIXSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURBONUSNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURBONUSNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURTBENEFITSNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURTBENEFITSNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FFCURTLONGINCNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FFCURTLONGINCNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPMONSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FEXPMONSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPYEARSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FEXPYEARSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPTREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_HIRESALARYBILL_S` (`FCURRENCYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hiresalaryexpt definition

CREATE TABLE `t_tspr_hiresalaryexpt` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCURYESARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURYESARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURTFIXSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURTFIXSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURBONUSNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURBONUSNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCURTBENEFITSNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURTBENEFITSNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FFCURTLONGINCNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FFCURTLONGINCNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPMONSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FEXPMONSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPYEARSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FEXPYEARSARYNUM_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEXPTREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_HIRESYEXPT_APPFILEID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_hiresalaryexpt_r3 definition

CREATE TABLE `t_tspr_hiresalaryexpt_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvcalendar definition

CREATE TABLE `t_tspr_intvcalendar` (
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
  KEY `IDX_TSPR_INTERVIEWERID` (`FINTERVIEWERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvcalendar_l definition

CREATE TABLE `t_tspr_intvcalendar_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_INTVCALENDAR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvcalendar_r3 definition

CREATE TABLE `t_tspr_intvcalendar_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvcandate definition

CREATE TABLE `t_tspr_intvcandate` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_INTVCANDATEFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intver definition

CREATE TABLE `t_tspr_intver` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_INTVERFDID` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intverfilemul definition

CREATE TABLE `t_tspr_intverfilemul` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_INTVERFILEMULFDID` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvevl definition

CREATE TABLE `t_tspr_intvevl` (
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
  KEY `IDX_TSPR_INTVEVLATORID` (`FINTERVIEWEVALUATORID`),
  KEY `IDX_TSPR_INTVEVLAAPPFILEID` (`FAPPLICATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvevl_r3 definition

CREATE TABLE `t_tspr_intvevl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvevlans definition

CREATE TABLE `t_tspr_intvevlans` (
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
  KEY `IDX_INTVEVLANS_OPTIONID` (`FSUBOPTIONID`),
  KEY `IDX_INTVEVLANS_QUESTIONID` (`FINSPECTQUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvevlans_l definition

CREATE TABLE `t_tspr_intvevlans_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBANSWER` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_INTVEVLANS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvevlentry definition

CREATE TABLE `t_tspr_intvevlentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTVEVLID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSPR_INTVEVLENTRYFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvgroupentry definition

CREATE TABLE `t_tspr_intvgroupentry` (
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
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_TSPR_INTVGROUPAPP` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvgroupentry_l definition

CREATE TABLE `t_tspr_intvgroupentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWLOCATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWROOM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_INTVGROUPENTRY_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvgroupentry_r3 definition

CREATE TABLE `t_tspr_intvgroupentry_r3` (
  `fdetailid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fdetailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvroundentry definition

CREATE TABLE `t_tspr_intvroundentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWTHEMEID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWSTAGEID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWMETHODID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWEVLID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSPR_INTVROUNDFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvroundentry_r3 definition

CREATE TABLE `t_tspr_intvroundentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvtask definition

CREATE TABLE `t_tspr_intvtask` (
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
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_INTERVIEWER` (`FINTERVIEWERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvtask_l definition

CREATE TABLE `t_tspr_intvtask_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_INTVTASK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_intvtask_r3 definition

CREATE TABLE `t_tspr_intvtask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_irposter definition

CREATE TABLE `t_tspr_irposter` (
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
  KEY `IDX_TSPR_RPOSTER_FPARENTID` (`FPARENTID`),
  KEY `IDX_TSPR_RPOSTER_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_irposterentry definition

CREATE TABLE `t_tspr_irposterentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPOSID` bigint NOT NULL DEFAULT '0',
  `FADVID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RPOSTERENTRY_EID` (`FENTRYID`),
  KEY `IDX_TSPR_IRPOSTERENTRY1` (`FADVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_irposteropr definition

CREATE TABLE `t_tspr_irposteropr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPOSTERID` bigint NOT NULL DEFAULT '0',
  `FOPTTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RPOSTEROPR_POSTER` (`FPOSTERID`),
  KEY `IDX_TSPR_IRPOSTEROPR1` (`FOPTTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_irrdetail definition

CREATE TABLE `t_tspr_irrdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FREWARDTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDETAILREWARD` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FDETAILCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPOINTITEM` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRRECORDID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FDETAILPOINT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FMANAGEINFOID` bigint NOT NULL DEFAULT '0',
  `FRECCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FREWARDRULEID` bigint NOT NULL DEFAULT '0',
  `FCLASSLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_IRRDETAIL_FRRECORDID` (`FRRECORDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_irrdetail_l definition

CREATE TABLE `t_tspr_irrdetail_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_IRRDETAIL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_irrdetail_r3 definition

CREATE TABLE `t_tspr_irrdetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_irrrecord definition

CREATE TABLE `t_tspr_irrrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARD` decimal(19,6) NOT NULL DEFAULT '0.000000',
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
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FONBARDINGDATE` datetime DEFAULT NULL,
  `FCANRANK` bigint NOT NULL DEFAULT '0',
  `FJOBNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALCOST` decimal(23,2) NOT NULL DEFAULT '0.00',
  `FTOTALCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTOTALPOINT` decimal(23,2) NOT NULL DEFAULT '0.00',
  `FISGIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARDNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREWARDCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FMANAGEINFOID` bigint NOT NULL DEFAULT '0',
  `FCANNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECOMMENDUSERID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FREWARDPOINT` int NOT NULL DEFAULT '0',
  `FGIVESTATE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_IRRRECORD_CREATORID` (`FCREATORID`),
  KEY `IDX_TSPR_IRRRECORD_FPOSTERID` (`FPOSTERID`),
  KEY `IDX_TSPR_IRRRECORD_APPFILEID` (`FCANAPPFILEID`),
  KEY `IDX_TSPR_IRRRECORD_POSID` (`FPOSID`),
  KEY `IDX_TSPR_IRRRECORD_ADVID` (`FADVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_irrrecord_l definition

CREATE TABLE `t_tspr_irrrecord_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRPCOMMON` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_IRRRECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_irrrecord_r3 definition

CREATE TABLE `t_tspr_irrrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_irworkaddr definition

CREATE TABLE `t_tspr_irworkaddr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_IRWORKADDR_FWAID` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_label_tagobj definition

CREATE TABLE `t_tspr_label_tagobj` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJTYPEID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJID` bigint NOT NULL DEFAULT '0',
  `FLABELCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR__LABEL_TAGOBJ` (`FTAGOBJTYPEID`,`FTAGOBJID`,`FLABELID`),
  KEY `IDX_TSPR__LABEL_ID` (`FLABELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_label_tagobj_r3 definition

CREATE TABLE `t_tspr_label_tagobj_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_posadminorgs definition

CREATE TABLE `t_tspr_posadminorgs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_POSADMINORGS` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_position definition

CREATE TABLE `t_tspr_position` (
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
  `FVID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_POSITION_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_position_a definition

CREATE TABLE `t_tspr_position_a` (
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
  `FASSIMODEL` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYSTDPOS` bigint NOT NULL DEFAULT '0',
  `FTPSYS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATANUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPTENANTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_POSITION_A_FAGEUP` (`FAGEUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_position_l definition

CREATE TABLE `t_tspr_position_l` (
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
  KEY `IDX_TSPR_POSITION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_position_r3 definition

CREATE TABLE `t_tspr_position_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_positionbill definition

CREATE TABLE `t_tspr_positionbill` (
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
  KEY `IDX_TSPR_POSITIONBILL_POSITION` (`FPOSITIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_positionmanage definition

CREATE TABLE `t_tspr_positionmanage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCRECRUPROCID` bigint NOT NULL DEFAULT '0',
  `FCFGRESURULEID` bigint NOT NULL DEFAULT '0',
  `FSECLEVEL` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINTVEVLQUNRID` bigint NOT NULL DEFAULT '0',
  `FUSEKREWARDRULE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARDDEFAULTCONF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARDRULEID` bigint NOT NULL DEFAULT '0',
  `FALLOWUPDATECONF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_POSITIONMANAGE_POS` (`FPOSITIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_positionmanage_r3 definition

CREATE TABLE `t_tspr_positionmanage_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_positionrule definition

CREATE TABLE `t_tspr_positionrule` (
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
  KEY `IDX_TSPR_PRULE_FPOSITIONID` (`FPOSITIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_positionrule_l definition

CREATE TABLE `t_tspr_positionrule_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEYWORD` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_POSITIONRULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_positionrule_r3 definition

CREATE TABLE `t_tspr_positionrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_positionsnap definition

CREATE TABLE `t_tspr_positionsnap` (
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
  KEY `IDX_TSPR_POSITIONSNAP_FID` (`FPOSITIONID`),
  KEY `IDX_TSPR_POSITIONSNAP_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_positionsnap_a definition

CREATE TABLE `t_tspr_positionsnap_a` (
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
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_POSSNAP_A_FAGEUP` (`FAGEUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_positionsnap_l definition

CREATE TABLE `t_tspr_positionsnap_l` (
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
  KEY `IDX_TSPR_POSITIONSNAP_L` (`FVID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_positionsnap_r3 definition

CREATE TABLE `t_tspr_positionsnap_r3` (
  `fvid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_posmailrel definition

CREATE TABLE `t_tspr_posmailrel` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FMAILINFOID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSPR_POSMAILREL_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_posmailrel_r3 definition

CREATE TABLE `t_tspr_posmailrel_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_posordinator definition

CREATE TABLE `t_tspr_posordinator` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_POSORDINATOR_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_posprin definition

CREATE TABLE `t_tspr_posprin` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_POSPRIN_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_posspadminorgs definition

CREATE TABLE `t_tspr_posspadminorgs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_POSSPADMINORGS` (`FVID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_posworkaddr definition

CREATE TABLE `t_tspr_posworkaddr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_POSWORKADDR_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_posworkaddrsnap definition

CREATE TABLE `t_tspr_posworkaddrsnap` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_POSWORKADDRSNAP_FVID` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_processinst definition

CREATE TABLE `t_tspr_processinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRQMTPROCID` bigint NOT NULL DEFAULT '0',
  `FBOID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZFID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISOVER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FINRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FOUTRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FOUTRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FINCTLINKTIME` datetime DEFAULT NULL,
  `FINCTSTATUSTIME` datetime DEFAULT NULL,
  `FRECRURSNID` bigint NOT NULL DEFAULT '0',
  `FDURATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_PROCESSINST` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_processinst_r3 definition

CREATE TABLE `t_tspr_processinst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_qacheck definition

CREATE TABLE `t_tspr_qacheck` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FFLOWTASKNUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FHANDLETIME` datetime DEFAULT NULL,
  `FEVLFORMID` bigint NOT NULL DEFAULT '0',
  `FFORMDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FRESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_CHECK_FBILLNO` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_qacheck_l definition

CREATE TABLE `t_tspr_qacheck_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_QACHECK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_recplan definition

CREATE TABLE `t_tspr_recplan` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FRECREQID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSPR_RECPLAN_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_refusalreason definition

CREATE TABLE `t_tspr_refusalreason` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_REFUSALREASON` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_resscr definition

CREATE TABLE `t_tspr_resscr` (
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
  KEY `IDX_TSPR_RESSCR_FIRECER` (`FFILTERRECOMMENDERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_resscr_r3 definition

CREATE TABLE `t_tspr_resscr_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_resscrtask definition

CREATE TABLE `t_tspr_resscrtask` (
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
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSPR_RESSCRTASK_FAPPFEPID` (`FAPPLICATIONFILEID`,`FFILTERHANDLEPEOPLEID`),
  KEY `IDX_TSPR_RESSCRTASK_FEPIDCT` (`FFILTERHANDLEPEOPLEID`,`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_unifyarginfo definition

CREATE TABLE `t_tspr_unifyarginfo` (
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
  KEY `IDX_ARGINTVID` (`FARGINTVID`),
  KEY `IDX_FROUNDID` (`FROUNDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_unifyarginfo_l definition

CREATE TABLE `t_tspr_unifyarginfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIFYINTERVIEWADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIFYFINTERVIEWROOM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_UNIFYARGINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tspr_unifyintver definition

CREATE TABLE `t_tspr_unifyintver` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSPR_UNIFYINTVERFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_applicableapp definition

CREATE TABLE `t_tsrbd_applicableapp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_APPLICABLEAPP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_applicableapp_l definition

CREATE TABLE `t_tsrbd_applicableapp_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_APPLICABLEAPP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_appmthd definition

CREATE TABLE `t_tsrbd_appmthd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_APPMTHD_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_appmthd_l definition

CREATE TABLE `t_tsrbd_appmthd_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_APPMTHD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_appprgs definition

CREATE TABLE `t_tsrbd_appprgs` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYPID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_APPPRGS_RECRUTYP` (`FRECRUTYPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_appprgs_l definition

CREATE TABLE `t_tsrbd_appprgs_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_APPPRGS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_appprgs_r3 definition

CREATE TABLE `t_tsrbd_appprgs_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_autorules definition

CREATE TABLE `t_tsrbd_autorules` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATEBU` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETRUNDEFAULT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOLICYID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_AUTORULES` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_autorules_l definition

CREATE TABLE `t_tsrbd_autorules_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_AUTORULES_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_autorules_r3 definition

CREATE TABLE `t_tsrbd_autorules_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_basedatalist definition

CREATE TABLE `t_tsrbd_basedatalist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FPAGEKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  KEY `IDX_TSRBD_BASEDATALIST_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_basedatalist_l definition

CREATE TABLE `t_tsrbd_basedatalist_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_BASEDATALIST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_bizcfgfirstopen definition

CREATE TABLE `t_tsrbd_bizcfgfirstopen` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FISFIRSTOPEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFUNCTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_BIZCFGFIRSTOPEN_UID_FTYPE` (`FUSERID`,`FFUNCTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_bizconfigdata definition

CREATE TABLE `t_tsrbd_bizconfigdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FDATA` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_BIZCONFIGDATA` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_bizconfigdata_l definition

CREATE TABLE `t_tsrbd_bizconfigdata_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_BIZCONFIGDATA_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_businessdict definition

CREATE TABLE `t_tsrbd_businessdict` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDICTKEYREMARK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDICTVALUEREMARK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDICTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDICTKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDICTVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_BUSINESSDICT_GROUPID` (`FGROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_businessdict_l definition

CREATE TABLE `t_tsrbd_businessdict_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_BUSINESSDICT_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_businessdicttype definition

CREATE TABLE `t_tsrbd_businessdicttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDICTTYPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDICTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDICTTYPSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDICTTYPREMARK` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_BUSINESSDICTTYPE` (`FDICTTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgchannlist definition

CREATE TABLE `t_tsrbd_cfgchannlist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGEX` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUCHNLNMID` bigint NOT NULL DEFAULT '0',
  `FINDEXOF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CFGCHANNLIST_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgchannlist_l definition

CREATE TABLE `t_tsrbd_cfgchannlist_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGCHANNLIST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmail definition

CREATE TABLE `t_tsrbd_cfgmail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAILADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAILPASSWORD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAILPASSWORD_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROTOCOLTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVERADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPORT` int NOT NULL DEFAULT '0',
  `FISUSESSL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECYLEDATE` datetime DEFAULT NULL,
  `FMAILSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMCOUNT` int NOT NULL DEFAULT '0',
  `FSHARDINGNUM` int NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
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
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CFGMAIL_FMAILADDR` (`FEMAILADDR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmail_l definition

CREATE TABLE `t_tsrbd_cfgmail_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGMAIL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmailprop definition

CREATE TABLE `t_tsrbd_cfgmailprop` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROTOCOLTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVERADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPORT` int NOT NULL DEFAULT '0',
  `FISUSESSL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSUFFIX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISUSEAUTHCODE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUTHURL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  KEY `IDX_TSRBD_CFGMAILPROP_FSERVER` (`FSERVERADDR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgcat definition

CREATE TABLE `t_tsrbd_cfgmsgcat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CFGMSGCAT_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgcat_l definition

CREATE TABLE `t_tsrbd_cfgmsgcat_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGMSGCAT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgrecvtype definition

CREATE TABLE `t_tsrbd_cfgmsgrecvtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MSGRECVTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgrecvtype_l definition

CREATE TABLE `t_tsrbd_cfgmsgrecvtype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGMSGRECVTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgscene definition

CREATE TABLE `t_tsrbd_cfgmsgscene` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CFGMSGSCENE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgscene_l definition

CREATE TABLE `t_tsrbd_cfgmsgscene_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGMSGSCENE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgsendlog definition

CREATE TABLE `t_tsrbd_cfgmsgsendlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHRID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMSGPUSHSCENE` bigint NOT NULL DEFAULT '0',
  `FMSGTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CFGMSGLOG_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgtempfd definition

CREATE TABLE `t_tsrbd_cfgmsgtempfd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CFGMSGTEMPFD_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgtempfd_l definition

CREATE TABLE `t_tsrbd_cfgmsgtempfd_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGMSGTEMPFD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgtemplate definition

CREATE TABLE `t_tsrbd_cfgmsgtemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGPUSHSCENEID` bigint NOT NULL DEFAULT '0',
  `FMSGRECEIVERID` bigint NOT NULL DEFAULT '0',
  `FMSGCHANNELLIST` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYPLIST` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVCATEGORYLIST` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVMETHODLIST` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAILTHEME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAILRICHTEXT` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAILRICHTEXT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSMSTEMPLATE` varchar(1350) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYZJTEMPLATE` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
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
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FRECRUTYPEID` bigint NOT NULL DEFAULT '0',
  `FSENDTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MSGTEMPLATE_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_TSRBD_CFGMSGTEMPLATE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_TSRBD_CFGMSGTEMPLATE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgtemplate_bit definition

CREATE TABLE `t_tsrbd_cfgmsgtemplate_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgtemplate_l definition

CREATE TABLE `t_tsrbd_cfgmsgtemplate_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGMSGTEMPLATE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgtemplate_r3 definition

CREATE TABLE `t_tsrbd_cfgmsgtemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgtemplate_u definition

CREATE TABLE `t_tsrbd_cfgmsgtemplate_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_CFGMSGTEMPLATE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgtemplateexc definition

CREATE TABLE `t_tsrbd_cfgmsgtemplateexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_CFGMSGTEMPLATEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsgtemplateusereg definition

CREATE TABLE `t_tsrbd_cfgmsgtemplateusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_CFGMSGTEMPLATEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgmsguselog_l definition

CREATE TABLE `t_tsrbd_cfgmsguselog_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGMSGUSELOG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgpushscenefd definition

CREATE TABLE `t_tsrbd_cfgpushscenefd` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGPUSHSCENEFD` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgresurule definition

CREATE TABLE `t_tsrbd_cfgresurule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDEPENDORGID` bigint NOT NULL DEFAULT '0',
  `FRECCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERVALUE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CFGRESURULE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgresurule_l definition

CREATE TABLE `t_tsrbd_cfgresurule_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGRESURULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgresurulefd definition

CREATE TABLE `t_tsrbd_cfgresurulefd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULEFIELDID` bigint NOT NULL DEFAULT '0',
  `FISENTRYFIELD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENTRYNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CFGRESURULEFD` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgresurulefd_l definition

CREATE TABLE `t_tsrbd_cfgresurulefd_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGRESURULEFD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgwhitelist definition

CREATE TABLE `t_tsrbd_cfgwhitelist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CFGWHITELIST_FVALUE` (`FVALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_cfgwhitelist_l definition

CREATE TABLE `t_tsrbd_cfgwhitelist_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CFGWHITELIST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_channelaccount definition

CREATE TABLE `t_tsrbd_channelaccount` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPUBLIC` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUCHNLNMID` bigint NOT NULL DEFAULT '0',
  `FPASSWORD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPASSWORD_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CHANNELACCOUNT_FNAME` (`FNAME`),
  KEY `IDX_TSRBD_CHANNELACCOUNT_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_channelaccount_l definition

CREATE TABLE `t_tsrbd_channelaccount_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CHANNELACCOUNT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_channelcontact definition

CREATE TABLE `t_tsrbd_channelcontact` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FRECRUCHNLNMID` bigint NOT NULL DEFAULT '0',
  `FEMAIL` varchar(320) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTELEPHONE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPERTISE` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARKS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CHANNELCONTACT` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_channelcontact_l definition

CREATE TABLE `t_tsrbd_channelcontact_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CHANNELCONTACT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_channelcontract definition

CREATE TABLE `t_tsrbd_channelcontract` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUCHNLNMID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTSTARTDATE` datetime DEFAULT NULL,
  `FCONTRACTENDDATE` datetime DEFAULT NULL,
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNTUNIT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTERM` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_CHANNELCONTRACT` (`FCONTRACTNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_channelcontract_l definition

CREATE TABLE `t_tsrbd_channelcontract_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CHANNELCONTRACT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_chnlncontractorg definition

CREATE TABLE `t_tsrbd_chnlncontractorg` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_CHNLNCONTRACTORG` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_commcon definition

CREATE TABLE `t_tsrbd_commcon` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' C',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_COMMCON_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_commcon_l definition

CREATE TABLE `t_tsrbd_commcon_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_COMMCON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_commtheme definition

CREATE TABLE `t_tsrbd_commtheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISONLYTHEME` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOMMCONID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_COMMTHEME_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_commtheme_l definition

CREATE TABLE `t_tsrbd_commtheme_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_COMMTHEME_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_commtheme_r3 definition

CREATE TABLE `t_tsrbd_commtheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_commtopic definition

CREATE TABLE `t_tsrbd_commtopic` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FTOPICTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEDATEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_COMMTOPIC_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_commtopic_l definition

CREATE TABLE `t_tsrbd_commtopic_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_COMMTOPIC_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_comrepeatable definition

CREATE TABLE `t_tsrbd_comrepeatable` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTENANTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FONLYTHEMEAUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_COMMTHEMEFNUMBER` (`FTENANTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_conoptentry definition

CREATE TABLE `t_tsrbd_conoptentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONCLUSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_CONOPTENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_entryoperate definition

CREATE TABLE `t_tsrbd_entryoperate` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FOPERATEID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_ENTRYOPERATE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_field definition

CREATE TABLE `t_tsrbd_field` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCTRLKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPERTY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYPID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_FIELD_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_field_l definition

CREATE TABLE `t_tsrbd_field_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_FIELD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_field_r3 definition

CREATE TABLE `t_tsrbd_field_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_fieldbasedata definition

CREATE TABLE `t_tsrbd_fieldbasedata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FPAGEKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_BD_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_fieldbasedata_l definition

CREATE TABLE `t_tsrbd_fieldbasedata_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_FIELDBASEDATA_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_fieldblock definition

CREATE TABLE `t_tsrbd_fieldblock` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_FIELDBLOCK_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_fieldblock_l definition

CREATE TABLE `t_tsrbd_fieldblock_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_FIELDBLOCK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_fieldcfgresult definition

CREATE TABLE `t_tsrbd_fieldcfgresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONFIGENTRY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRQMTPROCID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTGTYPID` bigint NOT NULL DEFAULT '0',
  `FFIELDID` bigint NOT NULL DEFAULT '0',
  `FISDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_FIELDCFGRESULT_PRO` (`FRQMTPROCID`,`FRECRUSTGID`),
  KEY `IDX_TSRBD_FIELDCFGRESULT_TYP` (`FRECRUSTGTYPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_fieldpool definition

CREATE TABLE `t_tsrbd_fieldpool` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_FIELDPOOL_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_fieldpool_l definition

CREATE TABLE `t_tsrbd_fieldpool_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_FIELDPOOL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_filestatus definition

CREATE TABLE `t_tsrbd_filestatus` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDISPLAYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFILESTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_FILESTATUS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_filestatus_l definition

CREATE TABLE `t_tsrbd_filestatus_l` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPLAYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_FILESTATUS_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_filtertype definition

CREATE TABLE `t_tsrbd_filtertype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_FILTERTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_filtertype_l definition

CREATE TABLE `t_tsrbd_filtertype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_FILTERTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_fldscmentry definition

CREATE TABLE `t_tsrbd_fldscmentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FOFFERFIELD` bigint NOT NULL DEFAULT '0',
  `FISENCRYPTION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_FLDSCMENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_industrytype definition

CREATE TABLE `t_tsrbd_industrytype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_INDUSTRY_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_industrytype_l definition

CREATE TABLE `t_tsrbd_industrytype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INDUSTRYTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_inspectdim definition

CREATE TABLE `t_tsrbd_inspectdim` (
  `FINSPECTDIMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FINSPECTDIMID`),
  KEY `IDX_TSRBD_INSPECTDIM` (`FID`,`FINDEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_inspectdim_l definition

CREATE TABLE `t_tsrbd_inspectdim_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTDIMID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INSPECTDIM_L` (`FINSPECTDIMID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_inspectqu definition

CREATE TABLE `t_tsrbd_inspectqu` (
  `FINSPECTQUID` bigint NOT NULL DEFAULT '0',
  `FINSPECTDIMID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUESTIONTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FREQUIRED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FENABLECOMMENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREQUIREDCOMMENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FINSPECTQUID`),
  KEY `IDX_TSRBD_INSPECTQU` (`FINSPECTDIMID`,`FINDEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_inspectqu_l definition

CREATE TABLE `t_tsrbd_inspectqu_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTQUID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INSPECTQU_L` (`FINSPECTQUID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvercat definition

CREATE TABLE `t_tsrbd_intvercat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_INTVERCAT_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvercat_l definition

CREATE TABLE `t_tsrbd_intvercat_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVERCAT_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverfile definition

CREATE TABLE `t_tsrbd_intverfile` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_COMMRCV` (`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverfile_l definition

CREATE TABLE `t_tsrbd_intverfile_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVERFILE_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverfileentry definition

CREATE TABLE `t_tsrbd_intverfileentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPLYID` bigint NOT NULL DEFAULT '0',
  `FAPPLYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVERTYPEID` bigint NOT NULL DEFAULT '0',
  `FINTVERTYPENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVERLEVELID` bigint NOT NULL DEFAULT '0',
  `FINTVERLEVELNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYEXTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFTIME` datetime DEFAULT NULL,
  `FEXPIRETIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_INTVERFILEENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverfileentry_l definition

CREATE TABLE `t_tsrbd_intverfileentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_ENTRY` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverlevel definition

CREATE TABLE `t_tsrbd_intverlevel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYQUAL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBSCMHRID` bigint NOT NULL DEFAULT '0',
  `FINTVERLEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVERTYPEID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_INTVERLEVEL_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverlevel_l definition

CREATE TABLE `t_tsrbd_intverlevel_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVL_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverqualify definition

CREATE TABLE `t_tsrbd_intverqualify` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVERTYPEID` bigint NOT NULL DEFAULT '0',
  `FRECRUTYPID` bigint NOT NULL DEFAULT '0',
  `FAPPLYID` bigint NOT NULL DEFAULT '0',
  `FAPPLYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALIFYSTATUS` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFTIME` datetime DEFAULT NULL,
  `FEXPIRETIME` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FINITBATCH` bigint NOT NULL DEFAULT '0',
  `FINITSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FDELAYSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_INTVERQUALIFY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverqualify_l definition

CREATE TABLE `t_tsrbd_intverqualify_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVERQUALIFY1` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverqualify_r3 definition

CREATE TABLE `t_tsrbd_intverqualify_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverscene definition

CREATE TABLE `t_tsrbd_intverscene` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVERSCENE` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvertype definition

CREATE TABLE `t_tsrbd_intvertype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYQUAL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBSCMHRID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINTVERCATID` bigint NOT NULL DEFAULT '0',
  `FREFEREDSTATUS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_INTVERTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvertype_l definition

CREATE TABLE `t_tsrbd_intvertype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVERTYPE1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverview definition

CREATE TABLE `t_tsrbd_intverview` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FINITBATCH` bigint NOT NULL DEFAULT '0',
  `FINITSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_INTVPERSONID` (`FPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverview_l definition

CREATE TABLE `t_tsrbd_intverview_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVERVIEW_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intverview_r3 definition

CREATE TABLE `t_tsrbd_intverview_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvevlqunr definition

CREATE TABLE `t_tsrbd_intvevlqunr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVLTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_INTVEVLQUNR_NUMBER` (`FNUMBER`),
  KEY `IDX_T_TSRBD_INTVEVLQUNR_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_TSRBD_INTVEVLQUNR_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvevlqunr_bit definition

CREATE TABLE `t_tsrbd_intvevlqunr_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvevlqunr_l definition

CREATE TABLE `t_tsrbd_intvevlqunr_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVEVLQUNR_L` (`FID`,`FLOCALEID`),
  KEY `IDX_TSRBD_INTVEVLQUNR_L_NAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvevlqunr_r3 definition

CREATE TABLE `t_tsrbd_intvevlqunr_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvevlqunr_u definition

CREATE TABLE `t_tsrbd_intvevlqunr_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_INTVEVLQUNR_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvevlqunrdef definition

CREATE TABLE `t_tsrbd_intvevlqunrdef` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FRECCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FINTVEVLQUNRID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_INTVEVLQUNRDE_QUNRID` (`FINTVEVLQUNRID`),
  KEY `IDX_USEORG_RECCATEGORYID` (`FUSEORGID`,`FRECCATEGORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvevlqunrexc definition

CREATE TABLE `t_tsrbd_intvevlqunrexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_INTVEVLQUNREXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvevlqunrrec definition

CREATE TABLE `t_tsrbd_intvevlqunrrec` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVEVLQUNRREC_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvevlqunrusereg definition

CREATE TABLE `t_tsrbd_intvevlqunrusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_INTVEVLQUNRUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvlink definition

CREATE TABLE `t_tsrbd_intvlink` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_INTVLINK_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvlink_l definition

CREATE TABLE `t_tsrbd_intvlink_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVLINK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvmthd definition

CREATE TABLE `t_tsrbd_intvmthd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_INTVMTHD_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvmthd_l definition

CREATE TABLE `t_tsrbd_intvmthd_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVMTHD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvorgfrm definition

CREATE TABLE `t_tsrbd_intvorgfrm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_IOFRM_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvorgfrm_l definition

CREATE TABLE `t_tsrbd_intvorgfrm_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVORGFRM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvtyp definition

CREATE TABLE `t_tsrbd_intvtyp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_INTVTYP_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_intvtyp_l definition

CREATE TABLE `t_tsrbd_intvtyp_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_INTVTYP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_jobfamentry definition

CREATE TABLE `t_tsrbd_jobfamentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FPOSFAMID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FJOBFAMILYHRID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_JOBFAMENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_jobstatus definition

CREATE TABLE `t_tsrbd_jobstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_JOBSTATUS_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_jobstatus_l definition

CREATE TABLE `t_tsrbd_jobstatus_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_JOBSTATUS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_journalgrade definition

CREATE TABLE `t_tsrbd_journalgrade` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_JOURNALGRADE_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_journalgrade_l definition

CREATE TABLE `t_tsrbd_journalgrade_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_JOURNALGRADE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_journaltype definition

CREATE TABLE `t_tsrbd_journaltype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_JOURNALTYPE_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_journaltype_l definition

CREATE TABLE `t_tsrbd_journaltype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_JOURNALTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_language definition

CREATE TABLE `t_tsrbd_language` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_LANGUAGE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_language_l definition

CREATE TABLE `t_tsrbd_language_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_LANGUAGE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_languageversion definition

CREATE TABLE `t_tsrbd_languageversion` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
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
  KEY `IDX_TSRBD_LANGUAGEVERSION_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_languageversion_l definition

CREATE TABLE `t_tsrbd_languageversion_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_LANGUAGEVERSION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_leavereason definition

CREATE TABLE `t_tsrbd_leavereason` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_LEAVEREASON_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_leavereason_l definition

CREATE TABLE `t_tsrbd_leavereason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_LEAVEREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_lvjobclentry definition

CREATE TABLE `t_tsrbd_lvjobclentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FJOBFAMILYID` bigint NOT NULL DEFAULT '0',
  `FJOBCLASSID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_LVJOBCLENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_majorcategory definition

CREATE TABLE `t_tsrbd_majorcategory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MAJORCATE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_majorcategory_l definition

CREATE TABLE `t_tsrbd_majorcategory_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MAJORCATEGORY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_majorsubcategory definition

CREATE TABLE `t_tsrbd_majorsubcategory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAJORCATEGORYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MAJORSUBCATE_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_majorsubcategory_l definition

CREATE TABLE `t_tsrbd_majorsubcategory_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MAJORSUBCATEGORY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mapentry definition

CREATE TABLE `t_tsrbd_mapentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSOURCEENTRYID` bigint NOT NULL DEFAULT '0',
  `FTARGETENTRYID` bigint NOT NULL DEFAULT '0',
  `FMTDOBJID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_MAPENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgchannel definition

CREATE TABLE `t_tsrbd_msgchannel` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MSGCHANNEL_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgchannelfd definition

CREATE TABLE `t_tsrbd_msgchannelfd` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MSGCHANNELFD_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgfield definition

CREATE TABLE `t_tsrbd_msgfield` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FBIZFIELD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDPOOLID` bigint NOT NULL DEFAULT '0',
  `FBIZRANGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MSGFIELD_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgfield_l definition

CREATE TABLE `t_tsrbd_msgfield_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MSGFIELD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgintvcat definition

CREATE TABLE `t_tsrbd_msgintvcat` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MSGINTVCAT_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgintvmthd definition

CREATE TABLE `t_tsrbd_msgintvmthd` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MSGINTVMTHD_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgrecefd definition

CREATE TABLE `t_tsrbd_msgrecefd` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MSGRECEFD_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgrecruscene definition

CREATE TABLE `t_tsrbd_msgrecruscene` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MSGRECRUSCENE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgrecrutyp definition

CREATE TABLE `t_tsrbd_msgrecrutyp` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MSGRECRUTYP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgtempfldscm definition

CREATE TABLE `t_tsrbd_msgtempfldscm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALARYDETTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPTYPE` bigint NOT NULL DEFAULT '0',
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
  KEY `IDX_TSRBD_MSGTEMPFLDSCM_TYPE` (`FTEMPTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgtempfldscm_l definition

CREATE TABLE `t_tsrbd_msgtempfldscm_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MSGTEMPFLDSCM_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgtemptype definition

CREATE TABLE `t_tsrbd_msgtemptype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  KEY `IDX_TSRBD_MSGTEMPTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgtemptype_l definition

CREATE TABLE `t_tsrbd_msgtemptype_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MSGTEMPTYPE_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgtrack definition

CREATE TABLE `t_tsrbd_msgtrack` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUSHSCENE` bigint NOT NULL DEFAULT '0',
  `FRECTYPE` bigint NOT NULL DEFAULT '0',
  `FRECNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTMETHOD` bigint NOT NULL DEFAULT '0',
  `FEMAILTITLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAIREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDER` bigint NOT NULL DEFAULT '0',
  `FSENDTIME` datetime DEFAULT NULL,
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMSGCONTENT` longtext COLLATE utf8mb4_unicode_ci,
  `FMSGID` bigint NOT NULL DEFAULT '0',
  `FMSGLOGID` bigint NOT NULL DEFAULT '0',
  `FREPEATCOUNT` int NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MSGTRACK_FRECNAME` (`FRECNAME`),
  KEY `IDX_TSRBD_MSGTRACK_FRECEMAIL` (`FRECEMAIL`),
  KEY `IDX_TSRBD_MSGTRACK_FSENDER` (`FSENDER`),
  KEY `IDX_TSRBD_MSGTRACK_FRECPHONE` (`FRECPHONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_msgtrackobj definition

CREATE TABLE `t_tsrbd_msgtrackobj` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMSGTRACKID` bigint NOT NULL DEFAULT '0',
  `FOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FBIZENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJ` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MSGOBJ_FMSGID` (`FMSGTRACKID`),
  KEY `IDX_TSRBD_MSGOBJ_FOPRECORDID` (`FOPRECORDID`),
  KEY `IDX_TSRBD_MSGOBJ_FBIZOBJ` (`FBIZOBJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdfield definition

CREATE TABLE `t_tsrbd_mtdfield` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FMTDFIELDCTRTYPID` bigint NOT NULL DEFAULT '0',
  `FPAGEKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLENGTH` int NOT NULL DEFAULT '0',
  `FPRECISION` int NOT NULL DEFAULT '0',
  `FMIN` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FMAX` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FISPERSONALDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSENSITIVEDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISMUSTINPUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISMODULEREQUIRED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFIELDSCOPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MTDFIELD_FNUMBER` (`FNUMBER`),
  KEY `IDX_TSRBD_MTDFIELD_FGROUP` (`FGROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdfield_l definition

CREATE TABLE `t_tsrbd_mtdfield_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MTDFIELD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdfieldctrtyp definition

CREATE TABLE `t_tsrbd_mtdfieldctrtyp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MTDFIELDCTRTYP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdfieldctrtyp_l definition

CREATE TABLE `t_tsrbd_mtdfieldctrtyp_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MTDFIELDCTRTYP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdfieldentry definition

CREATE TABLE `t_tsrbd_mtdfieldentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCOMBOVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_MTDFIELDENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdfieldentry_l definition

CREATE TABLE `t_tsrbd_mtdfieldentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMBOTITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MTDFIELDENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdfieldgroup definition

CREATE TABLE `t_tsrbd_mtdfieldgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMTDOBJID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MTDFIELDGROUP_OBJ` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdfieldgroup_l definition

CREATE TABLE `t_tsrbd_mtdfieldgroup_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MTDFIELDGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdmap definition

CREATE TABLE `t_tsrbd_mtdmap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MTDMAP_SOURCEKEY` (`FSOURCEKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdobj definition

CREATE TABLE `t_tsrbd_mtdobj` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FLIMIT` int NOT NULL DEFAULT '0',
  `FBTNDESC` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MTDOBJ` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdobj_l definition

CREATE TABLE `t_tsrbd_mtdobj_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBTNDESC` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MTDOBJ_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdobjtable definition

CREATE TABLE `t_tsrbd_mtdobjtable` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMTDOBJID` bigint NOT NULL DEFAULT '0',
  `FENTITYKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYPID` bigint NOT NULL DEFAULT '0',
  `FECOSYSTEM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMAINENTITY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEMBEDDEDKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_MTDOBJTABLE_OBJ` (`FMTDOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_mtdobjtable_r3 definition

CREATE TABLE `t_tsrbd_mtdobjtable_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_multirecrutyp definition

CREATE TABLE `t_tsrbd_multirecrutyp` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_MULTIRECRUTYP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_objfcrecord definition

CREATE TABLE `t_tsrbd_objfcrecord` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FFIELDKEY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIGINALVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_OBJFCRECORD_ENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offercountry definition

CREATE TABLE `t_tsrbd_offercountry` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_OFFERCOUNTRY` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offerrecruscene definition

CREATE TABLE `t_tsrbd_offerrecruscene` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_OFFERRECRUSCENE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offerstatus definition

CREATE TABLE `t_tsrbd_offerstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_OFFERSTATUS_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offerstatus_l definition

CREATE TABLE `t_tsrbd_offerstatus_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_OFFERSTATUS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offerstatustype definition

CREATE TABLE `t_tsrbd_offerstatustype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_OFFERSTATUSTYPE_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offerstatustype_l definition

CREATE TABLE `t_tsrbd_offerstatustype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_OFFERSTATUSTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offertemplate definition

CREATE TABLE `t_tsrbd_offertemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYPID` bigint NOT NULL DEFAULT '0',
  `FPOSTIONID` bigint NOT NULL DEFAULT '0',
  `FISWATERMARK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCONTENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FADMINDIVISIONID` bigint NOT NULL DEFAULT '0',
  `FRECRUSCENEID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FJOBSEQID` bigint NOT NULL DEFAULT '0',
  `FJOBFAMILYID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FLANGUETYPEID` bigint NOT NULL DEFAULT '0',
  `FSALARYDETTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_OFFERTEMPLATE_NUM` (`FNUMBER`),
  KEY `IDX_T_TSRBD_OFFERTEMPLATE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_TSRBD_OFFERTEMPLATE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offertemplate_bit definition

CREATE TABLE `t_tsrbd_offertemplate_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offertemplate_l definition

CREATE TABLE `t_tsrbd_offertemplate_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_OFFERTEMPLATE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offertemplate_r3 definition

CREATE TABLE `t_tsrbd_offertemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offertemplate_u definition

CREATE TABLE `t_tsrbd_offertemplate_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_OFFERTEMPLATE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offertemplateexc definition

CREATE TABLE `t_tsrbd_offertemplateexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_OFFERTEMPLATEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_offertemplateusereg definition

CREATE TABLE `t_tsrbd_offertemplateusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_OFFERTEMPLATEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_opdef definition

CREATE TABLE `t_tsrbd_opdef` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_OPDEF_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_opdef_l definition

CREATE TABLE `t_tsrbd_opdef_l` (
  `FPKID` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTEXTTPL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_OPDEF_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_operate definition

CREATE TABLE `t_tsrbd_operate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCTRLKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPERTY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FRECRUTYPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_TSRBD_OPERATE_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_operate_l definition

CREATE TABLE `t_tsrbd_operate_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_OPERATE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_operate_r3 definition

CREATE TABLE `t_tsrbd_operate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_operatmanage definition

CREATE TABLE `t_tsrbd_operatmanage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FPOLICY` bigint NOT NULL DEFAULT '0',
  `FENTITYOB` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_OPERATMANAGE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_operatmanage_l definition

CREATE TABLE `t_tsrbd_operatmanage_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_OPERATMANAGE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_opercfgresult definition

CREATE TABLE `t_tsrbd_opercfgresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONFIGENTRY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATEID` bigint NOT NULL DEFAULT '0',
  `FRQMTPROCID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTGTYPID` bigint NOT NULL DEFAULT '0',
  `FISLISTDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_OPERCFGRESULT_PRO` (`FRQMTPROCID`),
  KEY `IDX_TSRBD_OPERCFGRESULT_STG` (`FRECRUSTGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_oprecord definition

CREATE TABLE `t_tsrbd_oprecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOPERATOR` bigint NOT NULL DEFAULT '0',
  `FOPERATORNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORROLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJROLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZENTRY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJ` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTIME` datetime DEFAULT NULL,
  `FOPRTEXT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISKEYWORDUPD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_OPRECORD_OPTIME` (`FOPTIME`),
  KEY `IDX_TSRBD_OPRECORD_BIZOBJ` (`FBIZOBJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_parentryentity definition

CREATE TABLE `t_tsrbd_parentryentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINPUTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMSTYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_PARENTRYENTITY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_parentryentity_l definition

CREATE TABLE `t_tsrbd_parentryentity_l` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_PARENTRYENTITY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_patenttype definition

CREATE TABLE `t_tsrbd_patenttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_PATENTTYPE_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_patenttype_l definition

CREATE TABLE `t_tsrbd_patenttype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_PATENTTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_paymenttype definition

CREATE TABLE `t_tsrbd_paymenttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_PAYMENTTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_paymenttype_l definition

CREATE TABLE `t_tsrbd_paymenttype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_PAYMENTTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_plugentryentity definition

CREATE TABLE `t_tsrbd_plugentryentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPLUGINPATH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_PLUGENTRYENTITY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_portrait definition

CREATE TABLE `t_tsrbd_portrait` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJTYPEID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJID` bigint NOT NULL DEFAULT '0',
  `FPORTRAIT` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_PORTRAIT` (`FTAGOBJID`,`FTAGOBJTYPEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_poscat definition

CREATE TABLE `t_tsrbd_poscat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGRADE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FLEVEL` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_POSCAT_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_poscat_l definition

CREATE TABLE `t_tsrbd_poscat_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_POSCAT_L` (`FID`,`FLOCALEID`),
  KEY `IDX_TSRBD_POSCAT_L_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_processinst definition

CREATE TABLE `t_tsrbd_processinst` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZFID` bigint NOT NULL DEFAULT '0',
  `FENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRQMTPROCID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISOVER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FINRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FINRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FOUTRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FOUTRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FINCTLINKTIME` datetime DEFAULT NULL,
  `FINCTSTATUSTIME` datetime DEFAULT NULL,
  `FRECRURSNID` bigint NOT NULL DEFAULT '0',
  `FDURATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_PROCESSINST_PRO` (`FRQMTPROCID`),
  KEY `IDX_TSRBD_PROCESSINST_BOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_pushmsgscene definition

CREATE TABLE `t_tsrbd_pushmsgscene` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_PUSHMSGSCENE_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_reccountry definition

CREATE TABLE `t_tsrbd_reccountry` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECCOUNTRY` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recjoblevel definition

CREATE TABLE `t_tsrbd_recjoblevel` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECJOBLEVEL` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recorg definition

CREATE TABLE `t_tsrbd_recorg` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECORG` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recruchnlmedia definition

CREATE TABLE `t_tsrbd_recruchnlmedia` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_RECRUCHNLMEDIA_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recruchnlmedia_l definition

CREATE TABLE `t_tsrbd_recruchnlmedia_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRUCHNLMEDIA_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recruchnlnm definition

CREATE TABLE `t_tsrbd_recruchnlnm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESACQMTHDID` bigint NOT NULL DEFAULT '0',
  `FWEBSITE` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULTIFUNCTIONAL` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVERTISEMENT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELPIC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FEFFTIME` datetime DEFAULT NULL,
  `FEXPIRETIME` datetime DEFAULT NULL,
  `FREGISTEREDADDR` varchar(900) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FESTABLISHDATE` datetime DEFAULT NULL,
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAFIELD` bigint NOT NULL DEFAULT '0',
  `FVXCHECK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_RECRUCHNLNM_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recruchnlnm_l definition

CREATE TABLE `t_tsrbd_recruchnlnm_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRUCHNLNM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recruchnlnm_r3 definition

CREATE TABLE `t_tsrbd_recruchnlnm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recruchnvxentry definition

CREATE TABLE `t_tsrbd_recruchnvxentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAPPID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPSECRET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_RECRUCHNVXENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrursn definition

CREATE TABLE `t_tsrbd_recrursn` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  KEY `IDX_TSRBD_RECRURSN_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrursn_l definition

CREATE TABLE `t_tsrbd_recrursn_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRURSN_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrursn_r3 definition

CREATE TABLE `t_tsrbd_recrursn_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrursntyp definition

CREATE TABLE `t_tsrbd_recrursntyp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_RECRURSNTYP_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrursntyp_l definition

CREATE TABLE `t_tsrbd_recrursntyp_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRURSNTYP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recruscene definition

CREATE TABLE `t_tsrbd_recruscene` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUITMENTCATEGORY` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_RECRUSCENE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recruscene_l definition

CREATE TABLE `t_tsrbd_recruscene_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRUSCENE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recruscnmultyp definition

CREATE TABLE `t_tsrbd_recruscnmultyp` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRUSCNMULTYP` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrustat definition

CREATE TABLE `t_tsrbd_recrustat` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FISDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISPLAYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_RECRUSTAT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrustat_l definition

CREATE TABLE `t_tsrbd_recrustat_l` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPLAYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRUSTAT_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrustatnew definition

CREATE TABLE `t_tsrbd_recrustatnew` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RECRUSTATNEW_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrustatnew_l definition

CREATE TABLE `t_tsrbd_recrustatnew_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRUSTATNEW_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrustg definition

CREATE TABLE `t_tsrbd_recrustg` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FISDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISPLAYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_RECRUSTG` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrustg_l definition

CREATE TABLE `t_tsrbd_recrustg_l` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPLAYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRUSTG_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrustgnew definition

CREATE TABLE `t_tsrbd_recrustgnew` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  KEY `IDX_TSRBD_RECRUSTGNEW_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrustgnew_l definition

CREATE TABLE `t_tsrbd_recrustgnew_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRUSTGNEW_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrustgtyp definition

CREATE TABLE `t_tsrbd_recrustgtyp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
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
  KEY `IDX_TSRBD_RECRUSTGTYP_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrustgtyp_l definition

CREATE TABLE `t_tsrbd_recrustgtyp_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRUSTGTYP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrustgtyp_r3 definition

CREATE TABLE `t_tsrbd_recrustgtyp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recrutyp definition

CREATE TABLE `t_tsrbd_recrutyp` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RECRUTYP` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recyclerecord definition

CREATE TABLE `t_tsrbd_recyclerecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKINFOID` bigint NOT NULL DEFAULT '0',
  `FUID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FMAILINFOID` bigint NOT NULL DEFAULT '0',
  `FRECYCLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_RECYCLERECORD_FMAIL` (`FMAILINFOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_recycletask definition

CREATE TABLE `t_tsrbd_recycletask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMAILINFOID` bigint NOT NULL DEFAULT '0',
  `FSUMCUNT` int NOT NULL DEFAULT '0',
  `FSUCCESSCUNT` int NOT NULL DEFAULT '0',
  `FFAILDCUNT` int NOT NULL DEFAULT '0',
  `FTASKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATETIME` datetime DEFAULT NULL,
  `FENDDATETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_RECYCLETASK_FMAIL` (`FMAILINFOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_resacqmthd definition

CREATE TABLE `t_tsrbd_resacqmthd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_RESACQMTHD_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_resacqmthd_l definition

CREATE TABLE `t_tsrbd_resacqmthd_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RESACQMTHD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rewardonboard definition

CREATE TABLE `t_tsrbd_rewardonboard` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRECRUSTGNEW` bigint NOT NULL DEFAULT '0',
  `FRECRUSTGTYP` bigint NOT NULL DEFAULT '0',
  `FRECRUSTATNEW` bigint NOT NULL DEFAULT '0',
  `FREWARDITEM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FREWARDVAL` decimal(10,2) NOT NULL DEFAULT '0.00',
  `FJOBSCMHRSWITCH` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBSCMHRID` bigint NOT NULL DEFAULT '0',
  `FJOBFAMILYHRID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBGRADE` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBGRADE` bigint NOT NULL DEFAULT '0',
  `FCLASSLEVELLOW` bigint NOT NULL DEFAULT '0',
  `FCLASSLEVELHIGH` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_REWARDONBOARD` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rewardprocess definition

CREATE TABLE `t_tsrbd_rewardprocess` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRECRUSTGNEWID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTGTYPID` bigint NOT NULL DEFAULT '0',
  `FREWARDITEM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FREWARDVAL` decimal(10,2) NOT NULL DEFAULT '0.00',
  `FRECRUSTATNEWID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMHRSWITCH` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBSCMHRID` bigint NOT NULL DEFAULT '0',
  `FJOBFAMILYHRID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBGRADE` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBGRADE` bigint NOT NULL DEFAULT '0',
  `FCLASSLEVELLOW` bigint NOT NULL DEFAULT '0',
  `FCLASSLEVELHIGH` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_REWARDPROCESS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rewardresult definition

CREATE TABLE `t_tsrbd_rewardresult` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRQMTPROCID` bigint NOT NULL DEFAULT '0',
  `FPOINTMAX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVERTPROPOSAL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREWARDMAX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_REWARDRESULT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rewardrule definition

CREATE TABLE `t_tsrbd_rewardrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FRECOMMENDTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYPID` bigint NOT NULL DEFAULT '0',
  `FRECRUSCENEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_RDETAIL_ORGID` (`FCREATEORGID`),
  KEY `IDX_T_TSRBD_REWARDRULE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_TSRBD_REWARDRULE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rewardrule_bit definition

CREATE TABLE `t_tsrbd_rewardrule_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rewardrule_l definition

CREATE TABLE `t_tsrbd_rewardrule_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_REWARDRULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rewardrule_r3 definition

CREATE TABLE `t_tsrbd_rewardrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rewardrule_u definition

CREATE TABLE `t_tsrbd_rewardrule_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_REWARDRULE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rewardruleexc definition

CREATE TABLE `t_tsrbd_rewardruleexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_REWARDRULEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rewardruleusereg definition

CREATE TABLE `t_tsrbd_rewardruleusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_REWARDRULEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rqmtproc definition

CREATE TABLE `t_tsrbd_rqmtproc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FRECRUSCENEID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAPPLICABLEAPP` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_RQMTPROC_FNUM` (`FNUMBER`),
  KEY `IDX_T_TSRBD_RQMTPROC_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_TSRBD_RQMTPROC_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rqmtproc_bit definition

CREATE TABLE `t_tsrbd_rqmtproc_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rqmtproc_l definition

CREATE TABLE `t_tsrbd_rqmtproc_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RQMTPROC_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rqmtproc_r3 definition

CREATE TABLE `t_tsrbd_rqmtproc_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rqmtproc_u definition

CREATE TABLE `t_tsrbd_rqmtproc_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_RQMTPROC_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rqmtprocentity definition

CREATE TABLE `t_tsrbd_rqmtprocentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRQMTSTGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_RQMTPROCENTITY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rqmtprocexc definition

CREATE TABLE `t_tsrbd_rqmtprocexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_RQMTPROCEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rqmtprocsubent definition

CREATE TABLE `t_tsrbd_rqmtprocsubent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FISOVER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISREASON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FJOBSTATUS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_TSRBD_RQMTPROCSUBENT_FETY` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rqmtprocusereg definition

CREATE TABLE `t_tsrbd_rqmtprocusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_TSRBD_RQMTPROCUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_rsnselnewentry definition

CREATE TABLE `t_tsrbd_rsnselnewentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREASONNUMBER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_RSNSELNEWENTRY_FID` (`FID`),
  KEY `IDX_TSRBD_RSNSEL_FRSNNUM` (`FREASONNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_ruleopmanage definition

CREATE TABLE `t_tsrbd_ruleopmanage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FENTITYOB` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLUGINTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETHODNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_RULEOPMANAGE` (`FNUMBER`,`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_ruleopmanage_l definition

CREATE TABLE `t_tsrbd_ruleopmanage_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RULEOPMANAGE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_ruleopmanage_r3 definition

CREATE TABLE `t_tsrbd_ruleopmanage_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_ruleparamentry definition

CREATE TABLE `t_tsrbd_ruleparamentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARAMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMINDEX` int NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_RULEPARAMENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_ruleparamentry_l definition

CREATE TABLE `t_tsrbd_ruleparamentry_l` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_RULEPARAMENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_secfunconfentity definition

CREATE TABLE `t_tsrbd_secfunconfentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCODE` bigint NOT NULL DEFAULT '0',
  `FLEVELSWITCH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FVISIABLEUSER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_SECENTITY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_secfunconfentity_l definition

CREATE TABLE `t_tsrbd_secfunconfentity_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVISIABLEUSER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_SECFUNCONFENTITY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_securityfunconf definition

CREATE TABLE `t_tsrbd_securityfunconf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_SECCONF_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_securityfunconf_l definition

CREATE TABLE `t_tsrbd_securityfunconf_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_SECURITYFUNCONF_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_securitylevel definition

CREATE TABLE `t_tsrbd_securitylevel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCODELEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_SECURITYLEVEL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_securitylevel_l definition

CREATE TABLE `t_tsrbd_securitylevel_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_SECURITYLEVELL_NUM` (`FNAME`),
  KEY `IDX_TSRBD_SECURITYLEVELL_DES` (`FDESCRIPTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_secuserlevel definition

CREATE TABLE `t_tsrbd_secuserlevel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FEFFECTIVEDATE` datetime DEFAULT NULL,
  `FEXPIRATIONDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_SECUSERL_FUSERID` (`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_secuserlevelent definition

CREATE TABLE `t_tsrbd_secuserlevelent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFUNCTIONLEVEL` bigint NOT NULL DEFAULT '0',
  `FUSERLEVEL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_SECUSERLEVELENT_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_statselnewentry definition

CREATE TABLE `t_tsrbd_statselnewentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSTATID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_STATSELENTRYNEW_FID` (`FID`),
  KEY `IDX_TSRBD_STATSELENTRY_FSTAT` (`FSTATID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_suboption definition

CREATE TABLE `t_tsrbd_suboption` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FINSPECTQUID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_TSRBD_SUBOPTION` (`FINSPECTQUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_suboption_l definition

CREATE TABLE `t_tsrbd_suboption_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_SUBOPTION_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_temptypeentry definition

CREATE TABLE `t_tsrbd_temptypeentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDCLOUD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDSERVICE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDMETHOD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUECLOUD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUESERVICE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUEMETHOD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FFIELDAPP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUEAPP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_TEMPTYPEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_temptypeentry_l definition

CREATE TABLE `t_tsrbd_temptypeentry_l` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_TEMPTYPEENTRY_L` (`FLOCALEID`,`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_tgtcoll definition

CREATE TABLE `t_tsrbd_tgtcoll` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_TGTCOLL_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_tgtcoll_l definition

CREATE TABLE `t_tsrbd_tgtcoll_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_TGTCOLL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_tgtcollentry definition

CREATE TABLE `t_tsrbd_tgtcollentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNITNUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_TGTCOLLENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_themerecrutype definition

CREATE TABLE `t_tsrbd_themerecrutype` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_VISIBLEPERSONFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_themestgtyp definition

CREATE TABLE `t_tsrbd_themestgtyp` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_THEMESTGTYP` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_tyjobclentry definition

CREATE TABLE `t_tsrbd_tyjobclentry` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPOSCATID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FJOBCLASSHRID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBD_TYJO_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_workaddr definition

CREATE TABLE `t_tsrbd_workaddr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISMARKED` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMARKEDADDR` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKADDRNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FDETAILEDADDR` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGITUDE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLATITUDE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBD_WORKADDR` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_workaddr_l definition

CREATE TABLE `t_tsrbd_workaddr_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKADDRNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILEDADDR` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBD_WORKADDR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbd_workaddr_r3 definition

CREATE TABLE `t_tsrbd_workaddr_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_adminorgentry definition

CREATE TABLE `t_tsrbs_adminorgentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREALADMINORGID` bigint NOT NULL DEFAULT '0',
  `FISDEFAULTADMINORG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_ADMINORGENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_advert definition

CREATE TABLE `t_tsrbs_advert` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSID` bigint NOT NULL DEFAULT '0',
  `FISDISPOSCODE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FPOSCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSALARYTYPEID` bigint NOT NULL DEFAULT '0',
  `FSALARYDOWN` int NOT NULL DEFAULT '0',
  `FSALARYUP` int NOT NULL DEFAULT '0',
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
  `FCHANNELID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVWEBLINK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVMOBLINK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_ADVERT_FPOSID` (`FPOSID`),
  KEY `IDX_TSRBS_ADVERT_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_advert_i definition

CREATE TABLE `t_tsrbs_advert_i` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISURGENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISTOP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISREWARD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREWARD` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_ADVERT_I_ISTOP` (`FISTOP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_advert_l definition

CREATE TABLE `t_tsrbs_advert_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSRESPON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSQUAL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQORG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_ADVERT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_appfile definition

CREATE TABLE `t_tsrbs_appfile` (
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
  `FISSIMILARRES` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_APPFILE_FPOS` (`FPOSITIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_appfile_a definition

CREATE TABLE `t_tsrbs_appfile_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIRTHDAY` datetime DEFAULT NULL,
  `FHIGHESTEDUSCHOOLID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FRESACQMTHDID` bigint NOT NULL DEFAULT '0',
  `FRECRUCHNLNMID` bigint NOT NULL DEFAULT '0',
  `FNOFKFILTERFKNUM` int NOT NULL DEFAULT '0',
  `FSUITFILTERFKNUM` int NOT NULL DEFAULT '0',
  `FNOSUITFILTERFKNUM` int NOT NULL DEFAULT '0',
  `FPENDFILTERFKNUM` int NOT NULL DEFAULT '0',
  `FTFPOSFILTERFKNUM` int NOT NULL DEFAULT '0',
  `FLASTFILTERFKSTARTTIME` datetime DEFAULT NULL,
  `FINTERVIEWTIME` datetime DEFAULT NULL,
  `FEMPLOYRECOMNEWESTTIME` datetime DEFAULT NULL,
  `FEMPLOYAPPRLNEWESTTIME` datetime DEFAULT NULL,
  `FLASTHIREJOBRANKSTARTTIME` datetime DEFAULT NULL,
  `FLASTHIRESALARYSTARTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_APPFILE_A_FAPPLYTIME` (`FAPPLYTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_appfilestatusrec definition

CREATE TABLE `t_tsrbs_appfilestatusrec` (
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
  KEY `IDX_TSRBS_AFSTSREC_APPFILE` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_appfilestatusrec_l definition

CREATE TABLE `t_tsrbs_appfilestatusrec_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILEDREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_APPFILESTATUSREC_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_appfiletask definition

CREATE TABLE `t_tsrbs_appfiletask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPLICATIONID` bigint NOT NULL DEFAULT '0',
  `FARGINTVID` bigint NOT NULL DEFAULT '0',
  `FROUNDID` bigint NOT NULL DEFAULT '0',
  `FINTVGROUPID` bigint NOT NULL DEFAULT '0',
  `FSIGNINTIME` datetime DEFAULT NULL,
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
  `FREFUSALCAUSE` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_ARGINTVID` (`FARGINTVID`),
  KEY `IDX_INTVGROUPID` (`FINTVGROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_appfiletask_l definition

CREATE TABLE `t_tsrbs_appfiletask_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFUSALCAUSE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_APPFILETASK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_appfiletrace definition

CREATE TABLE `t_tsrbs_appfiletrace` (
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
  KEY `IDX_TSRBS_AFTRACE_FAFID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_appmthd definition

CREATE TABLE `t_tsrbs_appmthd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_APPMTHD_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_appmthd_l definition

CREATE TABLE `t_tsrbs_appmthd_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_APPMTHD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_argintv definition

CREATE TABLE `t_tsrbs_argintv` (
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
  `FTXTSMSINTERVIEWER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTXTSMSUNAWARES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTXTSMSCANDIDATE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  KEY `IDX_TSRBS_ARGINTVHRID` (`FINTERVIEWARRANGERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_argintv_l definition

CREATE TABLE `t_tsrbs_argintv_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWTITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_ARGINTV_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_basedatalist definition

CREATE TABLE `t_tsrbs_basedatalist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FPAGEKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  KEY `IDX_TSRBS_BASEDATALIST_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_basedatalist_l definition

CREATE TABLE `t_tsrbs_basedatalist_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_BASEDATALIST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_bindextternalo_r3 definition

CREATE TABLE `t_tsrbs_bindextternalo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_bindextternalorg definition

CREATE TABLE `t_tsrbs_bindextternalorg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FOREIGNADMINORGLD` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCHSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTNERTENANT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_BINDEXTTERNALORG` (`FPARTNERTENANT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_cfgchannlist definition

CREATE TABLE `t_tsrbs_cfgchannlist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGEX` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUCHNLNMID` bigint NOT NULL DEFAULT '0',
  `FINDEXOF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_CFGCHANNLIST_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_cfgchannlist_l definition

CREATE TABLE `t_tsrbs_cfgchannlist_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_CFGCHANNLIST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_cfgmail definition

CREATE TABLE `t_tsrbs_cfgmail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAILADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAILPASSWORD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAILPASSWORD_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROTOCOLTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVERADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPORT` int NOT NULL DEFAULT '0',
  `FISUSESSL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECYLEDATE` datetime DEFAULT NULL,
  `FMAILSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMCOUNT` int NOT NULL DEFAULT '0',
  `FSHARDINGNUM` int NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
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
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_CFGMAIL_FMAILADDR` (`FEMAILADDR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_cfgmail_l definition

CREATE TABLE `t_tsrbs_cfgmail_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_CFGMAIL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_cfgmailprop definition

CREATE TABLE `t_tsrbs_cfgmailprop` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROTOCOLTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVERADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPORT` int NOT NULL DEFAULT '0',
  `FISUSESSL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSUFFIX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISUSEAUTHCODE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUTHURL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  KEY `IDX_TSRBS_CFGMAILPROP_FSERVER` (`FSERVERADDR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_cfgresurule definition

CREATE TABLE `t_tsrbs_cfgresurule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDEPENDORGID` bigint NOT NULL DEFAULT '0',
  `FRECCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERVALUE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_CFGRESURULE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_cfgresurule_l definition

CREATE TABLE `t_tsrbs_cfgresurule_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_CFGRESURULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_cfgresurulefd definition

CREATE TABLE `t_tsrbs_cfgresurulefd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULEFIELDID` bigint NOT NULL DEFAULT '0',
  `FISENTRYFIELD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENTRYNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_CFGRESURULEFD` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_cfgresurulefd_l definition

CREATE TABLE `t_tsrbs_cfgresurulefd_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_CFGRESURULEFD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_chedupentity definition

CREATE TABLE `t_tsrbs_chedupentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCDRULERENTRY` bigint NOT NULL DEFAULT '0',
  `FCDRULERENTRYATTR` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_CHEDUPENTITY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_chedupruler definition

CREATE TABLE `t_tsrbs_chedupruler` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERCLASS` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_CHEDUPRULER_FTYPE` (`FTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_chedupruler_l definition

CREATE TABLE `t_tsrbs_chedupruler_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_CHEDUPRULER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_commrcv definition

CREATE TABLE `t_tsrbs_commrcv` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCOMMRECID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FRCVCONTENT` longtext COLLATE utf8mb4_unicode_ci,
  `FRCVTIME` datetime DEFAULT NULL,
  `FRECRUTYPEID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTATNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTGNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FREPLIEDCREATORID` bigint NOT NULL DEFAULT '0',
  `FISDELETE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDELETETIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROBJSRC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_COMMRCV` (`FCOMMRECID`,`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_commrcv_l definition

CREATE TABLE `t_tsrbs_commrcv_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRCVCONTENT` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_COMMRCV_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_commrcv_r3 definition

CREATE TABLE `t_tsrbs_commrcv_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_commrec definition

CREATE TABLE `t_tsrbs_commrec` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVISIBLERANGE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMTHEMEID` bigint NOT NULL DEFAULT '0',
  `FCOMMCONID` bigint NOT NULL DEFAULT '0',
  `FCONOPTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` longtext COLLATE utf8mb4_unicode_ci,
  `FISFOLLOW` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFOLLOWSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYPEID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTATID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTATNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUSTGID` bigint NOT NULL DEFAULT '0',
  `FRECRUSTGNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROBJID` bigint NOT NULL DEFAULT '0',
  `FROBJSRC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTTIME` datetime DEFAULT NULL,
  `FISREPLIED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISDELETE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FUPDATETIME` datetime DEFAULT NULL,
  `FDELETETIME` datetime DEFAULT NULL,
  `FNOTICEWAY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMERNUM` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAGEPARAM` longtext COLLATE utf8mb4_unicode_ci,
  `FCOMMERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_COMMREC_FAPPFILEID` (`FROBJID`),
  KEY `IDX_TSRBS_COMMREC_FCOMMTHEMEID` (`FCOMMTHEMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_commrec_l definition

CREATE TABLE `t_tsrbs_commrec_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` longtext COLLATE utf8mb4_unicode_ci,
  `FPAGEPARAM` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_COMMREC_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_commrec_r3 definition

CREATE TABLE `t_tsrbs_commrec_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_commsrcentry definition

CREATE TABLE `t_tsrbs_commsrcentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FOBJID` bigint NOT NULL DEFAULT '0',
  `FOBJSRC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOBJECTID` bigint NOT NULL DEFAULT '0',
  `FPOBJSRC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROMBUSINESSTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_COMMRECNTCWAY_FID` (`FPOBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_commsrcentry_r3 definition

CREATE TABLE `t_tsrbs_commsrcentry_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_commtopicentry definition

CREATE TABLE `t_tsrbs_commtopicentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FTOPICID` bigint NOT NULL DEFAULT '0',
  `FTOPICTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICINFOID` bigint NOT NULL DEFAULT '0',
  `FTOPICINFO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_COMMTOPICENTRY_FID` (`FTOPICINFOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordinationms_r3 definition

CREATE TABLE `t_tsrbs_coordinationms_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordinationmsg definition

CREATE TABLE `t_tsrbs_coordinationmsg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGCLOUDID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGBUSINESSTYPEID` bigint NOT NULL DEFAULT '0',
  `FMSGACTIONID` bigint NOT NULL DEFAULT '0',
  `FSENDTIME` datetime DEFAULT NULL,
  `FSENDERID` bigint NOT NULL DEFAULT '0',
  `FMSGSUBNO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPNUM` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGBOID` bigint NOT NULL DEFAULT '0',
  `FMSGCENTERBOID` bigint NOT NULL DEFAULT '0',
  `FGROUPSEQ` int NOT NULL DEFAULT '0',
  `FGROUPCOUNT` int NOT NULL DEFAULT '0',
  `FMSGSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_COORDINATIONMSG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordinationmsg_l definition

CREATE TABLE `t_tsrbs_coordinationmsg_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_COORDINATIONMSG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordinationta_r3 definition

CREATE TABLE `t_tsrbs_coordinationta_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordinationtask definition

CREATE TABLE `t_tsrbs_coordinationtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHNO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZCLOUDID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSTAG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPNUM` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPSEQ` int NOT NULL DEFAULT '0',
  `FCOORDSUBSCRIBERID` bigint NOT NULL DEFAULT '0',
  `FRETRYCOUNT` int NOT NULL DEFAULT '0',
  `FTASKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOORDINATIONMSGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_COORDINATIONTASK` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordinationtask_l definition

CREATE TABLE `t_tsrbs_coordinationtask_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_COORDINATIONTASK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordpublisher definition

CREATE TABLE `t_tsrbs_coordpublisher` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIONAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIONCLOUDID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGTAG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBERID` bigint NOT NULL DEFAULT '0',
  `FPUBLISHDATE` datetime DEFAULT NULL,
  `FOFFLINEDATE` datetime DEFAULT NULL,
  `FPUBSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_COORDPUBLISHER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordpublisher_l definition

CREATE TABLE `t_tsrbs_coordpublisher_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGTAG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_COORDPUBLISHER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordpublisher_r3 definition

CREATE TABLE `t_tsrbs_coordpublisher_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordsubscribe_r3 definition

CREATE TABLE `t_tsrbs_coordsubscribe_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordsubscriber definition

CREATE TABLE `t_tsrbs_coordsubscriber` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGPUBLISHERID` bigint NOT NULL DEFAULT '0',
  `FCONSUMERAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONSUMERCLOUDID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONSUMERSERVICE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONSUMERMETHOD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMSGSUBNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGPUBLISHERTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBERID` bigint NOT NULL DEFAULT '0',
  `FSUBTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_COORDSUBSCRIBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordsubscriber_l definition

CREATE TABLE `t_tsrbs_coordsubscriber_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_COORDSUBSCRIBER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordtasklog definition

CREATE TABLE `t_tsrbs_coordtasklog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FTRACEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_COORDTASKLOG` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordtasklog_l definition

CREATE TABLE `t_tsrbs_coordtasklog_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_COORDTASKLOG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_coordtasklog_r3 definition

CREATE TABLE `t_tsrbs_coordtasklog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_fieldbasedata definition

CREATE TABLE `t_tsrbs_fieldbasedata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FPAGEKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_BD_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_fieldbasedata_l definition

CREATE TABLE `t_tsrbs_fieldbasedata_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_FIELDBASEDATA_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_filtertype definition

CREATE TABLE `t_tsrbs_filtertype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_FILTERTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_filtertype_l definition

CREATE TABLE `t_tsrbs_filtertype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_FILTERTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_followtask definition

CREATE TABLE `t_tsrbs_followtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFOLLOWTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FCOMMRECID` bigint NOT NULL DEFAULT '0',
  `FFOLTASKCONTENT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTICEWAY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSKDJOBID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSKDPLANID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDELETE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDELETETIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FROBJID` bigint NOT NULL DEFAULT '0',
  `FROBJSRC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_FOLLOWTASK_FSON` (`FCOMMRECID`),
  KEY `IDX_TSRBS_FOLLOWTASK_FCID` (`FCREATORID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_followtask_l definition

CREATE TABLE `t_tsrbs_followtask_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFOLTASKCONTENT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_FOLLOWTASK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_followtask_r3 definition

CREATE TABLE `t_tsrbs_followtask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_folperentry definition

CREATE TABLE `t_tsrbs_folperentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FFOLPERID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDELETE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDELETETIME` datetime DEFAULT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_RCVMSGPER_FIDS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_folperentry_r3 definition

CREATE TABLE `t_tsrbs_folperentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_foreignadminor_r3 definition

CREATE TABLE `t_tsrbs_foreignadminor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_foreignadminorg definition

CREATE TABLE `t_tsrbs_foreignadminorg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FISLEAF` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FESTABLISHMENTDATE` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FLASTESTSYNCSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_FOREIGNADMINORG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_foreignadminorg_l definition

CREATE TABLE `t_tsrbs_foreignadminorg_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_FOREIGNADMINORG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_groupcandate definition

CREATE TABLE `t_tsrbs_groupcandate` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_GROUPCANDATEFDID` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_hireapprobatch definition

CREATE TABLE `t_tsrbs_hireapprobatch` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITTERID` bigint NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_HIREAB_BILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_hireapproval definition

CREATE TABLE `t_tsrbs_hireapproval` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FJOBRANKID` bigint NOT NULL DEFAULT '0',
  `FSALARYID` bigint NOT NULL DEFAULT '0',
  `FSUBMITTERID` bigint NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_HIREAPPROVAL_APPFILE` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_hirejobrank definition

CREATE TABLE `t_tsrbs_hirejobrank` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FSUBMITTERID` bigint NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FHANDLETIME` datetime DEFAULT NULL,
  `FHANDLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROBATIONNUM` int NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBRANKADMINORGID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FFLOWTASKNUM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_HJR_APPFILEID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_hirerecommend definition

CREATE TABLE `t_tsrbs_hirerecommend` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FHANDLETIME` datetime DEFAULT NULL,
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FFEEDBACKRESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVICEREASON` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITTERID` bigint NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FFLOWTASKNUM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_HIRERECOM_APPFILEID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_hirerecommend_l definition

CREATE TABLE `t_tsrbs_hirerecommend_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADVICEREASON` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_HIRERECOMMEND_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_hiresalary definition

CREATE TABLE `t_tsrbs_hiresalary` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITTERID` bigint NOT NULL DEFAULT '0',
  `FSUBMITTIME` datetime DEFAULT NULL,
  `FBASARYTYPEID` bigint NOT NULL DEFAULT '0',
  `FBASARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FBASARYCURID` bigint NOT NULL DEFAULT '0',
  `FPROBPAYTYPEID` bigint NOT NULL DEFAULT '0',
  `FPROBNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROBSARYCURID` bigint NOT NULL DEFAULT '0',
  `FMERITSARYTYPEID` bigint NOT NULL DEFAULT '0',
  `FMERITNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FMERITCURID` bigint NOT NULL DEFAULT '0',
  `FALWSARYTYPEID` bigint NOT NULL DEFAULT '0',
  `FALWNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FALWCURID` bigint NOT NULL DEFAULT '0',
  `FRSSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FYEARSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FYEARSHARCURID` bigint NOT NULL DEFAULT '0',
  `FOPSHARNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FOPVALNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FOPVALCURID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FHANDLETIME` datetime DEFAULT NULL,
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_HS_APPFILEID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_hiresalary_l definition

CREATE TABLE `t_tsrbs_hiresalary_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_HIRESALARY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_hiresalaryexpt definition

CREATE TABLE `t_tsrbs_hiresalaryexpt` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FCURYESARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURYESARYCURID` bigint NOT NULL DEFAULT '0',
  `FCURTFIXSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURTFIXSARYCURID` bigint NOT NULL DEFAULT '0',
  `FCURBONUSNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURTBONUSCURID` bigint NOT NULL DEFAULT '0',
  `FCURTBENEFITSNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCURTBENEFITSCURID` bigint NOT NULL DEFAULT '0',
  `FFCURTLONGINCNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FFCURTLONGINCCURID` bigint NOT NULL DEFAULT '0',
  `FEXPMONSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FEXPMONSARYCURID` bigint NOT NULL DEFAULT '0',
  `FEXPYEARSARYNUM` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FEXPYEARSARYCURID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_HSE_APPFILEID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_hobby definition

CREATE TABLE `t_tsrbs_hobby` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_HOBBY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_inspectdim definition

CREATE TABLE `t_tsrbs_inspectdim` (
  `FINSPECTDIMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FINSPECTDIMID`),
  KEY `IDX_TSRBS_INSPECTDIM` (`FID`,`FINDEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_inspectdim_l definition

CREATE TABLE `t_tsrbs_inspectdim_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTDIMID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INSPECTDIM_L` (`FINSPECTDIMID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_inspectqu definition

CREATE TABLE `t_tsrbs_inspectqu` (
  `FINSPECTQUID` bigint NOT NULL DEFAULT '0',
  `FINSPECTDIMID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUESTIONTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FREQUIRED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FENABLECOMMENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREQUIREDCOMMENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FINSPECTQUID`),
  KEY `IDX_TSRBS_INSPECTQU` (`FINSPECTDIMID`,`FINDEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_inspectqu_l definition

CREATE TABLE `t_tsrbs_inspectqu_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTQUID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INSPECTQU_L` (`FINSPECTQUID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvcandate definition

CREATE TABLE `t_tsrbs_intvcandate` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INTVCANDATEFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intver definition

CREATE TABLE `t_tsrbs_intver` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INTVERFDID` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvevl definition

CREATE TABLE `t_tsrbs_intvevl` (
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
  KEY `IDX_TSRBS_INTVEVLATORID` (`FINTERVIEWEVALUATORID`),
  KEY `IDX_TSRBS_INTVEVLAAPPFILEID` (`FAPPLICATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvevlans definition

CREATE TABLE `t_tsrbs_intvevlans` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTVEVLQUNRID` bigint NOT NULL DEFAULT '0',
  `FINTVEVLID` bigint NOT NULL DEFAULT '0',
  `FINSPECTDIMID` bigint NOT NULL DEFAULT '0',
  `FINSPECTQUID` bigint NOT NULL DEFAULT '0',
  `FSUBOPTIONID` bigint NOT NULL DEFAULT '0',
  `FSUBANSWER` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvevlans_l definition

CREATE TABLE `t_tsrbs_intvevlans_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBANSWER` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INTVEVLANS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvevlentry definition

CREATE TABLE `t_tsrbs_intvevlentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTVEVLID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_INTVEVLENTRYFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvevlqunr definition

CREATE TABLE `t_tsrbs_intvevlqunr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvevlqunr_l definition

CREATE TABLE `t_tsrbs_intvevlqunr_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INTVEVLQUNR_L` (`FID`,`FLOCALEID`),
  KEY `IDX_TSRBS_INTVEVLQUNR_L_NAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvevlqunrdef definition

CREATE TABLE `t_tsrbs_intvevlqunrdef` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FRECCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FINTVEVLQUNRID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvgroupentry definition

CREATE TABLE `t_tsrbs_intvgroupentry` (
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
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_TSRBS_INTVGROUPAPP` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvgroupentry_l definition

CREATE TABLE `t_tsrbs_intvgroupentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWLOCATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWROOM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INTVGROUPENTRY_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvlink definition

CREATE TABLE `t_tsrbs_intvlink` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_INTVLINK_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvlink_l definition

CREATE TABLE `t_tsrbs_intvlink_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INTVLINK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvmthd definition

CREATE TABLE `t_tsrbs_intvmthd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_INTVMTHD_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvmthd_l definition

CREATE TABLE `t_tsrbs_intvmthd_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INTVMTHD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvorgfrm definition

CREATE TABLE `t_tsrbs_intvorgfrm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_IOFRM_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvorgfrm_l definition

CREATE TABLE `t_tsrbs_intvorgfrm_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INTVORGFRM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvroundentry definition

CREATE TABLE `t_tsrbs_intvroundentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWTHEMEID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWSTAGEID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWMETHODID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWEVLID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_INTVROUNDFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvtask definition

CREATE TABLE `t_tsrbs_intvtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FARGINTVID` bigint NOT NULL DEFAULT '0',
  `FROUNDID` bigint NOT NULL DEFAULT '0',
  `FINTVGROUPID` bigint NOT NULL DEFAULT '0',
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
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_INTERVIEWER` (`FINTERVIEWERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvtask_l definition

CREATE TABLE `t_tsrbs_intvtask_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INTVTASK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvtyp definition

CREATE TABLE `t_tsrbs_intvtyp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_INTVTYP_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_intvtyp_l definition

CREATE TABLE `t_tsrbs_intvtyp_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_INTVTYP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_irworkaddr definition

CREATE TABLE `t_tsrbs_irworkaddr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_IRWORKADDR_FWAID` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_jobstatus definition

CREATE TABLE `t_tsrbs_jobstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_JOBSTATUS_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_jobstatus_l definition

CREATE TABLE `t_tsrbs_jobstatus_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_JOBSTATUS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_journalgrade definition

CREATE TABLE `t_tsrbs_journalgrade` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_JOURNALGRADE_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_journalgrade_l definition

CREATE TABLE `t_tsrbs_journalgrade_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_JOURNALGRADE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_journaltype definition

CREATE TABLE `t_tsrbs_journaltype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_JOURNALTYPE_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_journaltype_l definition

CREATE TABLE `t_tsrbs_journaltype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_JOURNALTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_label definition

CREATE TABLE `t_tsrbs_label` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABELCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABELTYPEID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISPLAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_LABEL_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_label_l definition

CREATE TABLE `t_tsrbs_label_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_LABEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_label_tagobj definition

CREATE TABLE `t_tsrbs_label_tagobj` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJTYPEID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJID` bigint NOT NULL DEFAULT '0',
  `FLABELCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS__LABEL_TAGOBJ` (`FTAGOBJTYPEID`,`FTAGOBJID`,`FLABELID`),
  KEY `IDX_TSRBS__LABEL_ID` (`FLABELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_labelobjtype definition

CREATE TABLE `t_tsrbs_labelobjtype` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_LABELOBJTYPE` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_labeltype definition

CREATE TABLE `t_tsrbs_labeltype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABELCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISPLAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMIN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_LABELTYPE` (`FNAME`),
  KEY `IDX_TSRBS_LABELTYPE_FCODE` (`FCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_labeltype_l definition

CREATE TABLE `t_tsrbs_labeltype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_LABELTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_language definition

CREATE TABLE `t_tsrbs_language` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_LANGUAGE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_language_l definition

CREATE TABLE `t_tsrbs_language_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_LANGUAGE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_languageversion definition

CREATE TABLE `t_tsrbs_languageversion` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_LANGUAGEVERSION_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_languageversion_l definition

CREATE TABLE `t_tsrbs_languageversion_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_LANGUAGEVERSION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_leavereason definition

CREATE TABLE `t_tsrbs_leavereason` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_LEAVEREASON_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_leavereason_l definition

CREATE TABLE `t_tsrbs_leavereason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_LEAVEREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_majorcategory definition

CREATE TABLE `t_tsrbs_majorcategory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_MAJORCATE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_majorcategory_l definition

CREATE TABLE `t_tsrbs_majorcategory_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_MAJORCATEGORY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_majorsubcategory definition

CREATE TABLE `t_tsrbs_majorsubcategory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAJORCATEGORYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_MAJORSUBCATE_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_majorsubcategory_l definition

CREATE TABLE `t_tsrbs_majorsubcategory_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_MAJORSUBCATEGORY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_mtdfield definition

CREATE TABLE `t_tsrbs_mtdfield` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FMTDFIELDCTRTYPID` bigint NOT NULL DEFAULT '0',
  `FPAGEKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLENGTH` int NOT NULL DEFAULT '0',
  `FPRECISION` int NOT NULL DEFAULT '0',
  `FMIN` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FMAX` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FISPERSONALDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSENSITIVEDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISMUSTINPUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISMODULEREQUIRED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFIELDSCOPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_MTDFIELD_FNUMBER` (`FNUMBER`),
  KEY `IDX_TSRBS_MTDFIELD_FGROUP` (`FGROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_mtdfield_l definition

CREATE TABLE `t_tsrbs_mtdfield_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_MTDFIELD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_mtdfieldctrtyp definition

CREATE TABLE `t_tsrbs_mtdfieldctrtyp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_MTDFIELDCTRTYP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_mtdfieldctrtyp_l definition

CREATE TABLE `t_tsrbs_mtdfieldctrtyp_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_MTDFIELDCTRTYP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_mtdfieldentry definition

CREATE TABLE `t_tsrbs_mtdfieldentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCOMBOVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_MTDFIELDENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_mtdfieldentry_l definition

CREATE TABLE `t_tsrbs_mtdfieldentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMBOTITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_MTDFIELDENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_mtdfieldgroup definition

CREATE TABLE `t_tsrbs_mtdfieldgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMTDOBJID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_MTDFIELDGROUP_OBJ` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_mtdfieldgroup_l definition

CREATE TABLE `t_tsrbs_mtdfieldgroup_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_MTDFIELDGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_mtdobj definition

CREATE TABLE `t_tsrbs_mtdobj` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FLIMIT` int NOT NULL DEFAULT '0',
  `FBTNDESC` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_MTDOBJ` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_mtdobj_l definition

CREATE TABLE `t_tsrbs_mtdobj_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBTNDESC` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_MTDOBJ_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_mtdobjtable definition

CREATE TABLE `t_tsrbs_mtdobjtable` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMTDOBJID` bigint NOT NULL DEFAULT '0',
  `FENTITYKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_MTDOBJTABLE_OBJ` (`FMTDOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_objfcrecord definition

CREATE TABLE `t_tsrbs_objfcrecord` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FFIELDKEY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIGINALVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_OBJFCRECORD_ENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offer definition

CREATE TABLE `t_tsrbs_offer` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPINDEXES` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FHIREBILLID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSUNITID` bigint NOT NULL DEFAULT '0',
  `FBUSUNITNAME` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMTPID` bigint NOT NULL DEFAULT '0',
  `FISGTANNEX` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANNEXTPID` bigint NOT NULL DEFAULT '0',
  `FISEPANNEX` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` bigint NOT NULL DEFAULT '0',
  `FREPLYSTATUS` bigint NOT NULL DEFAULT '0',
  `FVALIDSTATUS` bigint NOT NULL DEFAULT '0',
  `FVALIDTIME` datetime DEFAULT NULL,
  `FLASTSENDTIME` datetime DEFAULT NULL,
  `FSENDTIME` datetime DEFAULT NULL,
  `FLASTREPLYTIME` datetime DEFAULT NULL,
  `FREPLYTIME` datetime DEFAULT NULL,
  `FEPPWD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEPPWD_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FREJECTREASON` bigint NOT NULL DEFAULT '0',
  `FREJECTDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABANDONDTIME` datetime DEFAULT NULL,
  `FABANDONREASON` bigint NOT NULL DEFAULT '0',
  `FABANDONDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDNUM` bigint NOT NULL DEFAULT '0',
  `FISDELETE` int NOT NULL DEFAULT '0',
  `FDATARANGE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSENDUSERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_TSRBS_OFFER_FPINDEX` (`FPINDEXES`),
  KEY `IDX_TSRBS_OFFER_FAPPID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offer_l definition

CREATE TABLE `t_tsrbs_offer_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSUNITNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_OFFER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offercddinfo definition

CREATE TABLE `t_tsrbs_offercddinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIONALITYID` bigint NOT NULL DEFAULT '0',
  `FNATIONALITYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENDER` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGE` bigint NOT NULL DEFAULT '0',
  `FEMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKAGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_OFFERCDDINFO_FOFID` (`FOFFERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offercddinfo_l definition

CREATE TABLE `t_tsrbs_offercddinfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIONALITYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_OFFERCDDINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offeretinfo definition

CREATE TABLE `t_tsrbs_offeretinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FRSNUM` decimal(16,2) NOT NULL DEFAULT '0.00',
  `FRSUNIT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSYEARVALUE` decimal(16,2) NOT NULL DEFAULT '0.00',
  `FRSYEARCUID` bigint NOT NULL DEFAULT '0',
  `FRSYEARCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTIONNUM` decimal(16,2) NOT NULL DEFAULT '0.00',
  `FOPTIONUNIT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTIONYEARVALUE` decimal(16,2) NOT NULL DEFAULT '0.00',
  `FOPTIONCUID` bigint NOT NULL DEFAULT '0',
  `FOPTIONCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_OFFERETINFO_FOFID` (`FOFFERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offeretinfo_l definition

CREATE TABLE `t_tsrbs_offeretinfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTIONCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSYEARCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_OFFERETINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offerfieldsrc definition

CREATE TABLE `t_tsrbs_offerfieldsrc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FSOURCE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_OFFERFIELDSRC_FOFID` (`FOFFERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offerjobinfo definition

CREATE TABLE `t_tsrbs_offerjobinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FPEPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPEPOSITIONNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPEADMINORGNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPECOMPANYID` bigint NOT NULL DEFAULT '0',
  `FPECOMPANYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPERVISORID` bigint NOT NULL DEFAULT '0',
  `FPEJOBID` bigint NOT NULL DEFAULT '0',
  `FPEJOBNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLACEWORKID` bigint NOT NULL DEFAULT '0',
  `FPLACEWORKNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSTTYPENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPPERIODTERM` int NOT NULL DEFAULT '0',
  `FPPERIODTERMUNIT` int NOT NULL DEFAULT '0',
  `FPEMPLOYMENTTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_OFFERJOBINFO_FOFID` (`FOFFERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offerjobinfo_l definition

CREATE TABLE `t_tsrbs_offerjobinfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPEPOSITIONNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPEADMINORGNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPECOMPANYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPEJOBNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBLEVELNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBGRADENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLACEWORKNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTTYPENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABORRELTYPENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABORRELSTATUSNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_OFFERJOBINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offerrecrude definition

CREATE TABLE `t_tsrbs_offerrecrude` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_OFFERRECRUDE_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offerrecruinfo definition

CREATE TABLE `t_tsrbs_offerrecruinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FADMORGID` bigint NOT NULL DEFAULT '0',
  `FADMORGNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUPOSIID` bigint NOT NULL DEFAULT '0',
  `FRECRUPOSINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYP` bigint NOT NULL DEFAULT '0',
  `FRECRUTYPNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_OFFERRURIT_FOFFERID` (`FOFFERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offerrecruinfo_l definition

CREATE TABLE `t_tsrbs_offerrecruinfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMORGNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUPOSINAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYPNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_OFFERRECRUINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offersainfo definition

CREATE TABLE `t_tsrbs_offersainfo` (
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FOFFERID` bigint NOT NULL DEFAULT '0',
  `FBWAGESTYID` bigint NOT NULL DEFAULT '0',
  `FBWAGESTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBWAGES` decimal(16,2) NOT NULL DEFAULT '0.00',
  `FBWAGESCUID` bigint NOT NULL DEFAULT '0',
  `FBWAGESCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSSUBTYID` bigint NOT NULL DEFAULT '0',
  `FPOSSUBTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSSUB` decimal(16,2) NOT NULL DEFAULT '0.00',
  `FPOSSUBCUID` bigint NOT NULL DEFAULT '0',
  `FPOSSUBCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPTYID` bigint NOT NULL DEFAULT '0',
  `FPRPTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRP` decimal(16,2) NOT NULL DEFAULT '0.00',
  `FPRPCUID` bigint NOT NULL DEFAULT '0',
  `FPRPCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPEBWAGESTYID` bigint NOT NULL DEFAULT '0',
  `FPRPEBWAGESTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPEBWAGES` decimal(16,2) NOT NULL DEFAULT '0.00',
  `FPRPEBWAGESCUID` bigint NOT NULL DEFAULT '0',
  `FPRPEBWAGESCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPEPOSSUBTYID` bigint NOT NULL DEFAULT '0',
  `FPRPEPOSSUBTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPEPOSSUB` decimal(16,2) NOT NULL DEFAULT '0.00',
  `FPRPEPOSSUBCUID` bigint NOT NULL DEFAULT '0',
  `FPRPEPOSSUBCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_OFFERSAINFO_FOFID` (`FOFFERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offersainfo_l definition

CREATE TABLE `t_tsrbs_offersainfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBWAGESTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBWAGESCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSSUBTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPEBWAGESTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPEPOSSUBTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSSUBCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPEBWAGESCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPEPOSSUBCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRPCUNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_OFFERSAINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offerstatus definition

CREATE TABLE `t_tsrbs_offerstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_OFFERSTATUS_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_offerstatus_l definition

CREATE TABLE `t_tsrbs_offerstatus_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_OFFERSTATUS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_opdef definition

CREATE TABLE `t_tsrbs_opdef` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FBIZENTRY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_OPDEF_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_opdef_l definition

CREATE TABLE `t_tsrbs_opdef_l` (
  `FPKID` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTEXTTPL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_OPDEF_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_opdef_r3 definition

CREATE TABLE `t_tsrbs_opdef_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_operaffairs definition

CREATE TABLE `t_tsrbs_operaffairs` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSOURCEAPP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEENTITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATEUSER` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  `FEVENTCATEGORY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTSTATUS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_OPERAFFAIRS_BO` (`FSOURCEBO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_oprecord definition

CREATE TABLE `t_tsrbs_oprecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOPERATOR` bigint NOT NULL DEFAULT '0',
  `FOPERATORNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORROLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJROLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZENTRY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJ` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTIME` datetime DEFAULT NULL,
  `FOPRTEXT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISKEYWORDUPD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCLICKNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELETEFLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSKIPFORMID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSKIPPKID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTPARAMETERS` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_OPRECORD_OPTIME` (`FOPTIME`),
  KEY `IDX_TSRBS_OPRECORD_BIZOBJ` (`FBIZOBJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_option definition

CREATE TABLE `t_tsrbs_option` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
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
  KEY `IDX_TSRBS_OPTION_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_option_l definition

CREATE TABLE `t_tsrbs_option_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_OPTION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_patentstatus definition

CREATE TABLE `t_tsrbs_patentstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_PATENTSTATUS_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_patentstatus_l definition

CREATE TABLE `t_tsrbs_patentstatus_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_PATENTSTATUS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_patenttype definition

CREATE TABLE `t_tsrbs_patenttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_PATENTTYPE_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_patenttype_l definition

CREATE TABLE `t_tsrbs_patenttype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_PATENTTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_paymenttype definition

CREATE TABLE `t_tsrbs_paymenttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_PAYMENTTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_paymenttype_l definition

CREATE TABLE `t_tsrbs_paymenttype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_PAYMENTTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_poscat definition

CREATE TABLE `t_tsrbs_poscat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGRADE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FLEVEL` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_POSCAT_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_poscat_l definition

CREATE TABLE `t_tsrbs_poscat_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_POSCAT_L` (`FID`,`FLOCALEID`),
  KEY `IDX_TSRBS_POSCAT_L_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_position definition

CREATE TABLE `t_tsrbs_position` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTIONPRIORITY` int NOT NULL DEFAULT '0',
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
  `FWORKCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FENTRYJOBID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBGRADE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCFGRESURULEID` bigint NOT NULL DEFAULT '0',
  `FWORKCITYID` bigint NOT NULL DEFAULT '0',
  `FISSALARYNEGO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSALARYTYPEID` bigint NOT NULL DEFAULT '0',
  `FSALARYDOWN` bigint NOT NULL DEFAULT '0',
  `FSALARYUP` bigint NOT NULL DEFAULT '0',
  `FPOSRESPON` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANOPOSREQUIREMENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUPROCID` bigint NOT NULL DEFAULT '0',
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
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_POSITION_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_position_a definition

CREATE TABLE `t_tsrbs_position_a` (
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
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_POSITION_A_FAGEUP` (`FAGEUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_position_l definition

CREATE TABLE `t_tsrbs_position_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKADDRESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSRESPON` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSQUAL` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANOPOSREQUIREMENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_POSITION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_positionsnap definition

CREATE TABLE `t_tsrbs_positionsnap` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTIONPRIORITY` int NOT NULL DEFAULT '0',
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
  `FWORKCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FENTRYJOBID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FLOWJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FHIGHJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBGRADE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCFGRESURULEID` bigint NOT NULL DEFAULT '0',
  `FISSALARYNEGO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSALARYTYPEID` bigint NOT NULL DEFAULT '0',
  `FSALARYDOWN` bigint NOT NULL DEFAULT '0',
  `FSALARYUP` bigint NOT NULL DEFAULT '0',
  `FPOSRESPON` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANOPOSREQUIREMENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUPROCID` bigint NOT NULL DEFAULT '0',
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
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_POSITIONSNAP_FID` (`FPOSITIONID`),
  KEY `IDX_TSRBS_POSITIONSNAP_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_positionsnap_a definition

CREATE TABLE `t_tsrbs_positionsnap_a` (
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
  PRIMARY KEY (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_positionsnap_l definition

CREATE TABLE `t_tsrbs_positionsnap_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKADDRESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSRESPON` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSQUAL` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANOPOSREQUIREMENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_POSITIONSNAP_L` (`FVID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_posordinator definition

CREATE TABLE `t_tsrbs_posordinator` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_POSORDINATOR_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_posordsnap definition

CREATE TABLE `t_tsrbs_posordsnap` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_POSORDSNAP_FVID` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_posprin definition

CREATE TABLE `t_tsrbs_posprin` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_POSPRIN_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_posprinsnap definition

CREATE TABLE `t_tsrbs_posprinsnap` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RECPOSPRINSNAP_FVID` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_posworkaddr definition

CREATE TABLE `t_tsrbs_posworkaddr` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_POSWORKADDR_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_posworkaddrsnap definition

CREATE TABLE `t_tsrbs_posworkaddrsnap` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_POSWORKADDRSNAP_FVID` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rcvmsgperentry definition

CREATE TABLE `t_tsrbs_rcvmsgperentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FRCVMSGPERID` bigint NOT NULL DEFAULT '0',
  `FISALDYREAD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_RCVMSGPE_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rdelivery definition

CREATE TABLE `t_tsrbs_rdelivery` (
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
  KEY `IDX_TSRBS_RDELIVERY_FAPPLY` (`FAPPLYTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recruchnlmedia definition

CREATE TABLE `t_tsrbs_recruchnlmedia` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RECRUCHNLMEDIA_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recruchnlmedia_l definition

CREATE TABLE `t_tsrbs_recruchnlmedia_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RECRUCHNLMEDIA_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recruchnlnm definition

CREATE TABLE `t_tsrbs_recruchnlnm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RECRUCHNLNM_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recruchnlnm_l definition

CREATE TABLE `t_tsrbs_recruchnlnm_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RECRUCHNLNM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrursn definition

CREATE TABLE `t_tsrbs_recrursn` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  KEY `IDX_TSRBS_RECRURSN_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrursn_l definition

CREATE TABLE `t_tsrbs_recrursn_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RECRURSN_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrursntyp definition

CREATE TABLE `t_tsrbs_recrursntyp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RECRURSNTYP_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrursntyp_l definition

CREATE TABLE `t_tsrbs_recrursntyp_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RECRURSNTYP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrustat definition

CREATE TABLE `t_tsrbs_recrustat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RECRUSTAT_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrustat_l definition

CREATE TABLE `t_tsrbs_recrustat_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RECRUSTAT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrustatnew definition

CREATE TABLE `t_tsrbs_recrustatnew` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrustatnew_l definition

CREATE TABLE `t_tsrbs_recrustatnew_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RECRUSTATNEW_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrustg definition

CREATE TABLE `t_tsrbs_recrustg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  KEY `IDX_TSRBS_RECRUSTG_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrustg_l definition

CREATE TABLE `t_tsrbs_recrustg_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RECRUSTG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrustgnew definition

CREATE TABLE `t_tsrbs_recrustgnew` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RECRUSTGNEW_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrustgnew_l definition

CREATE TABLE `t_tsrbs_recrustgnew_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RECRUSTGNEW_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrustgtyp definition

CREATE TABLE `t_tsrbs_recrustgtyp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
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
  KEY `IDX_TSRBS_RECRUSTGTYP_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrustgtyp_l definition

CREATE TABLE `t_tsrbs_recrustgtyp_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RECRUSTGTYP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrutyp definition

CREATE TABLE `t_tsrbs_recrutyp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUITMENTCATEGORY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RECRUTYP_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recrutyp_l definition

CREATE TABLE `t_tsrbs_recrutyp_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUITMENTCATEGORY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RECRUTYP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recyclerecord definition

CREATE TABLE `t_tsrbs_recyclerecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKINFOID` bigint NOT NULL DEFAULT '0',
  `FUID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FMAILINFOID` bigint NOT NULL DEFAULT '0',
  `FRECYCLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RECYCLERECORD_FMAIL` (`FMAILINFOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_recycletask definition

CREATE TABLE `t_tsrbs_recycletask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMAILINFOID` bigint NOT NULL DEFAULT '0',
  `FSUMCUNT` int NOT NULL DEFAULT '0',
  `FSUCCESSCUNT` int NOT NULL DEFAULT '0',
  `FFAILDCUNT` int NOT NULL DEFAULT '0',
  `FTASKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATETIME` datetime DEFAULT NULL,
  `FENDDATETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RECYCLETASK_FMAIL` (`FMAILINFOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_reduexpentry definition

CREATE TABLE `t_tsrbs_reduexpentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFSTUDY` int NOT NULL DEFAULT '0',
  `FSHOWLENGTHOFSTUDY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHOOLNAMEID` bigint NOT NULL DEFAULT '0',
  `FOTHSCHNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIALTYCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FSPECIALTYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FDEGREEID` bigint NOT NULL DEFAULT '0',
  `FISHIGHESTEDU` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_REDUEXPENTRY_RID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_refusalreason definition

CREATE TABLE `t_tsrbs_refusalreason` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_REFUSALREASON` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rercvmsgperent_r3 definition

CREATE TABLE `t_tsrbs_rercvmsgperent_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rercvmsgperentry definition

CREATE TABLE `t_tsrbs_rercvmsgperentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FRCVMSGPERID` bigint NOT NULL DEFAULT '0',
  `FISALDYREAD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_RCVMSGPER_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_resacqmthd definition

CREATE TABLE `t_tsrbs_resacqmthd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RESACQMTHD_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_resacqmthd_l definition

CREATE TABLE `t_tsrbs_resacqmthd_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RESACQMTHD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_reservere definition

CREATE TABLE `t_tsrbs_reservere` (
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
  KEY `IDX_TSRBS_RESERVERE_FTALPOOLID` (`FTALPOOLID`),
  KEY `IDX_TSRBS_RESERVERE_FSTDRSMID` (`FSTDRSMID`),
  KEY `IDX_TSRBS_RESERVERE_FISVALID` (`FISVALID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_resscr definition

CREATE TABLE `t_tsrbs_resscr` (
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
  KEY `IDX_TSRBS_RESSCR_FIRECER` (`FFILTERRECOMMENDERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_resscrtask definition

CREATE TABLE `t_tsrbs_resscrtask` (
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
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RESSCRTASK_FAPPFEPID` (`FAPPLICATIONFILEID`,`FFILTERHANDLEPEOPLEID`),
  KEY `IDX_TSRBS_RESSCRTASK_FEPIDCT` (`FFILTERHANDLEPEOPLEID`,`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_resume definition

CREATE TABLE `t_tsrbs_resume` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FDELIVERYID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHOTO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENDER` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGE` int NOT NULL DEFAULT '0',
  `FWORKINGYEARS` int NOT NULL DEFAULT '0',
  `FBIRTHDAY` datetime DEFAULT NULL,
  `FPARTWT` datetime DEFAULT NULL,
  `FJOBSTATUSID` bigint NOT NULL DEFAULT '0',
  `FNATREGID` bigint NOT NULL DEFAULT '0',
  `FPHONE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHIGHESTEDUSCHOOLID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTDEGREEID` bigint NOT NULL DEFAULT '0',
  `FHESTSPECIALTYCATID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTSPECIALTY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECENTCOMPANY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECENTPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESUMESTOADD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLANGUAGEVERSION` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLANGUAGEVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RESUME_FDELIVERYID` (`FDELIVERYID`),
  KEY `IDX_TSRBS_RESUME_AID` (`FAPPFILEID`),
  KEY `IDX_TSRBS_RESUME_FNAME` (`FFULLNAME`),
  KEY `IDX_TSRBS_RESUME_FPHON` (`FPHONE`),
  KEY `IDX_TSRBS_RESUME_FEMAIL` (`FEMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rqmtproc definition

CREATE TABLE `t_tsrbs_rqmtproc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RQMTPROC_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rqmtproc_l definition

CREATE TABLE `t_tsrbs_rqmtproc_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RQMTPROC_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rqmtprocentity definition

CREATE TABLE `t_tsrbs_rqmtprocentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRQMTSTGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_RQMTPROCENTITY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rqmtprocsubent definition

CREATE TABLE `t_tsrbs_rqmtprocsubent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FISOVER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISREASON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FJOBSTATUS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_TSRBS_RQMTPROCSUBENT_FETY` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsm definition

CREATE TABLE `t_tsrbs_rsm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FDELIVERYID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHOTO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENDER` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGE` int NOT NULL DEFAULT '0',
  `FWORKINGYEARS` int NOT NULL DEFAULT '0',
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
  `FCVSTARTDATE` datetime DEFAULT NULL,
  `FCVENDINGDATE` datetime DEFAULT NULL,
  `FMARITALSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROCREATIONSTATUSID` bigint NOT NULL DEFAULT '0',
  `FEXPCJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FEXPCFUNCTIONID` bigint NOT NULL DEFAULT '0',
  `FEXPCCITYID` bigint NOT NULL DEFAULT '0',
  `FEXPCARRIVALDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RSM_APPFILE` (`FAPPFILEID`),
  KEY `IDX_TSRBS_RESUME_PHONE` (`FPHONE`),
  KEY `IDX_TSRBS_RESUME_EMAIL` (`FEMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsm_a definition

CREATE TABLE `t_tsrbs_rsm_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRESUMESTOADD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRGSTPRMTRSDID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RSM_A` (`FCURANLSAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmacdachv definition

CREATE TABLE `t_tsrbs_rsmacdachv` (
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
  KEY `IDX_TSRBS_RSMACDACHV` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmactvexp definition

CREATE TABLE `t_tsrbs_rsmactvexp` (
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
  KEY `IDX_TSRBS_RSMACTVEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmawrhon definition

CREATE TABLE `t_tsrbs_rsmawrhon` (
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
  KEY `IDX_TSRBS_RSMAWRHON` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmbankcard definition

CREATE TABLE `t_tsrbs_rsmbankcard` (
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
  KEY `IDX_TSRBS_RSMBANKCARD_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmeduexp definition

CREATE TABLE `t_tsrbs_rsmeduexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
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
  `FGRADEPOINT` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FISHASMAKEUPCOUR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMAKEUPCOUR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISOVERSEASEXP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RSMEDUEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmemrgctc definition

CREATE TABLE `t_tsrbs_rsmemrgctc` (
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
  KEY `IDX_TSRBS_RSMEMRGCTC_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmfmlmbr definition

CREATE TABLE `t_tsrbs_rsmfmlmbr` (
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
  KEY `IDX_TSRBS_RSMFMLMBR` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmhobby definition

CREATE TABLE `t_tsrbs_rsmhobby` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_RSMHOBBY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsminterexp definition

CREATE TABLE `t_tsrbs_rsminterexp` (
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
  KEY `IDX_TSRBS_RSMINTEREXP` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmlangabl definition

CREATE TABLE `t_tsrbs_rsmlangabl` (
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
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RSMLANGABL_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmpatinv definition

CREATE TABLE `t_tsrbs_rsmpatinv` (
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
  KEY `IDX_TSRBS_STDPATINV_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmprjexp definition

CREATE TABLE `t_tsrbs_rsmprjexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FPROJECTDURATION` int NOT NULL DEFAULT '0',
  `FPROJECTNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBELONGSCOMPANY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTJOB` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTRESP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTPERF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTURL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RSMPRJEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmproskl definition

CREATE TABLE `t_tsrbs_rsmproskl` (
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
  KEY `IDX_TSRBS_RSMPROSKL` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmrschprj definition

CREATE TABLE `t_tsrbs_rsmrschprj` (
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
  KEY `IDX_TSRBS_RSMRSCHPRJ_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmschjob definition

CREATE TABLE `t_tsrbs_rsmschjob` (
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
  KEY `IDX_TSRBS_RSMSCHJOB_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmsochp definition

CREATE TABLE `t_tsrbs_rsmsochp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSOCIALHOMEPAGE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RSMSOCHP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmtrnexp definition

CREATE TABLE `t_tsrbs_rsmtrnexp` (
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
  KEY `IDX_TSRBS_RSMTRNEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmvolexp definition

CREATE TABLE `t_tsrbs_rsmvolexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FVOLEXP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_RSMVOLEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmworkexp definition

CREATE TABLE `t_tsrbs_rsmworkexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFWORK` int NOT NULL DEFAULT '0',
  `FCOMPANYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSCATID` bigint NOT NULL DEFAULT '0',
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FWORKRESPONSIBILITY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKACHIEVEMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  KEY `IDX_TSRBS_RSMWORKEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsmworks definition

CREATE TABLE `t_tsrbs_rsmworks` (
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
  KEY `IDX_TSRBS_RSMWORKS_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsnselentry definition

CREATE TABLE `t_tsrbs_rsnselentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FREASONNUMBER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_RSNSELENTRY_FID` (`FID`),
  KEY `IDX_TSRBS_RSNSELENTRY_FRSNNUM` (`FREASONNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rsnselnewentry definition

CREATE TABLE `t_tsrbs_rsnselnewentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREASONNUMBER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_RSNSELNEWENTRY_FID` (`FID`),
  KEY `IDX_TSRBS_RSNSEL_FRSNNUM` (`FREASONNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_rworkexpentry definition

CREATE TABLE `t_tsrbs_rworkexpentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFWORK` int NOT NULL DEFAULT '0',
  `FSHOWLENGTHOFWORK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSCATID` bigint NOT NULL DEFAULT '0',
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FWORKRESPONSIBILITY` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKACHIEVEMENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISRECWORK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_RWORKEXPENTRY_RID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_seclevel definition

CREATE TABLE `t_tsrbs_seclevel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_SECLEVEL_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_seclevel_l definition

CREATE TABLE `t_tsrbs_seclevel_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_SECLEVEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_statselentry definition

CREATE TABLE `t_tsrbs_statselentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRECRSTATUS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_STATSELENTRY_FID` (`FID`),
  KEY `IDX_TSRBS_STATSELENTRY_FSTATUS` (`FRECRSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_statselnewentry definition

CREATE TABLE `t_tsrbs_statselnewentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSTATID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_STATSELENTRYNEW_FID` (`FID`),
  KEY `IDX_TSRBS_STATSELENTRY_FSTAT` (`FSTATID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdacdachv definition

CREATE TABLE `t_tsrbs_stdacdachv` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
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
  `FWORKSDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDACDACHV_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdacdachvhis definition

CREATE TABLE `t_tsrbs_stdacdachvhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
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
  `FWORKSDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDACDACHVHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDACDACHVHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdacdachvhis_h definition

CREATE TABLE `t_tsrbs_stdacdachvhis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDACDACHVHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDACDACHVHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdactvexp definition

CREATE TABLE `t_tsrbs_stdactvexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FACTIVITYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYPLACE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDACTVEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdactvexphis definition

CREATE TABLE `t_tsrbs_stdactvexphis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FACTIVITYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYPLACE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDACTVEXPHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDACTVEXPHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdactvexphis_h definition

CREATE TABLE `t_tsrbs_stdactvexphis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDACTVEXPHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDACTVEXPHIS_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdawrhon definition

CREATE TABLE `t_tsrbs_stdawrhon` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FAWARDNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAWARDDATE` datetime DEFAULT NULL,
  `FAWARDINGUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAWARDDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDAWRHON_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdawrhonhis definition

CREATE TABLE `t_tsrbs_stdawrhonhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FAWARDNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAWARDDATE` datetime DEFAULT NULL,
  `FAWARDINGUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAWARDDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDAWRHONHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDAWRHONHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdawrhonhis_h definition

CREATE TABLE `t_tsrbs_stdawrhonhis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDAWRHONHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDAWRHONHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdbankcard definition

CREATE TABLE `t_tsrbs_stdbankcard` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FACCOUNTBANKID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCARDNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDBANKCARD_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdbankcardhis definition

CREATE TABLE `t_tsrbs_stdbankcardhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FACCOUNTBANKID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCARDNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDBANKCARDHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDBANKCARDHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdbankcardhis_h definition

CREATE TABLE `t_tsrbs_stdbankcardhis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDBANKCARDHIS_H_ET` (`FLEEDT`),
  KEY `IDX_TSRBS_STDBANKCARDHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdeduexp definition

CREATE TABLE `t_tsrbs_stdeduexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFSTUDY` int NOT NULL DEFAULT '0',
  `FSHOWLENGTHOFSTUDY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDEDUEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdeduexphis definition

CREATE TABLE `t_tsrbs_stdeduexphis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFSTUDY` int NOT NULL DEFAULT '0',
  `FSHOWLENGTHOFSTUDY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDEDUEXPHIS_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdeduexphis_h definition

CREATE TABLE `t_tsrbs_stdeduexphis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDEDUEXPHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDEDUEXPHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdemrgctc definition

CREATE TABLE `t_tsrbs_stdemrgctc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FEMERGENCYCONTACT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FECRELATIONID` bigint NOT NULL DEFAULT '0',
  `FECPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDEMRGCTC_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdemrgctchis definition

CREATE TABLE `t_tsrbs_stdemrgctchis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FEMERGENCYCONTACT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FECRELATIONID` bigint NOT NULL DEFAULT '0',
  `FECPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDEMRGCTCHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDEMRGCTCHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdemrgctchis_h definition

CREATE TABLE `t_tsrbs_stdemrgctchis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDEMRGCTCHIS_H_ET` (`FLEEDT`),
  KEY `IDX_TSRBS_STDEMRGCTCHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdfmlmbr definition

CREATE TABLE `t_tsrbs_stdfmlmbr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
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
  KEY `IDX_TSRBS_STDFMLMBR_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdfmlmbrhis definition

CREATE TABLE `t_tsrbs_stdfmlmbrhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
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
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDFMLMBRHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDFMLMBRHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdfmlmbrhis_h definition

CREATE TABLE `t_tsrbs_stdfmlmbrhis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDFMLMBRHIS_H_ET` (`FLEEDT`),
  KEY `IDX_TSRBS_STDFMLMBRHIS_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdinterexp definition

CREATE TABLE `t_tsrbs_stdinterexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FWORKUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERNRESP` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  KEY `IDX_TSRBS_STDINTEREXP_STDRSM` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdinterexphis definition

CREATE TABLE `t_tsrbs_stdinterexphis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FWORKUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERNRESP` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSJOB` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSRELATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDINTEREXPHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDINTEREXPHIS_STD` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdinterexphis_h definition

CREATE TABLE `t_tsrbs_stdinterexphis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDINTEREXPHIS_H_ET` (`FLEEDT`),
  KEY `IDX_TSRBS_STDINTEREXPHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdlangabl definition

CREATE TABLE `t_tsrbs_stdlangabl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCERTIFICATETITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLANGUAGENAMEID` bigint NOT NULL DEFAULT '0',
  `FLANGCERTSCORE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FLISTANDSPKABLID` bigint NOT NULL DEFAULT '0',
  `FLITERACYID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDLANGABL_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdlangablhis definition

CREATE TABLE `t_tsrbs_stdlangablhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCERTIFICATETITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLANGUAGENAMEID` bigint NOT NULL DEFAULT '0',
  `FLANGCERTSCORE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FLISTANDSPKABLID` bigint NOT NULL DEFAULT '0',
  `FLITERACYID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDLANGABLHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDLANGABLHIS_STD` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdlangablhis_h definition

CREATE TABLE `t_tsrbs_stdlangablhis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDLANGABLHIS_H_ET` (`FLEEDT`),
  KEY `IDX_TSRBS_STDLANGABLHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdpatinv definition

CREATE TABLE `t_tsrbs_stdpatinv` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
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
  `FPATENTDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDPATINV_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdpatinvhis definition

CREATE TABLE `t_tsrbs_stdpatinvhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
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
  `FPATENTDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDPATINVHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDPATINVHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdpatinvhis_h definition

CREATE TABLE `t_tsrbs_stdpatinvhis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDPATINVHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDPATINVHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdperf definition

CREATE TABLE `t_tsrbs_stdperf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FWORKSDATE` datetime DEFAULT NULL,
  `FWORKSNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKSDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDPERF_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdperfhis definition

CREATE TABLE `t_tsrbs_stdperfhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FWORKSDATE` datetime DEFAULT NULL,
  `FWORKSNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKSDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDPERFHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDPERFHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdperfhis_h definition

CREATE TABLE `t_tsrbs_stdperfhis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDPERFHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDPERFHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdprjexp definition

CREATE TABLE `t_tsrbs_stdprjexp` (
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
  KEY `IDX_TSRBS_STDPRJEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdprjexphis definition

CREATE TABLE `t_tsrbs_stdprjexphis` (
  `FVID` bigint NOT NULL DEFAULT '0',
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
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDPRJEXPHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDPRJEXPHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdprjexphis_h definition

CREATE TABLE `t_tsrbs_stdprjexphis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDPRJEXPHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDPRJEXPHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdproskl definition

CREATE TABLE `t_tsrbs_stdproskl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSKILLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEDURATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERYID` bigint NOT NULL DEFAULT '0',
  `FSKILLDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDPROFSKL_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdprosklhis definition

CREATE TABLE `t_tsrbs_stdprosklhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSKILLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEDURATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERYID` bigint NOT NULL DEFAULT '0',
  `FSKILLDESC` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDPROSKLHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDPROSKLHIS_STDRSM` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdprosklhis_h definition

CREATE TABLE `t_tsrbs_stdprosklhis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDPROSKLHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDPROSKLHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrschprj definition

CREATE TABLE `t_tsrbs_stdrschprj` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FRSCHDIREC` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDRSCHPRJ_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrschprjhis definition

CREATE TABLE `t_tsrbs_stdrschprjhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FRSCHDIREC` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDRSCHPRJHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDRSCHPRJHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrschprjhis_h definition

CREATE TABLE `t_tsrbs_stdrschprjhis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDRSCHPRJHIS_H_ET` (`FLEEDT`),
  KEY `IDX_TSRBS_STDRSCHPRJHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrsm definition

CREATE TABLE `t_tsrbs_stdrsm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHOTO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENDER` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGE` int NOT NULL DEFAULT '0',
  `FWORKINGYEARS` int NOT NULL DEFAULT '0',
  `FBIRTHDAY` datetime DEFAULT NULL,
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
  `FCVSTARTDATE` datetime DEFAULT NULL,
  `FCVENDINGDATE` datetime DEFAULT NULL,
  `FMARITALSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROCREATIONSTATUSID` bigint NOT NULL DEFAULT '0',
  `FEXPCJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FEXPCFUNCTIONID` bigint NOT NULL DEFAULT '0',
  `FEXPCCITYID` bigint NOT NULL DEFAULT '0',
  `FEXPCARRIVALDATE` datetime DEFAULT NULL,
  `FMID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKTIME` datetime DEFAULT NULL,
  `FISMERGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPROPBIRTHDAY` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDRSM_PHONE` (`FPHONE`),
  KEY `IDX_TSRBS_STDRSM_EMAIL` (`FEMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrsm_a definition

CREATE TABLE `t_tsrbs_stdrsm_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRGSTPRMTRSDID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIVEPLACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTRESIDENCEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDRSM_A_PHONE` (`FHOMEPHONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrsmattr definition

CREATE TABLE `t_tsrbs_stdrsmattr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMARKFIELD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCDRULERENTRYID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDRSMATTR_ENTRY` (`FCDRULERENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrsmattr_l definition

CREATE TABLE `t_tsrbs_stdrsmattr_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_STDRSMATTR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrsmentity definition

CREATE TABLE `t_tsrbs_stdrsmentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMARKFIELD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDRSMENTITY_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrsmentity_l definition

CREATE TABLE `t_tsrbs_stdrsmentity_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_STDRSMENTITY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrsmhichobby definition

CREATE TABLE `t_tsrbs_stdrsmhichobby` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_STDRSMHICHOBBY_FVID` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrsmhis definition

CREATE TABLE `t_tsrbs_stdrsmhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHOTO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENDER` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGE` int NOT NULL DEFAULT '0',
  `FWORKINGYEARS` int NOT NULL DEFAULT '0',
  `FBIRTHDAY` datetime DEFAULT NULL,
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
  `FCVSTARTDATE` datetime DEFAULT NULL,
  `FCVENDINGDATE` datetime DEFAULT NULL,
  `FMARITALSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROCREATIONSTATUSID` bigint NOT NULL DEFAULT '0',
  `FEXPCJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FEXPCFUNCTIONID` bigint NOT NULL DEFAULT '0',
  `FEXPCCITYID` bigint NOT NULL DEFAULT '0',
  `FEXPCARRIVALDATE` datetime DEFAULT NULL,
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FISMERGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPROPBIRTHDAY` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDRSMHIS_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrsmhis_a definition

CREATE TABLE `t_tsrbs_stdrsmhis_a` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FRGSTPRMTRSDID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIVEPLACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTRESIDENCEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDRSMHIS_A_PHONE` (`FHOMEPHONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrsmhis_h definition

CREATE TABLE `t_tsrbs_stdrsmhis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDRSMHIS_H_FID` (`FID`),
  KEY `IDX_TSRBS_STDRSMHIS_H_EE` (`FEEID`),
  KEY `IDX_TSRBS_STDRSMHIS_H_EEDT` (`FEEDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdrsmsimilar definition

CREATE TABLE `t_tsrbs_stdrsmsimilar` (
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
  KEY `IDX_TSRBS_STDRSMSIMILAR_STDRSM` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdschjob definition

CREATE TABLE `t_tsrbs_stdschjob` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FJOB` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPACHV` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDSCHJOB_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdschjobhis definition

CREATE TABLE `t_tsrbs_stdschjobhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FJOB` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPACHV` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDSCHJOBHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDSCHJOBHIS_STDRSM` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdschjobhis_h definition

CREATE TABLE `t_tsrbs_stdschjobhis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDSCHJOBHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDSCHJOBHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdsochp definition

CREATE TABLE `t_tsrbs_stdsochp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSOCIALHOMEPAGE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDSOCHP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdsochphis definition

CREATE TABLE `t_tsrbs_stdsochphis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSOCIALHOMEPAGE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDSOCHP_FID` (`FID`),
  KEY `IDX_TSRBS_STDSOCHP_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdsochphis_h definition

CREATE TABLE `t_tsrbs_stdsochphis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDSOCHPHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDSOCHPHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdtrnexp definition

CREATE TABLE `t_tsrbs_stdtrnexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FTRAININGDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  KEY `IDX_TSRBS_STDTRNEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdtrnexphis definition

CREATE TABLE `t_tsrbs_stdtrnexphis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FTRAININGDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRAININGINST` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRAININGCOURSE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRAININGPLACE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTIFICATETITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTIFICATENO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDTRNEXPHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDTRNEXPHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdtrnexphis_h definition

CREATE TABLE `t_tsrbs_stdtrnexphis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDTRNEXPHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDTRNEXPHIS_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdvolexp definition

CREATE TABLE `t_tsrbs_stdvolexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FVOLEXP` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_STDVOLEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdvolexphis definition

CREATE TABLE `t_tsrbs_stdvolexphis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FVOLEXP` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDVOLEXPHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDVOLEXPHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdvolexphis_h definition

CREATE TABLE `t_tsrbs_stdvolexphis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDVOLEXPHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDVOLEXPHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdworkexp definition

CREATE TABLE `t_tsrbs_stdworkexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFWORK` int NOT NULL DEFAULT '0',
  `FSHOWLENGTHOFWORK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  KEY `IDX_TSRBS_STDWORKEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdworkexphis definition

CREATE TABLE `t_tsrbs_stdworkexphis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFWORK` int NOT NULL DEFAULT '0',
  `FSHOWLENGTHOFWORK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDWORKEXPHIS_FID` (`FID`),
  KEY `IDX_TSRBS_STDWORKEXPHIS_STDRS` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_stdworkexphis_h definition

CREATE TABLE `t_tsrbs_stdworkexphis_h` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBREDT` bigint NOT NULL DEFAULT '0',
  `FBRLED` datetime DEFAULT NULL,
  `FBRLEDT` bigint NOT NULL DEFAULT '0',
  `FCEID` bigint NOT NULL DEFAULT '0',
  `FCEDT` datetime DEFAULT NULL,
  `FLMEID` bigint NOT NULL DEFAULT '0',
  `FLMEDT` datetime DEFAULT NULL,
  `FEEID` bigint NOT NULL DEFAULT '0',
  `FEEDT` datetime DEFAULT NULL,
  `FLEEID` bigint NOT NULL DEFAULT '0',
  `FLEEDT` datetime DEFAULT NULL,
  `FDEID` bigint NOT NULL DEFAULT '0',
  `FDEDT` datetime DEFAULT NULL,
  `FLDEID` bigint NOT NULL DEFAULT '0',
  `FLDEDT` datetime DEFAULT NULL,
  `FISLASTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNEWBO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FVID`),
  KEY `IDX_TSRBS_STDWORKEXPHIS_H_EEDT` (`FLEEDT`),
  KEY `IDX_TSRBS_STDWORKEXPHIS_H_EE` (`FEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_suboption definition

CREATE TABLE `t_tsrbs_suboption` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FINSPECTQUID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_TSRBS_SUBOPTION` (`FINSPECTQUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_suboption_l definition

CREATE TABLE `t_tsrbs_suboption_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_SUBOPTION_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_synadminorg definition

CREATE TABLE `t_tsrbs_synadminorg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FISLEAF` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FESTABLISHMENTDATE` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FLASTESTSYNCSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTENANTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_SYNADMINORG` (`FNUMBER`,`FTENANTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_synadminorg_l definition

CREATE TABLE `t_tsrbs_synadminorg_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_SYNADMINORG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_synadminorg_r3 definition

CREATE TABLE `t_tsrbs_synadminorg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_synrecordobj definition

CREATE TABLE `t_tsrbs_synrecordobj` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FBIZOBJ` bigint NOT NULL DEFAULT '0',
  `FOPTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNTENANT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNDATE` datetime DEFAULT NULL,
  `FSYNOPERATOR` bigint NOT NULL DEFAULT '0',
  `FSYNSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATETIMEFIELD` datetime DEFAULT NULL,
  `FOPERATOR` bigint NOT NULL DEFAULT '0',
  `FADMINORGNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_SYNRECORDOBJ` (`FSYNTENANT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_synrecordobj_r3 definition

CREATE TABLE `t_tsrbs_synrecordobj_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_tagobjtype definition

CREATE TABLE `t_tsrbs_tagobjtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FLABELTYPE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_TAGOBJTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_tagobjtype_l definition

CREATE TABLE `t_tsrbs_tagobjtype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_TAGOBJTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_talentpoolmgt definition

CREATE TABLE `t_tsrbs_talentpoolmgt` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYPID` bigint NOT NULL DEFAULT '0',
  `FRECRUTYP` bigint NOT NULL DEFAULT '0',
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
  `FDISABLER` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_TAL_FPARENTID` (`FPARENTID`),
  KEY `IDX_TSRBS_TAL_FRECRUTYPID` (`FRECRUTYPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_talentpoolmgt_l definition

CREATE TABLE `t_tsrbs_talentpoolmgt_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_TALENTPOOLMGT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_tgtcoll definition

CREATE TABLE `t_tsrbs_tgtcoll` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_TGTCOLL_FNUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_tgtcoll_l definition

CREATE TABLE `t_tsrbs_tgtcoll_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_TGTCOLL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_tgtcollentry definition

CREATE TABLE `t_tsrbs_tgtcollentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNITNUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRBS_TGTCOLLENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_tracerecord definition

CREATE TABLE `t_tsrbs_tracerecord` (
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
  KEY `IDX_TSRBS_TRACERECORD_SID` (`FSTDRSMID`),
  KEY `IDX_TSRBS_TRACERECORD_STAID` (`FJOBSTATUSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_tracerecord_l definition

CREATE TABLE `t_tsrbs_tracerecord_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_TRACERECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_unifyarginfo definition

CREATE TABLE `t_tsrbs_unifyarginfo` (
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
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_unifyarginfo_l definition

CREATE TABLE `t_tsrbs_unifyarginfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIFYINTERVIEWADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIFYFINTERVIEWROOM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_UNIFYARGINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_unifyintver definition

CREATE TABLE `t_tsrbs_unifyintver` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_UNIFYINTVERFID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_visibleperson definition

CREATE TABLE `t_tsrbs_visibleperson` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_VISIBLEPERSON_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_workaddr definition

CREATE TABLE `t_tsrbs_workaddr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISMARKED` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMARKEDADDR` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKADDRNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FDETAILEDADDR` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGITUDE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLATITUDE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRBS_WORKADDR` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrbs_workaddr_l definition

CREATE TABLE `t_tsrbs_workaddr_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKADDRNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILEDADDR` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRBS_WORKADDR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrsc_atsmsgrec definition

CREATE TABLE `t_tsrsc_atsmsgrec` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FTPSYS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPTENANTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGPUSHWAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOPTPARAMS` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXCEPTIONDES` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETRYNUM` int NOT NULL DEFAULT '0',
  `FOPERATORNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGETEXT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATANUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGETEXT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FOPERATORNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTPARAMS_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRSC_ATSMSGREC` (`FTPTENANTID`,`FTPDATAID`,`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrsc_atsmsgrec_l definition

CREATE TABLE `t_tsrsc_atsmsgrec_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRSC_ATSMSGREC_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrsc_atsmsgrec_r3 definition

CREATE TABLE `t_tsrsc_atsmsgrec_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrsc_datasyncrecord definition

CREATE TABLE `t_tsrsc_datasyncrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FTPSYS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPTENANTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOTYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTSYNTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRSC_DATASYNCRECORD` (`FBOTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrsc_datasyncrecord_r3 definition

CREATE TABLE `t_tsrsc_datasyncrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrsc_tenant definition

CREATE TABLE `t_tsrsc_tenant` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FHRORGFIELD` bigint NOT NULL DEFAULT '0',
  `FLINKCONFIG` bigint NOT NULL DEFAULT '0',
  `FPARTNER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICEPRGNUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPIKEY` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATANUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPORGID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPMANAGERMAIL` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINEMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSRSC_TENANT` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrsc_tenant_entity definition

CREATE TABLE `t_tsrsc_tenant_entity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRECRUITTYPE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICEMODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRIGGERMODEONE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTRIGGERMODETWO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTRIGGERMODETHREE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENTITYENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSRSC_TENANT_ENTITY` (`FRECRUITTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrsc_tenant_l definition

CREATE TABLE `t_tsrsc_tenant_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSRSC_TENANT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tsrsc_tenant_r3 definition

CREATE TABLE `t_tsrsc_tenant_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfattachment definition

CREATE TABLE `t_tstpm_arfattachment` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FATTACHMENTKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTACHMENTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTAGETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTACHMENTSIZE` int NOT NULL DEFAULT '0',
  `FDOWNLOADURL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILEID` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMFILENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_ARFATTACHMENT_RSM` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfattachment_r3 definition

CREATE TABLE `t_tstpm_arfattachment_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfcertificate_r3 definition

CREATE TABLE `t_tstpm_arfcertificate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfcertificates definition

CREATE TABLE `t_tstpm_arfcertificates` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCERTTYPE` bigint NOT NULL DEFAULT '0',
  `FCERTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTSTARTTIME` datetime DEFAULT NULL,
  `FCERTENDTIME` datetime DEFAULT NULL,
  `FISLONGVALID` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIGNOFFICE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTFRONTIMG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTBACKIMG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_ARFCRT_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsm definition

CREATE TABLE `t_tstpm_arfrsm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FFULLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIRTHDAY` datetime DEFAULT NULL,
  `FAGE` int NOT NULL DEFAULT '0',
  `FPARTWT` datetime DEFAULT NULL,
  `FJOBSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPHONE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(320) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHOTO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHIGHESTEDUSCHOOLID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTDEGREEID` bigint NOT NULL DEFAULT '0',
  `FHESTSPECIALTYCATID` bigint NOT NULL DEFAULT '0',
  `FRECENTCOMPANY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHIGHESTSPECIALTY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECENTPOSITION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLANGUAGEVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNATIONID` bigint NOT NULL DEFAULT '0',
  `FPOLITICSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FCERTIFICATETYPEID` bigint NOT NULL DEFAULT '0',
  `FCERTIFICATENUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCVSTARTDATE` datetime DEFAULT NULL,
  `FCVENDINGDATE` datetime DEFAULT NULL,
  `FMARITALSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROCREATIONSTATUSID` bigint NOT NULL DEFAULT '0',
  `FEXPCJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FEXPCFUNCTIONID` bigint NOT NULL DEFAULT '0',
  `FEXPCARRIVALDATE` datetime DEFAULT NULL,
  `FLANGUAGEVERSIONID` bigint NOT NULL DEFAULT '0',
  `FNATREGID` bigint NOT NULL DEFAULT '0',
  `FEXPCCITYID` bigint NOT NULL DEFAULT '0',
  `FPROPBIRTHDAY` datetime DEFAULT NULL,
  `FDELIVERYID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FWORKINGYEARS` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FGENDER` bigint NOT NULL DEFAULT '0',
  `FLOCATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHIGHESTDATE` datetime DEFAULT NULL,
  `FSKILLDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOBBIES` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYPID` bigint NOT NULL DEFAULT '0',
  `FEXPCINDUSTRY` bigint NOT NULL DEFAULT '0',
  `FEXPCOTHERINDUSTRY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTIFICATENUMBER_ENP` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_ARFRSM_APPFILEID` (`FAPPFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsm_a definition

CREATE TABLE `t_tstpm_arfrsm_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTPSYS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATANUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOMEPHONE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRGSTPRMTRSDID` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIVEPLACEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTRESIDENCEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPTMONSALCURCID` bigint NOT NULL DEFAULT '0',
  `FEXPTMONSAL` int NOT NULL DEFAULT '0',
  `FEXPTANLSALCURCID` bigint NOT NULL DEFAULT '0',
  `FEXPTANLSAL` int NOT NULL DEFAULT '0',
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
  `FISCOMPAGRRESTR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISCRIMRECD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISBUSCONFINTR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSELFEVALUATION` longtext COLLATE utf8mb4_unicode_ci,
  `FPARTORG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMSOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESUMESTOADD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCOMPEMP` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCPLACECHANGE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISRELATIONWORK` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRGSTPRMTRSDTXT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIVEPLACETXT` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_ARFRSM_A_RESUMEID` (`FRSMSOURCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsm_l definition

CREATE TABLE `t_tstpm_arfrsm_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSKILLDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOBBIES` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSTPM_ARFRSM_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsm_r3 definition

CREATE TABLE `t_tstpm_arfrsm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsmawrhon definition

CREATE TABLE `t_tstpm_arfrsmawrhon` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FAWARDINGUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FAWARDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAWARDDATE` datetime DEFAULT NULL,
  `FAWARDDESC` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_ARFRSMAWRHON_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsmawrhon_r3 definition

CREATE TABLE `t_tstpm_arfrsmawrhon_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsmeduexp definition

CREATE TABLE `t_tstpm_arfrsmeduexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFSTUDY` int NOT NULL DEFAULT '0',
  `FSCHOOLNAMEID` bigint NOT NULL DEFAULT '0',
  `FOTHSCHNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIALTYCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FSPECIALTYNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FDEGREEID` bigint NOT NULL DEFAULT '0',
  `FISHIGHESTEDU` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEDUCATIONFORMID` bigint NOT NULL DEFAULT '0',
  `FISFULLTIME` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISDBLDEGREESPECIALTY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTUTORNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSRELATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPHONE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIALISTRANK` int NOT NULL DEFAULT '0',
  `FGRADEPOINT` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FISHASMAKEUPCOUR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAKEUPCOUR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISOVERSEASEXP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCLASSRANK` int NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FSCHOOLCOUREGID` bigint NOT NULL DEFAULT '0',
  `FISHITHERTO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSHOWLENGTHOFSTUDY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_ARFRSMEDUEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsmeduexp_r3 definition

CREATE TABLE `t_tstpm_arfrsmeduexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsminterexp definition

CREATE TABLE `t_tstpm_arfrsminterexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFWORK` int NOT NULL DEFAULT '0',
  `FWORKUNIT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERNRESP` longtext COLLATE utf8mb4_unicode_ci,
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FISHITHERTO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINDUSTRYTYPEID` bigint NOT NULL DEFAULT '0',
  `FINDUSTRYTYPETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYNATURETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYSIZETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYNATUREID` bigint NOT NULL DEFAULT '0',
  `FREPORTOBJECT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALARY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FWORKADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_ARFRSMINTEREXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsminterexp_r3 definition

CREATE TABLE `t_tstpm_arfrsminterexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsmlangabl definition

CREATE TABLE `t_tstpm_arfrsmlangabl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCERTIFICATETITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLANGUAGENAMEID` bigint NOT NULL DEFAULT '0',
  `FLANGCERTSCORE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FLISTANDSPKABLID` bigint NOT NULL DEFAULT '0',
  `FLITERACYID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FSPOKENID` bigint NOT NULL DEFAULT '0',
  `FREADID` bigint NOT NULL DEFAULT '0',
  `FLANGUAGECERTID` bigint NOT NULL DEFAULT '0',
  `FOTHLANGUAGETYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_ARFRSMLANGABL_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsmlangabl_r3 definition

CREATE TABLE `t_tstpm_arfrsmlangabl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsmprjexp definition

CREATE TABLE `t_tstpm_arfrsmprjexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FPROJECTDURATION` int NOT NULL DEFAULT '0',
  `FPROJECTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBELONGSCOMPANY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTJOB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTRESP` longtext COLLATE utf8mb4_unicode_ci,
  `FPROJECTDESC` longtext COLLATE utf8mb4_unicode_ci,
  `FPROJECTPERF` longtext COLLATE utf8mb4_unicode_ci,
  `FPROJECTURL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FSHOWPROJECTDURATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FISHITHERTO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_ARFRSMPRJEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsmprjexp_r3 definition

CREATE TABLE `t_tstpm_arfrsmprjexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsmworkexp definition

CREATE TABLE `t_tstpm_arfrsmworkexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFWORK` int NOT NULL DEFAULT '0',
  `FPOSITIONNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSCATID` bigint NOT NULL DEFAULT '0',
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FWORKRESPONSIBILITY` longtext COLLATE utf8mb4_unicode_ci,
  `FLEAVEREASON` longtext COLLATE utf8mb4_unicode_ci,
  `FISRECWORK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOMPANYSIZE` int NOT NULL DEFAULT '0',
  `FINDUSTRYTYPEID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYNATUREID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUITREASONID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FANNUALSALARY` int NOT NULL DEFAULT '0',
  `FUNDERLINGNUMBER` int NOT NULL DEFAULT '0',
  `FREPORTOBJECT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FWITNESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPHONE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FISHITHERTO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWORKADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDUSTRYTYPETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYSIZETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYNATURETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNDERLINGNUMBERTXT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHOWLENGTHOFWORK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKACHIEVEMENT` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_ARFRSMWORKEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_arfrsmworkexp_r3 definition

CREATE TABLE `t_tstpm_arfrsmworkexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_attention definition

CREATE TABLE `t_tstpm_attention` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTRESUME` bigint NOT NULL DEFAULT '0',
  `FATTRESUMETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_ATTENTION_SID` (`FATTRESUME`),
  KEY `IDX_TSTPM_ATTENTION_FCREATORID` (`FCREATORID`),
  KEY `IDX_TSTPM_ATTENTION_TYPE` (`FATTRESUMETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_attention_r3 definition

CREATE TABLE `t_tstpm_attention_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_blacklist definition

CREATE TABLE `t_tstpm_blacklist` (
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
  KEY `IDX_TSTPM_BLACKLIST_FOBJID` (`FOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_blacklist_r3 definition

CREATE TABLE `t_tstpm_blacklist_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_busieventreltp_r3 definition

CREATE TABLE `t_tstpm_busieventreltp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_busieventreltpl definition

CREATE TABLE `t_tstpm_busieventreltpl` (
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
  KEY `IDX_TSTPM_BUSIEVENTRELTPL` (`FSOURCEENTITY`,`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_certificates_r3 definition

CREATE TABLE `t_tstpm_certificates_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_chedupentity definition

CREATE TABLE `t_tstpm_chedupentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBLOCK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBLOCKMARK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDMARK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_TSTPM_CHEDUPENTITY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_chedupruler definition

CREATE TABLE `t_tstpm_chedupruler` (
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
  KEY `IDX_TSTPM_CHEDUPRULER_BIZTYPE` (`FBIZTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_chedupruler_l definition

CREATE TABLE `t_tstpm_chedupruler_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSTPM_CHEDUPRULER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_chedupruler_r3 definition

CREATE TABLE `t_tstpm_chedupruler_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_eventrelhistpl definition

CREATE TABLE `t_tstpm_eventrelhistpl` (
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
  KEY `IDX_TSTPM_EVENTRELHISTPL` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_eventrelhistpl_r3 definition

CREATE TABLE `t_tstpm_eventrelhistpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_eventtpl definition

CREATE TABLE `t_tstpm_eventtpl` (
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
  KEY `IDX_TSTPM_EVENTTPL` (`FCANCELEDEVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_eventtpl_r3 definition

CREATE TABLE `t_tstpm_eventtpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_hobby definition

CREATE TABLE `t_tstpm_hobby` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSTPM_HOBBY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_laborrelstatus definition

CREATE TABLE `t_tstpm_laborrelstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTIME` datetime DEFAULT NULL,
  `FAPPLICATIONID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FQUITREASONID` bigint NOT NULL DEFAULT '0',
  `FQUITREASONTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSIVM_INTVERAPPLY_FAPPID` (`FAPPLICATIONID`),
  KEY `IDX_TSIVM_INTVERAPPLY_FRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_laborrelstatus_l definition

CREATE TABLE `t_tstpm_laborrelstatus_l` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSIVM_INTVERAPPLY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_laborrelstatus_r3 definition

CREATE TABLE `t_tstpm_laborrelstatus_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_msglog definition

CREATE TABLE `t_tstpm_msglog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEBO` bigint NOT NULL DEFAULT '0',
  `FUPDATERSMTIME` datetime DEFAULT NULL,
  `FSENDTIME` datetime DEFAULT NULL,
  `FMESSAGEID` bigint NOT NULL DEFAULT '0',
  `FSOURCEENTITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGSCENE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLATESTMSG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSENDRESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGCHANNEL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMSGCHANNELLIST` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_operaffairs definition

CREATE TABLE `t_tstpm_operaffairs` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSOURCEAPP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEENTITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATEUSER` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  `FEVENTCATEGORY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTSTATUS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rdelivery definition

CREATE TABLE `t_tstpm_rdelivery` (
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
  `FTPSYS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATANUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RDELIVERY_FAPPLY` (`FAPPLYTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rdelivery_a definition

CREATE TABLE `t_tstpm_rdelivery_a` (
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
  KEY `IDX_TSTPM_RDELIVERY_A` (`FEMAILSOURCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rdelivery_r3 definition

CREATE TABLE `t_tstpm_rdelivery_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_reservere definition

CREATE TABLE `t_tstpm_reservere` (
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
  KEY `IDX_TSTPM_RESERVERE_FTALPOOLID` (`FTALPOOLID`),
  KEY `IDX_TSTPM_RESERVERE_FSTDRSMID` (`FSTDRSMID`),
  KEY `IDX_TSTPM_RESERVERE_FISVALID` (`FISVALID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_reservere_r3 definition

CREATE TABLE `t_tstpm_reservere_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsm definition

CREATE TABLE `t_tstpm_rsm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPFILEID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FDELIVERYID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPHOTO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENDER` bigint NOT NULL DEFAULT '0',
  `FAGE` int NOT NULL DEFAULT '0',
  `FWORKINGYEARS` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FBIRTHDAY` datetime DEFAULT NULL,
  `FPROPBIRTHDAY` datetime DEFAULT NULL,
  `FPARTWT` datetime DEFAULT NULL,
  `FJOBSTATUSID` bigint NOT NULL DEFAULT '0',
  `FNATREGID` bigint NOT NULL DEFAULT '0',
  `FPHONE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHIGHESTEDUSCHOOLID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTDEGREEID` bigint NOT NULL DEFAULT '0',
  `FHESTSPECIALTYCATID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTSPECIALTY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRECENTCOMPANY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRECENTPOSITION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
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
  `FCVSTARTDATE` datetime DEFAULT NULL,
  `FCVENDINGDATE` datetime DEFAULT NULL,
  `FMARITALSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROCREATIONSTATUSID` bigint NOT NULL DEFAULT '0',
  `FEXPCJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FEXPCFUNCTIONID` bigint NOT NULL DEFAULT '0',
  `FEXPCCITYID` bigint NOT NULL DEFAULT '0',
  `FEXPCARRIVALDATE` datetime DEFAULT NULL,
  `FCERTIFICATENUMBER_ENP` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSM_APPFILE` (`FAPPFILEID`),
  KEY `IDX_TSTPM_RESUME_PHONE` (`FPHONE`),
  KEY `IDX_TSTPM_RESUME_EMAIL` (`FEMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsm_a definition

CREATE TABLE `t_tstpm_rsm_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRESUMESTOADD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRGSTPRMTRSDID` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIVEPLACEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTRESIDENCEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCOMPAGRRESTR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISCRIMRECD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISBUSCONFINTR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSELFEVALUATION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTORG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPTANLSALCURCID` bigint NOT NULL DEFAULT '0',
  `FEXPTANLSAL` int NOT NULL DEFAULT '0',
  `FEXPTMONSALCURCID` bigint NOT NULL DEFAULT '0',
  `FEXPTMONSAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
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
  `FTPSYS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATANUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIVEPLACETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPECTINDUSTRYID` bigint NOT NULL DEFAULT '0',
  `FOTHEXPECTINDUSTRY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGRADUATIONTIME` datetime DEFAULT NULL,
  `FRGSTPRMTRSDTXT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUTYP` bigint NOT NULL DEFAULT '0',
  `FCURMONSAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURMONSALCURC` bigint NOT NULL DEFAULT '0',
  `FEXPCCITYTXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSM_A` (`FCURANLSAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsm_r3 definition

CREATE TABLE `t_tstpm_rsm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmacdachv definition

CREATE TABLE `t_tstpm_rsmacdachv` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FPAPERTITLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFERENCECOUNT` int NOT NULL DEFAULT '0',
  `FAFLTJOURNAL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOURNALABBR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOURNALGRADE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOURNALCATEGORY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  KEY `IDX_TSTPM_RSMACDACHV` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmacdachv_l definition

CREATE TABLE `t_tstpm_rsmacdachv_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOURNALGRADE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOURNALCATEGORY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmacdachv_r3 definition

CREATE TABLE `t_tstpm_rsmacdachv_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmactvexp definition

CREATE TABLE `t_tstpm_rsmactvexp` (
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
  KEY `IDX_TSTPM_RSMACTVEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmactvexp_r3 definition

CREATE TABLE `t_tstpm_rsmactvexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmawrhon definition

CREATE TABLE `t_tstpm_rsmawrhon` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FAWARDNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FAWARDDATE` datetime DEFAULT NULL,
  `FAWARDINGUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAWARDDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSMAWRHON` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmawrhon_r3 definition

CREATE TABLE `t_tstpm_rsmawrhon_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmbankcard definition

CREATE TABLE `t_tstpm_rsmbankcard` (
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
  KEY `IDX_TSTPM_RSMBANKCARD_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmbankcard_r3 definition

CREATE TABLE `t_tstpm_rsmbankcard_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmeduexp definition

CREATE TABLE `t_tstpm_rsmeduexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFSTUDY` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FSCHOOLNAMEID` bigint NOT NULL DEFAULT '0',
  `FOTHSCHNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSPECIALTYCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FSPECIALTYNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
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
  `FISHITHERTO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSMEDUEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmeduexp_r3 definition

CREATE TABLE `t_tstpm_rsmeduexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmemrgctc definition

CREATE TABLE `t_tstpm_rsmemrgctc` (
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
  KEY `IDX_TSTPM_RSMEMRGCTC_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmemrgctc_r3 definition

CREATE TABLE `t_tstpm_rsmemrgctc_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmfmlmbr definition

CREATE TABLE `t_tstpm_rsmfmlmbr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FRELATIONWITHMEID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKUNIT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISOURSTAFF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSMFMLMBR` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmfmlmbr_r3 definition

CREATE TABLE `t_tstpm_rsmfmlmbr_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmhobby definition

CREATE TABLE `t_tstpm_rsmhobby` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSTPM_RSMHOBBY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmintegrity definition

CREATE TABLE `t_tstpm_rsmintegrity` (
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
  KEY `IDX_TSTPM_RSMINTEGRITY_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmintegrity_l definition

CREATE TABLE `t_tstpm_rsmintegrity_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSTPM_RSMINTEGRITY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmintegrity_r3 definition

CREATE TABLE `t_tstpm_rsmintegrity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsminterexp definition

CREATE TABLE `t_tstpm_rsminterexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FWORKUNIT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
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
  KEY `IDX_TSTPM_RSMINTEREXP` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsminterexp_r3 definition

CREATE TABLE `t_tstpm_rsminterexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmlabel definition

CREATE TABLE `t_tstpm_rsmlabel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJTYPEID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJID` bigint NOT NULL DEFAULT '0',
  `FLABELCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSMLABEL` (`FTAGOBJTYPEID`,`FTAGOBJID`,`FLABELID`),
  KEY `IDX_TSTPM_RSMLABEL_ID` (`FLABELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmlabel_r3 definition

CREATE TABLE `t_tstpm_rsmlabel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmlangabl definition

CREATE TABLE `t_tstpm_rsmlangabl` (
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
  `FOTHLANGUAGETYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERYDEGREEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSMLANGABL_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmlangabl_r3 definition

CREATE TABLE `t_tstpm_rsmlangabl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmpatinv definition

CREATE TABLE `t_tstpm_rsmpatinv` (
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
  KEY `IDX_TSTPM_STDPATINV_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmpatinv_r3 definition

CREATE TABLE `t_tstpm_rsmpatinv_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmperf definition

CREATE TABLE `t_tstpm_rsmperf` (
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
  KEY `IDX_TSTPM_RSMPERF_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmperf_r3 definition

CREATE TABLE `t_tstpm_rsmperf_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmprjexp definition

CREATE TABLE `t_tstpm_rsmprjexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FPROJECTDURATION` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBELONGSCOMPANY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPROJECTJOB` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPROJECTRESP` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTPERF` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTURL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISHITHERTO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSMPRJEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmprjexp_r3 definition

CREATE TABLE `t_tstpm_rsmprjexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmproskl definition

CREATE TABLE `t_tstpm_rsmproskl` (
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
  KEY `IDX_TSTPM_RSMPROSKL` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmproskl_r3 definition

CREATE TABLE `t_tstpm_rsmproskl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmrschprj definition

CREATE TABLE `t_tstpm_rsmrschprj` (
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
  KEY `IDX_TSTPM_RSMRSCHPRJ_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmrschprj_r3 definition

CREATE TABLE `t_tstpm_rsmrschprj_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmschjob definition

CREATE TABLE `t_tstpm_rsmschjob` (
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
  KEY `IDX_TSTPM_RSMSCHJOB_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmschjob_r3 definition

CREATE TABLE `t_tstpm_rsmschjob_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmsochp definition

CREATE TABLE `t_tstpm_rsmsochp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSOCIALHOMEPAGE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSMSOCHP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmsochp_r3 definition

CREATE TABLE `t_tstpm_rsmsochp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmtrnexp definition

CREATE TABLE `t_tstpm_rsmtrnexp` (
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
  KEY `IDX_TSTPM_RSMTRNEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmtrnexp_r3 definition

CREATE TABLE `t_tstpm_rsmtrnexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmvolexp definition

CREATE TABLE `t_tstpm_rsmvolexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FVOLEXP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSMVOLEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmvolexp_r3 definition

CREATE TABLE `t_tstpm_rsmvolexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmworkexp definition

CREATE TABLE `t_tstpm_rsmworkexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFWORK` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCOMPANYNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPOSITIONNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPOSCATID` bigint NOT NULL DEFAULT '0',
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FWORKRESPONSIBILITY` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKACHIEVEMENT` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISRECWORK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOMPANYSIZE` int NOT NULL DEFAULT '0',
  `FINDUSTRYTYPEID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYNATUREID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FQUITREASONID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FANNUALSALARY` int NOT NULL DEFAULT '0',
  `FUNDERLINGNUMBER` int NOT NULL DEFAULT '0',
  `FREPORTOBJECT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISHITHERTO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWORKADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOTHINDUSTRY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYSIZETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYNATURETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUITREASONTXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNDERLINGNUMBERTXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSMWORKEXP_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmworkexp_r3 definition

CREATE TABLE `t_tstpm_rsmworkexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmworkrela definition

CREATE TABLE `t_tstpm_rsmworkrela` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRSMID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_RSMWORKRELA_RSMID` (`FRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_rsmworkrela_r3 definition

CREATE TABLE `t_tstpm_rsmworkrela_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_sharer definition

CREATE TABLE `t_tstpm_sharer` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTALENTPOOLID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FSHARTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_SHAR_FUSERID` (`FUSERID`),
  KEY `IDX_TSTPM_SHAR_FTMPID` (`FTALENTPOOLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_sharerecord definition

CREATE TABLE `t_tstpm_sharerecord` (
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
  KEY `IDX_TSTPM_SHARERECORD` (`FBOID`,`FSHARERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_sharerecord_r3 definition

CREATE TABLE `t_tstpm_sharerecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdeduexp definition

CREATE TABLE `t_tstpm_stdeduexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFSTUDY` int NOT NULL DEFAULT '0',
  `FSCHOOLNAMEID` bigint NOT NULL DEFAULT '0',
  `FOTHSCHNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSPECIALTYCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FSPECIALTYNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
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
  `FISHITHERTO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_STDEDUEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdeduexp_r3 definition

CREATE TABLE `t_tstpm_stdeduexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdlangabl definition

CREATE TABLE `t_tstpm_stdlangabl` (
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
  `FOTHLANGUAGETYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERYDEGREEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_STDLANG_FSTDRSM` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdlangabl_r3 definition

CREATE TABLE `t_tstpm_stdlangabl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdprjexp definition

CREATE TABLE `t_tstpm_stdprjexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FPROJECTDURATION` int NOT NULL DEFAULT '0',
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBELONGSCOMPANY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPROJECTJOB` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPROJECTRESP` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTPERF` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTDESC` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTURL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISHITHERTO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_STDPRJEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdprjexp_r3 definition

CREATE TABLE `t_tstpm_stdprjexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdrelationwor_r3 definition

CREATE TABLE `t_tstpm_stdrelationwor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdrelationwork definition

CREATE TABLE `t_tstpm_stdrelationwork` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_STDRELATIONWORK_FSID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdrsm definition

CREATE TABLE `t_tstpm_stdrsm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FGENDER` bigint NOT NULL DEFAULT '0',
  `FAGE` int NOT NULL DEFAULT '0',
  `FWORKINGYEARS` int NOT NULL DEFAULT '0',
  `FPARTWT` datetime DEFAULT NULL,
  `FJOBSTATUSID` bigint NOT NULL DEFAULT '0',
  `FNATREGID` bigint NOT NULL DEFAULT '0',
  `FPHONE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHIGHESTEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTEDUSCHOOLID` bigint NOT NULL DEFAULT '0',
  `FHIGHESTSPECIALTY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRECENTCOMPANY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRECENTPOSITION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
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
  `FRGSTPRMTRSDID` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTRESIDENCEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  KEY `IDX_TSTPM_STDRSM_PHONE` (`FPHONE`),
  KEY `IDX_TSTPM_STDRSM_EMAIL` (`FEMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdrsm_a definition

CREATE TABLE `t_tstpm_stdrsm_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNATIVEPLACEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FCERTIFICATENUMBER_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FISRELATIONWORK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISCOMPEMP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FACCPLACECHANGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_STDRSM_A_PHONE` (`FHOMEPHONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdrsm_b definition

CREATE TABLE `t_tstpm_stdrsm_b` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FHISVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTPSYS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTPDATANUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FLOCATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIVEPLACETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPECTINDUSTRYID` bigint NOT NULL DEFAULT '0',
  `FOTHEXPECTINDUSTRY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGRADUATIONTIME` datetime DEFAULT NULL,
  `FRGSTPRMTRSDTXT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURMONSAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXPTMONSAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURMONSALCURC` bigint NOT NULL DEFAULT '0',
  `FEXPCCITYTXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_STDRSM_B_VERSION` (`FHISVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdrsm_r3 definition

CREATE TABLE `t_tstpm_stdrsm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdrsmlabel definition

CREATE TABLE `t_tstpm_stdrsmlabel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJTYPEID` bigint NOT NULL DEFAULT '0',
  `FTAGOBJID` bigint NOT NULL DEFAULT '0',
  `FLABELCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_STDRSMLABEL` (`FTAGOBJTYPEID`,`FTAGOBJID`,`FLABELID`),
  KEY `IDX_TSTPM_STDRSMLABEL_ID` (`FLABELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdrsmsimilar definition

CREATE TABLE `t_tstpm_stdrsmsimilar` (
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
  KEY `IDX_TSTPM_STDRSMSIMILAR_STD` (`FSTDRSMID`),
  KEY `IDX_TSTPM_STDRSMSIMILAR_DUP` (`FDUPLICATETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdrsmsimilar_r3 definition

CREATE TABLE `t_tstpm_stdrsmsimilar_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdrsmsyncdata_r3 definition

CREATE TABLE `t_tstpm_stdrsmsyncdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdworkexp definition

CREATE TABLE `t_tstpm_stdworkexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTDRSMID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDINGDATE` datetime DEFAULT NULL,
  `FLENGTHOFWORK` int NOT NULL DEFAULT '0',
  `FCOMPANYNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPOSITIONNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPOSCATID` bigint NOT NULL DEFAULT '0',
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FWORKRESPONSIBILITY` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKACHIEVEMENT` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISRECWORK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOMPANYSIZE` int NOT NULL DEFAULT '0',
  `FINDUSTRYTYPEID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYNATUREID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FQUITREASONID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FANNUALSALARY` int NOT NULL DEFAULT '0',
  `FUNDERLINGNUMBER` int NOT NULL DEFAULT '0',
  `FREPORTOBJECT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FJOBNATUREID` bigint NOT NULL DEFAULT '0',
  `FWITNESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPOSITION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWITNESSPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISHITHERTO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWORKADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOTHINDUSTRY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYSIZETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYNATURETXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUITREASONTXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNDERLINGNUMBERTXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TSTPM_STDWORKEXP_STDRSMID` (`FSTDRSMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_stdworkexp_r3 definition

CREATE TABLE `t_tstpm_stdworkexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_talentpoolmgt definition

CREATE TABLE `t_tstpm_talentpoolmgt` (
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
  KEY `IDX_TSTPM_TAL_FPARENTID` (`FPARENTID`),
  KEY `IDX_TSTPM_TAL_FLONGNUMBER` (`FLONGNUMBER`),
  KEY `IDX_TSTPM_TAL_FORGID` (`FORGID`),
  KEY `IDX_TSTPM_TAL_FRECRUTYPID` (`FRECRUTYPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_talentpoolmgt_l definition

CREATE TABLE `t_tstpm_talentpoolmgt_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSTPM_TALENTPOOLMGT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_talentpoolmgt_r3 definition

CREATE TABLE `t_tstpm_talentpoolmgt_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_tracerecord definition

CREATE TABLE `t_tstpm_tracerecord` (
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
  KEY `IDX_TSTPM_TRACERECORD_SID` (`FSTDRSMID`),
  KEY `IDX_TSTPM_TRACERECORD_STAID` (`FJOBSTATUSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_tracerecord_l definition

CREATE TABLE `t_tstpm_tracerecord_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_TSTPM_TRACERECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_tsc.t_tstpm_tracerecord_r3 definition

CREATE TABLE `t_tstpm_tracerecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
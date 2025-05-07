USE crrc_epm;

-- crrc_epm.t_bgm_prodetail definition

CREATE TABLE `t_bgm_prodetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPRODESCRIBE` varchar(255) NOT NULL DEFAULT ' ',
  `FDIM1` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM2` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM3` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM4` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM5` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM6` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM7` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM8` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM9` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM10` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM11` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM12` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM13` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM14` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM15` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID1` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID2` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID3` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID4` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID5` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID6` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID7` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID8` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID9` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID10` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID11` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID12` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID13` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID14` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMID15` varchar(100) NOT NULL DEFAULT ' ',
  `FPROAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNTUNIT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_BGM_PRODETAIL_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_bgm_projectapply definition

CREATE TABLE `t_bgm_projectapply` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FFISCALYEAE` bigint NOT NULL DEFAULT '0',
  `FAPPLYDATE` datetime DEFAULT NULL,
  `FNUMBER` varchar(30) NOT NULL DEFAULT ' ',
  `FUSERPHONE` varchar(50) NOT NULL DEFAULT ' ',
  `FCOMPANY` varchar(100) NOT NULL DEFAULT ' ',
  `FUSERDPT` varchar(100) NOT NULL DEFAULT ' ',
  `FPOSITION` varchar(100) NOT NULL DEFAULT ' ',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(5) NOT NULL DEFAULT ' ',
  `FAPPLIER` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCURTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEMODEL` bigint NOT NULL DEFAULT '0',
  `FMETABLE` varchar(2) NOT NULL DEFAULT ' ',
  `FHANDLER` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `INDEX_BGM_PROJECT_FUNMER` (`FNUMBER`),
  KEY `INDEX_BGM_PROJECT_FMODEL` (`FMODELID`,`FTEMPLATEMODEL`),
  KEY `INDEX_BGM_PROJECT_FTEMPLATE` (`FCURTEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_bgm_projectapply_r3 definition

CREATE TABLE `t_bgm_projectapply_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_bgmd_bizruletaxes definition

CREATE TABLE `t_bgmd_bizruletaxes` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FRULE` char(1) NOT NULL DEFAULT '0',
  `FTAXRATESHOW` varchar(100) NOT NULL DEFAULT ' ',
  `FENABLE` char(1) NOT NULL DEFAULT '1',
  `FTAXRATECACL` decimal(23,2) NOT NULL DEFAULT '0.00',
  `FOFFSET` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(510) NOT NULL DEFAULT ' ',
  `FAVTCASHFLOWACCOUNT` bigint NOT NULL DEFAULT '0',
  `FAVTPAYABLEACCOUNT` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_BGMD_BIZRULETAXES_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_bgmd_bizruletaxes_r3 definition

CREATE TABLE `t_bgmd_bizruletaxes_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_datalock definition

CREATE TABLE `t_bgmd_datalock` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSMODELID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAILID` bigint NOT NULL DEFAULT '0',
  `FREFSOURCE` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODINTEGER` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_BGMD_DATALOCK_P1` (`FYEARID`,`FVERSIONID`,`FDATATYPEID`,`FAUDITTRAILID`),
  KEY `IDX_BGMD_DATALOCK_P2` (`FMODELID`,`FBUSINESSMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_datalock_r3 definition

CREATE TABLE `t_bgmd_datalock_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_datalockcase definition

CREATE TABLE `t_bgmd_datalockcase` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSMODELID` bigint NOT NULL DEFAULT '0',
  `FENTITYVIEWID` bigint NOT NULL DEFAULT '0',
  `FDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_BGMD_DATALOCKCASE_P1` (`FMODELID`),
  KEY `IDX_BGMD_DATALOCKCASE_P2` (`FBUSINESSMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_datalockcase_at definition

CREATE TABLE `t_bgmd_datalockcase_at` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BGMD_DATALOCKCASE_AT_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_datalockcase_bp definition

CREATE TABLE `t_bgmd_datalockcase_bp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BGMD_DATALOCKCASE_BP_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_datalockcase_dt definition

CREATE TABLE `t_bgmd_datalockcase_dt` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BGMD_DATALOCKCASE_DT_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_datalockcase_r3 definition

CREATE TABLE `t_bgmd_datalockcase_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_datalockcase_v definition

CREATE TABLE `t_bgmd_datalockcase_v` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BGMD_DATALOCKCASE_V_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_datalockcasedet_r3 definition

CREATE TABLE `t_bgmd_datalockcasedet_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_datalockcasedetail definition

CREATE TABLE `t_bgmd_datalockcasedetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCASEID` bigint NOT NULL DEFAULT '0',
  `FENTITY` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIOD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_BGMD_DATALOCKCASEDETAIL_P1` (`FCASEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_planrule definition

CREATE TABLE `t_bgmd_planrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FTYPE` char(1) NOT NULL DEFAULT '0',
  `FCONFIRMRULE` char(1) NOT NULL DEFAULT '0',
  `FHELPDIMNUMBER` varchar(510) NOT NULL DEFAULT ' ',
  `FEARNINGACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FDEPOSITACCCOUNTID` bigint NOT NULL DEFAULT '0',
  `FCASHFLOWACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FCANCELLATIONACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FAVTTAXRULEID` bigint NOT NULL DEFAULT '0',
  `FAVTPAYABLEACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FAVTCASHFLOWACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FRULEFROM` char(1) NOT NULL DEFAULT '1',
  `FHELPDIMID` varchar(510) NOT NULL DEFAULT ' ',
  `FHELPDIMNAME` varchar(510) NOT NULL DEFAULT ' ',
  `FTAXINCLUSIVE` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_BGMD_PLANRULE_MODEL` (`FMODELID`),
  KEY `IDX_BGMD_PLANRULE_ACCOUNT` (`FACCOUNTID`,`FRULEFROM`,`FDATATYPEID`,`FVERSIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_bgmd_planrule_r3 definition

CREATE TABLE `t_bgmd_planrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_bgmd_planruleentity definition

CREATE TABLE `t_bgmd_planruleentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUSERDEFINED1` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED2` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED3` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED4` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED5` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED6` bigint NOT NULL DEFAULT '0',
  `FMONTHLYPERIOD` int NOT NULL DEFAULT '0',
  `FRATEPERIOD` int NOT NULL DEFAULT '0',
  `FRETEPERIODDETAIL` varchar(510) NOT NULL DEFAULT ' ',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_BGMD_PLANRULEENTITY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_accountdimension definition

CREATE TABLE `t_eb_accountdimension` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDEFINDIMSENSION` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_ACCTDIM` (`FDEFINDIMSENSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_accountmapping definition

CREATE TABLE `t_eb_accountmapping` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` bigint NOT NULL DEFAULT '0',
  `FENDDATE` bigint NOT NULL DEFAULT '0',
  `FSRCACCOUNT` bigint NOT NULL DEFAULT '0',
  `FTRGACCOUNT` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_ACCOUNTMAPPING_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_accountmetric definition

CREATE TABLE `t_eb_accountmetric` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FMETRIC` bigint NOT NULL DEFAULT '0',
  `FISTOPOLY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATABYTIME` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSKIP` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETRICDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHANGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_ACCOUNTMETRIC` (`FMETRIC`),
  KEY `IDX_EB_ACCOUNTMETRIC_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_accountrang definition

CREATE TABLE `t_eb_accountrang` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_ACCOUNTRANG` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_accountrelate definition

CREATE TABLE `t_eb_accountrelate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDIM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_ACCOUNT_RELATE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_accountruleformul_r3 definition

CREATE TABLE `t_eb_accountruleformul_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_accountruleformula definition

CREATE TABLE `t_eb_accountruleformula` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) NOT NULL DEFAULT ' ',
  `FDESCRIPTION_TAG` longtext,
  `FACCOUNT` bigint NOT NULL DEFAULT '0',
  `FMETRIC` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FFORMULA` varchar(510) NOT NULL DEFAULT ' ',
  `FFORMULA_TAG` longtext,
  `FSTATUS` char(1) NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FFORMULAPO` varchar(510) NOT NULL DEFAULT ' ',
  `FFORMULAPO_TAG` longtext,
  `FSEQUENCE` bigint NOT NULL DEFAULT '0',
  `FCATALOG` bigint NOT NULL DEFAULT '0',
  `FBILLLISTSELECT` longtext,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ACCOUNTRULEFORMULA` (`FACCOUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_accountruleformula_r3 definition

CREATE TABLE `t_eb_accountruleformula_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_adaptscope definition

CREATE TABLE `t_eb_adaptscope` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_ADAPTSCOPE_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_adjbillperiods definition

CREATE TABLE `t_eb_adjbillperiods` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `INDEX_T_EB_ADJBILLPERIODS_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_adjdetail definition

CREATE TABLE `t_eb_adjdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FACCOUNT` bigint NOT NULL DEFAULT '0',
  `FMETRIC` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM1` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM2` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM3` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM4` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM5` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM6` bigint NOT NULL DEFAULT '0',
  `FBUDGETDATA` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FADJUSTDATA` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINALDATA` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FADJEXPLAIN` varchar(255) NOT NULL DEFAULT ' ',
  `FGROUPNUM` varchar(10) NOT NULL DEFAULT ' ',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FORDERSIGN` varchar(30) NOT NULL DEFAULT ' ',
  `FBUDGETPERIOD` bigint NOT NULL DEFAULT '0',
  `FSUBMITVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCUSTOMDIM7` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM8` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM9` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM10` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM11` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM12` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM13` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM14` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM15` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM16` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM17` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM18` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM19` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM20` bigint NOT NULL DEFAULT '0',
  `FBUDGETBALANCE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDEFAULTBAILORG` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM21` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM22` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM23` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM24` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM25` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM26` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM27` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM28` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM29` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM30` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM31` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM32` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM33` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM34` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM35` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM36` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM37` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM38` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM39` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM40` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM41` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM42` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM43` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM44` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM45` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM46` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM47` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM48` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM49` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIM50` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `INDEX_EB_ADJDETAIL_FID` (`FID`),
  KEY `IDX_EB_ADJDETAIL_ENTITY` (`FENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_adjdimmember definition

CREATE TABLE `t_eb_adjdimmember` (
  `FID` bigint NOT NULL,
  `FENTRYID` bigint NOT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBASEDATATYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FMEMBERID` bigint DEFAULT NULL,
  `FRELATIONROWID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_adjdimmember_copy definition

CREATE TABLE `t_eb_adjdimmember_copy` (
  `FID` bigint NOT NULL,
  `FENTRYID` bigint NOT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBERID` bigint DEFAULT NULL,
  `FBASEDATATYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FRELATIONROWID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_adjustbill definition

CREATE TABLE `t_eb_adjustbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPE` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FAPPLYDATE` datetime DEFAULT NULL,
  `FDEALDATE` datetime DEFAULT NULL,
  `FADJUSTREASON` varchar(255) NOT NULL DEFAULT ' ',
  `FCOMPANY` bigint NOT NULL DEFAULT '0',
  `FPOSITION` varchar(100) NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(5) NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(5) NOT NULL DEFAULT ' ',
  `FAPPLIER` bigint NOT NULL DEFAULT '0',
  `FHANDLER` bigint NOT NULL DEFAULT '0',
  `FHANDLERTEXT` varchar(50) NOT NULL DEFAULT ' ',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FBGMCONTROLDIM` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FADJUSTRULE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `INDEX_EB_ADJUSTBILL_BILLNUM` (`FBILLNUMBER`),
  KEY `INDEX_EB_ADJUSTBILL_MODEL` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_adjustbill_bp definition

CREATE TABLE `t_eb_adjustbill_bp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_ADJUSTBILL_BP_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_adjustbill_r3 definition

CREATE TABLE `t_eb_adjustbill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_adjustproject definition

CREATE TABLE `t_eb_adjustproject` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FADJUSTNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADJENTITY` bigint NOT NULL DEFAULT '0',
  `FADJACCOUNT` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM1` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM2` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM3` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM4` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM5` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM6` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FMETRICID` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM7` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM8` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM9` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM10` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM11` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM12` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM13` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM14` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM15` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM16` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM17` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM18` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM19` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM20` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM21` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM22` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM23` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM24` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM25` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM26` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM27` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM28` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM29` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM30` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM31` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM32` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM33` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM34` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM35` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM36` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM37` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM38` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM39` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM40` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM41` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM42` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM43` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM44` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM45` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM46` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM47` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM48` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM49` bigint NOT NULL DEFAULT '0',
  `FADJCUSTOMDIM50` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ADJUSTPROJECT_MODEL` (`FMODEL`,`FADJUSTNAME`),
  KEY `IDX__EB_ADJUSTPROJECT_MODEL` (`FMODEL`,`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_adjustproject_l definition

CREATE TABLE `t_eb_adjustproject_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADJUSTNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_ADJUSTPROJECT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_adjustproject_r3 definition

CREATE TABLE `t_eb_adjustproject_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_adjustrule definition

CREATE TABLE `t_eb_adjustrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FRULECODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FASSIGNTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FUSERID` longtext COLLATE utf8mb4_unicode_ci,
  `FUSERNAME` longtext COLLATE utf8mb4_unicode_ci,
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPE` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FRULESTATE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_T_EB_ADJUSTRULE` (`FRULECODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_adjustrule_bp definition

CREATE TABLE `t_eb_adjustrule_bp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_ADJUSTRULE_BP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_adjustrule_detail definition

CREATE TABLE `t_eb_adjustrule_detail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDATASET` bigint NOT NULL DEFAULT '0',
  `FENTITY` longtext COLLATE utf8mb4_unicode_ci,
  `FADJENTITY` longtext COLLATE utf8mb4_unicode_ci,
  `FACCOUNT` longtext COLLATE utf8mb4_unicode_ci,
  `FADJACCOUNT` longtext COLLATE utf8mb4_unicode_ci,
  `FMETRIC` longtext COLLATE utf8mb4_unicode_ci,
  `FADJMETRIC` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM1` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM1` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM2` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM2` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM3` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM3` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM4` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM4` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM5` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM5` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM6` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM6` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM7` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM7` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM8` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM8` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM9` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM9` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM10` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM10` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM11` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM11` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM12` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM12` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM13` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM13` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM14` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM14` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM15` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM15` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM16` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM16` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM17` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM17` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM18` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM18` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM19` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM19` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM20` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM20` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM21` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM21` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM22` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM22` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM23` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM23` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM24` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM24` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM25` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM25` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM26` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM26` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM27` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM27` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM28` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM28` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM29` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM29` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM30` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM30` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM31` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM31` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM32` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM32` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM33` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM33` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM34` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM34` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM35` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM35` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM36` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM36` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM37` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM37` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM38` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM38` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM39` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM39` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM40` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM40` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM41` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM41` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM42` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM42` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM43` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM43` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM44` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM44` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM45` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM45` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM46` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM46` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM47` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM47` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM48` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM48` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM49` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM49` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOMDIM50` longtext COLLATE utf8mb4_unicode_ci,
  `FADJCUSTOMDIM50` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_EB_ADJUSTRULE_DETAIL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_adjustrule_r3 definition

CREATE TABLE `t_eb_adjustrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysereport definition

CREATE TABLE `t_eb_analysereport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDIMSJSON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRPTTEMPID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_REPORT_MODEL` (`FMODELID`),
  KEY `IDX_T_EB_REPORT_TEMPID` (`FRPTTEMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysereport_r3 definition

CREATE TABLE `t_eb_analysereport_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysereport_use_r3 definition

CREATE TABLE `t_eb_analysereport_use_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysereport_user definition

CREATE TABLE `t_eb_analysereport_user` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FREPORTID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FISREAD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_USER_MODEL` (`FMODELID`,`FISREAD`),
  KEY `IDX_T_EB_USER_REPORT` (`FREPORTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analyserpt_varval definition

CREATE TABLE `t_eb_analyserpt_varval` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FVARITEM` bigint NOT NULL DEFAULT '0',
  `FVARVALID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_EB_ANALYSERPT_VARVAL1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analyserpttemplat_r3 definition

CREATE TABLE `t_eb_analyserpttemplat_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analyserpttemplate definition

CREATE TABLE `t_eb_analyserpttemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_RPTTEMP_MODEL` (`FMODELID`,`FBIZMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analyserpttemplate_l definition

CREATE TABLE `t_eb_analyserpttemplate_l` (
  `FPKID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_RPTTEMP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysevardata definition

CREATE TABLE `t_eb_analysevardata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FRPTID` bigint NOT NULL DEFAULT '0',
  `FRPTNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRPTNAME` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARID` bigint NOT NULL DEFAULT '0',
  `FVARNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARKEY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATE` datetime DEFAULT NULL,
  `FVARVALUEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVARVALUEOTHER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALVARDATA_RPTID` (`FRPTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysevardata_r3 definition

CREATE TABLE `t_eb_analysevardata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysevarsel definition

CREATE TABLE `t_eb_analysevarsel` (
  `FRPTTEMPID` bigint NOT NULL DEFAULT '0',
  `FVARTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARID` bigint NOT NULL DEFAULT '0',
  `FVARKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_ALYVARSEL_FTMPID` (`FRPTTEMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysevarsel_r3 definition

CREATE TABLE `t_eb_analysevarsel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas definition

CREATE TABLE `t_eb_analysiscanvas` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FITEM` longtext COLLATE utf8mb4_unicode_ci,
  `FPAGE` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSHARE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `FMODEL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_bo_r3 definition

CREATE TABLE `t_eb_analysiscanvas_bo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_box definition

CREATE TABLE `t_eb_analysiscanvas_box` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSISCANVAS_BOX` (`FCANVASID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_ca_r3 definition

CREATE TABLE `t_eb_analysiscanvas_ca_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_cat definition

CREATE TABLE `t_eb_analysiscanvas_cat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_cate definition

CREATE TABLE `t_eb_analysiscanvas_cate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQUENCE` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSISCATE_CRTID` (`FCREATORID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_cate_l definition

CREATE TABLE `t_eb_analysiscanvas_cate_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_cm_r3 definition

CREATE TABLE `t_eb_analysiscanvas_cm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_cmp definition

CREATE TABLE `t_eb_analysiscanvas_cmp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSICMP_CVS` (`FCANVASID`),
  KEY `IDX_EB_ANALYSICMP_MD` (`FMODELID`),
  KEY `IDX_EB_ANALYSICMP_DS` (`FDATASETID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_cmp_d definition

CREATE TABLE `t_eb_analysiscanvas_cmp_d` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDATA` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_cmp_l definition

CREATE TABLE `t_eb_analysiscanvas_cmp_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_co_r3 definition

CREATE TABLE `t_eb_analysiscanvas_co_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_colle definition

CREATE TABLE `t_eb_analysiscanvas_colle` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  `FCATEID` bigint NOT NULL DEFAULT '0',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSISCOLLECT_CVS` (`FCANVASID`),
  KEY `IDX_EB_ANALYSISCOLLECT_CATE` (`FCATEID`),
  KEY `IDX_EB_ANALYSISCOLLECT_CRT` (`FCREATOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_comm definition

CREATE TABLE `t_eb_analysiscanvas_comm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FSANDBOXID` bigint NOT NULL DEFAULT '0',
  `FITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSISCANVAS_COMM` (`FCANVASID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_da_r3 definition

CREATE TABLE `t_eb_analysiscanvas_da_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_data definition

CREATE TABLE `t_eb_analysiscanvas_data` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSANBOXID` bigint NOT NULL DEFAULT '0',
  `FITEMID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSISCANVAS_DATA` (`FSANBOXID`),
  KEY `IDX_ANADATA_CANVAS` (`FCANVASID`),
  KEY `IDX_ANADATA_ITEM` (`FITEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_ds definition

CREATE TABLE `t_eb_analysiscanvas_ds` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASET` bigint NOT NULL DEFAULT '0',
  `FANALYSISCUBENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANALYSISCUBEID` bigint NOT NULL DEFAULT '0',
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  `FBSEQ` bigint NOT NULL DEFAULT '0',
  `FBOXID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSISCANVAS_DS` (`FCANVASID`),
  KEY `IDX_ANADS_DATASET` (`FDATASET`),
  KEY `IDX_ANADS_BOX` (`FBOXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_ds_r3 definition

CREATE TABLE `t_eb_analysiscanvas_ds_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_im_r3 definition

CREATE TABLE `t_eb_analysiscanvas_im_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_img definition

CREATE TABLE `t_eb_analysiscanvas_img` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCATEID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILEURL` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPICTUREFIELD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSISCANVAS_IMG` (`FCATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_qu_r3 definition

CREATE TABLE `t_eb_analysiscanvas_qu_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_quote definition

CREATE TABLE `t_eb_analysiscanvas_quote` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  `FIMAGEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ANAQUOTE_CANVAS` (`FCANVASID`),
  KEY `IDX_ANAQUOTE_IMAGE` (`FIMAGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_r3 definition

CREATE TABLE `t_eb_analysiscanvas_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_sh_r3 definition

CREATE TABLE `t_eb_analysiscanvas_sh_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_share definition

CREATE TABLE `t_eb_analysiscanvas_share` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  `FSHARERS` bigint NOT NULL DEFAULT '0',
  `FRECEIVER` bigint NOT NULL DEFAULT '0',
  `FLOOK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHAREDATE` datetime DEFAULT NULL,
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASON` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSISSHARE_CVS` (`FCANVASID`),
  KEY `IDX_EB_ANALYSISSHARE_SHS` (`FSHARERS`),
  KEY `IDX_EB_ANALYSISSHARE_RCV` (`FRECEIVER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_shrel definition

CREATE TABLE `t_eb_analysiscanvas_shrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  `FANCESTOR` bigint NOT NULL DEFAULT '0',
  `FDESCENDANT` bigint NOT NULL DEFAULT '0',
  `FDISTANCE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSICMP_SR` (`FCANVASID`),
  KEY `IDX_EB_ANALYSICMP_SRA` (`FANCESTOR`),
  KEY `IDX_EB_ANALYSICMP_SRD` (`FDESCENDANT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_us_r3 definition

CREATE TABLE `t_eb_analysiscanvas_us_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_user definition

CREATE TABLE `t_eb_analysiscanvas_user` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FDIMMEMBER` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMVIEW` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSISUSER_CVS` (`FCANVASID`),
  KEY `IDX_EB_ANALYSISUSER_MD` (`FMODELID`),
  KEY `IDX_EB_ANALYSISUSER_DS` (`FDATASETID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_va_r3 definition

CREATE TABLE `t_eb_analysiscanvas_va_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysiscanvas_var definition

CREATE TABLE `t_eb_analysiscanvas_var` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  `FITEMID` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLEJSON` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSISVAR_CVS` (`FCANVASID`),
  KEY `IDX_EB_ANALYSISVAR_ITM` (`FITEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysischart definition

CREATE TABLE `t_eb_analysischart` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCODE` varchar(50) NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FTYPE` char(1) NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FTHEMETYPEID` bigint NOT NULL DEFAULT '0',
  `FIMAGESRC` varchar(500) NOT NULL DEFAULT ' ',
  `FIMAGENAME` varchar(500) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ANALYSISCHARTCODE` (`FCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_analysischart_r3 definition

CREATE TABLE `t_eb_analysischart_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_analysischartacco_r3 definition

CREATE TABLE `t_eb_analysischartacco_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_analysischartaccount definition

CREATE TABLE `t_eb_analysischartaccount` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FRANGE` char(2) NOT NULL DEFAULT '10',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `INDEX_EB_CHARTACCOUNT` (`FACCOUNTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_analysischartaccount_r3 definition

CREATE TABLE `t_eb_analysischartaccount_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_analysisthemetype definition

CREATE TABLE `t_eb_analysisthemetype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `INDEX_ANALYSISTHEMETYPENAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_analysisthemetype_r3 definition

CREATE TABLE `t_eb_analysisthemetype_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_analyzeschemecols definition

CREATE TABLE `t_eb_analyzeschemecols` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '1',
  `FCOLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISCOLHIDDEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCOLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOLCONFIGJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_ANALYZESCHEMECOLS_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_announcement_cont_r3 definition

CREATE TABLE `t_eb_announcement_cont_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_announcement_content definition

CREATE TABLE `t_eb_announcement_content` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMNTSCHEME` bigint NOT NULL DEFAULT '0',
  `FTITLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUSHMESSAGECENTER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPUSHTIMEASSISTANT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSTANTPUSH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FREMIND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERFIELD` bigint NOT NULL DEFAULT '0',
  `FCREATERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATEFIELD` datetime DEFAULT NULL,
  `FCREATEDATEFIELD` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FSCHEMETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSENDMESSAGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISCLOSE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_announcement_content_l definition

CREATE TABLE `t_eb_announcement_content_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_ANNOUNCEMENT_CONTENT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applicationscenar_r3 definition

CREATE TABLE `t_eb_applicationscenar_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applicationscenario definition

CREATE TABLE `t_eb_applicationscenario` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPLICATIONSCENARIO_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applicationscenario_l definition

CREATE TABLE `t_eb_applicationscenario_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_APPLICATIONSCENARIO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applicationscenario_r3 definition

CREATE TABLE `t_eb_applicationscenario_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applyentitymap definition

CREATE TABLE `t_eb_applyentitymap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FADMINORG` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `idx_eb_applyentitymap_fk` (`FADMINORG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applyentitymap_r3 definition

CREATE TABLE `t_eb_applyentitymap_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applyschemeallot definition

CREATE TABLE `t_eb_applyschemeallot` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FRANGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXTNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPLYSCHEMEALLOT_p1` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applyschemeallot_r3 definition

CREATE TABLE `t_eb_applyschemeallot_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applyschemelist definition

CREATE TABLE `t_eb_applyschemelist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATETYPEID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSTATE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZCTRLRANGEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPLYSCHEMELIST_p1` (`FMODELID`,`FBIZCTRLRANGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applyschemelist_l definition

CREATE TABLE `t_eb_applyschemelist_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applyschemelist_r3 definition

CREATE TABLE `t_eb_applyschemelist_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applyschemereftemp definition

CREATE TABLE `t_eb_applyschemereftemp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTEMPLATEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applyschemevariable definition

CREATE TABLE `t_eb_applyschemevariable` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FVARIABLENUMBER` bigint NOT NULL DEFAULT '0',
  `FVARIABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLEJSONTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate definition

CREATE TABLE `t_eb_applytemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATETYPEID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATESTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCOMBOFIELD` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLARGETEXTFIELD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLARGETEXTFIELD_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FENTRYCFGJSON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENTRYCFGJSON_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FTEXTAREAFIELD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPLTE_FNUMBER` (`FNUMBER`),
  KEY `IDX_EB_APPLTE_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_atcfg definition

CREATE TABLE `t_eb_applytemplate_atcfg` (
  `FID` bigint NOT NULL,
  `FENTRYID` bigint NOT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAUDITTRAILMEMBERID` bigint DEFAULT NULL,
  `FAUDITTRAILUSE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTRAILMEMNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_cge definition

CREATE TABLE `t_eb_applytemplate_cge` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAPPLY_VIEWOPTION` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FAPPLY_ISAGGREGATION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOLUMNNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOLUMNKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOLUMNTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDIT_VIEWOPTION` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FAUDIT_ISAGGREGATION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDECOMPOSE_VIEWOPTION` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDECOMPOSE_ISAGGREGATION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUMMARY_VIEWOPTION` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSUMMARY_ISAGGREGATION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_APPLTE_FID` (`FID`),
  KEY `IDX_EB_APPLTE_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_col_r3 definition

CREATE TABLE `t_eb_applytemplate_col_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_colcfg definition

CREATE TABLE `t_eb_applytemplate_colcfg` (
  `FID` bigint NOT NULL,
  `FAPPLYTEMPLATEID` bigint DEFAULT NULL,
  `FAPPLYTEMPLATENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATOR` bigint DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  `FFORMTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEDITTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOLKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTRAILMEMID` bigint DEFAULT NULL,
  `FAUDITTRAILMEMNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FAGGREGATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_con_r3 definition

CREATE TABLE `t_eb_applytemplate_con_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_config definition

CREATE TABLE `t_eb_applytemplate_config` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSPLITCONFIG` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPLTE_CON_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_dim_r3 definition

CREATE TABLE `t_eb_applytemplate_dim_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_dimcfg definition

CREATE TABLE `t_eb_applytemplate_dimcfg` (
  `FID` bigint NOT NULL,
  `FCREATOR` bigint DEFAULT NULL,
  `FAPPLYTEMPLATEID` bigint DEFAULT NULL,
  `FAPPLYTEMPLATENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABLECFGID` bigint DEFAULT NULL,
  `FUSETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMID` bigint DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_l definition

CREATE TABLE `t_eb_applytemplate_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_APPLTEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_APPLTEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_r3 definition

CREATE TABLE `t_eb_applytemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_tbc_r3 definition

CREATE TABLE `t_eb_applytemplate_tbc_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplate_tbcfg definition

CREATE TABLE `t_eb_applytemplate_tbcfg` (
  `FID` bigint NOT NULL,
  `FCREATOR` bigint DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  `FAPPLYTEMPLATEID` bigint DEFAULT NULL,
  `FAPPLYTEMPLATENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABLENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCOLUMNJSON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplatelog definition

CREATE TABLE `t_eb_applytemplatelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FMODELBDID` bigint NOT NULL DEFAULT '0',
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPLOG_FNUMBER` (`FNUMBER`),
  KEY `IDX_EB_APPLOG_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplatelog_l definition

CREATE TABLE `t_eb_applytemplatelog_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_APPLOGL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_APPLOGL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_applytemplatelog_r3 definition

CREATE TABLE `t_eb_applytemplatelog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvalrelation definition

CREATE TABLE `t_eb_approvalrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUDGETORG` bigint NOT NULL DEFAULT '0',
  `FCENTRALSCHEMA` bigint NOT NULL DEFAULT '0',
  `FVALIDSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_EB_APPROVALRELATION` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvaltype definition

CREATE TABLE `t_eb_approvaltype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPROVALTYPE_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvaltype_l definition

CREATE TABLE `t_eb_approvaltype_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_APPROVALTYPE_L_P1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvaltype_r3 definition

CREATE TABLE `t_eb_approvaltype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvaltypeentit_r3 definition

CREATE TABLE `t_eb_approvaltypeentit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvaltypeentity definition

CREATE TABLE `t_eb_approvaltypeentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FAUDITTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDESC` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURDATAVERSION` bigint NOT NULL DEFAULT '0',
  `FCENTRALSPLIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPROVALTYPEENTITY_P1` (`FMODELID`),
  KEY `IDX_EB_APPROVALTYPEENTITY_P2` (`FBIZMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvaltypeentity_l definition

CREATE TABLE `t_eb_approvaltypeentity_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_APPROVALTYPEENTITY_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvaltypeentry definition

CREATE TABLE `t_eb_approvaltypeentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FENTITYRANGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `FAUDITTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATAVERSION` bigint NOT NULL DEFAULT '0',
  `FVIEWID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_APPROVALTYPEENTRY_P1` (`FID`),
  KEY `IDX_EB_APPROVALTYPEENTRY_P2` (`FTEMPLATEID`),
  KEY `IDX_EB_APPROVALTYPEENTRY_P3` (`FENTITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approve_adjdim definition

CREATE TABLE `t_eb_approve_adjdim` (
  `FID` bigint NOT NULL,
  `FENTRYID` bigint NOT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSION` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDIMMEMLEVEL` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCREATOR` bigint DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDIMENSIONNUM` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDIMENSIONID` bigint DEFAULT NULL,
  `FRANGETYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FORGREFERENCEFIELD` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBASEDATAID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDIMTYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FROWID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approve_adjdimcopy definition

CREATE TABLE `t_eb_approve_adjdimcopy` (
  `FID` bigint NOT NULL,
  `FENTRYID` bigint NOT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSION` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDIMMEMLEVEL` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDIMENSIONNUM` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDIMENSIONID` bigint DEFAULT NULL,
  `FCREATOR` bigint DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FRANGETYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDIMTYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBASEDATAID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDIMMEMBERID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FORGREFERENCEFIELD` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FROWID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approve_adjdimplan definition

CREATE TABLE `t_eb_approve_adjdimplan` (
  `FID` bigint NOT NULL,
  `FENTRYID` bigint NOT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCREATOR` bigint DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approve_auditor definition

CREATE TABLE `t_eb_approve_auditor` (
  `FID` bigint NOT NULL,
  `FENTRYID` bigint NOT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCREATOR` bigint DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FAUDITORTYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FAUDITORRANGE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FAUDITOR` bigint DEFAULT NULL,
  `FBILLORGKEY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FRELATIONTYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FAUDITORFIELDKEY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPERSON` bigint DEFAULT NULL,
  `FREFERENCEPERSON` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FRELATION` bigint DEFAULT NULL,
  `FWFROLE` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approve_centralized definition

CREATE TABLE `t_eb_approve_centralized` (
  `FID` bigint NOT NULL,
  `FENTRYID` bigint NOT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCENTRALIZEDSCHEME` bigint DEFAULT NULL,
  `FCREATOR` bigint DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approve_readrecor_r3 definition

CREATE TABLE `t_eb_approve_readrecor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approve_readrecord definition

CREATE TABLE `t_eb_approve_readrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEBILL` bigint NOT NULL DEFAULT '0',
  `FREPORTPROCESS` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPROVE_READRECORD_P1` (`FAPPROVEBILL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvebailorg definition

CREATE TABLE `t_eb_approvebailorg` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_APPROVEBAILORG` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvebill definition

CREATE TABLE `t_eb_approvebill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEBORGMASTERID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEINFO` varchar(2000) NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) NOT NULL DEFAULT '1',
  `FBILLTYPE` varchar(2) NOT NULL DEFAULT '0',
  `FEBORGID` bigint NOT NULL DEFAULT '0',
  `FAPPROVETEMPID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDIMDATATYPE` bigint NOT NULL DEFAULT '0',
  `FDIMYEAR` varchar(20) NOT NULL DEFAULT ' ',
  `FDIMPERIOD` varchar(10) NOT NULL DEFAULT ' ',
  `FDIMVERSION` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEDATE` datetime DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FHANDLER` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(100) NOT NULL DEFAULT ' ',
  `FAPPROVERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONJSON` longtext,
  `FDEALDATE` datetime DEFAULT NULL,
  `FHANDLERTEXT` varchar(20) NOT NULL DEFAULT ' ',
  `FAPPINDEXID` bigint NOT NULL DEFAULT '0',
  `FDIMPERIODNEW` bigint NOT NULL DEFAULT '0',
  `FDIMVERSIONNEW` bigint NOT NULL DEFAULT '0',
  `FAPPROVALTYPE` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FRPTPROCESSTYPE` char(1) NOT NULL DEFAULT '1',
  `FORGVIEWID` bigint NOT NULL DEFAULT '0',
  `FPOSITION` varchar(100) NOT NULL DEFAULT ' ',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FCOMMITTYPE` varchar(10) NOT NULL DEFAULT '1',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FSELECTORG` varchar(100) NOT NULL DEFAULT ' ',
  `FSOURCENAME` varchar(2000) NOT NULL DEFAULT ' ',
  `FPARENTBILLID` bigint NOT NULL DEFAULT '0',
  `FSORTVAL` bigint NOT NULL DEFAULT '0',
  `FCENTRALORG` bigint NOT NULL DEFAULT '0',
  `FCENTRALBAILORG` bigint NOT NULL DEFAULT '0',
  `FAUDITNODE` varchar(50) NOT NULL DEFAULT ' ',
  `FAUDITTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FCENTRALBILLTYPE` varchar(50) NOT NULL DEFAULT 'N',
  `FSPLITVERSION` int NOT NULL DEFAULT '0',
  `FAPPROVETYPEID` bigint NOT NULL DEFAULT '0',
  `FAPPROVETYPEVERSION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPROVEBILL_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_approvebill_r3 definition

CREATE TABLE `t_eb_approvebill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvebill_sortseq definition

CREATE TABLE `t_eb_approvebill_sortseq` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvebillbailorg definition

CREATE TABLE `t_eb_approvebillbailorg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBAILORG` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_APPROVEBILLBAILORG` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvebillentry definition

CREATE TABLE `t_eb_approvebillentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTEMPID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTASKPROCESSID` bigint NOT NULL DEFAULT '0',
  `FPAGEDIMJSON` longtext,
  `FTASKPROCESSJSON` longtext,
  `FAPPINDEXID` varchar(1) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_APPROVEBILLENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_approvebillschema definition

CREATE TABLE `t_eb_approvebillschema` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCENTRALSCHEMA` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_EB_APPROVEBILLSCHEMA` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvedesc definition

CREATE TABLE `t_eb_approvedesc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVEBILLID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPROVEDESC` (`FPROCESSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approveinforecord definition

CREATE TABLE `t_eb_approveinforecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRELATEID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEINFO` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUBMITTIME` datetime DEFAULT NULL,
  `FOTHERRELATEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPROVEINFORECORD` (`FRELATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approveinforecord_r3 definition

CREATE TABLE `t_eb_approveinforecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvelnote definition

CREATE TABLE `t_eb_approvelnote` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTASKPROID` bigint NOT NULL DEFAULT '0',
  `FMEMBERSKEY` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FRPTENTITYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_AUDIT_NOTE_MODEL` (`FMODELID`),
  KEY `IDX_AUDIT_TASKPRO` (`FTASKPROID`),
  KEY `IDX_AUDIT_RPTPRO` (`FRPTENTITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvelnote_r3 definition

CREATE TABLE `t_eb_approvelnote_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approverejectopin_r3 definition

CREATE TABLE `t_eb_approverejectopin_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approverejectopinion definition

CREATE TABLE `t_eb_approverejectopinion` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FMUSTREJECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FOPINION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITNODE` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FREJECTSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISCARD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREJECTNODE` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FISCURINSTANCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FREJECTUSER` bigint NOT NULL DEFAULT '0',
  `FREJECTTIME` datetime DEFAULT NULL,
  `FAPPROVEBILLID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPROVEREJECTOPINION` (`FPROCESSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approverejectopinion_tmp definition

CREATE TABLE `t_eb_approverejectopinion_tmp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FMUSTREJECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FOPINION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITNODE` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FISUSED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREJECTNODE` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FREJECTUSER` bigint NOT NULL DEFAULT '0',
  `FREJECTTIME` datetime DEFAULT NULL,
  `FAPPROVEBILLID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPROVEREJECTOPINION_TMP` (`FPROCESSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approverejectstatus definition

CREATE TABLE `t_eb_approverejectstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEBILLID` bigint NOT NULL DEFAULT '0',
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FISREJECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FREJECTUSER` bigint NOT NULL DEFAULT '0',
  `FREJECTTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APPROVEREJECTSTATUS` (`FAPPROVEBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvetempdim definition

CREATE TABLE `t_eb_approvetempdim` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_APPROVETEMPDIM_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_approvetempentry definition

CREATE TABLE `t_eb_approvetempentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FTEMPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_BGMD_APPROVEENTITY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_approvetemplate definition

CREATE TABLE `t_eb_approvetemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FCREATERFIELD` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FDIMENSIONRANG` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMENSION` longtext,
  `FSTATE` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_BGMD_PLANRULE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_approvetemplate_r3 definition

CREATE TABLE `t_eb_approvetemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_aptemplateformat definition

CREATE TABLE `t_eb_aptemplateformat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FTEXTFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOLUMNKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISHIDE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISFREEZE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_APTEMPLATEFORMAT_P1` (`FMODELID`),
  KEY `IDX_EB_APTEMPLATEFORMAT_P2` (`FAPPLYTEMPLATEID`),
  KEY `IDX_EB_APTEMPLATEFORMAT_P3` (`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_aptemplateformat_r3 definition

CREATE TABLE `t_eb_aptemplateformat_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bailorg definition

CREATE TABLE `t_eb_bailorg` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FBAILORGID` bigint NOT NULL DEFAULT '0',
  `FDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_BAILORG_P1` (`FBAILORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bailorg_entity definition

CREATE TABLE `t_eb_bailorg_entity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FORGVIEWID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BAILORG_ENTITY_P1` (`FMODELID`),
  KEY `IDX_EB_BAILORG_ENTITY_P2` (`FMODELID`,`FORGVIEWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bailorg_entity_r3 definition

CREATE TABLE `t_eb_bailorg_entity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_basecvtformula definition

CREATE TABLE `t_eb_basecvtformula` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  `FBALANCE` int NOT NULL DEFAULT '0',
  `FPROFITLOSS` int NOT NULL DEFAULT '0',
  `FRIGHTS` int NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEXCHAGERATEID` bigint NOT NULL DEFAULT '0',
  `FISAUTOCONVERT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BASECVTF_MODEL` (`FMODELID`,`FSCENARIOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_basecvtformula_r3 definition

CREATE TABLE `t_eb_basecvtformula_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_beginperioddims definition

CREATE TABLE `t_eb_beginperioddims` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BEGINPERIODDIMS` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_beginperioddims_r3 definition

CREATE TABLE `t_eb_beginperioddims_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgapplybill definition

CREATE TABLE `t_eb_bgapplybill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FBILLNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYDATE` datetime DEFAULT NULL,
  `FPROPOSER` bigint NOT NULL DEFAULT '0',
  `FMONEYUNIT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FAUDITOR` bigint NOT NULL DEFAULT '0',
  `FAPPLYSCHEME` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITPATH` longtext COLLATE utf8mb4_unicode_ci,
  `FCOLLECTORG` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELAPPBILLS` longtext COLLATE utf8mb4_unicode_ci,
  `FSRCBILLNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FAPPROVELEVEL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FREJECTADJTIME` datetime DEFAULT NULL,
  `FREJECTADJUSER` bigint DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `UX_EB_BGAPPLYBILL_NUMBER` (`FBILLNUMBER`),
  KEY `IDX_EB_BGAPPLYBILL_p1` (`FMODELID`,`FAPPLYSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgapplybill_r3 definition

CREATE TABLE `t_eb_bgapplybill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgapplyscheme definition

CREATE TABLE `t_eb_bgapplyscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FUSETIME` bigint NOT NULL DEFAULT '0',
  `FDEADLINE` datetime DEFAULT NULL,
  `FISCLOSED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTASKLISTID` bigint NOT NULL DEFAULT '0',
  `FTASKSEQ` bigint NOT NULL DEFAULT '0',
  `FTASKTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSCHEMELISTID` bigint NOT NULL DEFAULT '0',
  `FSCHEMESEQ` bigint NOT NULL DEFAULT '0',
  `FISACTIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BGAPPLYSCHEME_p1` (`FMODELID`,`FSCHEMELISTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgapplyscheme_l definition

CREATE TABLE `t_eb_bgapplyscheme_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgapplyscheme_r3 definition

CREATE TABLE `t_eb_bgapplyscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgconbizregdefaul_r3 definition

CREATE TABLE `t_eb_bgconbizregdefaul_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgconbizregdefault definition

CREATE TABLE `t_eb_bgconbizregdefault` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGFIELD` bigint NOT NULL DEFAULT '0',
  `FBILL` bigint NOT NULL DEFAULT '0',
  `FPERIODFIELD` bigint NOT NULL DEFAULT '0',
  `FAPPLICATION` bigint NOT NULL DEFAULT '0',
  `FFIELDTABLE` varchar(50) NOT NULL DEFAULT ' ',
  `FISMAPPING` char(1) DEFAULT '0',
  `FISMULTICONTROL` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BIZREGDEF_FFIELDTABLE` (`FFIELDTABLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgconbizregdefault_r3 definition

CREATE TABLE `t_eb_bgconbizregdefault_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgconprocessentry definition

CREATE TABLE `t_eb_bgconprocessentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBILL` bigint NOT NULL DEFAULT '0',
  `FAPPLICATION` bigint NOT NULL DEFAULT '0',
  `FTAKEOPERATION` varchar(255) NOT NULL DEFAULT ' ',
  `FTAKEVALUE` varchar(255) NOT NULL DEFAULT ' ',
  `FRUNOPERATION` varchar(255) NOT NULL DEFAULT ' ',
  `FRUNVALUE` varchar(255) NOT NULL DEFAULT ' ',
  `FRETURNOPERATION` varchar(255) NOT NULL DEFAULT ' ',
  `FCLEAROPERATION` varchar(255) NOT NULL DEFAULT ' ',
  `FTAKEOPERATIONCN` varchar(255) NOT NULL DEFAULT ' ',
  `FTAKEVALUECN` varchar(255) NOT NULL DEFAULT ' ',
  `FRUNOPERATIONCN` varchar(255) NOT NULL DEFAULT ' ',
  `FRUNVALUECN` varchar(255) NOT NULL DEFAULT ' ',
  `FRETURNOPERATIONCN` varchar(255) NOT NULL DEFAULT ' ',
  `FCLEAROPERATIONCN` varchar(255) NOT NULL DEFAULT ' ',
  `FISTHESAME` char(1) NOT NULL DEFAULT '1',
  `FWRITEOFFS` char(1) NOT NULL DEFAULT '0',
  `FWRITEOFFSFIELD` varchar(255) NOT NULL DEFAULT ' ',
  `FWRITEOFFSFIELDCN` varchar(255) NOT NULL DEFAULT ' ',
  `FWRITEOFFSCHEME` bigint NOT NULL DEFAULT '0',
  `FWRITEOFFSCHEMECN` varchar(50) NOT NULL DEFAULT ' ',
  `FSERQFILTER` longtext NOT NULL,
  `FCONDITION` varchar(200) NOT NULL DEFAULT ' ',
  `FPRIORITY` varchar(5) NOT NULL DEFAULT '4',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CONPRO_BILL` (`FBILL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolbizreg definition

CREATE TABLE `t_eb_bgcontrolbizreg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FFIELDALIAS` varchar(255) NOT NULL DEFAULT ' ',
  `FBIZSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FBIZSYSTEMALIAS` varchar(50) NOT NULL DEFAULT ' ',
  `FBIZUNITID` bigint NOT NULL DEFAULT '0',
  `FBIZUNITALIAS` varchar(50) NOT NULL DEFAULT ' ',
  `FFIELDTABLE` varchar(50) NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FTYPENAME` varchar(50) NOT NULL DEFAULT ' ',
  `FISENTRYFIELD` char(1) NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) NOT NULL DEFAULT '0',
  `FISPREFAB` char(1) NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FREFEREDSTATUS` char(1) NOT NULL DEFAULT '0',
  `FNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FVERSION` varchar(10) NOT NULL DEFAULT ' ',
  `FISFLEX` char(1) NOT NULL DEFAULT '0',
  `FVALUESOURCE` varchar(255) NOT NULL DEFAULT ' ',
  `FFLEXDATATABLE` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BGCONTROLBIZREG_SU` (`FBIZSYSTEMID`,`FBIZUNITID`),
  KEY `IDX_EB_BGCONTROLBIZREG_BILL` (`FFIELDTABLE`,`FISDEFAULT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolbizreg_l definition

CREATE TABLE `t_eb_bgcontrolbizreg_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(30) NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FVERSION` varchar(10) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BGCONTROLBIZREG_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolbizreg_r3 definition

CREATE TABLE `t_eb_bgcontrolbizreg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolcourse definition

CREATE TABLE `t_eb_bgcontrolcourse` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FLASTUPDATEUSERID` bigint NOT NULL DEFAULT '0',
  `FLASTUPDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BGCONTROLCOURSE` (`FORGUNITID`,`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolcourseentry definition

CREATE TABLE `t_eb_bgcontrolcourseentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCOURSEID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FENTITYALIAS` varchar(255) NOT NULL DEFAULT ' ',
  `FOCCUPATION` varchar(255) NOT NULL DEFAULT ' ',
  `FOCCUPATIONALIAS` varchar(255) NOT NULL DEFAULT ' ',
  `FOCCUPATIONVALUE` varchar(255) NOT NULL DEFAULT ' ',
  `FEXECUTE` varchar(255) NOT NULL DEFAULT ' ',
  `FEXECUTEALIAS` varchar(255) NOT NULL DEFAULT ' ',
  `FEXECUTEVALUE` varchar(255) NOT NULL DEFAULT ' ',
  `FRETURN` varchar(255) NOT NULL DEFAULT ' ',
  `FRETURNALIAS` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BGCONTROLCOURSEENTRY` (`FCOURSEID`,`FENTITYNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolindex definition

CREATE TABLE `t_eb_bgcontrolindex` (
  `FENTITYNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABLE` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fid` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `IX_EB_BGCONTROLINDEX` (`FENTITYNUMBER`,`FBIZID`,`FTABLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgcontrollogdetail definition

CREATE TABLE `t_eb_bgcontrollogdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FLOGS` longblob,
  PRIMARY KEY (`FID`),
  KEY `IX_EB_BGCONTROLLD_TM` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgcontroloperlog definition

CREATE TABLE `t_eb_bgcontroloperlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FBILLID` varchar(50) NOT NULL DEFAULT ' ',
  `FBILLNUMBER` varchar(80) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(50) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FCONTROLPARAMS` longtext,
  `FPARAMS` char(1) NOT NULL DEFAULT '0',
  `FHASLOGS` char(1) NOT NULL DEFAULT '0',
  `FISSHOW` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IX_EB_BGCONTROLOPERLOG` (`FBILLID`,`FENTITYNUMBER`,`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontroloperlog_r3 definition

CREATE TABLE `t_eb_bgcontroloperlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolprocess definition

CREATE TABLE `t_eb_bgcontrolprocess` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FENABLE` char(1) NOT NULL DEFAULT '1',
  `FORG` varchar(255) NOT NULL DEFAULT ' ',
  `FORG_TAG` longtext,
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFIERTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BGCONPROCESS_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolprocess_l definition

CREATE TABLE `t_eb_bgcontrolprocess_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BGCONTROLPROCESS_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgcontrolprocess_r3 definition

CREATE TABLE `t_eb_bgcontrolprocess_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolprocesso_r3 definition

CREATE TABLE `t_eb_bgcontrolprocesso_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgcontrolprocessorg definition

CREATE TABLE `t_eb_bgcontrolprocessorg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FCONTROLPROCESS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONPROORG` (`FORG`),
  KEY `IDX_EB_CONPRO_SETTING` (`FCONTROLPROCESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolprocessorg_r3 definition

CREATE TABLE `t_eb_bgcontrolprocessorg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolrecord definition

CREATE TABLE `t_eb_bgcontrolrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(80) NOT NULL DEFAULT ' ',
  `FBIZNUMBER` varchar(80) NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(80) NOT NULL DEFAULT ' ',
  `FREQORGUNITID` bigint NOT NULL DEFAULT '0',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FREQACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAILID` bigint NOT NULL DEFAULT '0',
  `FICID` bigint NOT NULL DEFAULT '0',
  `FCTID` bigint NOT NULL DEFAULT '0',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID1` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID2` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID3` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID4` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID5` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID6` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID7` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID8` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID9` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID10` bigint NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FRULEID` bigint NOT NULL DEFAULT '0',
  `FREFBIZID` varchar(80) NOT NULL DEFAULT ' ',
  `FBIZID` varchar(80) NOT NULL DEFAULT ' ',
  `FMETRICID` bigint NOT NULL DEFAULT '0',
  `FBGPERIODID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FOCCPERIODID` bigint NOT NULL DEFAULT '0',
  `FOCCTYPE` varchar(80) NOT NULL DEFAULT ' ',
  `FBGMEMBERJSON` varchar(1000) NOT NULL DEFAULT ' ',
  `FREQUESTID` varchar(50) NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BGCONTROLRECORD` (`FMODELID`,`FORGUNITID`,`FACCOUNTID`,`FYEARID`,`FPERIODID`),
  KEY `IDX_EB_BGCONTROLRECORD_SETID` (`FRULEID`),
  KEY `IDX_EB_BGCONTROLRECORD_REFBIZ` (`FREFBIZID`),
  KEY `IDX_EB_BGCONTROLRECORD_BIZID` (`FBIZID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolrecord_r3 definition

CREATE TABLE `t_eb_bgcontrolrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolrule definition

CREATE TABLE `t_eb_bgcontrolrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  `FCOEFFICIENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISBEYOND` char(1) NOT NULL DEFAULT '1',
  `FRANGE` varchar(5) NOT NULL DEFAULT ' ',
  `FPERIODCLASSIFY` varchar(5) NOT NULL DEFAULT ' ',
  `FCONTROLTYPE` varchar(5) NOT NULL DEFAULT ' ',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FUSERDEFINEDID1` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID2` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID3` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID4` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID5` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID6` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` char(1) NOT NULL DEFAULT '1',
  `FACCOUNT` bigint NOT NULL DEFAULT '0',
  `FPROJECT` bigint NOT NULL DEFAULT '0',
  `FISCONTAINLEAF1` char(1) NOT NULL DEFAULT '0',
  `FISCONTAINLEAF2` char(1) NOT NULL DEFAULT '0',
  `FISCONTAINLEAF3` char(1) NOT NULL DEFAULT '0',
  `FISCONTAINLEAF4` char(1) NOT NULL DEFAULT '0',
  `FISCONTAINLEAF5` char(1) NOT NULL DEFAULT '0',
  `FISCONTAINLEAF6` char(1) NOT NULL DEFAULT '0',
  `FISCONTAINLEAF_Q` char(1) NOT NULL DEFAULT '0',
  `FISCONTAINLEAF_P` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BGCONTROLRULE` (`FMODELID`,`FORGUNITID`,`FACCOUNT`,`FBEGINTIME`,`FENDTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolscheme definition

CREATE TABLE `t_eb_bgcontrolscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FBIZSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FBIZSYSTEMALIAS` varchar(50) NOT NULL DEFAULT ' ',
  `FBIZUNITID` bigint NOT NULL DEFAULT '0',
  `FBIZUNITALIAS` varchar(50) NOT NULL DEFAULT ' ',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDISCRIPTION` longtext,
  `FCREATEOR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FLASTUPDATEUSERID` bigint NOT NULL DEFAULT '0',
  `FLASTUPDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BGCONTROLSCHEME` (`FMODELID`,`FBIZUNITID`,`FORGUNITID`,`FBEGINTIME`,`FENDTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgcontrolschemeentry definition

CREATE TABLE `t_eb_bgcontrolschemeentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FORGUNIT` varchar(255) NOT NULL DEFAULT ' ',
  `FORGUNITALIAS` varchar(255) NOT NULL DEFAULT ' ',
  `FACCOUNT` varchar(255) NOT NULL DEFAULT ' ',
  `FACCOUNTALIAS` varchar(255) NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(255) NOT NULL DEFAULT ' ',
  `FCURRENCYALIAS` varchar(255) NOT NULL DEFAULT ' ',
  `FHASMAPPING` char(1) NOT NULL DEFAULT '0',
  `FLIMIT` longtext,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BGCONTROLSCHEMEENTRY` (`FSCHEMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bgdecompose definition

CREATE TABLE `t_eb_bgdecompose` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBILLNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBGAPPLYSCHEME` bigint NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FMONEYUNIT` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FDECOMPOSEPERSON` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECOMPOSESCHEME` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITOR` bigint NOT NULL DEFAULT '0',
  `FSPLITSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECPSTEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECPDATAS` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISFIRSTSTEP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDECPPATH` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLSPLITORG` longtext COLLATE utf8mb4_unicode_ci,
  `FSPLITORG` bigint NOT NULL DEFAULT '0',
  `fprebillid` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `UX_EB_BGDECOMPOSE_NUMBER` (`FBILLNUMBER`),
  KEY `IDX_EB_BGDECOMPOSE_FMODELID` (`FMODELID`,`FBGAPPLYSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgmcontroldimensi_r3 definition

CREATE TABLE `t_eb_bgmcontroldimensi_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bgmcontroldimension definition

CREATE TABLE `t_eb_bgmcontroldimension` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBASEDATAFIELD` bigint NOT NULL DEFAULT '0',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERTIME` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCONTROLDIM` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGRANGE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BGMCONTROLDIMENSION` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_billrejectconfig definition

CREATE TABLE `t_eb_billrejectconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FENTITIYTEXT` longtext COLLATE utf8mb4_unicode_ci,
  `FACCOUNTTEXT` longtext COLLATE utf8mb4_unicode_ci,
  `FREJECTUSER` bigint NOT NULL DEFAULT '0',
  `FMEMBERJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BILLREJECTCONFIG_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_billrejectconfig_r3 definition

CREATE TABLE `t_eb_billrejectconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_billrejectlog definition

CREATE TABLE `t_eb_billrejectlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSPBILLNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBHBILLNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FDATAJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FAFTERDATAJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FSUMMARYDATAJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FREJECTSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREJECTTXT` longtext COLLATE utf8mb4_unicode_ci,
  `FREJECTUSER` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYROWDATAJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FAFTERMODIFYROWIDJSON` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FAFTERMODIFYROWDATAJSON` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BILLREJECTLOG_P1` (`FSPBILLNUMBER`),
  KEY `IDX_EB_BILLREJECTLOG_P2` (`FBHBILLNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_billrejectlog_detail definition

CREATE TABLE `t_eb_billrejectlog_detail` (
  `FID` bigint NOT NULL,
  `FENTRYID` bigint NOT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMODIFYROWDATAJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FAFTERMODIFYROWDATAJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FMODIFYROWDATAJSONNEW` longtext COLLATE utf8mb4_unicode_ci,
  `FISUPDATE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_billrejectlog_r3 definition

CREATE TABLE `t_eb_billrejectlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizmodel definition

CREATE TABLE `t_eb_bizmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BIZMODEL_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrule definition

CREATE TABLE `t_eb_bizrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FPROCESSCATALOG` bigint NOT NULL DEFAULT '0',
  `FGENERATE` varchar(50) NOT NULL DEFAULT ' ',
  `FCATALOGID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) NOT NULL DEFAULT '1',
  `FCONTENT` longtext,
  `FEXECUTESEQ` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BIZRULE_CATALOG` (`FMODELID`,`FCATALOGID`),
  KEY `IDX_EB_BIZRULE_CATA` (`FSTATUS`,`FCATALOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bizrule_r3 definition

CREATE TABLE `t_eb_bizrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_bizrulebroaddist_r3 definition

CREATE TABLE `t_eb_bizrulebroaddist_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulecallog definition

CREATE TABLE `t_eb_bizrulecallog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FINFO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BIZRULECALLOG` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulecallog_r3 definition

CREATE TABLE `t_eb_bizrulecallog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulecatalog definition

CREATE TABLE `t_eb_bizrulecatalog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FISSYSTEM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BRCATA_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulecatalog_l definition

CREATE TABLE `t_eb_bizrulecatalog_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BRC_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulecatalog_r3 definition

CREATE TABLE `t_eb_bizrulecatalog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulechangeacc definition

CREATE TABLE `t_eb_bizrulechangeacc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FRULEID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FEXECSEQ` int NOT NULL DEFAULT '0',
  `FSOURCETEMPLATE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BIZRULECHANGEACC_P1` (`FTEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulechangeacc_r3 definition

CREATE TABLE `t_eb_bizrulechangeacc_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruledimfilter definition

CREATE TABLE `t_eb_bizruledimfilter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BIZRULEDIMFILTER_P1` (`FMODELID`,`FDATASETID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruledimfilter_con definition

CREATE TABLE `t_eb_bizruledimfilter_con` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMMEMBER` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_BIZRULEDIMFILTER_CON_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruledimfilter_rb definition

CREATE TABLE `t_eb_bizruledimfilter_rb` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BIZRULEDIMFILTER_RB_P1` (`FID`,`FACCOUNTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruledistempbys_r3 definition

CREATE TABLE `t_eb_bizruledistempbys_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruleformulaacc definition

CREATE TABLE `t_eb_bizruleformulaacc` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FMEMBERKEY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FRULEID` bigint NOT NULL DEFAULT '0',
  `FDIMENSTIONJSONFIX` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDIMENSTIONJSONVAR` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FISLEFT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FAGGTYPE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BIZRULEACC_ACCID` (`FACCOUNTID`),
  KEY `IDX_EB_BIZRULEACC_P1` (`FRULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruleformulaacc_r3 definition

CREATE TABLE `t_eb_bizruleformulaacc_r3` (
  `fpkid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fpkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruleglobal definition

CREATE TABLE `t_eb_bizruleglobal` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FVERSION` int NOT NULL DEFAULT '0',
  `FGLOBALENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BIZRULEGLO_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruleglobal_r3 definition

CREATE TABLE `t_eb_bizruleglobal_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulegroup definition

CREATE TABLE `t_eb_bizrulegroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FAPPLICATIONSCENARIO` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BIZRULEGROUP_MO` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulegroup_l definition

CREATE TABLE `t_eb_bizrulegroup_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BIZRULEGROUP_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulegroup_r3 definition

CREATE TABLE `t_eb_bizrulegroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulegroupdis definition

CREATE TABLE `t_eb_bizrulegroupdis` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FRULEID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FDATACUBE` bigint NOT NULL DEFAULT '0',
  `FEXECSEQAUTO` int NOT NULL DEFAULT '0',
  `FEXECSEQHANDLE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BIZRULEGROUPDIS_MO` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulegroupdis_r3 definition

CREATE TABLE `t_eb_bizrulegroupdis_r3` (
  `fpkid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fpkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruleoptimize definition

CREATE TABLE `t_eb_bizruleoptimize` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FONEDIMTHRESHOLD` int NOT NULL DEFAULT '0',
  `FALLDIMTHRESHOLD` int NOT NULL DEFAULT '0',
  `FMAXSCOPEVALUE` int NOT NULL DEFAULT '0',
  `FCALCSWITCH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_BIZRULEOPTIMIZE_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruleoptimize_r3 definition

CREATE TABLE `t_eb_bizruleoptimize_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulerelation definition

CREATE TABLE `t_eb_bizrulerelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FFATHERRULEID` bigint NOT NULL DEFAULT '0',
  `FSONRULEID` bigint NOT NULL DEFAULT '0',
  `FAPPSCENARIO` bigint NOT NULL DEFAULT '0',
  `FSONRULEMEMBERKEY` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BIZRULERELATION_MO` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulerelation_r3 definition

CREATE TABLE `t_eb_bizrulerelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulerptcalresult definition

CREATE TABLE `t_eb_bizrulerptcalresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTEMPID` bigint NOT NULL DEFAULT '0',
  `FRULEGROUPID` bigint NOT NULL DEFAULT '0',
  `FCELLKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULEID` bigint NOT NULL DEFAULT '0',
  `FLEFTRULE` bigint NOT NULL DEFAULT '0',
  `FDATASET` bigint NOT NULL DEFAULT '0',
  `FCELLDIMSCOPE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSAVEDATE` datetime DEFAULT NULL,
  `FHANDDATE` datetime DEFAULT NULL,
  `FSAVESEQ` int NOT NULL DEFAULT '0',
  `FEXECSEQ` int NOT NULL DEFAULT '0',
  `FCALMETHOD` int NOT NULL DEFAULT '0',
  `FOLAPDIMSCOPE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FOLAPVALUE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BIZRULERPTCALRESULT_P1` (`FCELLKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruleset definition

CREATE TABLE `t_eb_bizruleset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FUSESCOPE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FFORMULASTRING` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FFORMULASHOW` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMETRICID` bigint NOT NULL DEFAULT '0',
  `FEXECUTERANGE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMDXLEFT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMDXRIGHT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FPERIODOFFSET` longtext COLLATE utf8mb4_unicode_ci,
  `FAPPLICATIONSCENARIO` bigint NOT NULL DEFAULT '0',
  `FBROADFLAG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBROADCASE` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FRULETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOPTIMIZE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUCCESSORS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FOFFSETSUCCESSORS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FBIZCTRLRANGEID` bigint NOT NULL DEFAULT '0',
  `FINDEX` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEFTMEMBERID` bigint NOT NULL DEFAULT '0',
  `FMAINDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELS` longtext COLLATE utf8mb4_unicode_ci,
  `FDESCRIPTION` longtext COLLATE utf8mb4_unicode_ci,
  `FGROUPNUM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMULASTRINGFORPARSE` longtext COLLATE utf8mb4_unicode_ci,
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FRULEBATCH` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BIZRULESET_MODEL` (`FMODEL`),
  KEY `IDX_EB_RULE_BIZCTRLRANGEID` (`FBIZCTRLRANGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruleset_entry definition

CREATE TABLE `t_eb_bizruleset_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FREFBIZRULE` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_BIZRULESET_ENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruleset_r3 definition

CREATE TABLE `t_eb_bizruleset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizrulesetref definition

CREATE TABLE `t_eb_bizrulesetref` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FREFDIMENSION` bigint NOT NULL DEFAULT '0',
  `FREFMEMBER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_BIZRULESETREF_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruletemplatedi_r3 definition

CREATE TABLE `t_eb_bizruletemplatedi_r3` (
  `fpkid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fpkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruletemplatedis definition

CREATE TABLE `t_eb_bizruletemplatedis` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FEXECSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BIZRULETEMPLATEDIS` (`FTEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruletemplatedis_r3 definition

CREATE TABLE `t_eb_bizruletemplatedis_r3` (
  `fpkid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fpkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_bizruleversion_r3 definition

CREATE TABLE `t_eb_bizruleversion_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_brallocateentity definition

CREATE TABLE `t_eb_brallocateentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FEXECSEQ` int NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATETYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FCATALOGID` bigint NOT NULL DEFAULT '0',
  `FEXECUTETYPE` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BRALLOCATEENTITY_RULE` (`FCATALOGID`),
  KEY `IDX_EB_BRALLOCATEENTITY_TEM` (`FTEMPLATEID`,`FEXECUTETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_brallocateentity_r3 definition

CREATE TABLE `t_eb_brallocateentity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_brexecinfo definition

CREATE TABLE `t_eb_brexecinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZRULEID` bigint NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FEXECSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXECUTORID` bigint NOT NULL DEFAULT '0',
  `FREASON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSCENARIO` bigint NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FBIZRULECATALOG` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXECINFO_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_brexecinfo_r3 definition

CREATE TABLE `t_eb_brexecinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_broadcase definition

CREATE TABLE `t_eb_broadcase` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FCONTROLDIMENSION` bigint NOT NULL DEFAULT '0',
  `FCREATERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FIGNOREAGG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BROADCASE_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_broadcase_l definition

CREATE TABLE `t_eb_broadcase_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BROADCASE_L_P1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_broadcase_r3 definition

CREATE TABLE `t_eb_broadcase_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_broadcastmapping definition

CREATE TABLE `t_eb_broadcastmapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSOURCERANGE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEMEMBER` bigint NOT NULL DEFAULT '0',
  `FSOURCELONGNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCENUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETMEMBER` bigint NOT NULL DEFAULT '0',
  `FTARGETLONGNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_BRCASTMAP_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_businessmodel definition

CREATE TABLE `t_eb_businessmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FRELATIONDATE` datetime DEFAULT NULL,
  `FRELATIONSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BUSINESSMODEL_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_businessmodel_l definition

CREATE TABLE `t_eb_businessmodel_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BUSINESSMODEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_businessmodel_r3 definition

CREATE TABLE `t_eb_businessmodel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_businessrelationl_r3 definition

CREATE TABLE `t_eb_businessrelationl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_businessrelationlog definition

CREATE TABLE `t_eb_businessrelationlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSMODEL` bigint NOT NULL DEFAULT '0',
  `FDATASET` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDSET` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FERRORINFO` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_BUSINESSRELATIONLOG` (`FBUSINESSMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centraladjscheme definition

CREATE TABLE `t_eb_centraladjscheme` (
  `FID` bigint NOT NULL,
  `FNAME` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATOR` bigint DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  `FMODIFYDATEFIELD` datetime DEFAULT NULL,
  `FBUSINESSMODELID` bigint DEFAULT NULL,
  `FMODELID` bigint DEFAULT NULL,
  `FMAINMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centraladjscheme_r3 definition

CREATE TABLE `t_eb_centraladjscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappadj_entity definition

CREATE TABLE `t_eb_centralappadj_entity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCOLKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOLTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDIMRANGE` longtext COLLATE utf8mb4_unicode_ci,
  `FPREADJUST` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFTERADJUST` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMRANGEHASH` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CENTRALAPPADJ_ENTITY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappadjentity definition

CREATE TABLE `t_eb_centralappadjentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FREPORTBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FDIM1` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM2` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM3` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM4` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMRANGE` longtext COLLATE utf8mb4_unicode_ci,
  `FADJUSTREPORT1` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FADJUSTREPORT2` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FADJUSTREPORT3` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FADJUSTREPORT4` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUGGESTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVER` bigint NOT NULL DEFAULT '0',
  `FAPPROVEDATE` datetime DEFAULT NULL,
  `FORG` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CENTRALAPPADJENT_FENID` (`FID`,`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappadjreco_r3 definition

CREATE TABLE `t_eb_centralappadjreco_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappadjrecord definition

CREATE TABLE `t_eb_centralappadjrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDIM1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM3` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM4` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM5` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM6` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM7` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM8` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM9` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM10` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM11` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM12` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM13` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM14` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM15` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM16` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM17` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM18` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVEPLANS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCENTRALSCHEMES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVER` bigint NOT NULL DEFAULT '0',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FAPPROVEDATE` datetime DEFAULT NULL,
  `FADJUSTTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `ftemplate` bigint NOT NULL DEFAULT '0',
  `FREJECTBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CENTRALAPPADJREC_FNO` (`FAPPROVEBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappbill definition

CREATE TABLE `t_eb_centralappbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FCENTRALAPPPLAN` longtext COLLATE utf8mb4_unicode_ci,
  `FCENTRALPROCESSPLAN` longtext COLLATE utf8mb4_unicode_ci,
  `FENTITYTEXT` longtext COLLATE utf8mb4_unicode_ci,
  `FCENTRALENTITYTEXT` longtext COLLATE utf8mb4_unicode_ci,
  `FDEALER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FAUDITOR` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FSOURCEBILLNOTEXT` longtext COLLATE utf8mb4_unicode_ci,
  `FADMINORG` longtext COLLATE utf8mb4_unicode_ci,
  `FREPORTSCHEME` bigint NOT NULL DEFAULT '0',
  `FREPORTENTITY` bigint NOT NULL DEFAULT '0',
  `FAPPROVEORGID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURNODE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `UX_EB_CENTRALAPPBILL_NUMBER` (`FBILLNO`),
  KEY `IDX_EB_CENAPPBILL_FNUM` (`FBILLNO`,`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappbillentry definition

CREATE TABLE `t_eb_centralappbillentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREPORTBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUMBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTTYPE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FCENTRALENTITY` bigint NOT NULL DEFAULT '0',
  `FREPORTER` bigint NOT NULL DEFAULT '0',
  `FREPORTDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CENAPPBILLENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappmutex definition

CREATE TABLE `t_eb_centralappmutex` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEMES` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FUNIQUEKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIPADDRESS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CENTRALAPPMUTEX` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappmutex_r3 definition

CREATE TABLE `t_eb_centralappmutex_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappplan definition

CREATE TABLE `t_eb_centralappplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSIRANG` bigint NOT NULL DEFAULT '0',
  `FISAPPDETAIL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAPPRELATYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBAPPRELA` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXPLAIN` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FAPPTEMPLATE` longtext COLLATE utf8mb4_unicode_ci,
  `FBEFOREAPPTEMPLATETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPTEMPLATETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPRELASHOWTEXT` longtext COLLATE utf8mb4_unicode_ci,
  `FCLASSIFY` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVECLASSIFY` bigint NOT NULL DEFAULT '0',
  `FCENTRASTATUS` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `FBILLTYPE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'eb_centralappbill#审批单据',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CENTRALAPPPLAN_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappplan_r3 definition

CREATE TABLE `t_eb_centralappplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappplan_relat definition

CREATE TABLE `t_eb_centralappplan_relat` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CENTRALAPPPLAN_RE_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappplan_type definition

CREATE TABLE `t_eb_centralappplan_type` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CENTRALAPPPLAN_TY_FPID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappplanbill definition

CREATE TABLE `t_eb_centralappplanbill` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CENTRALAPPPLANBILL_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappplanentity definition

CREATE TABLE `t_eb_centralappplanentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBILLTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FREPORTTEMPLATEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CENTPLANENT_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralappplanreport definition

CREATE TABLE `t_eb_centralappplanreport` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CENTRALAPPPLANREP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralapprecentity definition

CREATE TABLE `t_eb_centralapprecentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCENTRALAPPTYPE` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FAPPROVER` bigint NOT NULL DEFAULT '0',
  `FORDER` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVEDATE` datetime DEFAULT NULL,
  `FSUGGESTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVEPLANS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORG` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CENTRALAPPRECENY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralapprecord definition

CREATE TABLE `t_eb_centralapprecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CENTRALAPPREC_FBILL` (`FAPPROVEBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralapprecord_r3 definition

CREATE TABLE `t_eb_centralapprecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralapprel definition

CREATE TABLE `t_eb_centralapprel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FVIEWID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCENTRALENTITYORG` longtext COLLATE utf8mb4_unicode_ci,
  `FCENTRALENTITYSUMMARY` bigint NOT NULL DEFAULT '0',
  `FCENTRALAPPENTITY` bigint NOT NULL DEFAULT '0',
  `FEFFECTSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CENTRALAPPREL_FID` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralapprel_r3 definition

CREATE TABLE `t_eb_centralapprel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralapprel_user definition

CREATE TABLE `t_eb_centralapprel_user` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CEN_USER_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralapptype definition

CREATE TABLE `t_eb_centralapptype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFIERFIELD` bigint NOT NULL DEFAULT '0',
  `FCREATEDATEFIELD` datetime DEFAULT NULL,
  `FMODIFYDATEFIELD` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CENT_FID` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralapptype_r3 definition

CREATE TABLE `t_eb_centralapptype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralbillrptsubmit definition

CREATE TABLE `t_eb_centralbillrptsubmit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FRPTPROCESSID` bigint NOT NULL DEFAULT '0',
  `FMODFIYUSER` bigint NOT NULL DEFAULT '0',
  `FSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CENTRALBILLRPTSUBMIT_1` (`FBILLID`,`FRPTPROCESSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centraldimsetting definition

CREATE TABLE `t_eb_centraldimsetting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONVIEW` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralized_entit_r3 definition

CREATE TABLE `t_eb_centralized_entit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralized_entity definition

CREATE TABLE `t_eb_centralized_entity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FACCOUNT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSELFDIM1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSELFDIM2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSELFDIM3` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSELFDIM4` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSELFDIM5` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSELFDIM6` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FTEXT0` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FTEXT1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FTEXT2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FTEXT3` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FTEXT6` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FTEXT4` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FTEXT5` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSSMODELID` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CENTRALIZED_ENTITY` (`FMODEL`,`FSTATUS`),
  KEY `IDX_EB_CENTRALIZED_P1` (`FDIMENSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralized_entity_l definition

CREATE TABLE `t_eb_centralized_entity_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CENTR_ENTRY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralized_entity_r3 definition

CREATE TABLE `t_eb_centralized_entity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralized_range definition

CREATE TABLE `t_eb_centralized_range` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FENTITYRANGE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRANGE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRANGENUMBERS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDIMENSIONRANGE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FENTITYRANGENUMBERS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDIMRANGE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CENTRALIZED_RANGE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralplanclassi_r3 definition

CREATE TABLE `t_eb_centralplanclassi_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralplanclassify definition

CREATE TABLE `t_eb_centralplanclassify` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPARENTID` bigint DEFAULT NULL,
  `FMODEL` bigint DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  `FCREATOR` bigint DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralplanclassify_l definition

CREATE TABLE `t_eb_centralplanclassify_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralrangeentity definition

CREATE TABLE `t_eb_centralrangeentity` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralrelation definition

CREATE TABLE `t_eb_centralrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FENTRYSEQ` int NOT NULL DEFAULT '0',
  `FMEMINFOJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FENABLEDATE` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CENTRALRELATION` (`FSCHEMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralrelation_r3 definition

CREATE TABLE `t_eb_centralrelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralrelation_s_r3 definition

CREATE TABLE `t_eb_centralrelation_s_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralrelation_shot definition

CREATE TABLE `t_eb_centralrelation_shot` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSHOTHASHCODE` int NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FENTRYSEQ` int NOT NULL DEFAULT '0',
  `FMEMINFOJSON` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CENTRALRELATION_SHOT_1` (`FSCHEMEID`),
  KEY `IDX_EB_CENTRALRELATION_SHOT_2` (`FSHOTHASHCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralrelrange definition

CREATE TABLE `t_eb_centralrelrange` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralrelrange_r3 definition

CREATE TABLE `t_eb_centralrelrange_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralrelscheme definition

CREATE TABLE `t_eb_centralrelscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCENTRALRANGE` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FENTITY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralrelscheme_r3 definition

CREATE TABLE `t_eb_centralrelscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralrelshotrel definition

CREATE TABLE `t_eb_centralrelshotrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSUBAPPROVEBILL` bigint NOT NULL DEFAULT '0',
  `FSHOTHASHCODE` int NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralrelshotrel_r3 definition

CREATE TABLE `t_eb_centralrelshotrel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralscheme definition

CREATE TABLE `t_eb_centralscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FORGNUMBER` bigint NOT NULL DEFAULT '0',
  `FBIZRANGEID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FACCOUNTNAMES` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAMES` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CENTRALSCHEME_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralscheme_l definition

CREATE TABLE `t_eb_centralscheme_l` (
  `FPKID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CENTRALSCHEME_L_P1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralscheme_r3 definition

CREATE TABLE `t_eb_centralscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralschemeaccount definition

CREATE TABLE `t_eb_centralschemeaccount` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTSCOPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `T_EB_CENTRALSCHEMEACCOUNTT_P1` (`FACCOUNTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralschemechecker definition

CREATE TABLE `t_eb_centralschemechecker` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `T_EB_CENTRALSCHEMECHECKER_P1` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_centralschemeorg definition

CREATE TABLE `t_eb_centralschemeorg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCOLLECTORGID` bigint NOT NULL DEFAULT '0',
  `FORGSCOPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CENTRALSCHEMEORG_P1` (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_changetypeformula definition

CREATE TABLE `t_eb_changetypeformula` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFORMULVIEWID` bigint NOT NULL DEFAULT '0',
  `FFORMULA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FFORMULANAME` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CHANGETYPEFORMULA_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_chkattachment definition

CREATE TABLE `t_eb_chkattachment` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSUBFOLDER` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIZE` int NOT NULL DEFAULT '0',
  `FUID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CHKATTACHMENT_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_chkattachment_r3 definition

CREATE TABLE `t_eb_chkattachment_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_chknotedetail definition

CREATE TABLE `t_eb_chknotedetail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CHKNOTEDETAIL_P1` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_chknoteinfo definition

CREATE TABLE `t_eb_chknoteinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FDIMSTR` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONSUM` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CHKNOTEINFO_P1` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_chknoteinfo_r3 definition

CREATE TABLE `t_eb_chknoteinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_collectioncfg_entity definition

CREATE TABLE `t_eb_collectioncfg_entity` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_collectionconfig definition

CREATE TABLE `t_eb_collectionconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY` longtext COLLATE utf8mb4_unicode_ci,
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FBOOKRUNNER` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FAPPRECORD` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENTITYRANG` longtext COLLATE utf8mb4_unicode_ci,
  `FSTANDARD` bigint NOT NULL DEFAULT '0',
  `FACCOUNTFORM` bigint NOT NULL DEFAULT '0',
  `FBOOKTYPE` bigint NOT NULL DEFAULT '0',
  `FPERIODTYPE` bigint NOT NULL DEFAULT '0',
  `FDATASET` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_COLLECTIONCONFIG_MODEL` (`FMODEL`),
  KEY `IDX_EB_COLLECTIONCONFIG_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_collectionconfig_l definition

CREATE TABLE `t_eb_collectionconfig_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_COLLECTIONCONFIG_L_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_collectionconfig_r3 definition

CREATE TABLE `t_eb_collectionconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_collectionexecute definition

CREATE TABLE `t_eb_collectionexecute` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FEXECUTEPLAN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFETCH` int NOT NULL DEFAULT '0',
  `FREMIND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLASTTIME` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTIMEFIELD` int NOT NULL DEFAULT '0',
  `FSETTLEDDAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FJOBID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEDULEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFDAY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPDAY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATETIMEFIELD` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_COLLECTIONEXECUTE_MODEL` (`FMODEL`),
  KEY `IDX_EB_COLLECTIONEXECUTE_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_collectionexecute_l definition

CREATE TABLE `t_eb_collectionexecute_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_COLLECTIONEXECUTE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_collectionexecute_r3 definition

CREATE TABLE `t_eb_collectionexecute_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_collectionrecord definition

CREATE TABLE `t_eb_collectionrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAPPNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUDNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUDNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_COLLECTIONRECORD_FMODEL` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_collectionrecord_r3 definition

CREATE TABLE `t_eb_collectionrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_collectionsupervisor definition

CREATE TABLE `t_eb_collectionsupervisor` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_COLLSUPERVISOR_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_collectionsupervisor_l definition

CREATE TABLE `t_eb_collectionsupervisor_l` (
  `FPKID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_COLLSUPERVISOR_L_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_conbizregdata definition

CREATE TABLE `t_eb_conbizregdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFIELDDIMENSION` varchar(50) NOT NULL DEFAULT ' ',
  `FBILL` bigint NOT NULL DEFAULT '0',
  `FFIELDTABLE` varchar(50) NOT NULL DEFAULT ' ',
  `FSEQUENCE` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(10) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONBIZREGDATA_ID` (`FFIELDDIMENSION`,`FBILL`,`FFIELDTABLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_conbizregdata_r3 definition

CREATE TABLE `t_eb_conbizregdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_conbizregentity definition

CREATE TABLE `t_eb_conbizregentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FNAME` varchar(250) NOT NULL DEFAULT ' ',
  `FISPREFAB` char(1) NOT NULL DEFAULT '0',
  `FVERSION` varchar(10) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CONBIZREGENTITY_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_configsetting definition

CREATE TABLE `t_eb_configsetting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIG` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTIOIN` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FORMID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONFIGSETTING_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_configsetting_r3 definition

CREATE TABLE `t_eb_configsetting_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_conprocessdataentry definition

CREATE TABLE `t_eb_conprocessdataentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FRETURNOPERATION` longtext,
  `FRUNVALUE` longtext,
  `FRUNOPERATION` longtext,
  `FTAKEVALUE` longtext,
  `FTAKEOPERATION` longtext,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CONPRODAENTRY_FTYPE` (`FBILLNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlbillcheck definition

CREATE TABLE `t_eb_controlbillcheck` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPLICATION` bigint NOT NULL DEFAULT '0',
  `FBILL` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONDITION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FTIMEDVALUE` int NOT NULL DEFAULT '300',
  `FTIMEFIELD` bigint NOT NULL DEFAULT '0',
  `FOPERATORFIELD` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlbillcheck_l definition

CREATE TABLE `t_eb_controlbillcheck_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CONTROLBILLCHECK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlbillcheck_r3 definition

CREATE TABLE `t_eb_controlbillcheck_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlbillchkop definition

CREATE TABLE `t_eb_controlbillchkop` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CONTROLBILLCHKOP_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlcondition_r3 definition

CREATE TABLE `t_eb_controlcondition_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controldimdetail definition

CREATE TABLE `t_eb_controldimdetail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CONTROLDIMDETAIL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlmessage definition

CREATE TABLE `t_eb_controlmessage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMESSAGETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGECONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGETITLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONTROLMESSAGE` (`FBILL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlmessage_r3 definition

CREATE TABLE `t_eb_controlmessage_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlprocessdat_r3 definition

CREATE TABLE `t_eb_controlprocessdat_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlprocessdata definition

CREATE TABLE `t_eb_controlprocessdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFIERTIME` datetime DEFAULT NULL,
  `FSETTING` bigint NOT NULL DEFAULT '0',
  `FADMINORG` bigint NOT NULL DEFAULT '0',
  `FEXPENSEITEM` longtext,
  `FPAGEID` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_PROCESSDATA_ORG` (`FADMINORG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlprocessdata_r3 definition

CREATE TABLE `t_eb_controlprocessdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlprocessent_r3 definition

CREATE TABLE `t_eb_controlprocessent_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlprocessentry definition

CREATE TABLE `t_eb_controlprocessentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISTHESAME` char(1) NOT NULL DEFAULT '1',
  `FRETURNOPERATION` longtext,
  `FRUNVALUE` longtext,
  `FRUNOPERATION` longtext,
  `FTAKEVALUE` longtext,
  `FTAKEOPERATION` longtext,
  `FBILLNAME` bigint NOT NULL DEFAULT '0',
  `FSETTINGID` bigint NOT NULL DEFAULT '0',
  `FCLEAROPERATION` longtext,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONTROLENTRY_SETTING` (`FISTHESAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlprocessentry_r3 definition

CREATE TABLE `t_eb_controlprocessentry_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlprocessset definition

CREATE TABLE `t_eb_controlprocessset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFIERTIME` datetime DEFAULT NULL,
  `FPARAS` bigint NOT NULL DEFAULT '0',
  `FEXPENSEITEM` bigint NOT NULL DEFAULT '0',
  `FADMINORG` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONTROLPRO_ITEMORG` (`FADMINORG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlprocessset_r3 definition

CREATE TABLE `t_eb_controlprocessset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlprosetting_r3 definition

CREATE TABLE `t_eb_controlprosetting_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlprosettings definition

CREATE TABLE `t_eb_controlprosettings` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFIERTIME` datetime DEFAULT NULL,
  `FNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONTROLPRO_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlprosettings_r3 definition

CREATE TABLE `t_eb_controlprosettings_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlruleaccoun_r3 definition

CREATE TABLE `t_eb_controlruleaccoun_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlruleaccount definition

CREATE TABLE `t_eb_controlruleaccount` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CONTROLRULEACCOUNT` (`FACCOUNTID`),
  KEY `IDX_EB_CONTROLRULEACC_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlruleaccount_r3 definition

CREATE TABLE `t_eb_controlruleaccount_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlruleallot definition

CREATE TABLE `t_eb_controlruleallot` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FALLOTEDORGID` bigint NOT NULL DEFAULT '0',
  `FALLOTTIME` datetime DEFAULT NULL,
  `FCONTROLRULEMAINID` bigint NOT NULL DEFAULT '0',
  `FVIEWID` bigint NOT NULL DEFAULT '0',
  `FPROPERTYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONTROLRULEALLOT_RULE` (`FALLOTEDORGID`,`FCONTROLRULEMAINID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlruleallot_r3 definition

CREATE TABLE `t_eb_controlruleallot_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlruledef_bak definition

CREATE TABLE `t_eb_controlruledef_bak` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID1` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID2` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID3` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID4` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID5` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID6` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID7` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID1` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID2` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID3` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID4` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID5` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID6` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID7` bigint NOT NULL DEFAULT '0',
  `FGROUPACCOUNT` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CONTROLRULEDEF_BAK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlruledefine_r3 definition

CREATE TABLE `t_eb_controlruledefine_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlruledefineds definition

CREATE TABLE `t_eb_controlruledefineds` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID1` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID5` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID6` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID2` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID3` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID4` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDID7` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID1` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID2` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID3` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID4` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID5` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID6` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID7` bigint NOT NULL DEFAULT '0',
  `FGROUPACCOUNT` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CONTROLRULEDEFINEDS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlruledefineds_r3 definition

CREATE TABLE `t_eb_controlruledefineds_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlrulegroup definition

CREATE TABLE `t_eb_controlrulegroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONTROLRULEGROUP` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlrulegroup_l definition

CREATE TABLE `t_eb_controlrulegroup_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CONTROLRULEGROUP_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlrulegroup_r3 definition

CREATE TABLE `t_eb_controlrulegroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlrulegroupdim definition

CREATE TABLE `t_eb_controlrulegroupdim` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FGROUPDIM` bigint DEFAULT NULL,
  `FISOBODIM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOBODIMINDEX` bigint DEFAULT NULL,
  `FISMEMBERRANGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CONTROLRULEGROUPDIM` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlrulehead definition

CREATE TABLE `t_eb_controlrulehead` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONTROLRULEHEAD_MD_SED` (`FMODELID`,`FACCOUNTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlrulemain definition

CREATE TABLE `t_eb_controlrulemain` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FISBEYOND` char(1) NOT NULL DEFAULT '1',
  `FCOEFFICIENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODCLASSIFY` varchar(10) NOT NULL DEFAULT ' ',
  `FCONTROLTYPE` varchar(10) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) NOT NULL DEFAULT '0',
  `FMODIFIERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATEFIELD` datetime DEFAULT NULL,
  `FISFREETYPE` char(1) NOT NULL DEFAULT '0',
  `FEFFECTIVEDATE` datetime DEFAULT NULL,
  `FINVALIDDATE` datetime DEFAULT NULL,
  `FBUSSMODELID` bigint NOT NULL DEFAULT '0',
  `FSHOWACCOUNT` varchar(2000) NOT NULL DEFAULT ' ',
  `FSHOWORGRANGE` varchar(2000) NOT NULL DEFAULT ' ',
  `FILLUSTRATE` varchar(2000) NOT NULL DEFAULT ' ',
  `FSHOWGROUPDIM` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONTROLRULEMAINGROUP` (`FGROUPID`),
  KEY `IDX_EB_CONTROLRULEMAINMODEL` (`FMODELID`,`FISDEFAULT`),
  KEY `IDX_EB_CONTROLRULEEFFECTIVE` (`FEFFECTIVEDATE`,`FINVALIDDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlrulemain_l definition

CREATE TABLE `t_eb_controlrulemain_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FILLUSTRATE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlrulemain_r3 definition

CREATE TABLE `t_eb_controlrulemain_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlruleoborange definition

CREATE TABLE `t_eb_controlruleoborange` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FOBOMEMBER` bigint DEFAULT NULL,
  `FMEMRANGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOBODIM` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CONTROLRULEOBORANGE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlversion definition

CREATE TABLE `t_eb_controlversion` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FSCENARIO` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FEFFECTIVETIME` datetime DEFAULT NULL,
  `FINVALIDTIME` datetime DEFAULT NULL,
  `fdiscription` varchar(255) NOT NULL DEFAULT ' ',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFIERTIME` datetime DEFAULT NULL,
  `FACTUALVERSION` bigint NOT NULL DEFAULT '0',
  `FORGRANGE` varchar(100) NOT NULL DEFAULT ' ',
  `FSTATE` char(1) NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAIL` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPE` bigint NOT NULL DEFAULT '0',
  `FBUSSMODELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CVERSION_FSCENARIO` (`FSCENARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlversion_l definition

CREATE TABLE `t_eb_controlversion_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlversion_r3 definition

CREATE TABLE `t_eb_controlversion_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_controlversionorg definition

CREATE TABLE `t_eb_controlversionorg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONTROLVERSIONID` bigint NOT NULL DEFAULT '0',
  `FORGRANGE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CONTROLVERSIONORG` (`FCONTROLVERSIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlversionorg_r3 definition

CREATE TABLE `t_eb_controlversionorg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlwarningrul_r3 definition

CREATE TABLE `t_eb_controlwarningrul_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlwarningrule definition

CREATE TABLE `t_eb_controlwarningrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATER` bigint DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FWARNINGSENDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONDITION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_controlwarningrule_l definition

CREATE TABLE `t_eb_controlwarningrule_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CONTROLWARNINGRULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_copynote_r3 definition

CREATE TABLE `t_eb_copynote_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_copyrecorddt definition

CREATE TABLE `t_eb_copyrecorddt` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_COPYRECORDDT_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_copyrecordentity definition

CREATE TABLE `t_eb_copyrecordentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint DEFAULT NULL,
  `FENTITY` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_copyrecordp definition

CREATE TABLE `t_eb_copyrecordp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_COPYRECORDP_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_copyrecordtrial definition

CREATE TABLE `t_eb_copyrecordtrial` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTRIALID` bigint NOT NULL DEFAULT '0',
  `FSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_COPYRECORDTRIAL_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_copyschemedatatype definition

CREATE TABLE `t_eb_copyschemedatatype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_copyschemeperiod definition

CREATE TABLE `t_eb_copyschemeperiod` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_copyschemesrctrial definition

CREATE TABLE `t_eb_copyschemesrctrial` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCTRIAL` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_copyschemetartrial definition

CREATE TABLE `t_eb_copyschemetartrial` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FTARTRIAL` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_costtype definition

CREATE TABLE `t_eb_costtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPENAME` varchar(255) NOT NULL DEFAULT ' ',
  `FDIVIDEWAY` varchar(255) NOT NULL DEFAULT ' ',
  `fdimsionid` varchar(100) NOT NULL DEFAULT '0',
  `fdimmemberid` varchar(100) NOT NULL DEFAULT '0',
  `fentryattid` varchar(100) NOT NULL DEFAULT '0',
  `fentrydefid` varchar(100) NOT NULL DEFAULT '0',
  `FDIVIDEGIST` varchar(255) NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FACCOUNTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FDIMMEMNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FENTITY` varchar(100) NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(100) NOT NULL DEFAULT ' ',
  `FYEAR` varchar(100) NOT NULL DEFAULT ' ',
  `FPERIOD` varchar(100) NOT NULL DEFAULT ' ',
  `FVERSION` varchar(100) NOT NULL DEFAULT ' ',
  `FENTITYRANG` varchar(510) NOT NULL DEFAULT ' ',
  `FYEARRANG` varchar(510) NOT NULL DEFAULT ' ',
  `FPERIODRANG` varchar(510) NOT NULL DEFAULT ' ',
  `FVERSIONRANG` varchar(510) NOT NULL DEFAULT ' ',
  `FCURRENCYRANG` varchar(510) NOT NULL DEFAULT ' ',
  `FENTITYRANG_TAG` longtext,
  `FYEARRANG_TAG` longtext,
  `FPERIODRANG_TAG` longtext,
  `FVERSIONRANG_TAG` longtext,
  `FCURRENCYRANG_TAG` longtext,
  `FBASEDATAFIELD` bigint NOT NULL DEFAULT '0',
  `FBASEDATAFIELD1` bigint NOT NULL DEFAULT '0',
  `FBASEDATAFIELD2` bigint NOT NULL DEFAULT '0',
  `FBASEDATAFIELD3` bigint NOT NULL DEFAULT '0',
  `FBASEDATAFIELD4` bigint NOT NULL DEFAULT '0',
  `FSCHEMETYPE` char(1) NOT NULL DEFAULT '1',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSOURCEID` varchar(50) NOT NULL DEFAULT ' ',
  `FTYPEMODIFYER` bigint NOT NULL DEFAULT '0',
  `FACCOUNT` longtext,
  `FACCOUNTTXT` varchar(510) NOT NULL DEFAULT ' ',
  `FACCOUNTTXT_TAG` longtext,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_COSTTYPE_MODEL` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_costtype_r3 definition

CREATE TABLE `t_eb_costtype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_currconvertupdate definition

CREATE TABLE `t_eb_currconvertupdate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSCHEME` bigint NOT NULL DEFAULT '0',
  `FENTITYS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CURRCONVERTUPDATE_P1` (`FSCHEME`),
  KEY `IDX_EB_CURRCONVERTUPDATE_P2` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_currconvertupdate_r3 definition

CREATE TABLE `t_eb_currconvertupdate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_currencyconvertlist definition

CREATE TABLE `t_eb_currencyconvertlist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUDGETDATE` datetime DEFAULT NULL,
  `FMEANPARITIES` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FADDMEANPARITIES` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENDPARITIES` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENDMODIFIER` bigint NOT NULL DEFAULT '0',
  `FENDMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_CURRENCYCONVERTLIST_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_currencyconvertlo_r3 definition

CREATE TABLE `t_eb_currencyconvertlo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_currencyconvertlog definition

CREATE TABLE `t_eb_currencyconvertlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONVERTTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONVERTRANGE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCONVERTLOG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FEXECUTOR` bigint NOT NULL DEFAULT '0',
  `FEXECUTEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CURRENCYCONVERTLOG_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_currencyconvertlog_r3 definition

CREATE TABLE `t_eb_currencyconvertlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_currencyconvertsc_r3 definition

CREATE TABLE `t_eb_currencyconvertsc_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_currencyconvertschem definition

CREATE TABLE `t_eb_currencyconvertschem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBEGINDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FPARITIESPRECISION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARITIESOVERTURN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCURRENCYRAW` bigint NOT NULL DEFAULT '0',
  `FCURRENCYRATE` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYRANG` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYRANG_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CURRENCYCONVERTSCHEM_P1` (`FMODELID`),
  KEY `IDX_EB_CURRENCYCONVERT_RAW` (`FCURRENCYRAW`),
  KEY `IDX_EB_CURRENCYCONVERT_RATE` (`FCURRENCYRATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_currencyconvertschem_r3 definition

CREATE TABLE `t_eb_currencyconvertschem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_custom_param definition

CREATE TABLE `t_eb_custom_param` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FPARAMJSON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CUSTOM_PARAM` (`FBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_custom_param_r3 definition

CREATE TABLE `t_eb_custom_param_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_customproperty definition

CREATE TABLE `t_eb_customproperty` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDSEQ` int NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CUSTOMPROPERTY_P1` (`FDIMENSIONID`),
  KEY `IDX_EB_CUSTOMPROPERTY_P2` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_customproperty_l definition

CREATE TABLE `t_eb_customproperty_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CUSTOMPROPERTY_L_P1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_customproperty_r3 definition

CREATE TABLE `t_eb_customproperty_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_custompropertyval_r3 definition

CREATE TABLE `t_eb_custompropertyval_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_custompropertyvalue definition

CREATE TABLE `t_eb_custompropertyvalue` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPROPERTYID` bigint NOT NULL DEFAULT '0',
  `FDSEQ` int NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CUSPROVALUE_P1` (`FPROPERTYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_custompropertyvalue_r3 definition

CREATE TABLE `t_eb_custompropertyvalue_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_databizmodel definition

CREATE TABLE `t_eb_databizmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DATABIZMODEL_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datadelete definition

CREATE TABLE `t_eb_datadelete` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBUSMODEL` bigint NOT NULL DEFAULT '0',
  `FDATASET` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNT` bigint NOT NULL DEFAULT '0',
  `FREAD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCUBEBACKUP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAPPROVESTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDELETESTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FERRORINFO` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FBACKUPPATH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FAPPROVER` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FSUBMITTER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDELETEDATE` datetime DEFAULT NULL,
  `FAPPROVEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATADELETE` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datadelete_dims definition

CREATE TABLE `t_eb_datadelete_dims` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMID` bigint NOT NULL DEFAULT '0',
  `FDIMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERS` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FMEMBERSCOPE` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FMEMBERSJSON` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DATADELETE_DIMS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datadelete_l definition

CREATE TABLE `t_eb_datadelete_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DATADELETE_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datadelete_r3 definition

CREATE TABLE `t_eb_datadelete_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dataentitydimmap definition

CREATE TABLE `t_eb_dataentitydimmap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMMAP` bigint NOT NULL DEFAULT '0',
  `FDIMASSIGN` bigint NOT NULL DEFAULT '0',
  `FFIELDTABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DATAENTITYDIMMAP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dataentityperiodmap definition

CREATE TABLE `t_eb_dataentityperiodmap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FACCPERIOD` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FBUDGETPERIOD` bigint NOT NULL DEFAULT '0',
  `FFISCALYEAR` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DATAENTITYPERIODMAP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dataentityyearmap definition

CREATE TABLE `t_eb_dataentityyearmap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FACCYEAR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETYEAR` bigint NOT NULL DEFAULT '0',
  `FACCYEARID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DATAENTITYYEARMAP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datagatherdata definition

CREATE TABLE `t_eb_datagatherdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXCUTESCHEME` bigint NOT NULL DEFAULT '0',
  `FGLPERIOD` bigint NOT NULL DEFAULT '0',
  `FGLACCOUNT` bigint NOT NULL DEFAULT '0',
  `FASSTINFO` longtext COLLATE utf8mb4_unicode_ci,
  `FDEBITFOR` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREDITFOR` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOLLECTSCHEME` bigint NOT NULL DEFAULT '0',
  `FEXCUTEDATE` datetime DEFAULT NULL,
  `FEXCUTER` bigint NOT NULL DEFAULT '0',
  `FEBDIM` longtext COLLATE utf8mb4_unicode_ci,
  `FMIDDLETABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FGLORG` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DGATHERDATA_FID` (`FEXCUTESCHEME`,`FCOLLECTSCHEME`,`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datagatherdata_r3 definition

CREATE TABLE `t_eb_datagatherdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datagatherdataentry definition

CREATE TABLE `t_eb_datagatherdataentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FGLPERIOD` bigint NOT NULL DEFAULT '0',
  `FGLACCOUNT` bigint NOT NULL DEFAULT '0',
  `FASSTINFO` longtext COLLATE utf8mb4_unicode_ci,
  `FDEBITFOR` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREDITFOR` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOLLECTSCHEME` bigint NOT NULL DEFAULT '0',
  `FEBDIM` longtext COLLATE utf8mb4_unicode_ci,
  `FISSUC` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FGLORG` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DataGEntry_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datalock definition

CREATE TABLE `t_eb_datalock` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FPERIODBINARY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX__EB_DATALOCK_P1` (`FMODELID`),
  KEY `IDX__EB_DATALOCK_P2` (`FYEARID`,`FCURRENCYID`,`FVERSIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datalock_r3 definition

CREATE TABLE `t_eb_datalock_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datalocklog definition

CREATE TABLE `t_eb_datalocklog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FPERIOD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTOR` bigint NOT NULL DEFAULT '0',
  `FEXECUTEOPERATION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXECUTETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATALOCKLOG_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datalocklog_r3 definition

CREATE TABLE `t_eb_datalocklog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dataperm definition

CREATE TABLE `t_eb_dataperm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRANGE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERMISSION` int NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FMEMBERTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBER` bigint NOT NULL DEFAULT '0',
  `FUSERTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERSID` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FISCONFER` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBUSINESSMODEL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATAPERM_P1` (`FMODEL`,`FDIMENSION`,`FBUSINESSMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dataperm_backnew definition

CREATE TABLE `t_eb_dataperm_backnew` (
  `fid` bigint NOT NULL DEFAULT '0',
  `frange` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpermission` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmodel` bigint NOT NULL DEFAULT '0',
  `fmembertype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmember` bigint NOT NULL DEFAULT '0',
  `fusertype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fusersid` bigint NOT NULL DEFAULT '0',
  `fdimension` bigint NOT NULL DEFAULT '0',
  `fdatatype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmodifier` bigint NOT NULL DEFAULT '0',
  `fmodifydate` datetime DEFAULT NULL,
  `fisconfer` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fbusinessmodel` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dataperm_budget_bak definition

CREATE TABLE `t_eb_dataperm_budget_bak` (
  `fid` bigint NOT NULL DEFAULT '0',
  `frange` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpermission` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmodel` bigint NOT NULL DEFAULT '0',
  `fmembertype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmember` bigint NOT NULL DEFAULT '0',
  `fusertype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fusersid` bigint NOT NULL DEFAULT '0',
  `fdimension` bigint NOT NULL DEFAULT '0',
  `fdatatype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmodifier` bigint NOT NULL DEFAULT '0',
  `fmodifydate` datetime DEFAULT NULL,
  `fisconfer` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dataperm_r3 definition

CREATE TABLE `t_eb_dataperm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datapermversion definition

CREATE TABLE `t_eb_datapermversion` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSER` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FBIZRANGE` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATAPERMVERSION_DIM` (`FDIMENSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datapermversion_r3 definition

CREATE TABLE `t_eb_datapermversion_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datarelease_det_l_r3 definition

CREATE TABLE `t_eb_datarelease_det_l_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datarelease_det_log definition

CREATE TABLE `t_eb_datarelease_det_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATARELEASELOG` bigint NOT NULL DEFAULT '0',
  `FADJUSTDECOMPOSE` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETRIC` bigint NOT NULL DEFAULT '0',
  `FADJUSTTRIAL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARMODEL` bigint NOT NULL DEFAULT '0',
  `FTARBIZMODEL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATARELEASE_DET_LOG_P1` (`FDATARELEASELOG`,`FTARMODEL`,`FTARBIZMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datarelease_dimma_r3 definition

CREATE TABLE `t_eb_datarelease_dimma_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datarelease_dimmap definition

CREATE TABLE `t_eb_datarelease_dimmap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSRCDIM` bigint NOT NULL DEFAULT '0',
  `FTARDIM` bigint NOT NULL DEFAULT '0',
  `FTARMEMBER` bigint NOT NULL DEFAULT '0',
  `FMAPONLY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMEMBERMAP` bigint NOT NULL DEFAULT '0',
  `FTARMEMBERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBEREXCLUDE` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datarelease_log definition

CREATE TABLE `t_eb_datarelease_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDECOMPOSESCHEME` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELEASESCHEME` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATARELEASE_LOG_P1` (`FDECOMPOSESCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datarelease_log_r3 definition

CREATE TABLE `t_eb_datarelease_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datarelease_loginfo definition

CREATE TABLE `t_eb_datarelease_loginfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTARMODEL` bigint NOT NULL DEFAULT '0',
  `FTARBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FSOURCECOUNT` bigint NOT NULL DEFAULT '0',
  `FSUCCESSCOUNT` bigint NOT NULL DEFAULT '0',
  `FFAILEDCOUNT` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datarelease_setting definition

CREATE TABLE `t_eb_datarelease_setting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTARMODEL` bigint NOT NULL DEFAULT '0',
  `FTARBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FRECEIVEVERSION` bigint NOT NULL DEFAULT '0',
  `FRECEIVEDATATYPE` bigint NOT NULL DEFAULT '0',
  `FMSGRECEIVERS` longtext COLLATE utf8mb4_unicode_ci,
  `FTARORGVIEW` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datareleasemp_detail definition

CREATE TABLE `t_eb_datareleasemp_detail` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datareleaseschmem_r3 definition

CREATE TABLE `t_eb_datareleaseschmem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datareleaseschmeme definition

CREATE TABLE `t_eb_datareleaseschmeme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCMODEL` bigint NOT NULL DEFAULT '0',
  `FSRCBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FSRCORGVIEW` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datareleaseschmeme_l definition

CREATE TABLE `t_eb_datareleaseschmeme_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dataset definition

CREATE TABLE `t_eb_dataset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCATALOG` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FBIZMODNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATASET_MODEL` (`FMODEL`),
  KEY `IDX_EB_DATASET_CATALOG` (`FCATALOG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dataset_l definition

CREATE TABLE `t_eb_dataset_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DATASET_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dataset_r3 definition

CREATE TABLE `t_eb_dataset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datasetcatalog definition

CREATE TABLE `t_eb_datasetcatalog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLONGNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSTEM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATASETLOG_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datasetcatalog_l definition

CREATE TABLE `t_eb_datasetcatalog_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DATASETCATALOG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datasetcatalog_r3 definition

CREATE TABLE `t_eb_datasetcatalog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datasetdim definition

CREATE TABLE `t_eb_datasetdim` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDATASETDIM` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DATASETDIM_FID` (`FID`),
  KEY `IDX_EB_DATASETDIM_DIM` (`FDATASETDIM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datasource definition

CREATE TABLE `t_eb_datasource` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVERADDRESS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPORT` int NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPASSWORD` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFIERFIELD` bigint NOT NULL DEFAULT '0',
  `FQUOTE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATACONNECT` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATASOURCE_IP` (`FSERVERADDRESS`),
  KEY `IDX_EB_DATASOURCE_QUOTE` (`FQUOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datasource_r3 definition

CREATE TABLE `t_eb_datasource_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datauploaddimmap definition

CREATE TABLE `t_eb_datauploaddimmap` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSRCDIMTEXT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRGDIMTEXT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCDIMMEMSHOW` bigint NOT NULL DEFAULT '0',
  `FTRGDIMMEMSHOW` bigint NOT NULL DEFAULT '0',
  `FSRCDIMMEMBERTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRGDIMMEMBERTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCDIMMEMNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRGDIMMEMNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCDIMNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRGDIMNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCDIMVIEW` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRGDIMVIEW` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DATAUPLOADDIMMAP_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datauploadlog definition

CREATE TABLE `t_eb_datauploadlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOADPARAMS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETPERIOD` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FUPLOADSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOADUSER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOADDATE` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCTOTAL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALMAPPING` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATAUPLOADLOG_FK` (`FMODEL`,`FENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datauploadlog_l definition

CREATE TABLE `t_eb_datauploadlog_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DATAUPLOADLOG_L_FK` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datauploadlog_r3 definition

CREATE TABLE `t_eb_datauploadlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datauploadscheme definition

CREATE TABLE `t_eb_datauploadscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSRCBUSINESSMODELID` bigint NOT NULL DEFAULT '0',
  `FTRGBUSINESSMODELID` bigint NOT NULL DEFAULT '0',
  `FSTATE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELBD` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATAUPLOADSCHEME_NUM` (`FMODELBD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datauploadscheme_l definition

CREATE TABLE `t_eb_datauploadscheme_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DATAUPLOADSCHEME_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datauploadscheme_r3 definition

CREATE TABLE `t_eb_datauploadscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datetypetodim definition

CREATE TABLE `t_eb_datetypetodim` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATETYPEID` bigint NOT NULL DEFAULT '0',
  `FOTHERDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FDIMNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DATETYPETODIM_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_datetypetodim_r3 definition

CREATE TABLE `t_eb_datetypetodim_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decompose_dim_r3 definition

CREATE TABLE `t_eb_decompose_dim_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decompose_log definition

CREATE TABLE `t_eb_decompose_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMMEMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCDIMENSIONJSON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASK` bigint NOT NULL DEFAULT '0',
  `FSTATUS` int NOT NULL DEFAULT '0',
  `FPARENT` bigint NOT NULL DEFAULT '0',
  `FPID` bigint NOT NULL DEFAULT '0',
  `FISSUEFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSUBMITFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALUE` decimal(30,15) NOT NULL DEFAULT '0.000000000000000',
  `FPENDINGTRIAL` decimal(30,15) NOT NULL DEFAULT '0.000000000000000',
  `FCHANGE` decimal(30,15) NOT NULL DEFAULT '0.000000000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DECOMPOSE_LOG` (`FTASK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decompose_log_r3 definition

CREATE TABLE `t_eb_decompose_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decompose_scheme definition

CREATE TABLE `t_eb_decompose_scheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFYOPERATOR` bigint NOT NULL DEFAULT '0',
  `FCREATEOPERATOR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime NOT NULL,
  `FMODIFYTIME` datetime NOT NULL,
  `FAUDITTRAIL` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FTARGETRECORD` bigint NOT NULL DEFAULT '0',
  `FBUDGETPERIOD` longtext COLLATE utf8mb4_unicode_ci,
  `FRELEASESTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELEASEUSER` bigint NOT NULL DEFAULT '0',
  `FRELEASEDATE` datetime DEFAULT NULL,
  `FENTITYVIEW` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DECOMPOSE_SCHEME_P1` (`FMODEL`,`FVERSION`,`FDATATYPE`,`FCURRENCY`,`FAUDITTRAIL`),
  KEY `IDX_EB_DECOMPOSE_SCHEME_P2` (`FMODEL`,`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decompose_scheme_r3 definition

CREATE TABLE `t_eb_decompose_scheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decompose_task definition

CREATE TABLE `t_eb_decompose_task` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FEXPLAIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCDIMENSIONJSON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECDIMENSIONJSON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEME` bigint NOT NULL DEFAULT '0',
  `FSTATUS` int NOT NULL DEFAULT '0',
  `FVALUE` decimal(30,15) NOT NULL DEFAULT '0.000000000000000',
  `FHASHCODE` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FFIRSTFLAG` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVIEWJSON` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DECOMPOSE_TASK` (`FSCHEME`,`FENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decompose_task_r3 definition

CREATE TABLE `t_eb_decompose_task_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decomposeadjust definition

CREATE TABLE `t_eb_decomposeadjust` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FDATASET` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FACCOUNT` bigint NOT NULL DEFAULT '0',
  `FBUDGETPERIOD` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAIL` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FHASHCODE` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONJSON` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FSTATE` int NOT NULL DEFAULT '0',
  `FMD5` varchar(280) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DECOMPOSEADJUST_P1` (`FMODEL`,`FHASHCODE`),
  KEY `IDX_EB_DECOMPOSEADJUST_ENT` (`FENTITY`),
  KEY `IDX_EB_DECOMPOSEADJUST_ACC` (`FACCOUNT`),
  KEY `IDX_EB_DECOMPOSEADJUST_BP` (`FBUDGETPERIOD`),
  KEY `IDX_EB_DECOMPOSEADJUST_AT` (`FAUDITTRAIL`),
  KEY `IDX_EB_DECOMPOSEADJUST_VER` (`FVERSION`),
  KEY `IDX_EB_DECOMPOSEADJUST_DT` (`FDATATYPE`),
  KEY `IDX_EB_DECOMPOSEADJUST_CUEE` (`FCURRENCY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decomposeadjust_r3 definition

CREATE TABLE `t_eb_decomposeadjust_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decomposeadjustsub definition

CREATE TABLE `t_eb_decomposeadjustsub` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTYPE` int NOT NULL DEFAULT '1',
  `FPENDINGTRIAL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIXTRIAL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FADJUSTTRIAL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FADJUSTEXPLAIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMODIFYOPERATOR` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime NOT NULL,
  `FSTATUS` int NOT NULL DEFAULT '0',
  `FDECOMPOSETASK` bigint NOT NULL DEFAULT '0',
  `FUPLOADSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKFLOWTASK` bigint NOT NULL DEFAULT '0',
  `FENTITYVIEW` bigint NOT NULL DEFAULT '0',
  `FREPORTPROCESS` bigint NOT NULL DEFAULT '0',
  `FSOURCEMODEL` bigint NOT NULL DEFAULT '0',
  `FSOURCEADJUST` bigint NOT NULL DEFAULT '0',
  `FVIEWJSON` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVEBILL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DECOMPOSEADJUSTSUB_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decomposescheme definition

CREATE TABLE `t_eb_decomposescheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FRELEASEORGID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZCTRLRANGE` bigint NOT NULL DEFAULT '0',
  `FROWSDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FISHIDE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DECOME_FNUMBER` (`FNUMBER`),
  KEY `IDX_EB_DECOME_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decomposescheme_l definition

CREATE TABLE `t_eb_decomposescheme_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPLAIN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DECOMEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_DECOMEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decomposescheme_r3 definition

CREATE TABLE `t_eb_decomposescheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_decomscheme_entry definition

CREATE TABLE `t_eb_decomscheme_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDECOMPOSEORGID` bigint NOT NULL DEFAULT '0',
  `FDECOMPOSEPERSONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DECOME_FID` (`FID`),
  KEY `IDX_EB_DECOME_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_diffanalyzescheme definition

CREATE TABLE `t_eb_diffanalyzescheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCONFIGJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `FDESC` varchar(750) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DIFFANALYZESCHEME_P1` (`FDATASETID`,`FTYPE`,`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_diffanalyzescheme_l definition

CREATE TABLE `t_eb_diffanalyzescheme_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(750) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DIFFANALYZESCHEME_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_diffanalyzescheme_r3 definition

CREATE TABLE `t_eb_diffanalyzescheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dim_membermap definition

CREATE TABLE `t_eb_dim_membermap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCMODEL` bigint NOT NULL DEFAULT '0',
  `FSRCDIM` bigint NOT NULL DEFAULT '0',
  `FSRCDIMVIEW` bigint NOT NULL DEFAULT '0',
  `FTARMODEL` bigint NOT NULL DEFAULT '0',
  `FTARDIM` bigint NOT NULL DEFAULT '0',
  `FTARDIMVIEW` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATEFIELD` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DIMMAP_MODEL` (`FSRCMODEL`,`FTARMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dim_membermap_l definition

CREATE TABLE `t_eb_dim_membermap_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DIMMEMBERMAP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dim_membermap_r3 definition

CREATE TABLE `t_eb_dim_membermap_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dim_membermapval definition

CREATE TABLE `t_eb_dim_membermapval` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSRCMEMBERNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCMEMBERNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARMEMBERNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARMEMBERNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_DIM_MAPVAL_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimcomb_mementry definition

CREATE TABLE `t_eb_dimcomb_mementry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FDIMMEMBERTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMEMBERCLASSTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FDIMVIEWID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IX_T_EB_DIMCOMB_MEMENTRY_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimcombination definition

CREATE TABLE `t_eb_dimcombination` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZSCOPEID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FAMOUNTUNIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISADD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOMBINATIONJSON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMETRICTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FAPPOBJECT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_DIMCOM_MODEL` (`FMODELID`,`FBIZMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimcombination_r3 definition

CREATE TABLE `t_eb_dimcombination_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimcombinationent_r3 definition

CREATE TABLE `t_eb_dimcombinationent_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimcombinationentity definition

CREATE TABLE `t_eb_dimcombinationentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUITOBJECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDATAFORMAT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDIGIT` int NOT NULL DEFAULT '2',
  `FDIMGROUPTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FMETRICID` bigint NOT NULL DEFAULT '0',
  `FUNIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFORMULA` longtext COLLATE utf8mb4_unicode_ci,
  `FFORMULA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FREFPARAMDIMNUMS` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFFUNCTIONDIMNUMS` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMULAUNIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMETRICDATATYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FFORMULASHOW` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IX_T_EB_DIMCOMBINATIONENTITY_TYPE` (`FDIMGROUPTYPE`),
  KEY `IX_T_EB_DIMCOMBINATIONENTITY_PARAM` (`FREFPARAMDIMNUMS`),
  KEY `IX_T_EB_DIMCOMBINATIONENTITY_FUN` (`FREFFUNCTIONDIMNUMS`),
  KEY `IX_T_EB_DIMCOMBINATIONENTITY_BUSMODEL` (`FBIZMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimcombinationentity_l definition

CREATE TABLE `t_eb_dimcombinationentity_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IX_T_EB_DIMCOMBINATIONENTITY_L_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimension definition

CREATE TABLE `t_eb_dimension` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHORTNUMBER` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSDIMENSION` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDSEQ` int NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMEMBERMODEL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERTABLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDMAPPED` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DIM_MIDNUM` (`FMODELID`,`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimension_l definition

CREATE TABLE `t_eb_dimension_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DIM_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_DIM_L_FNAMEFID` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimension_r3 definition

CREATE TABLE `t_eb_dimension_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimensionrelation definition

CREATE TABLE `t_eb_dimensionrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDSEQ` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSION1` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONVIEW1` bigint NOT NULL DEFAULT '0',
  `FDIMENSION2` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONVIEW2` bigint NOT NULL DEFAULT '0',
  `FAFFECTRANGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DIMENSIONRELATION_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimensionrelation_e definition

CREATE TABLE `t_eb_dimensionrelation_e` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FDIMVIEW` bigint NOT NULL DEFAULT '0',
  `FDIMPROPERTY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimensionrelation_l definition

CREATE TABLE `t_eb_dimensionrelation_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimensionrelation_r3 definition

CREATE TABLE `t_eb_dimensionrelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimensionvariable definition

CREATE TABLE `t_eb_dimensionvariable` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FDSEQ` int NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DIMENSIONVARIABLE_P1` (`FDSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimensionvariable_l definition

CREATE TABLE `t_eb_dimensionvariable_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DV_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimensionvariable_r3 definition

CREATE TABLE `t_eb_dimensionvariable_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimensionview definition

CREATE TABLE `t_eb_dimensionview` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FDSEQ` int NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FUSAGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FBASEVIEWID` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DIMENSIONVIEW_P1` (`FMODELID`),
  KEY `IDX_EB_DIMENSIONVIEW_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_DIMENSIONVIEW_P` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimensionview_r3 definition

CREATE TABLE `t_eb_dimensionview_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimmaterule definition

CREATE TABLE `t_eb_dimmaterule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MATERULE_CREATBILL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_dimmaterule_l definition

CREATE TABLE `t_eb_dimmaterule_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimmaterule_r3 definition

CREATE TABLE `t_eb_dimmaterule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_dimmateruleapp definition

CREATE TABLE `t_eb_dimmateruleapp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FAPPLICATION` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSHOWNAME` varchar(255) DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DIMMATERULEAPP` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_dimmaterulebill definition

CREATE TABLE `t_eb_dimmaterulebill` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FEFFECTIVETIME` datetime DEFAULT NULL,
  `FINVALIDTIME` datetime DEFAULT NULL,
  `FDISCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  `FDISCRIPTION_TAG` longtext,
  `FENTRYFIELDID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTFIELDID` bigint NOT NULL DEFAULT '0',
  `FYEARFIELDID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYFIELDID` bigint NOT NULL DEFAULT '0',
  `FPROJECTFIELDID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED1FIELDID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED2FIELDID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED3FIELDID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED4FIELDID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED5FIELDID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED6FIELDID` bigint NOT NULL DEFAULT '0',
  `FENTRYUSEMAP` char(1) NOT NULL DEFAULT '0',
  `FACCOUNTUSEMAP` char(1) NOT NULL DEFAULT '0',
  `FYEARUSEMAP` char(1) NOT NULL DEFAULT '0',
  `FPROJECTUSEMAP` char(1) NOT NULL DEFAULT '0',
  `FUSERDEFINED1USEMAP` char(1) NOT NULL DEFAULT '0',
  `FUSERDEFINED2USEMAP` char(1) NOT NULL DEFAULT '0',
  `FUSERDEFINED3USEMAP` char(1) NOT NULL DEFAULT '0',
  `FUSERDEFINED4USEMAP` char(1) NOT NULL DEFAULT '0',
  `FUSERDEFINED5USEMAP` char(1) NOT NULL DEFAULT '0',
  `FUSERDEFINED6USEMAP` char(1) NOT NULL DEFAULT '0',
  `FENTRYDIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTDIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FYEARDIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FPROJECTDIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED1DIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED2DIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED3DIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED4DIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED5DIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED6DIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYUSEMAP` char(1) NOT NULL DEFAULT '0',
  `FCURRENCYDIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FMETRICFIELD` bigint NOT NULL DEFAULT '0',
  `FENTRYFIELDEXTID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTFIELDEXTID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYFIELDEXTID` bigint NOT NULL DEFAULT '0',
  `FPROJECTFIELDEXTID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED1FIELDEXTID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED2FIELDEXTID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED3FIELDEXTID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED4FIELDEXTID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED5FIELDEXTID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINED6FIELDEXTID` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID1` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID2` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID3` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID4` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID5` bigint NOT NULL DEFAULT '0',
  `FUSERDEFINEDDIMID6` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPEFIELD` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPEFIELDEXTID` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPEDIMSIONMAPID` bigint NOT NULL DEFAULT '0',
  `FBUSSMODELID` bigint NOT NULL DEFAULT '0',
  `FQFILTER` longtext,
  `FPRIORITY` varchar(20) NOT NULL DEFAULT ' ',
  `FSERQFILTER` longtext,
  `FTITLE` varchar(255) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCONTROLDIMENSION` varchar(500) NOT NULL DEFAULT ' ',
  `FISONLYCONTROLSUIT` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_EB_DIMMATERULEBILL` (`FNUMBER`,`FEFFECTIVETIME`,`FINVALIDTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_dimmaterulebill_l definition

CREATE TABLE `t_eb_dimmaterulebill_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FTITLE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DIMMATERULEBILL_L_FID` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimmaterulegroup definition

CREATE TABLE `t_eb_dimmaterulegroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILL` bigint NOT NULL DEFAULT '0',
  `FAPPLICATION` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISONLYCHECK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FGROUPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_DIMMATERULEGROUP_BILL` (`FBILL`,`FSTATUS`),
  KEY `IDX_T_EB_DIMMATERULEGROUP_NUMBER` (`FSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimmaterulegroup_l definition

CREATE TABLE `t_eb_dimmaterulegroup_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimmaterulegroup_r3 definition

CREATE TABLE `t_eb_dimmaterulegroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimmemberhistory definition

CREATE TABLE `t_eb_dimmemberhistory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSDATA` varchar(50) NOT NULL DEFAULT ' ',
  `FDIMENSION` varchar(50) NOT NULL DEFAULT ' ',
  `FBIZNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FBIZNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FDIMNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FDIMNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IX_EB_DIMMEMBERHISTORY` (`FMODELID`,`FBUSINESSDATA`,`FDIMENSION`,`FBIZNUMBER`,`FDIMNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_dimmemberhistory_r3 definition

CREATE TABLE `t_eb_dimmemberhistory_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_dimmembermapping definition

CREATE TABLE `t_eb_dimmembermapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBUSINESSBASEDATA` varchar(100) NOT NULL DEFAULT ' ',
  `FDIM` varchar(100) NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) NOT NULL DEFAULT '',
  `FENABLE` char(1) NOT NULL DEFAULT '',
  `FDIMNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FBDNAME` varchar(100) DEFAULT ' ',
  `FNAME` varchar(400) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FBDNAMEEXT` varchar(100) NOT NULL DEFAULT ' ',
  `FBUSINESSBASEDATAEXT` varchar(100) NOT NULL DEFAULT ' ',
  `FUSEASSISTDATA` char(1) NOT NULL DEFAULT '0',
  `FISEXITNOLEAF` char(1) NOT NULL DEFAULT '0',
  `FISFREETYPE` char(1) NOT NULL DEFAULT '0',
  `FUSEMOREBUSSDATA` char(1) NOT NULL DEFAULT '0',
  `FBUSSMODELID` bigint NOT NULL DEFAULT '0',
  `FUSEMOREASSISTDATA` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DIMMAPPING_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_dimmembermapping_l definition

CREATE TABLE `t_eb_dimmembermapping_l` (
  `FPKID` varchar(30) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DIMMAPPING_L_NAME` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_dimmembermapping_r3 definition

CREATE TABLE `t_eb_dimmembermapping_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_dimmemberrelation definition

CREATE TABLE `t_eb_dimmemberrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDSEQ` bigint NOT NULL DEFAULT '0',
  `FRELATIONID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FACCOUNT` bigint NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FBUDGETPERIOD` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPE` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAIL` bigint NOT NULL DEFAULT '0',
  `FMETRIC` bigint NOT NULL DEFAULT '0',
  `FINTERNALCOMPANY` bigint NOT NULL DEFAULT '0',
  `FSCENARIO` bigint NOT NULL DEFAULT '0',
  `FPROCESS` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIMNUMBER1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMDIM1` bigint NOT NULL DEFAULT '0',
  `FCUSTOMDIMNUMBER2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMDIM2` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FDIMENSION1` bigint NOT NULL DEFAULT '0',
  `FDIMENSION2` bigint NOT NULL DEFAULT '0',
  `FDIMENSION3` bigint NOT NULL DEFAULT '0',
  `FDIMENSION4` bigint NOT NULL DEFAULT '0',
  `FDIMENSION5` bigint NOT NULL DEFAULT '0',
  `FDIMENSION6` bigint NOT NULL DEFAULT '0',
  `FSTARTPERIOD` bigint NOT NULL DEFAULT '0',
  `FENDPERIOD` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DIMMEMBERRELATION_P1` (`FRELATIONID`,`FDSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimmemberrelation_r3 definition

CREATE TABLE `t_eb_dimmemberrelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimparameter definition

CREATE TABLE `t_eb_dimparameter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOFFSET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_DIMPARAM_MODEL` (`FMODELID`,`FBIZMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimparameter_r3 definition

CREATE TABLE `t_eb_dimparameter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimpropertyentry definition

CREATE TABLE `t_eb_dimpropertyentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_DIMPROPERTYENTR_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimpropertysettin_r3 definition

CREATE TABLE `t_eb_dimpropertysettin_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimpropertysetting definition

CREATE TABLE `t_eb_dimpropertysetting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FAREARANGE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DIMPROPERTYSETTING_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimpropertysetting_l definition

CREATE TABLE `t_eb_dimpropertysetting_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DIMPROPERTYSETTING_L_P1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimpropertysetting_r3 definition

CREATE TABLE `t_eb_dimpropertysetting_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimpropertysubentry definition

CREATE TABLE `t_eb_dimpropertysubentry` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDSEQ` int NOT NULL DEFAULT '0',
  `FCUSTOMPROPERTYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_EB_DIMPROPERTYSUBENTRY_P1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimrelatbusimodel definition

CREATE TABLE `t_eb_dimrelatbusimodel` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DIMRELATBUSIMODEL_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimsharemember definition

CREATE TABLE `t_eb_dimsharemember` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3',
  `FSEQ` int NOT NULL DEFAULT '1',
  `FLEVEL` int NOT NULL DEFAULT '1',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DIMSHAREMEMBER_P1` (`FMODELID`,`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dimsharemember_r3 definition

CREATE TABLE `t_eb_dimsharemember_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_distribution definition

CREATE TABLE `t_eb_distribution` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FRANGE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FPROPERTY` bigint NOT NULL DEFAULT '0',
  `FPROPERTYVALUE` bigint NOT NULL DEFAULT '0',
  `FTEXTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_DISTRIBUTION_MODELID` (`FMODEL`),
  KEY `IDX_EB_DISTRIBUTION_TEM` (`FTEMPLATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_distribution_r3 definition

CREATE TABLE `t_eb_distribution_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_dynamicreport definition

CREATE TABLE `t_eb_dynamicreport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FTASKPROCESSID` bigint NOT NULL DEFAULT '0',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FSTATEUS` char(1) NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) NOT NULL DEFAULT '0',
  `FSCHEMEASSIGNID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IX_EB_DYNAMICREPORT` (`FTASKPROCESSID`),
  KEY `IX_EB_DYNAMICREPORT_2` (`FSCHEMEASSIGNID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_dynamicreport_r3 definition

CREATE TABLE `t_eb_dynamicreport_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_eas_data_upgrade__r3 definition

CREATE TABLE `t_eb_eas_data_upgrade__r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_eas_data_upgrade_det definition

CREATE TABLE `t_eb_eas_data_upgrade_det` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATAJSON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FINFO` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPGRADEMODEL` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EAS_DATA_UPGRADE_DET` (`FUPGRADEMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_eas_data_upgrade_log definition

CREATE TABLE `t_eb_eas_data_upgrade_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUPGRADEMODEL` bigint NOT NULL DEFAULT '0',
  `FINFO` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSUCCESSCOUNT` bigint NOT NULL DEFAULT '0',
  `FFAILCOUNT` bigint NOT NULL DEFAULT '0',
  `FTOTALCOUNT` bigint NOT NULL DEFAULT '0',
  `FWAITCOUNT` bigint NOT NULL DEFAULT '0',
  `FPERCENT` char(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_PK_EB_EAS_DATA_UPGRADE_LOG` (`FUPGRADEMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_eas_dim_upgrade_log definition

CREATE TABLE `t_eb_eas_dim_upgrade_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEASDIMID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEASDIMNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEASDIMNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMID` bigint NOT NULL DEFAULT '0',
  `FDIMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVIEWID` bigint NOT NULL DEFAULT '0',
  `FVIEWNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVIEWNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMLOGINFO` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FUNIONID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_EAS_DIM_UPGRADE_LOG` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_eas_mem_upgrade_l_r3 definition

CREATE TABLE `t_eb_eas_mem_upgrade_l_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_eas_mem_upgrade_log definition

CREATE TABLE `t_eb_eas_mem_upgrade_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUPGRADEMODEL` bigint NOT NULL DEFAULT '0',
  `FEASMEMID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEASMEMNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEASMEMNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMID` bigint NOT NULL DEFAULT '0',
  `FMEMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMLOGINFO` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEASDIMNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEASUNIONID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVIEWNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EAS_MEM_UPGRADE_LOG` (`FUPGRADEMODEL`,`FEASDIMNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_eas_table definition

CREATE TABLE `t_eb_eas_table` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEASDB` bigint NOT NULL DEFAULT '0',
  `FEASDBCENTER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCTABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARTABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EAS_TABLE` (`FEASDB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_eas_table_r3 definition

CREATE TABLE `t_eb_eas_table_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_eas_table_sync_lo_r3 definition

CREATE TABLE `t_eb_eas_table_sync_lo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_eas_table_sync_log definition

CREATE TABLE `t_eb_eas_table_sync_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSRCTABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETTABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTAL` bigint NOT NULL DEFAULT '0',
  `FFALI` bigint NOT NULL DEFAULT '0',
  `FSUCCESS` bigint NOT NULL DEFAULT '0',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FINFO` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEASDB` bigint NOT NULL DEFAULT '0',
  `FTRIGGER` bigint NOT NULL DEFAULT '0',
  `FFAIL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EAS_TABLE_SYNC_LOG` (`FEASDB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_eas_upgrade_log definition

CREATE TABLE `t_eb_eas_upgrade_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUPGRADEMODEL` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODELLOGINFO` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EAS_UPGRADE_LOG` (`FUPGRADEMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_eas_upgrade_log_r3 definition

CREATE TABLE `t_eb_eas_upgrade_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_easupgrade_record definition

CREATE TABLE `t_eb_easupgrade_record` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELTYPE` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATEORG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMUPSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDATAUPSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FDATACENTER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDTIME` datetime DEFAULT NULL,
  `FEASDB` bigint NOT NULL DEFAULT '0',
  `FEASMODELID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFCUBE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPGRADEER` bigint NOT NULL DEFAULT '0',
  `FUPGRADETIME` datetime DEFAULT NULL,
  `FENDUPGRADETIME` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EASUPGRADE_RECORD` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_easupgrade_record_l definition

CREATE TABLE `t_eb_easupgrade_record_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_EASUPGRADE_RECORD_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_easupgrade_record_r3 definition

CREATE TABLE `t_eb_easupgrade_record_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebapprovebill definition

CREATE TABLE `t_eb_ebapprovebill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBORGMASTERID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEINFO` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FBILLTYPE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEBORGID` bigint NOT NULL DEFAULT '0',
  `FAPPROVETEMPID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDIMDATATYPE` bigint NOT NULL DEFAULT '0',
  `FDIMYEAR` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMPERIOD` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMVERSION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEDATE` datetime DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FHANDLER` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDEALDATE` datetime DEFAULT NULL,
  `FHANDLERTEXT` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPINDEXID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FPOSITION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EBAPPROVEBILL_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebapprovebill_r3 definition

CREATE TABLE `t_eb_ebapprovebill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebapprovebillentry definition

CREATE TABLE `t_eb_ebapprovebillentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTEMPID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTASKPROCESSID` bigint NOT NULL DEFAULT '0',
  `FPAGEDIMJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FTASKPROCESSJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAPPINDEXID` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_EBAPPROVEBILLENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebbizruleglobal definition

CREATE TABLE `t_eb_ebbizruleglobal` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FVERSION` int NOT NULL DEFAULT '0',
  `FGLOBALENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EBBIZRULEGLO_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebbizruleglobal_r3 definition

CREATE TABLE `t_eb_ebbizruleglobal_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebdimmembermap definition

CREATE TABLE `t_eb_ebdimmembermap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBUSINESSBASEDATA` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDIMNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBDNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBDNAMEEXT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSBASEDATAEXT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEASSISTDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISEXITNOLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISFREETYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FUSEMOREBUSSDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBUSSMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASET` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EBDIMMEMBERMAP_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebdimmembermap_l definition

CREATE TABLE `t_eb_ebdimmembermap_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_EBDIMMEMBERMAP_L_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebdimmembermap_r3 definition

CREATE TABLE `t_eb_ebdimmembermap_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebmembermap definition

CREATE TABLE `t_eb_ebmembermap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBIZMEMBERID` bigint NOT NULL DEFAULT '0',
  `FBIZNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMMEMBERID` bigint NOT NULL DEFAULT '0',
  `FDIMMEMNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMMEMNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRANGE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZNAMEEXT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZNUMBEREXT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZMEMBERIEXTID` bigint NOT NULL DEFAULT '0',
  `FMOREBUSSDATA` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_EBMEMBERMAP_SEQ` (`FSEQ`),
  KEY `IDX_EB_EBMEMBERMAP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebtemplate definition

CREATE TABLE `t_eb_ebtemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATECATALOGID` bigint NOT NULL DEFAULT '0',
  `FVERSIONNUMBER` decimal(5,2) NOT NULL DEFAULT '0.00',
  `FVERSIONSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fusage` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISONLYREAD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEDITDESCRIPTION` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSPREADJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRPTDATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRPTSPREADJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FGROUP` bigint NOT NULL DEFAULT '0',
  `FISFINTEMPLATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FTEMPLATETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSHOWEDITDESCRIPTION` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  `FEFFECTIVEDATE` datetime DEFAULT NULL,
  `FISOLDTEMPLATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FVARBASEFOREB` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARJSONFOREB` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FVERSIONDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIRINGDATE` datetime DEFAULT NULL,
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSAVEBYDIM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISAUTOCALCULATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISALLOWADDIC` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FACCOUNTRECLASS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISCIRCULARDEFINE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISCHECKSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FUNCHECKENTITY` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FBEGINTIME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDTIME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EBTEMPLATE_NUMMODID` (`FNUMBER`,`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebtemplate_l definition

CREATE TABLE `t_eb_ebtemplate_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEDITDESCRIPTION` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FVERSIONDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_EBTEMPLATE_L_FLOCAL` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebtemplate_r3 definition

CREATE TABLE `t_eb_ebtemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebtemplatecatalog definition

CREATE TABLE `t_eb_ebtemplatecatalog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FMODELORG` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCATALOGTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EBCATALOG_MODELID` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebtemplatecatalog_l definition

CREATE TABLE `t_eb_ebtemplatecatalog_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_EBCATALOG_LL_NUMMODID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ebtemplatecatalog_r3 definition

CREATE TABLE `t_eb_ebtemplatecatalog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_entitybizrecord definition

CREATE TABLE `t_eb_entitybizrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHANGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEFFDATE` datetime DEFAULT NULL,
  `FEXPDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTITYID`),
  KEY `IDX_EB_ENTITYBIZRECORD` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_entitynamerecord definition

CREATE TABLE `t_eb_entitynamerecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEFFDATE` datetime DEFAULT NULL,
  `FEXPDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTITYID`),
  KEY `IDX_EB_ENTITYNAMERECORD` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_entitynamerecord_l definition

CREATE TABLE `t_eb_entitynamerecord_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_ENTITYNAMERECORD_L` (`FENTITYID`,`FLOCALEID`),
  KEY `IDX_EB_ENTRECORD_L_FNAME` (`FNAME`,`FENTITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_enumitem_r3 definition

CREATE TABLE `t_eb_enumitem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine definition

CREATE TABLE `t_eb_examine` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) NOT NULL DEFAULT ' ',
  `FGROUP` bigint NOT NULL DEFAULT '0',
  `FISCONNTEMP` char(1) NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATEORG` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) NOT NULL DEFAULT '0',
  `FFAILOVERWAY` char(1) NOT NULL DEFAULT '0',
  `FCHECKINFLUENCE` char(1) NOT NULL DEFAULT '0',
  `FFAILOVERVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFORMULA` longtext,
  `FRANGEDIMINFO` longtext,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDIMSETINFO` varchar(2000) NOT NULL DEFAULT ' ',
  `FSYNCSTATUS` varchar(50) NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FSYNCMAINNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FMAINDIMENSION` varchar(255) NOT NULL DEFAULT ' ',
  `FREMARKCOLOR` varchar(50) NOT NULL DEFAULT ' ',
  `FEXPLAIN` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXAMINE_GROUP` (`FGROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_examine_annotatio_r3 definition

CREATE TABLE `t_eb_examine_annotatio_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine_annotation definition

CREATE TABLE `t_eb_examine_annotation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FREPORTPROCESS` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMINE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXAMINE_ANNOTATION_P2` (`FMODEL`,`FREPORTPROCESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine_dimgrop definition

CREATE TABLE `t_eb_examine_dimgrop` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `INDEX_EB_EXAMINEDIMGROP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_examine_dimset definition

CREATE TABLE `t_eb_examine_dimset` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine_memberscope definition

CREATE TABLE `t_eb_examine_memberscope` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBERSCOPE` longtext COLLATE utf8mb4_unicode_ci,
  `FDIMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCOPEMODIFIER` bigint NOT NULL DEFAULT '0',
  `FSCOPEMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_EXAMINE_MEMBERSCOPE_P1` (`FID`),
  KEY `IDX_EB_EXAMINE_MEMBERSCOPE_P2` (`FDIMNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine_new_repor_r3 definition

CREATE TABLE `t_eb_examine_new_repor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine_new_report definition

CREATE TABLE `t_eb_examine_new_report` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMINE` bigint NOT NULL DEFAULT '0',
  `FLEFTVALUE` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRIGHTVALUE` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDIFFERENCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FACCOUNT` bigint NOT NULL DEFAULT '0',
  `FDIMRANGE` longtext COLLATE utf8mb4_unicode_ci,
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANNOTATOR` bigint NOT NULL DEFAULT '0',
  `FANNOTATETIME` datetime DEFAULT NULL,
  `FEXAMINETIME` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FEXECUTETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FREPORTPROCESS` bigint NOT NULL DEFAULT '0',
  `FPROCESSTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FANNOTATION` bigint NOT NULL DEFAULT '0',
  `FDETAILVERSION` bigint NOT NULL DEFAULT '0',
  `FDETAILENTITY` bigint NOT NULL DEFAULT '0',
  `FDETAILPERIOD` bigint NOT NULL DEFAULT '0',
  `FDETAILDATATYPE` bigint NOT NULL DEFAULT '0',
  `FDATASET` bigint NOT NULL DEFAULT '0',
  `FSYMBOL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXAMINE_NEW_REPORT_UN` (`FMODEL`,`FPERIOD`,`FDATATYPE`,`FVERSION`,`FENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine_r3 definition

CREATE TABLE `t_eb_examine_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine_relation definition

CREATE TABLE `t_eb_examine_relation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine_report definition

CREATE TABLE `t_eb_examine_report` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FEXANNOTATION` bigint NOT NULL DEFAULT '0',
  `FREPORTPROCESS` bigint NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FEXECUTETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKRESULT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKRANGE` longtext COLLATE utf8mb4_unicode_ci,
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXAMINE_REPORT_P1` (`FMODELID`,`FDATASETID`),
  KEY `IDX_EB_EXAMINE_REPORT_P2` (`FREPORTPROCESS`),
  KEY `IDX_EB_EXAMINE_REPORT_P3` (`FTEMPLATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine_report_r3 definition

CREATE TABLE `t_eb_examine_report_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine_reportdetail definition

CREATE TABLE `t_eb_examine_reportdetail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FEXAMINEID` bigint NOT NULL DEFAULT '0',
  `FCHECKRESUTDETAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOTHERINFO` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_EXAMINE_REPORTDE_P1` (`FID`),
  KEY `IDX_EB_EXAMINE_REPORTDE_P2` (`FEXAMINEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examine_temp definition

CREATE TABLE `t_eb_examine_temp` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `INDEX_EB_EXAMINETEMP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_examine_value definition

CREATE TABLE `t_eb_examine_value` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FVALUE` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEXAMINETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FDIMJSON_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FNAME` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMEMBERKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_EB_EXAMINE_VALUE_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examineanno_mutua_r3 definition

CREATE TABLE `t_eb_examineanno_mutua_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examineanno_mutual definition

CREATE TABLE `t_eb_examineanno_mutual` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FREPORTPROCESSID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXAMINEANNO_MUTUAL_P2` (`FREPORTPROCESSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examinecategory definition

CREATE TABLE `t_eb_examinecategory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FCODE` varchar(50) NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FBUSINESSMODEL` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FRANGEDIMINFO` longtext,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXAMINE_CODE` (`FCODE`),
  KEY `IDX_EB_EXAMINE_NAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_examinecategory_l definition

CREATE TABLE `t_eb_examinecategory_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examinecategory_r3 definition

CREATE TABLE `t_eb_examinecategory_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examinecheck definition

CREATE TABLE `t_eb_examinecheck` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FREPORTID` bigint NOT NULL DEFAULT '0',
  `FRESULTID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXAMINECHECK_P1` (`FRESULTID`),
  KEY `IDX_EB_EXAMINECHECK_P2` (`FREPORTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_examinecheck_r3 definition

CREATE TABLE `t_eb_examinecheck_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examineplan definition

CREATE TABLE `t_eb_examineplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORG` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IX_EB_EXAMINEPLANT` (`FCREATEORG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examineplan_r3 definition

CREATE TABLE `t_eb_examineplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examineplanfyear definition

CREATE TABLE `t_eb_examineplanfyear` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_EXAMINEPLANFYEAR` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examineplanorg definition

CREATE TABLE `t_eb_examineplanorg` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_EXAMINEPLANORG` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examineplanperiod definition

CREATE TABLE `t_eb_examineplanperiod` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_EXAMINEPLANPERIOD` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examineplanversion definition

CREATE TABLE `t_eb_examineplanversion` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_EXAMINEPLANVERSION` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_examineresult definition

CREATE TABLE `t_eb_examineresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FRESULT` longtext,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXAMINERESULT` (`FCREATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_examineresult_r3 definition

CREATE TABLE `t_eb_examineresult_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_execanalyzehistor_r3 definition

CREATE TABLE `t_eb_execanalyzehistor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_execanalyzehistory definition

CREATE TABLE `t_eb_execanalyzehistory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FCOSTTYPE` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FVESION` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FAPPLICATION` varchar(30) NOT NULL DEFAULT ' ',
  `FFORMID` varchar(100) NOT NULL DEFAULT ' ',
  `FMODIFYER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXECANALYZEHISTORY` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_execanalyzehistory_r3 definition

CREATE TABLE `t_eb_execanalyzehistory_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_execcolentity definition

CREATE TABLE `t_eb_execcolentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORDER` bigint NOT NULL DEFAULT '0',
  `FEXESCHEMEID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANALYSEINFO` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFORMULA` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSHOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCOLTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'B',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IX_T_EB_EXECCOLENTITY` (`FORDER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_execcolentity_r3 definition

CREATE TABLE `t_eb_execcolentity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_execschemeentity definition

CREATE TABLE `t_eb_execschemeentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESC` varchar(750) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMEMBERJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FMEMBERJSON_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCONFIGJSON` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `INDEX_T_EB_EXECSCHEMEENTITY` (`FBIZMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_execschemeentity_l definition

CREATE TABLE `t_eb_execschemeentity_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(750) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_EXECSCHEMEENTITY_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_execschemeentity_r3 definition

CREATE TABLE `t_eb_execschemeentity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_executecase definition

CREATE TABLE `t_eb_executecase` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSMODELID` bigint NOT NULL DEFAULT '0',
  `FRULEAMOUNT` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXECUTECASE_P1` (`FMODELID`,`FBUSINESSMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_executecase_r3 definition

CREATE TABLE `t_eb_executecase_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_executecase_rule definition

CREATE TABLE `t_eb_executecase_rule` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FBIZRULEID` bigint NOT NULL DEFAULT '0',
  `FSCOPE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_EXECUTECASE_RULE_P1` (`FID`),
  KEY `IDX_EB_EXECUTECASE_RULE_P2` (`FSEQ`),
  KEY `IDX_EB_EXECUTECASE_RULE_P3` (`FBIZRULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_executecaserange definition

CREATE TABLE `t_eb_executecaserange` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBUSINESSMODEL` bigint NOT NULL DEFAULT '0',
  `FSCOPE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FSCOPE_TAG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXECUTECASERANGE_P1` (`FBUSINESSMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_executecaserange_r3 definition

CREATE TABLE `t_eb_executecaserange_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_executecaserecord definition

CREATE TABLE `t_eb_executecaserecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCASENUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCASENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTEPROGRESS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULEAMOUNT` bigint NOT NULL DEFAULT '0',
  `FEXECUTERULEAMOUNT` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FLASTTIME` datetime DEFAULT NULL,
  `FCANCELOR` bigint NOT NULL DEFAULT '0',
  `FEXECUTESTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEXECUTELOG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `fcase` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXECUTECASERECORD_P1` (`FCASENUMBER`),
  KEY `IDX_EB_EXECUTECASERECORD_P2` (`FMODELID`),
  KEY `IDX_EB_EXECUTECASERECORD_P3` (`FEXECUTESTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_executecaserecord_r3 definition

CREATE TABLE `t_eb_executecaserecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_executenote_r3 definition

CREATE TABLE `t_eb_executenote_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_executeproject definition

CREATE TABLE `t_eb_executeproject` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJECT` bigint NOT NULL DEFAULT '0',
  `FORDER` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_EXECUTEPROJECT_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_executeshare_log definition

CREATE TABLE `t_eb_executeshare_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSHARESCHEMEID` bigint NOT NULL DEFAULT '0',
  `FTABKEY` varchar(10) NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FLOG` longtext,
  `FSTATUS` varchar(2) NOT NULL DEFAULT ' ',
  `FEXECUTEINSTANCEID` varchar(30) NOT NULL DEFAULT ' ',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXECUTE_LOG_SCHEMEID` (`FSHARESCHEMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_executeshare_log_r3 definition

CREATE TABLE `t_eb_executeshare_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_exportfilelist definition

CREATE TABLE `t_eb_exportfilelist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFILENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FURL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOWNLOADCOUNT` bigint NOT NULL DEFAULT '0',
  `FFILETYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FERRORMSG` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROGRESS` char(6) COLLATE utf8mb4_unicode_ci DEFAULT '0%',
  `FORDER` int NOT NULL DEFAULT '0',
  `FQUEUEID` bigint NOT NULL DEFAULT '0',
  `FMESSAGE` longtext COLLATE utf8mb4_unicode_ci,
  `FTIMEOUT` bigint DEFAULT '3600000',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_EXPORTFILELIST` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_exportfilelist_l definition

CREATE TABLE `t_eb_exportfilelist_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILENAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_EXPORTFILELIST_L_0` (`FPKID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_exportinfo definition

CREATE TABLE `t_eb_exportinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FSPREADSERIAL` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_EXPORTINFO` (`FTEMPLATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_exportinfo_r3 definition

CREATE TABLE `t_eb_exportinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_exportksql_entity_r3 definition

CREATE TABLE `t_eb_exportksql_entity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_fixedvalue definition

CREATE TABLE `t_eb_fixedvalue` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FFIXEDTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FACCOUNTJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_FIXEDVALUE_P1` (`FMODELID`),
  KEY `IDX_EB_FIXEDVALUE_P2` (`FBIZMODEL`),
  KEY `IDX_EB_FIXEDVALUE_P3` (`FFIXEDTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_fixedvalue_r3 definition

CREATE TABLE `t_eb_fixedvalue_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_fixedvaluesetting definition

CREATE TABLE `t_eb_fixedvaluesetting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORGJSON` longtext COLLATE utf8mb4_unicode_ci,
  `FDIMJSON1` longtext COLLATE utf8mb4_unicode_ci,
  `FDIMJSON2` longtext COLLATE utf8mb4_unicode_ci,
  `FDIMJSON3` longtext COLLATE utf8mb4_unicode_ci,
  `FDIMJSON4` longtext COLLATE utf8mb4_unicode_ci,
  `FDIMJSON5` longtext COLLATE utf8mb4_unicode_ci,
  `FDIMJSON6` longtext COLLATE utf8mb4_unicode_ci,
  `FDIMJSON7` longtext COLLATE utf8mb4_unicode_ci,
  `FDIMJSON8` longtext COLLATE utf8mb4_unicode_ci,
  `FDIMJSON9` longtext COLLATE utf8mb4_unicode_ci,
  `FFIXEDVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_FIXVALUESETTING_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_flinktest_r3 definition

CREATE TABLE `t_eb_flinktest_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_forecast_record definition

CREATE TABLE `t_eb_forecast_record` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FDIMHASH` bigint NOT NULL DEFAULT '0',
  `FENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERS` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREDSTART` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREDEND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAUNIT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODTYPE` bigint NOT NULL DEFAULT '0',
  `FMETRIC` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREDINDEX` longtext COLLATE utf8mb4_unicode_ci,
  `FPREDDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FFITDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FSAMPLEINDEX` longtext COLLATE utf8mb4_unicode_ci,
  `FSAMPLEDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FCONFIDENCEMIN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIDENCEMAX` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDIMVIEW` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANVASID` bigint NOT NULL DEFAULT '0',
  `FSANDBOXID` bigint NOT NULL DEFAULT '0',
  `FCORR` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_FORECAST_DM` (`FDIMHASH`),
  KEY `IDX_EB_FORECAST_MD` (`FMODELID`),
  KEY `IDX_EB_FORECAST_DS` (`FDATASETID`),
  KEY `IDX_EB_FORECAST_SB` (`FSANDBOXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_forecast_record_r3 definition

CREATE TABLE `t_eb_forecast_record_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_formularefer definition

CREATE TABLE `t_eb_formularefer` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FREFERACCOUNT` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_FORMULAREFER_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_formularegister definition

CREATE TABLE `t_eb_formularegister` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCLOUDID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETHOD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCLASSPATH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_FORMULAREGISTER` (`FCLOUDID`,`FAPPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_formularegister_r3 definition

CREATE TABLE `t_eb_formularegister_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_gpt_param definition

CREATE TABLE `t_eb_gpt_param` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAM` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_GPT_PARAM_NM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_gpt_param_r3 definition

CREATE TABLE `t_eb_gpt_param_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration definition

CREATE TABLE `t_eb_integration` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FSOURCEOBJID` bigint NOT NULL DEFAULT '0',
  `FSOURCESYSID` bigint NOT NULL DEFAULT '0',
  `FTARGETSYSID` bigint NOT NULL DEFAULT '0',
  `FTRIGGERID` bigint NOT NULL DEFAULT '0',
  `FTABLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATEFIELD` datetime DEFAULT NULL,
  `FMETRICTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCSINGLEMETRIC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKFIELD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEASMODEL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETOBJID` bigint NOT NULL DEFAULT '0',
  `FFIXEDMEMBER` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEASEDITSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEASDBID` bigint NOT NULL DEFAULT '0',
  `FEASDATACENTER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEASDB` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_INTEGRATION_P1` (`FDATASETID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_log definition

CREATE TABLE `t_eb_integration_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTEGRATIONID` bigint NOT NULL DEFAULT '0',
  `FISYNCCOUNT` int NOT NULL DEFAULT '0',
  `FSUCCESSCOUNT` int NOT NULL DEFAULT '0',
  `FFAILCOUNT` int NOT NULL DEFAULT '0',
  `FCREATERFIELD` bigint NOT NULL DEFAULT '0',
  `FCREATEDATEFIELD` datetime DEFAULT NULL,
  `FMODIFYDATEFIELD` datetime DEFAULT NULL,
  `FDELETEDATAINFO` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FSCOPE` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ING_LOG` (`FINTEGRATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_log_r3 definition

CREATE TABLE `t_eb_integration_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_logde_r3 definition

CREATE TABLE `t_eb_integration_logde_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_logdet definition

CREATE TABLE `t_eb_integration_logdet` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOGID` bigint NOT NULL DEFAULT '0',
  `FFAILMSG` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FINTEGRATIONID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATEFIELD` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ING_LOGID` (`FLOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_logdet_r3 definition

CREATE TABLE `t_eb_integration_logdet_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_map definition

CREATE TABLE `t_eb_integration_map` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMSOURCE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTARGET` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FMAPCAT` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDimcombo` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASET` bigint NOT NULL DEFAULT '0',
  `FTARGETOBJID` bigint NOT NULL DEFAULT '0',
  `FDIMVIEW` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_MAP_MAPCAT_P1` (`FMAPCAT`),
  KEY `IDX_EB_INTEGRATION_V` (`FDIMVIEW`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_map_r3 definition

CREATE TABLE `t_eb_integration_map_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_mapca_r3 definition

CREATE TABLE `t_eb_integration_mapca_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_mapcat definition

CREATE TABLE `t_eb_integration_mapcat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MAPCAT_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_mapcat_r3 definition

CREATE TABLE `t_eb_integration_mapcat_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_mapdim definition

CREATE TABLE `t_eb_integration_mapdim` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMSOURCE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMSOURCENAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTARGETID` bigint NOT NULL DEFAULT '0',
  `FDIMTARGET` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTARGETNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMMEMBMAPID` bigint NOT NULL DEFAULT '0',
  `FDIMMEMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMMEMBNUM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIXEDMEMBER` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDIMATTR` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX__MAPDIM_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_mapm definition

CREATE TABLE `t_eb_integration_mapm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMETRICSOURCE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETRICSOURCENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETRICTARGET` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETRICTARGETNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_MAPM_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_mapval definition

CREATE TABLE `t_eb_integration_mapval` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSOURCENUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCENAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAIMNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAIMNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_MAPVAL_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_query definition

CREATE TABLE `t_eb_integration_query` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTEGRATIONID` bigint NOT NULL DEFAULT '0',
  `QUERYJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCREATERFIELD` bigint NOT NULL DEFAULT '0',
  `FCREATEDATEFIELD` datetime DEFAULT NULL,
  `FMODIFYDATEFIELD` datetime DEFAULT NULL,
  `FQUERYJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERFIELD` bigint NOT NULL DEFAULT '0',
  `FDEFAULTSHOWSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSCHEDULESTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FISDELETEDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ING_QUERY` (`FINTEGRATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_query_r3 definition

CREATE TABLE `t_eb_integration_query_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_r3 definition

CREATE TABLE `t_eb_integration_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_route_r3 definition

CREATE TABLE `t_eb_integration_route_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_router definition

CREATE TABLE `t_eb_integration_router` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSOURCE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ING_ROUTER_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integration_router_r3 definition

CREATE TABLE `t_eb_integration_router_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_integrationtest_r3 definition

CREATE TABLE `t_eb_integrationtest_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_intergration definition

CREATE TABLE `t_eb_intergration` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSCENEID` bigint NOT NULL DEFAULT '0',
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAILID` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPEID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FMULTIGAAPID` bigint NOT NULL DEFAULT '0',
  `FDIM1` bigint NOT NULL DEFAULT '0',
  `FDIM2` bigint NOT NULL DEFAULT '0',
  `FDIM3` bigint NOT NULL DEFAULT '0',
  `FDIM4` bigint NOT NULL DEFAULT '0',
  `FDIM5` bigint NOT NULL DEFAULT '0',
  `FDIM6` bigint NOT NULL DEFAULT '0',
  `FDATAFROM` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORGLONGNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFLOATAREA` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMYCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FDATASORTID` bigint NOT NULL DEFAULT '0',
  `FFLOATINDEX` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_INTERGRATE_TMPL_SCEID` (`FTEMPLATEID`,`FSCENEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_intergration_r3 definition

CREATE TABLE `t_eb_intergration_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_judgecondition definition

CREATE TABLE `t_eb_judgecondition` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFPARAMDIMNUMS` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFFUNCTIONDIMNUMS` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_JUDGE_MODEL` (`FMODELID`,`FBIZMODELID`),
  KEY `IDX_EB_JUDGECONDITION_FUNCDIM` (`FMODELID`,`FBIZMODELID`,`FREFFUNCTIONDIMNUMS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_judgecondition_r3 definition

CREATE TABLE `t_eb_judgecondition_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_judgeconditionentry definition

CREATE TABLE `t_eb_judgeconditionentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FCONNECTOR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FCOMPAREID` bigint NOT NULL DEFAULT '0',
  `FOFFSETTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCOMPARESYMBOL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCOMPARERESULT` decimal(23,2) NOT NULL DEFAULT '0.00',
  `FISEND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FWORDDISPLAY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWARNGRAPH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNUMBERDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_EB_ENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_leafbizruletempdi_r3 definition

CREATE TABLE `t_eb_leafbizruletempdi_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_leafbizruletempdis definition

CREATE TABLE `t_eb_leafbizruletempdis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FBIZRULE` bigint NOT NULL DEFAULT '0',
  `FTASKLIST` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_LEAFRULETEMPDIS` (`FTEMPLATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_leafbizruletempdis_r3 definition

CREATE TABLE `t_eb_leafbizruletempdis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_localapproveopinion definition

CREATE TABLE `t_eb_localapproveopinion` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FOPINION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVEUSER` bigint NOT NULL DEFAULT '0',
  `FAPPROVETIME` datetime DEFAULT NULL,
  `FMAINJOB` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_LOCALAPPROVEOPINION` (`FPROCESSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_logsign definition

CREATE TABLE `t_eb_logsign` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FGROUPNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGSIGN` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `fstatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_logsign_r3 definition

CREATE TABLE `t_eb_logsign_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mainsubcontrolset definition

CREATE TABLE `t_eb_mainsubcontrolset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONTROLMODELTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAMETA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mainsubcontrolset_r3 definition

CREATE TABLE `t_eb_mainsubcontrolset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mainsubmodel definition

CREATE TABLE `t_eb_mainsubmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINMODEL` bigint NOT NULL DEFAULT '0',
  `FTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTFY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRESETYEAR` int NOT NULL DEFAULT '0',
  `FBASEDATAFIELD` bigint NOT NULL DEFAULT '0',
  `FFOUNDWAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FADMIN` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPAGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROLDIM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONTROLTYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSPORTRANGE` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCONTROLRANGE` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '2',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mainsubmodel_bizmode definition

CREATE TABLE `t_eb_mainsubmodel_bizmode` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mainsubmodel_l definition

CREATE TABLE `t_eb_mainsubmodel_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_MAINSUBMODEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mainsubmodel_r3 definition

CREATE TABLE `t_eb_mainsubmodel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mainsubmodel_rele definition

CREATE TABLE `t_eb_mainsubmodel_rele` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRELETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mappingbasedata definition

CREATE TABLE `t_eb_mappingbasedata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAFIELD` varchar(255) NOT NULL DEFAULT ' ',
  `FBASENAME` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MAP_NO` (`FBASEDATAFIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_mappingbasedata_r3 definition

CREATE TABLE `t_eb_mappingbasedata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_member_quote definition

CREATE TABLE `t_eb_member_quote` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FQUOTENUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_MEMBER_QUOTES` (`FDIMENSIONNUMBER`,`FMEMBERNUMBER`,`FMODELNUMBER`),
  KEY `IDX_T_EB_MEMBER_QUOTE_QUOTE` (`FQUOTENUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_member_quote_r3 definition

CREATE TABLE `t_eb_member_quote_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_membermapping definition

CREATE TABLE `t_eb_membermapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBIZMEMBERID` bigint NOT NULL DEFAULT '0',
  `FBINUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMMEMBERID` bigint NOT NULL DEFAULT '0',
  `FDIMMEMNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMMEMNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FENTRYSTATUS` char(1) NOT NULL DEFAULT '',
  `FBIZNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FRANGE` varchar(100) NOT NULL DEFAULT '10',
  `FBIZNAMEEXT` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZNUMBEREXT` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZMEMBERIEXTID` bigint NOT NULL DEFAULT '0',
  `FBUDIMMEMBERID` bigint NOT NULL DEFAULT '0',
  `FBUDIMMEMNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FBUDIMMEMNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FISCONTAIN` char(1) NOT NULL DEFAULT '',
  `FMOREBUSSDATA` varchar(100) NOT NULL DEFAULT ' ',
  `FWILDCARDSTATUS` char(1) NOT NULL DEFAULT '0',
  `FASSISTMOREBUSSDATA` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_MEMBERMAPPING` (`FID`),
  KEY `IDX_EB_MEMBERMAPPING_SEQ` (`FSEQ`),
  KEY `IDX_T_EB_MEMBERMAPPING_MEM` (`FDIMMEMBERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_memberperm definition

CREATE TABLE `t_eb_memberperm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRANGE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERMISSION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FMEMBERTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBER` bigint NOT NULL DEFAULT '0',
  `FUSERTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERSID` bigint NOT NULL DEFAULT '0',
  `FISCUSTOMPROP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MEMPERM_MEM` (`FMEMBER`),
  KEY `IDX_EB_MEMPERM_USER` (`FUSERSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_memberperm_l definition

CREATE TABLE `t_eb_memberperm_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_PERML_FK` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_memberpropertyvalue definition

CREATE TABLE `t_eb_memberpropertyvalue` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROPERTYVALUEID` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_MEMPROPERVALUE_P1` (`FID`),
  KEY `IDX_EB_MEMPROPERVALUE_VAL` (`FPROPERTYVALUEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_memberquote definition

CREATE TABLE `t_eb_memberquote` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FTYPE` int NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `UX_EB_MEMBERQUOTE` (`FMODELID`,`FDIMENSIONID`,`FDATASETID`,`FMEMBERID`,`FTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_memberquote_r3 definition

CREATE TABLE `t_eb_memberquote_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_memberquoteentry definition

CREATE TABLE `t_eb_memberquoteentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FQUOTEID` bigint NOT NULL DEFAULT '0',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FSOURCETYPE` int NOT NULL DEFAULT '0',
  `FRANGE` char(4) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `FVIEWID` bigint NOT NULL DEFAULT '0',
  `FEXT` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IX_EB_MEMBERQUOTEENTRY` (`FQUOTEID`),
  KEY `IX_EB_MEMBERQUOTEENTRY_RES` (`FSOURCEID`,`FSOURCETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_memberquoteentry_r3 definition

CREATE TABLE `t_eb_memberquoteentry_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_membersaveselect definition

CREATE TABLE `t_eb_membersaveselect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMEMBERID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FRANGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLEVELCOUNT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `FCURLEVEL` int NOT NULL DEFAULT '0',
  `FSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVIEWID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MEMBERSAVESELECT_P1` (`FMEMBERID`),
  KEY `IDX_EB_MEMBERSAVESELECT_V` (`FVIEWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_membersaveselect_r3 definition

CREATE TABLE `t_eb_membersaveselect_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_membpermrecord definition

CREATE TABLE `t_eb_membpermrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FUID` bigint NOT NULL DEFAULT '0',
  `FBIZCTRLRANGEID` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPERMGROUP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDIMSHORTNUMS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IX_EB_MEMBPERMRECORD` (`FMODELID`,`FBIZCTRLRANGEID`,`FPERMGROUP`,`FUID`,`FDIMSHORTNUMS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_membpermrecorddetail definition

CREATE TABLE `t_eb_membpermrecorddetail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FPERMVAL` smallint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMEMBSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IX_EB_MEMBPERMRECORDDETAIL1` (`FMEMBERID`),
  KEY `IX_EB_MEMBPERMRECORDDETAIL` (`FID`,`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_membpermupdatelog definition

CREATE TABLE `t_eb_membpermupdatelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSER` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FBIZCTRLRANGE` bigint NOT NULL DEFAULT '0',
  `FTARGETUSER` bigint NOT NULL DEFAULT '0',
  `FTARGETUSERGROUP` bigint NOT NULL DEFAULT '0',
  `FPERMTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLOGINFO` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATETIME` datetime DEFAULT NULL,
  `FOPTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDIMSHORTNUMSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_membpermupdatelog_r3 definition

CREATE TABLE `t_eb_membpermupdatelog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_membpermversion definition

CREATE TABLE `t_eb_membpermversion` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSER` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FBIZRANGE` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FDIMSHORTNUMS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FREFDIMGROUP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FADDTIME` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MEMBPERMVERSION_REF` (`FMODEL`,`FBIZRANGE`,`FDIMSHORTNUMS`,`FREFDIMGROUP`,`FUSER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_membpermversion_r3 definition

CREATE TABLE `t_eb_membpermversion_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_memcustomproperty_r3 definition

CREATE TABLE `t_eb_memcustomproperty_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mergecontrolentit_r3 definition

CREATE TABLE `t_eb_mergecontrolentit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mergecontrolentity definition

CREATE TABLE `t_eb_mergecontrolentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FYBCARRIED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDATACOLLECT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCALCULATESTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFLOWSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FARTICULATIONCHKSTA` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPCCALCULATESTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPCFLOWSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPCARTICULATIONCHKSTA` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRATIOMERGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FADJUST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOFFSET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMERGECONTRIBUTION` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRPTSUM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FADJUSTSUM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOFFSETSUM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMERGESUM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FMERGEDATASOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MERGECONTROLENTITY` (`FMODELID`,`FYEARID`,`FPERIODID`,`FSCENARIOID`,`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mergedataset definition

CREATE TABLE `t_eb_mergedataset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMERGEDATASOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MERGEDSET_MODEL` (`FMODELID`,`FYEARID`,`FPERIODID`,`FSCENARIOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mergedataset_r3 definition

CREATE TABLE `t_eb_mergedataset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mnt_executelog definition

CREATE TABLE `t_eb_mnt_executelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMNTSCHEME` bigint NOT NULL DEFAULT '0',
  `FANNOUNCEMENTCONTENT` bigint NOT NULL DEFAULT '0',
  `FEXECUTETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIONTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTERESULT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASON` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTEUSER` bigint NOT NULL DEFAULT '0',
  `FDATETIMEFIELD` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FCHANNEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mnt_executelog_r3 definition

CREATE TABLE `t_eb_mnt_executelog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mnt_executeplan definition

CREATE TABLE `t_eb_mnt_executeplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMNTSCHEME` bigint NOT NULL DEFAULT '0',
  `FANNOUNCEMENTCONTENT` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FPURPOSE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEUSER` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCHANNEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mnt_executeplan_r3 definition

CREATE TABLE `t_eb_mnt_executeplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mnt_planjobentry definition

CREATE TABLE `t_eb_mnt_planjobentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FJOB` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLAN` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_MNT_PLANJOBENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mobreportconfig definition

CREATE TABLE `t_eb_mobreportconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FMOBCONFIG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_MOBREPORTCONFIG` (`FTEMPLATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mobreportconfig_r3 definition

CREATE TABLE `t_eb_mobreportconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_model definition

CREATE TABLE `t_eb_model` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTFY` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEGINPERIOD` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRESETYEAR` int NOT NULL DEFAULT '0',
  `FISDETAILTOMONTH` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMINCLUDEQRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMINCLUDEYEAR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISDETAILTOQRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISDETAILTOHALFYEAR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMODELTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FBEGINYEAROFMONTH` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEGINPERIODTXT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEFINEDDIM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPERMCONTROL` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQRTINCLUDEYEAR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMONTHINCLUDE13` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSHOWNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSPPTPROJECT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FHASCACHE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASOURCE` bigint NOT NULL DEFAULT '0',
  `FPARENTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FSYNCDATE` datetime DEFAULT NULL,
  `FLASTSYNCUSER` bigint DEFAULT '0',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTMODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MODEL_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_model_l definition

CREATE TABLE `t_eb_model_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_MODEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_model_r3 definition

CREATE TABLE `t_eb_model_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelolapdata definition

CREATE TABLE `t_eb_modelolapdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FISNEEDCOLLECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelolapdata_r3 definition

CREATE TABLE `t_eb_modelolapdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelperm definition

CREATE TABLE `t_eb_modelperm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MODEL_PERM` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelperm_l definition

CREATE TABLE `t_eb_modelperm_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_MODELPERM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelperm_r3 definition

CREATE TABLE `t_eb_modelperm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelpermentry definition

CREATE TABLE `t_eb_modelpermentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FETYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERS` bigint NOT NULL DEFAULT '0',
  `FMANAGETYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_MODEL_PERMENTYR` (`FUSERS`),
  KEY `IDX_EB_MODELPERMENTRY_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modeltransport_lo_r3 definition

CREATE TABLE `t_eb_modeltransport_lo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modeltransport_log definition

CREATE TABLE `t_eb_modeltransport_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FMODELNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPROGRESS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0%',
  `FCREATER` bigint DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FERRORMESSAGE` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FURL` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modeltransport_log_l definition

CREATE TABLE `t_eb_modeltransport_log_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelupload definition

CREATE TABLE `t_eb_modelupload` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FNAME` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSRCMODEL` bigint NOT NULL DEFAULT '0',
  `FSRCBIZ` bigint NOT NULL DEFAULT '0',
  `FTARMODEL` bigint NOT NULL DEFAULT '0',
  `FTARBIZ` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MODELUPLOAD_P1` (`FSRCMODEL`,`FTARMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelupload_dimmap definition

CREATE TABLE `t_eb_modelupload_dimmap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '1',
  `FSRCDIM` bigint NOT NULL DEFAULT '0',
  `FSRCMEMBERID` bigint NOT NULL DEFAULT '0',
  `FSRCMEMBERTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARDIM` bigint NOT NULL DEFAULT '0',
  `FTARMEMBERID` bigint NOT NULL DEFAULT '0',
  `FTARMEMBERTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FONLYMAP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMEMBERMAP` bigint NOT NULL DEFAULT '0',
  `fistransfermember` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_MODELUPLOAD_DIMMAP_PID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelupload_l definition

CREATE TABLE `t_eb_modelupload_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_MODELUPLOAD_L_ID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelupload_log definition

CREATE TABLE `t_eb_modelupload_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELUPLOAD` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3',
  `FORG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FBP` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSRCVERSION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARVERSION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUCCESSCOUNT` int NOT NULL DEFAULT '0',
  `FFAILCOUNT` int NOT NULL DEFAULT '0',
  `FFAILMSG` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATEFIELD` datetime DEFAULT NULL,
  `FCREATERFIELD` bigint NOT NULL DEFAULT '0',
  `ftransferinfo` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MODELUPLOAD` (`FMODELUPLOAD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelupload_log_r3 definition

CREATE TABLE `t_eb_modelupload_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modelupload_r3 definition

CREATE TABLE `t_eb_modelupload_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_modifynote definition

CREATE TABLE `t_eb_modifynote` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODIFYVALUE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVELPERIOD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVER` bigint NOT NULL DEFAULT '0',
  `FOLDVALUE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_BGM_MODIFYNOTE_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_multidimmemrel_d definition

CREATE TABLE `t_eb_multidimmemrel_d` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FMEMBERNUM` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSION` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_MULTIDIMMEMREL_D_P1` (`FID`),
  KEY `IDX_EB_MULTIDIMMEMREL_D_P2` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_multidimmemrelati_r3 definition

CREATE TABLE `t_eb_multidimmemrelati_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_multidimmemrelation definition

CREATE TABLE `t_eb_multidimmemrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDSEQ` int NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FRELATIONID` bigint NOT NULL DEFAULT '0',
  `FENTRYHASHID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MULTIDIMMEMRELATION_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_multidimrelation definition

CREATE TABLE `t_eb_multidimrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDSEQ` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAFFECTRANGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MULTIDIMRELATION_P1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_multidimrelation_d definition

CREATE TABLE `t_eb_multidimrelation_d` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONVIEWID` bigint NOT NULL DEFAULT '0',
  `FISMAINDIM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_MULTIDIMRELATION_D_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_multidimrelation_r3 definition

CREATE TABLE `t_eb_multidimrelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mutexrecord definition

CREATE TABLE `t_eb_mutexrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FIPADDRESS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `INDEX_EB_MUTEXRECORD_1` (`FBILLTYPE`,`FBILLNUMBER`,`FOPTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_mutexrecord_r3 definition

CREATE TABLE `t_eb_mutexrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_nofinancialfile definition

CREATE TABLE `t_eb_nofinancialfile` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTEXT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_NOFIN_TEMP` (`FTEMPLATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_nofinancialfile_l definition

CREATE TABLE `t_eb_nofinancialfile_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_NOFINANCIALFILE_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_nofinancialfile_r3 definition

CREATE TABLE `t_eb_nofinancialfile_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_notice definition

CREATE TABLE `t_eb_notice` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FPUSHTIMEASSISTANT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSTANTPUSH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FREMIND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUSHMESSAGECENTER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FPURPOSE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEMETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_notice_l definition

CREATE TABLE `t_eb_notice_l` (
  `FPKID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_NOTICE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_notice_r3 definition

CREATE TABLE `t_eb_notice_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_offsetentry definition

CREATE TABLE `t_eb_offsetentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  `FCSLORGID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAILID` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPEID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FMETRICID` bigint NOT NULL DEFAULT '0',
  `FSELFDIM1` bigint NOT NULL DEFAULT '0',
  `FSELFDIM2` bigint NOT NULL DEFAULT '0',
  `FSELFDIM3` bigint NOT NULL DEFAULT '0',
  `FSELFDIM4` bigint NOT NULL DEFAULT '0',
  `FSELFDIM5` bigint NOT NULL DEFAULT '0',
  `FSELFDIM6` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FOFFSETRULELD` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOFFSETORGID` bigint NOT NULL DEFAULT '0',
  `FOFFSETCATALOG` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMETRICQTYID` bigint NOT NULL DEFAULT '0',
  `FBUSMODELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `INDEX_EB_OFFSETENTRY_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_offsetentry_r3 definition

CREATE TABLE `t_eb_offsetentry_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_offsetentrydetail definition

CREATE TABLE `t_eb_offsetentrydetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FMYORGID` bigint NOT NULL DEFAULT '0',
  `FINTERORGID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(29,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNTD` decimal(29,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNTC` decimal(29,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAMOUNTQTY` decimal(29,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `INDEX_EB_OFFSETENTRYDETAIL_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_offsetexecutelog definition

CREATE TABLE `t_eb_offsetexecutelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FPARAMETERDATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMSG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `INDEX_EB_OFFSETEXECUTELOG` (`FCREATER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_offsetexecutelog_r3 definition

CREATE TABLE `t_eb_offsetexecutelog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_offsetrule definition

CREATE TABLE `t_eb_offsetrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FENABLE` char(1) NOT NULL DEFAULT '1',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FOFFSETRULECATALOGID` bigint NOT NULL DEFAULT '0',
  `FVARHANDLE` varchar(30) NOT NULL DEFAULT ' ',
  `FASSISTDIM` varchar(200) NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FMETRICID` bigint NOT NULL DEFAULT '0',
  `FVARACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAILID` bigint NOT NULL DEFAULT '0',
  `FDESTAUDITTRAILID` bigint NOT NULL DEFAULT '0',
  `FMETRICQTYID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(400) NOT NULL DEFAULT ' ',
  `FBUSMODELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_OFF_CATALOGID` (`FOFFSETRULECATALOGID`),
  KEY `IDX_EB_OFF_FMODELID` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_offsetrule_l definition

CREATE TABLE `t_eb_offsetrule_l` (
  `FPKID` varchar(30) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_OFFSETRULE_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_offsetrule_r3 definition

CREATE TABLE `t_eb_offsetrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_offsetruleaccounts definition

CREATE TABLE `t_eb_offsetruleaccounts` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSENDERACCOUNT` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_OFFSETRULE_ACCOUNTS_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_offsetrulecatalog definition

CREATE TABLE `t_eb_offsetrulecatalog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  `FNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FBUSMODELID` bigint NOT NULL DEFAULT '0',
  `FASSISTDIM` varchar(200) NOT NULL DEFAULT ' ',
  `FISPRESET` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_OFFCATA_FMODEL` (`FMODELID`),
  KEY `IDX_EB_OFFCATA_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_offsetrulecatalog_l definition

CREATE TABLE `t_eb_offsetrulecatalog_l` (
  `FPKID` varchar(30) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_OFFCATA_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_offsetrulecatalog_r3 definition

CREATE TABLE `t_eb_offsetrulecatalog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_offsetruleorgs definition

CREATE TABLE `t_eb_offsetruleorgs` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_OFFSETRULEORGS_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_olaptransaction_log definition

CREATE TABLE `t_eb_olaptransaction_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTRANSACTIONID` bigint NOT NULL DEFAULT '0',
  `FCUBEID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FOLAPDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_OLAPTRANSACTION_LOG` (`FTRANSACTIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_operationlog definition

CREATE TABLE `t_eb_operationlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FTRACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IX_EB_OPERATIONLOG_TRACE` (`FTRACEID`),
  KEY `IX_EB_OPERATIONLOG_TIME` (`FCREATETIME`),
  KEY `IX_EB_OPERATIONLOG_USER` (`FCREATORID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_operationlog_r3 definition

CREATE TABLE `t_eb_operationlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_pagedimselect definition

CREATE TABLE `t_eb_pagedimselect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FMEMBER` bigint NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TEMPLATE` (`FTEMPLATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_pagedimselect_r3 definition

CREATE TABLE `t_eb_pagedimselect_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_param_setting definition

CREATE TABLE `t_eb_param_setting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNODEID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FPARAMS` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_PARAM_SETTING` (`FNODEID`,`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_param_tree definition

CREATE TABLE `t_eb_param_tree` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCODE` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_PARAM_TREE` (`FCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_param_tree_r3 definition

CREATE TABLE `t_eb_param_tree_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_periodmanageentit_r3 definition

CREATE TABLE `t_eb_periodmanageentit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_periodmanageentity definition

CREATE TABLE `t_eb_periodmanageentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENTRYSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXECUTEACTION` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOPTIME` datetime DEFAULT NULL,
  `FOPERATOR` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_PERIODMANAGEENT` (`FMODELID`,`FYEARID`,`FPERIODID`,`FSCENARIOID`,`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_periodvariable definition

CREATE TABLE `t_eb_periodvariable` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOFFSET` int NOT NULL DEFAULT '0',
  `FBASEVARIABLE` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FGROUPTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_PERIODVARIABLE_P1` (`FPERIODTYPE`),
  KEY `IDX_EB_PERIODVARIABLE_P2` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_periodvariable_l definition

CREATE TABLE `t_eb_periodvariable_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_PV_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_periodvariable_r3 definition

CREATE TABLE `t_eb_periodvariable_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_permcontroldim definition

CREATE TABLE `t_eb_permcontroldim` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FPERMCONTROLDIM` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_PERMCONTROLDIM_FMODELID` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_permcontroldim_r3 definition

CREATE TABLE `t_eb_permcontroldim_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_permdimgroup definition

CREATE TABLE `t_eb_permdimgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FMODIFIERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATEFIELD` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_PERMDIMGROUP_MODEL` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_permdimgroup_dim definition

CREATE TABLE `t_eb_permdimgroup_dim` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_PERMDIMGROUP_DIM_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_permdimgroup_r3 definition

CREATE TABLE `t_eb_permdimgroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_permdimgroup_row definition

CREATE TABLE `t_eb_permdimgroup_row` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMGROUPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_PERMDIMGROUP_ROW_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_permdimgroup_row_l definition

CREATE TABLE `t_eb_permdimgroup_row_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMGROUPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_PERMDIMGROUP_ROW_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_pjotemclodim definition

CREATE TABLE `t_eb_pjotemclodim` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMMEMBER` varchar(2000) NOT NULL DEFAULT ' ',
  `FSELDIMENSION` varchar(100) NOT NULL DEFAULT ' ',
  `FISVISIBLE` char(1) NOT NULL DEFAULT '0',
  `FDIMENSIONID` varchar(100) NOT NULL DEFAULT ' ',
  `FDIMNUMBER` varchar(2000) NOT NULL DEFAULT ' ',
  `FDIMMEMBERNUM` varchar(2000) NOT NULL DEFAULT ' ',
  `FMEMID` varchar(2000) NOT NULL DEFAULT ' ',
  `FDIMDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FRANGE` varchar(2000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_PJO_TEMPLATEID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_pjotemdistribute definition

CREATE TABLE `t_eb_pjotemdistribute` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FRANGE` varchar(30) NOT NULL DEFAULT ' ',
  `FPROPERTY` bigint NOT NULL DEFAULT '0',
  `FPROPERTYVALUE` bigint NOT NULL DEFAULT '0',
  `FTEXTNAME` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_MODEL_ENTITY_TEMP` (`FMODEL`,`FENTITY`,`FTEMPLATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_pjotemdistribute_r3 definition

CREATE TABLE `t_eb_pjotemdistribute_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_pjotemplate definition

CREATE TABLE `t_eb_pjotemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FTEMPLATECATAID` bigint NOT NULL DEFAULT '0',
  `FORGINFORMATION` varchar(100) NOT NULL DEFAULT ' ',
  `FINFORMATION` varchar(500) NOT NULL DEFAULT ' ',
  `FDATE` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(2000) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FORGNAME` varchar(2000) NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) NOT NULL DEFAULT '1',
  `FDEFINDIMENSION` varchar(100) NOT NULL DEFAULT ' ',
  `FMONEYUNIT` char(2) NOT NULL DEFAULT '10',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_PJO_CATA_MODL_NUM` (`FNUMBER`,`FTEMPLATECATAID`,`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_pjotemplate_org definition

CREATE TABLE `t_eb_pjotemplate_org` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_PRJORG_TEMPLATEID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_pjotemplate_r3 definition

CREATE TABLE `t_eb_pjotemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_pjotemplate_yera definition

CREATE TABLE `t_eb_pjotemplate_yera` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDE_EB_PRJYEAR_TEMPLATEID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_pjotemplatecata definition

CREATE TABLE `t_eb_pjotemplatecata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(500) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_PJOTEMPCATA_MODEL_NUM` (`FNUMBER`,`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_pjotemplatecata_l definition

CREATE TABLE `t_eb_pjotemplatecata_l` (
  `FPKID` varchar(30) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_PJOTEMPLATECATA_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_pjotemplatecata_r3 definition

CREATE TABLE `t_eb_pjotemplatecata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_planrefexamine definition

CREATE TABLE `t_eb_planrefexamine` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXAMINENUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMINENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMINESTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '1',
  `FEXAMINEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_PLANREFEXAMINE` (`FEXAMINEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_presetbillfield definition

CREATE TABLE `t_eb_presetbillfield` (
  `BILLNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `CONTROLDIM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `COLUMNNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `COLUMNNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ISPREFAB` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`BILLNUMBER`,`CONTROLDIM`,`COLUMNNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_projectimpl definition

CREATE TABLE `t_eb_projectimpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDYN` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FNEWDIMMEMNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWDIMMEMNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDDIMMEMBERID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDDIMMEMNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDDIMMEMNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYTITYNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETMONEY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETITEM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESTOREDATA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATTIME` datetime DEFAULT NULL,
  `FPARENTNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_PROJECTIMPL_P1` (`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_projectimpl_r3 definition

CREATE TABLE `t_eb_projectimpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_qinganalysisds definition

CREATE TABLE `t_eb_qinganalysisds` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FTEXTFIELD` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUEFIELD` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FFILTEREMPTY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBPFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '2',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_qinganalysisds_r3 definition

CREATE TABLE `t_eb_qinganalysisds_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_qingds_mvar definition

CREATE TABLE `t_eb_qingds_mvar` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FVARIABLEID` bigint NOT NULL DEFAULT '0',
  `FVARNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSECOUNT` bigint NOT NULL DEFAULT '0',
  `FVARIABLEJSON` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_QINGDS_M` (`FMODELID`),
  KEY `IDX_EB_QINGDS_V` (`FVARIABLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_qingds_mvar_r3 definition

CREATE TABLE `t_eb_qingds_mvar_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_qingds_var definition

CREATE TABLE `t_eb_qingds_var` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FQINGDSID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FVARIABLEID` bigint NOT NULL DEFAULT '0',
  `FVARNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLEJSON` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_QINGDS_ID` (`FQINGDSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_qingds_var_r3 definition

CREATE TABLE `t_eb_qingds_var_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rdata_custset definition

CREATE TABLE `t_eb_rdata_custset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSTEM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSCHEMETYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'singleec',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RDATA_CUSTSET_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rdata_custset_r3 definition

CREATE TABLE `t_eb_rdata_custset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rdata_detail definition

CREATE TABLE `t_eb_rdata_detail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONMEMBERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_RDATA_DETAIL_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_recdims definition

CREATE TABLE `t_eb_recdims` (
  `FID` bigint NOT NULL DEFAULT '0',
  `fentryid` bigint NOT NULL DEFAULT '0',
  `fseq` int NOT NULL DEFAULT '0',
  `frecdimld` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_receiveparameter definition

CREATE TABLE `t_eb_receiveparameter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RECEIVEPARAMETER_MODEL` (`FMODELID`),
  KEY `IDX_EB_RECEIVEPARAMETER_TIME` (`FSTARTDATE`,`FENDDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_receiveparameter_l definition

CREATE TABLE `t_eb_receiveparameter_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_RECEIVEPARAMETER_L_ID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_receiveparameter_r3 definition

CREATE TABLE `t_eb_receiveparameter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_recipientmapentry definition

CREATE TABLE `t_eb_recipientmapentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORGTYPEITEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBGORGVIEW` bigint DEFAULT NULL,
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORG` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_RECIPIENTMAPENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_recipientmapperson definition

CREATE TABLE `t_eb_recipientmapperson` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_RECIPIENTMAPPERSON` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_recipientmapping definition

CREATE TABLE `t_eb_recipientmapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBGORGMULTIVIEW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATER` bigint DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RECIPIENTMAPPING` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_recipientmapping_l definition

CREATE TABLE `t_eb_recipientmapping_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_RECIPIENTMAPPING_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_recipientmapping_r3 definition

CREATE TABLE `t_eb_recipientmapping_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reduce_occupation definition

CREATE TABLE `t_eb_reduce_occupation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBUSSINESSMODELID` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FREDUCEADJUST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREDUCEREDISTRIBUTE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_REDUCE_OCCUPATION` (`FMODELID`,`FBUSSINESSMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reduce_occupation_r3 definition

CREATE TABLE `t_eb_reduce_occupation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_report definition

CREATE TABLE `t_eb_report` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FFYID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FSCENEID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSENDBACKERID` bigint NOT NULL DEFAULT '0',
  `FSENDBACKTIME` datetime DEFAULT NULL,
  `FSENDBACKTIMES` int NOT NULL DEFAULT '0',
  `FCOMMITORID` bigint NOT NULL DEFAULT '0',
  `FCOMMITTIME` datetime DEFAULT NULL,
  `FFIRSTCOMMITTIME` datetime DEFAULT NULL,
  `FCOMMITTIMES` int NOT NULL DEFAULT '0',
  `FCOMPLETERID` bigint NOT NULL DEFAULT '0',
  `FCOMPLETETIME` datetime DEFAULT NULL,
  `FREPORTSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNOFIN` bigint NOT NULL DEFAULT '0',
  `FSPREADJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FREPORTTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RPT_DIMCOMBIE` (`FMODELID`,`FFYID`,`FPERIODID`,`FCURRENCYID`,`FENTITYID`),
  KEY `IDX_EB_RPT_TMPLID` (`FTEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_report_r3 definition

CREATE TABLE `t_eb_report_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_report_scheme definition

CREATE TABLE `t_eb_report_scheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FDATASETID` bigint DEFAULT NULL,
  `FMODEL` bigint DEFAULT NULL,
  `FTARGETID` bigint DEFAULT NULL,
  `FDATA` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_REPORT_SCHEME` (`FNUMBER`,`FMODEL`,`FDATASETID`,`FTARGETID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_report_scheme_l definition

CREATE TABLE `t_eb_report_scheme_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_REPORT_SCHEME_L_NAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_report_scheme_r3 definition

CREATE TABLE `t_eb_report_scheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportattachment definition

CREATE TABLE `t_eb_reportattachment` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FTASKPROID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FAREARANGE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FREMARK` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FENABLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMEMBERSKEY` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FATTACHMENTCOUNT` bigint NOT NULL DEFAULT '0',
  `FRPTENTITYID` bigint NOT NULL DEFAULT '0',
  `FREPORTPROCESS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_REPORTATTACHMENT_P1` (`FNUMBER`),
  KEY `IDX_EB_REPORTATTACHMENT_P2` (`FTASKPROID`),
  KEY `IDX_EB_REPORTATTACHMENT_P3` (`FRPTENTITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportattachment_l definition

CREATE TABLE `t_eb_reportattachment_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_REPORTATTACHMENT_L_P1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportattachment_r3 definition

CREATE TABLE `t_eb_reportattachment_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportcatalog definition

CREATE TABLE `t_eb_reportcatalog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FMODELORG` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RPTCATALOG_MODELID` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportcatalog_l definition

CREATE TABLE `t_eb_reportcatalog_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CATALOG_L_ID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportcatalog_r3 definition

CREATE TABLE `t_eb_reportcatalog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportfloatentry definition

CREATE TABLE `t_eb_reportfloatentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEID` bigint NOT NULL DEFAULT '0',
  `FFLOATMEMBERINFO` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FREPORTID` bigint NOT NULL DEFAULT '0',
  `FMEMBERKEY` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportfloatentry_r3 definition

CREATE TABLE `t_eb_reportfloatentry_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportlist definition

CREATE TABLE `t_eb_reportlist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FREPORTID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FFYEARID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FSCENEID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREPORTSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FGROUPID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKRESULT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPROCESS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_REPORTLIST_GP` (`FGROUPID`,`FSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportlist_r3 definition

CREATE TABLE `t_eb_reportlist_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportprocess definition

CREATE TABLE `t_eb_reportprocess` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSUBMITUSER` bigint NOT NULL DEFAULT '0',
  `FSUBMITDATE` datetime DEFAULT NULL,
  `FSUBMITENTITY` bigint NOT NULL DEFAULT '0',
  `FAPPROVEBILL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_REPORTPROCESS_MPDV` (`FMODEL`,`FPERIOD`,`FDATATYPE`,`FVERSION`),
  KEY `IDX_EB_REPORTPROCESS_MODEL` (`FMODEL`),
  KEY `IDX_EB_REPORTPROCESS_ENT` (`FENTITY`),
  KEY `IDX_EB_REPORTPROCESS_VER` (`FVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportprocess_r3 definition

CREATE TABLE `t_eb_reportprocess_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportquery definition

CREATE TABLE `t_eb_reportquery` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTCATALOGID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  `FTEMPLATETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FDATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `fQUERYSETTING` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_REPORTQUERY_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportquery_l definition

CREATE TABLE `t_eb_reportquery_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportquery_r3 definition

CREATE TABLE `t_eb_reportquery_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportshare definition

CREATE TABLE `t_eb_reportshare` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSHARERID` bigint NOT NULL DEFAULT '0',
  `FISLOOK` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'B',
  `FRECEIVERID` bigint NOT NULL DEFAULT '0',
  `FSHARESTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FMESSAGEID` bigint NOT NULL DEFAULT '0',
  `FORMID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSHAREDATE` datetime DEFAULT NULL,
  `FDATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FFLAGID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FREPORTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTCATALOGID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FORMIDSTRING` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fQUERYSETTING` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_REPORTSHARE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportshare_l definition

CREATE TABLE `t_eb_reportshare_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_REPORTSHARE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportshare_r3 definition

CREATE TABLE `t_eb_reportshare_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportvariabletyp_r3 definition

CREATE TABLE `t_eb_reportvariabletyp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_reportvariabletype definition

CREATE TABLE `t_eb_reportvariabletype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FVARMETADATAKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_VARTYPE_MODEL` (`FMODELID`,`FBIZMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rollconfig definition

CREATE TABLE `t_eb_rollconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` bigint NOT NULL DEFAULT '0',
  `FROLLVERSION` bigint NOT NULL DEFAULT '0',
  `FACTVERSION` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FBASISTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ROLLCONFIG_P1` (`FMODELID`),
  KEY `IDX_EB_ROLLCONFIG_SD` (`FSTARTDATE`),
  KEY `IDX_EB_ROLLCONFIG_AV` (`FACTVERSION`),
  KEY `IDX_EB_ROLLCONFIG_DT` (`FDATATYPE`),
  KEY `IDX_EB_ROLLCONFIG_VER` (`FVERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rollconfig_l definition

CREATE TABLE `t_eb_rollconfig_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_IDX_EB_ROLLCONFIG_L_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rollconfig_r3 definition

CREATE TABLE `t_eb_rollconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rollinit definition

CREATE TABLE `t_eb_rollinit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTEDATE` datetime DEFAULT NULL,
  `FEXECUTESTATE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLLCONFIG` bigint NOT NULL DEFAULT '0',
  `FTRGAUDITTRIAL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCAUDITTRIAL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FLASTMODIFYTIME` datetime DEFAULT NULL,
  `FMSG` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCANCEL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINITTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_ROLLINIT_P1` (`FSRCAUDITTRIAL`),
  KEY `IDX_EB_ROLLINIT_P2` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rollinit_r3 definition

CREATE TABLE `t_eb_rollinit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rollinitrecordtrial definition

CREATE TABLE `t_eb_rollinitrecordtrial` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FTRIALID` bigint NOT NULL DEFAULT '0',
  `FSOURCE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_ROLLINITRECORDTRIAL_P1` (`FID`,`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rolltemplate definition

CREATE TABLE `t_eb_rolltemplate` (
  `FPKID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_ROLLTEMPLATE_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_entity_ref definition

CREATE TABLE `t_eb_rpa_entity_ref` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCORPNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCORPNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FRPAINTEID` bigint NOT NULL DEFAULT '0',
  `FREPORTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_RPA_ENTITY_REF` (`FMODELID`),
  KEY `IDX_RPA_ENTITY_REF_ENTITY` (`FENTITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_entity_ref_l definition

CREATE TABLE `t_eb_rpa_entity_ref_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCORPNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_entity_ref_r3 definition

CREATE TABLE `t_eb_rpa_entity_ref_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_integration definition

CREATE TABLE `t_eb_rpa_integration` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FCATEID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_RPA_INTEGRATION` (`FMODELID`),
  KEY `IDX_RPA_INTEGRATION_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_integration_c_r3 definition

CREATE TABLE `t_eb_rpa_integration_c_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_integration_cate definition

CREATE TABLE `t_eb_rpa_integration_cate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSEQUENCE` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_RPA_INTEGRATION_CATE` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_integration_cate_l definition

CREATE TABLE `t_eb_rpa_integration_cate_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_integration_cell definition

CREATE TABLE `t_eb_rpa_integration_cell` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSHEETID` bigint NOT NULL DEFAULT '0',
  `FRPAINTEID` bigint NOT NULL DEFAULT '0',
  `FREFDATA` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQUENCE` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_RPA_INTEGRATION_CELL` (`FSHEETID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_integration_l definition

CREATE TABLE `t_eb_rpa_integration_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_integration_r3 definition

CREATE TABLE `t_eb_rpa_integration_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_integration_s_r3 definition

CREATE TABLE `t_eb_rpa_integration_s_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_integration_sht definition

CREATE TABLE `t_eb_rpa_integration_sht` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSHEETNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQNUM` bigint NOT NULL DEFAULT '0',
  `FRPAINTEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FISFLOAT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAPPINGSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_RPA_INTEGRATION_SHT` (`FRPAINTEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_scheme definition

CREATE TABLE `t_eb_rpa_scheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FRPAINTEGRATION` bigint NOT NULL DEFAULT '0',
  `FEXPORTPATH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSTALLPATH` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FFILEPATTERN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHEETPATTERN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEINI` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRPAPROCESS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRPAROBOT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILENAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHEETNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FFILETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_RPA_SCHEME` (`FMODEL`),
  KEY `IDX_RPA_SCHEME_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_scheme_entity definition

CREATE TABLE `t_eb_rpa_scheme_entity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_scheme_l definition

CREATE TABLE `t_eb_rpa_scheme_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_scheme_r3 definition

CREATE TABLE `t_eb_rpa_scheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_scheme_template definition

CREATE TABLE `t_eb_rpa_scheme_template` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_task_log definition

CREATE TABLE `t_eb_rpa_task_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FSCHEME` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FTASKID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRPAPROCESS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRPAPROCESSCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRPAPROCESSVER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROBOTNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROBOTNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDTIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `TASKTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RPA',
  PRIMARY KEY (`FID`),
  KEY `IDX_RPA_TASK_LOG` (`FTASKID`),
  KEY `IDX_RPA_TASK_LOG_MODEL` (`FMODEL`),
  KEY `IDX_RPA_TASK_LOG_SCHEME` (`FSCHEME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpa_task_log_r3 definition

CREATE TABLE `t_eb_rpa_task_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rptfunction definition

CREATE TABLE `t_eb_rptfunction` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSHOWFIELDS` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FALLSTEPDATA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLSTEPDATA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FREFPARAMDIMNUMS` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFFUNCTIONDIMNUMS` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RPTFUNCTION_MODEL` (`FMODEL`,`FBIZMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rptfunction_l definition

CREATE TABLE `t_eb_rptfunction_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_RPTFUNCTION_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rptfunction_r3 definition

CREATE TABLE `t_eb_rptfunction_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rptscheme definition

CREATE TABLE `t_eb_rptscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZRANGEID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FORGVIEWID` bigint NOT NULL DEFAULT '0',
  `FAPPLYSCOPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_SCHEME_P1` (`FBIZRANGEID`),
  KEY `IDX_EB_SCHEME_P2` (`FMODELID`),
  KEY `IDX_EB_RPTSCHEME_VIEW` (`FORGVIEWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rptscheme_l definition

CREATE TABLE `t_eb_rptscheme_l` (
  `FPKID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_SCHEME_L_P1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rptscheme_r3 definition

CREATE TABLE `t_eb_rptscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rptsharescheme definition

CREATE TABLE `t_eb_rptsharescheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_SHARESCHEME_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rptsharescheme_r3 definition

CREATE TABLE `t_eb_rptsharescheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rptsharescheme_user definition

CREATE TABLE `t_eb_rptsharescheme_user` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_USERS_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rpttemplate_user definition

CREATE TABLE `t_eb_rpttemplate_user` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_USERS_TEMPID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rule_error_log definition

CREATE TABLE `t_eb_rule_error_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTRACEID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FINFO` longtext COLLATE utf8mb4_unicode_ci,
  `FUSER` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rule_error_log_r3 definition

CREATE TABLE `t_eb_rule_error_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rule_graph_log definition

CREATE TABLE `t_eb_rule_graph_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTRACEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FGRAPH` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATETIME` datetime DEFAULT NULL,
  `FBIZCTRLRANGEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rule_graph_log_r3 definition

CREATE TABLE `t_eb_rule_graph_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rule_instance definition

CREATE TABLE `t_eb_rule_instance` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FCURENTORG` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXETYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FLASTTIME` datetime DEFAULT NULL,
  `FEXEGRAPH` longtext COLLATE utf8mb4_unicode_ci,
  `FRULECOUNT` int NOT NULL DEFAULT '0',
  `FSYNCCOUNT` int NOT NULL DEFAULT '0',
  `FSYNCRULE` longtext COLLATE utf8mb4_unicode_ci,
  `FASYNCCOUNT` int NOT NULL DEFAULT '0',
  `FASYNCRULE` longtext COLLATE utf8mb4_unicode_ci,
  `FEXECUTESTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXECUTELOG` longtext COLLATE utf8mb4_unicode_ci,
  `FRELTEMPLATE` longtext COLLATE utf8mb4_unicode_ci,
  `FSUBMITORG` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATESCOPE` longtext COLLATE utf8mb4_unicode_ci,
  `FTRACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLE` longtext COLLATE utf8mb4_unicode_ci,
  `FBIZMODEL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RULE_INSTANCE` (`FMODEL`),
  KEY `IDX_EB_RULELOG_CTIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rule_instance_det_r3 definition

CREATE TABLE `t_eb_rule_instance_det_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rule_instance_detail definition

CREATE TABLE `t_eb_rule_instance_detail` (
  `FLOGID` bigint NOT NULL DEFAULT '0',
  `FRULE` bigint NOT NULL DEFAULT '0',
  `FPREDECESSORS` longtext COLLATE utf8mb4_unicode_ci,
  `FSUCCESSORS` longtext COLLATE utf8mb4_unicode_ci,
  `FRELTEMPLATE` longtext COLLATE utf8mb4_unicode_ci,
  `FEXESCOPE` longtext COLLATE utf8mb4_unicode_ci,
  `FRESULTEXAMPLE` longtext COLLATE utf8mb4_unicode_ci,
  `FEXECUTELOG` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATETIME` datetime DEFAULT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQUENCE` bigint NOT NULL DEFAULT '0',
  `FAFFECTROW` bigint NOT NULL DEFAULT '0',
  `FSUM` bigint NOT NULL DEFAULT '0',
  `FISSYN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RULEINSTANCE_DET` (`FLOGID`),
  KEY `IDX_EB_RULELOGDET_CTIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rule_instance_r3 definition

CREATE TABLE `t_eb_rule_instance_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulebatch definition

CREATE TABLE `t_eb_rulebatch` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBIZCTRLRANGE` bigint NOT NULL DEFAULT '0',
  `FDATASET` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULETEMPLATE` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RULEBATCH_FMODEL` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulebatch_r3 definition

CREATE TABLE `t_eb_rulebatch_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulebatchrelation definition

CREATE TABLE `t_eb_rulebatchrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRULEBATCH` bigint NOT NULL DEFAULT '0',
  `FRULE` bigint NOT NULL DEFAULT '0',
  `FSCOPE` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RULEBATCHRELATION_FRULEBATCH` (`FRULEBATCH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulebatchrelation_r3 definition

CREATE TABLE `t_eb_rulebatchrelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulecaselogdetail definition

CREATE TABLE `t_eb_rulecaselogdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXECSEQ` bigint NOT NULL DEFAULT '0',
  `FMAINLOGID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FTRACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZRULE` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FEXECRANGE` longtext COLLATE utf8mb4_unicode_ci,
  `FRESULT` longtext COLLATE utf8mb4_unicode_ci,
  `FDETAILLOG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RULECASELOGDETAIL_1` (`FMAINLOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulecaselogdetail_r3 definition

CREATE TABLE `t_eb_rulecaselogdetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulecontroldefault definition

CREATE TABLE `t_eb_rulecontroldefault` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONTROLTYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FCOEFFICIENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  `FISBEYOND` char(1) NOT NULL DEFAULT '1',
  `FPERIODCLASSIFY` varchar(50) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RULECONTROLDEFAULT_MS` (`FMODELID`,`FSCENARIOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_ruleexeccase definition

CREATE TABLE `t_eb_ruleexeccase` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FRULEUPDATETIME` datetime DEFAULT NULL,
  `FTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FUPDATESTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCURRSTEP` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATEDETAIL` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RULEEXECCASE_1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ruleexeccase_r3 definition

CREATE TABLE `t_eb_ruleexeccase_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ruleexeccase_range definition

CREATE TABLE `t_eb_ruleexeccase_range` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERJSON` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_RULEEXECCASE_RANGE_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ruleexeccase_rule definition

CREATE TABLE `t_eb_ruleexeccase_rule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRULEID` bigint NOT NULL DEFAULT '0',
  `FRANGEJSON` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_RULEEXECCASE_RULE_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ruleexeccaselog definition

CREATE TABLE `t_eb_ruleexeccaselog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXECUTOR` bigint NOT NULL DEFAULT '0',
  `FREPORTPROCESSID` bigint NOT NULL DEFAULT '0',
  `FORDER` bigint NOT NULL DEFAULT '0',
  `FQUEUEID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FTRACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCASE` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROGRESS` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATE` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECENTITY` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE` longtext COLLATE utf8mb4_unicode_ci,
  `FLOG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RULEEXECCASELOG_1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulefunction definition

CREATE TABLE `t_eb_rulefunction` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRULEID` bigint NOT NULL DEFAULT '0',
  `FFUNCTIONTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFUNCTIONKEY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFUNCTIONSHOWSTR` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FFUNCTIONINFOSTR` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RULEFUNCTION_P1` (`FRULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulefunction_r3 definition

CREATE TABLE `t_eb_rulefunction_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ruleparamconfig definition

CREATE TABLE `t_eb_ruleparamconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCALCSWITCH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPAGESIZE` int NOT NULL DEFAULT '0',
  `FBATCHSWITCH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBATCHSIZE` int NOT NULL DEFAULT '0',
  `FCYCLICSWITCH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RULEPARAMCONFIG` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_ruleparamconfig_r3 definition

CREATE TABLE `t_eb_ruleparamconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulevariable definition

CREATE TABLE `t_eb_rulevariable` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_RULEVARIABLE_P1` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulevariable_r3 definition

CREATE TABLE `t_eb_rulevariable_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_rulevariableentity definition

CREATE TABLE `t_eb_rulevariableentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FVARIABLENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLENUMBER` bigint NOT NULL DEFAULT '0',
  `FVARIABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLEJSONTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_RULEVARIABLEENTITY_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_scenarioentry definition

CREATE TABLE `t_eb_scenarioentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAPPSCENARIOID` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_SCENARIOENTRY_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_scenecurrencyscale definition

CREATE TABLE `t_eb_scenecurrencyscale` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSCALE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `T_EB_SCENECURRENCYSCALE_S` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_schemeassign definition

CREATE TABLE `t_eb_schemeassign` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBIZRANGEID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FAPPLYSCOPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDEFAULTASSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_SCHEMEASSIGN_P1` (`FSCHEMEID`),
  KEY `IDX_EB_SCHEMEASSIGN_P2` (`FBIZRANGEID`),
  KEY `IDX_EB_SCHEMEASSIGN_V` (`FVERSIONID`),
  KEY `IDX_EB_SCHEMEASSIGN_D` (`FDATATYPEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_schemeassign_l definition

CREATE TABLE `t_eb_schemeassign_l` (
  `FPKID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_schemeassign_r3 definition

CREATE TABLE `t_eb_schemeassign_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_schemecatalog definition

CREATE TABLE `t_eb_schemecatalog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMODIFLERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(510) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(200) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_SCHEMECATALOG_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_SCHEMECATALOG_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_schemecatalog_l definition

CREATE TABLE `t_eb_schemecatalog_l` (
  `FPKID` varchar(30) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `INDEX_EB_SCHEMECATALOG_L_NAME` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_schemecatalog_r3 definition

CREATE TABLE `t_eb_schemecatalog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_schemedimmap definition

CREATE TABLE `t_eb_schemedimmap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMPROP` varchar(255) NOT NULL DEFAULT ' ',
  `FDIMNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FTARGETFIELDNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FTARGETFIELDNUM` varchar(255) NOT NULL DEFAULT ' ',
  `FDIM` bigint NOT NULL DEFAULT '0',
  `FISPK` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `INDEX_T_EB_SCHEMEDIMMAP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_schemeentry definition

CREATE TABLE `t_eb_schemeentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTARGETTABLE` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) NOT NULL DEFAULT ' ',
  `FSCHEMECATALOG` bigint NOT NULL DEFAULT '0',
  `FMODIFIERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATEFIELD` datetime DEFAULT NULL,
  `FISCSCHEMETRIGGER` bigint NOT NULL DEFAULT '0',
  `FDIMCACHE` longtext,
  `FDIMCACHE_NEW` longtext,
  `FNAME` varchar(510) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(200) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_SCHEMEENTRY_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_SCHEMEENTRY_CATALOG` (`FSCHEMECATALOG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_schemeentry_l definition

CREATE TABLE `t_eb_schemeentry_l` (
  `FPKID` varchar(30) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `INDEX_EB_SCHEMEENTRY_L_NAME` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_schemeentry_r3 definition

CREATE TABLE `t_eb_schemeentry_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_schemevariable definition

CREATE TABLE `t_eb_schemevariable` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FVARIABLENUMBER` bigint NOT NULL DEFAULT '0',
  `FVARIABLE` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLEJSONTEXT` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IX_T_EB_SCHEMEVARIABLE_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_sharedimdataentry definition

CREATE TABLE `t_eb_sharedimdataentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSIONNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONNAME` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IX_EB_SHAREDIMDATAENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_sharedimension definition

CREATE TABLE `t_eb_sharedimension` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUDID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONRANGEJSON` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FFILTERNONEDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_SHAREDIMENSION_P1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_sharedimension_l definition

CREATE TABLE `t_eb_sharedimension_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_SHAREDIMENSION_L_P1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_sharedimension_r3 definition

CREATE TABLE `t_eb_sharedimension_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_sharedimensiondat_r3 definition

CREATE TABLE `t_eb_sharedimensiondat_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_sharedimensiondata definition

CREATE TABLE `t_eb_sharedimensiondata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELD` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNUMBER` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FAPP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCLOUD` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONRANGEJSON` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONRANGEJSON_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FLATESTMODIFIER` bigint NOT NULL DEFAULT '0',
  `FLATESTMODIFIEDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IX_EB_SHAREDIMENSIONDATA` (`FBILL`,`FFIELDNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_sharedimensiondata_r3 definition

CREATE TABLE `t_eb_sharedimensiondata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_sharedimensionentry definition

CREATE TABLE `t_eb_sharedimensionentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FMEMBERNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERRANGE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `FMEMBERVIEWID` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_SHAREDIMENSIONENTRY_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_shareentity_tab_r3 definition

CREATE TABLE `t_eb_shareentity_tab_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_sharescheme_account definition

CREATE TABLE `t_eb_sharescheme_account` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FACCOUNT` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_SHARESCHEME_ANT_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_sharescheme_audit definition

CREATE TABLE `t_eb_sharescheme_audit` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_SHARESCHEME_AUDIT_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_sharescheme_entit_r3 definition

CREATE TABLE `t_eb_sharescheme_entit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_sharescheme_entity definition

CREATE TABLE `t_eb_sharescheme_entity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FBACKTOSENDER` char(1) NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  `FENABLE` char(1) NOT NULL DEFAULT '1',
  `FSCHEMEGROUP` bigint NOT NULL DEFAULT '0',
  `FMETRIC` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) NOT NULL DEFAULT ' ',
  `FTABINFO` longtext,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_SHARESCHE_ENTI_GROUP` (`FSCHEMEGROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_sharescheme_entity_r3 definition

CREATE TABLE `t_eb_sharescheme_entity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_sharescheme_group definition

CREATE TABLE `t_eb_sharescheme_group` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  `FPARENT` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FLONGNAME` varchar(2000) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SHARESCHEME_GROUP_MODEL` (`FMODEL`),
  KEY `IDX_SHARESCHEME_GROUP_P` (`FPARENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_sharescheme_group_r3 definition

CREATE TABLE `t_eb_sharescheme_group_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_split_chargeperson definition

CREATE TABLE `t_eb_split_chargeperson` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `idx_eb_split_chargeperson_fk` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_spliteddimrowdata definition

CREATE TABLE `t_eb_spliteddimrowdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSPLITDIMCOL` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIEDROWS` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_SPLITEDDIMROWDATA` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_splitedrowdata definition

CREATE TABLE `t_eb_splitedrowdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSPLITBILLID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FSPLITROWID` bigint NOT NULL DEFAULT '0',
  `FSPLITDIMPART` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_SPLITEDROWDATA` (`FSPLITBILLID`,`FTEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_splitedrowdata_r3 definition

CREATE TABLE `t_eb_splitedrowdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_splitmodifylog definition

CREATE TABLE `t_eb_splitmodifylog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FBILLNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYROWID` bigint NOT NULL DEFAULT '0',
  `FLOGTEXT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_SPLITMODIFYLOG` (`FMODELID`,`FTEMPNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_splitmodifylog_r3 definition

CREATE TABLE `t_eb_splitmodifylog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_splitnewrow definition

CREATE TABLE `t_eb_splitnewrow` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSPLITBILLID` bigint NOT NULL DEFAULT '0',
  `FPRESPLITROWID` bigint NOT NULL DEFAULT '0',
  `FREFFIRSTSPLITROWID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATENUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `idx_eb_splitnewrow_bill` (`FSPLITBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_splitnewrow_r3 definition

CREATE TABLE `t_eb_splitnewrow_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_startparamter definition

CREATE TABLE `t_eb_startparamter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(200) NOT NULL DEFAULT ' ',
  `FORGNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FSHOWEBBALANCE` char(1) NOT NULL DEFAULT '0',
  `FINFLUENTIAL` char(1) NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FPARENT` bigint NOT NULL DEFAULT '0',
  `FSHOWBEYONDMESSAGE` char(1) NOT NULL DEFAULT '0',
  `FSHOWCHECKMEMPERMISSION` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_STARTPARAMTER_BILLID` (`FBILLID`,`FORGID`,`FCREATORID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_startparamter_r3 definition

CREATE TABLE `t_eb_startparamter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_status definition

CREATE TABLE `t_eb_status` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FSCENARIO` bigint NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FPROCESS` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAIL` bigint NOT NULL DEFAULT '0',
  `FCHECKEDSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_STATUS_SYPC` (`FSCENARIO`,`FYEAR`,`FPERIOD`,`FCURRENCY`,`FORG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofaccount definition

CREATE TABLE `t_eb_structofaccount` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXCHANGE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTUSE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FACCOUNTTYPE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDRCRDIRECT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISRELATED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRELATEDACCOUNT` bigint NOT NULL DEFAULT '0',
  `FDATASET` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPE` bigint NOT NULL DEFAULT '0',
  `FPARTINDEX` int NOT NULL DEFAULT '-1',
  `FCTVIEW` bigint NOT NULL DEFAULT '0',
  `FCTMEMBERID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FAPPROVALTYPE` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_ACCOUNT_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_ACCOUNT_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_ACCOUNT_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_ACCOUNT_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_ACCOUNT_PARENT` (`FPARENTID`),
  KEY `IDX_EB_ACCOUNT_REL` (`FRELATEDACCOUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofaccount_l definition

CREATE TABLE `t_eb_structofaccount_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANOTHERNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_ACCOUNT_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_ACCOUNT_L_NAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofaccount_r3 definition

CREATE TABLE `t_eb_structofaccount_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofaudittria_r3 definition

CREATE TABLE `t_eb_structofaudittria_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofaudittrial definition

CREATE TABLE `t_eb_structofaudittrial` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISDATACOLLECT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FUSE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_AT_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_AT_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_AUDITTTIAL_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_AT_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_AT_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofaudittrial_l definition

CREATE TABLE `t_eb_structofaudittrial_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_AT_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_AT_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofaudittrial_r3 definition

CREATE TABLE `t_eb_structofaudittrial_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofbill definition

CREATE TABLE `t_eb_structofbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(200) NOT NULL DEFAULT ' ',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) NOT NULL DEFAULT '0',
  `FREFEREDSTATUS` char(1) NOT NULL DEFAULT '0',
  `FSTATUS` varchar(5) NOT NULL DEFAULT ' ',
  `FENABLE` char(1) NOT NULL DEFAULT '1',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FFIELDTABLE` varchar(50) NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FISFROMOUTER` char(1) NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(20) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(510) NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) NOT NULL DEFAULT ' ',
  `FVERSION` varchar(10) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_STRUCTOFBILL_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_structofbill_l definition

CREATE TABLE `t_eb_structofbill_l` (
  `FPKID` varchar(30) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FVERSION` varchar(10) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_STRUCTOFBILL_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_structofbill_r3 definition

CREATE TABLE `t_eb_structofbill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_structofbperiod definition

CREATE TABLE `t_eb_structofbperiod` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEFFDATE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPDATE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FEFFMONTH` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFDAY` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPMONTH` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPDAY` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `VIEWID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_BPREIOD_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_BPREIOD_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_BPERIOD_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_BPREIOD_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_BPREIOD_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofbperiod_l definition

CREATE TABLE `t_eb_structofbperiod_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANOTHERNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BPREIOD_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_BPREIOD_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofbperiod_r3 definition

CREATE TABLE `t_eb_structofbperiod_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofchangetyp_r3 definition

CREATE TABLE `t_eb_structofchangetyp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofchangetype definition

CREATE TABLE `t_eb_structofchangetype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCHANGEWAY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FFORMULA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FFORMULANAME` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FVIEWID` bigint NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPERIODDISTRIBUTION` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CT_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_CHANGETYPE_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_CT_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_CT_PARENT` (`FPARENTID`),
  KEY `IDX_EB_CT_MODEL_NUMBER` (`FMODELID`,`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofchangetype_l definition

CREATE TABLE `t_eb_structofchangetype_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CT_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_CT_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofchangetype_r3 definition

CREATE TABLE `t_eb_structofchangetype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofcurrency definition

CREATE TABLE `t_eb_structofcurrency` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_CUR_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_CURRENCY_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_CURRENCY_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_CURRENCY_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_CURRENCY_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofcurrency_l definition

CREATE TABLE `t_eb_structofcurrency_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CURRENCY_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_CURRENCY_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofcurrency_r3 definition

CREATE TABLE `t_eb_structofcurrency_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofdatetype definition

CREATE TABLE `t_eb_structofdatetype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FEDITTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATEOFSTART` datetime DEFAULT NULL,
  `FBIZMODEL` bigint NOT NULL DEFAULT '0',
  `FDATAVERSION` bigint NOT NULL DEFAULT '0',
  `FDATAYEAR` bigint NOT NULL DEFAULT '0',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_DATETYPE_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_DATETYPE_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_DATETYPE_PARENT` (`FPARENTID`),
  KEY `IDX_EB_DATETYPE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofdatetype_l definition

CREATE TABLE `t_eb_structofdatetype_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_DATETYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofdatetype_r3 definition

CREATE TABLE `t_eb_structofdatetype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofdefined definition

CREATE TABLE `t_eb_structofdefined` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDATATYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` bigint NOT NULL DEFAULT '0',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSEQ` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_DEF_MODEL_DIM_NUM` (`FMODELID`,`FDIMENSIONID`,`FNUMBER`),
  KEY `IDX_EB_UD_MODEL` (`FMODELID`),
  KEY `IDX_EB_UD_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_UD_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_UD_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_UD_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofdefined_l definition

CREATE TABLE `t_eb_structofdefined_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_UD_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_UD_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofdefined_r3 definition

CREATE TABLE `t_eb_structofdefined_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofent definition

CREATE TABLE `t_eb_structofent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FISINNERORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEFFDATE` datetime DEFAULT NULL,
  `FEXPDATE` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHOWNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISEXCHANGERATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORGCODE` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNER` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTOR` bigint NOT NULL DEFAULT '0',
  `FMERGERNODE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISOUTERORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISOFFSETENTRY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOFFSETSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_ENT_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_STRONENT_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_ENT_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_ENT_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_ENT_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofent_l definition

CREATE TABLE `t_eb_structofent_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_ENT_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_ENT_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofent_r3 definition

CREATE TABLE `t_eb_structofent_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structoffy definition

CREATE TABLE `t_eb_structoffy` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_FY_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_FY_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_FY_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_FY_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_FY_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structoffy_l definition

CREATE TABLE `t_eb_structoffy_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_FY_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_FY_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structoffy_r3 definition

CREATE TABLE `t_eb_structoffy_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structoficentity definition

CREATE TABLE `t_eb_structoficentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_ICENTITY_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_ICENTITY_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_ICENTITY_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_ICENTITY_PARENT` (`FPARENTID`),
  KEY `IDX_EB_STRUCTOFICENTITY_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structoficentity_l definition

CREATE TABLE `t_eb_structoficentity_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_ICE_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_ICE_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structoficentity_r3 definition

CREATE TABLE `t_eb_structoficentity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofmetric definition

CREATE TABLE `t_eb_structofmetric` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREFERID` bigint NOT NULL DEFAULT '0',
  `FVERSIONTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISAGG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FUSE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOMPAREMETRIC` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDECIMALNUM` int DEFAULT '0',
  `FSTORAGENODETAIL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_METRIC_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_METRIC_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_METRIC_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_METRIC_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_METRIC_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofmetric_en_r3 definition

CREATE TABLE `t_eb_structofmetric_en_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofmetric_enum definition

CREATE TABLE `t_eb_structofmetric_enum` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENUMNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENUMNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FDIMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_STRUCTOFMETRIC_ENUM_P1` (`FID`),
  KEY `IDX_EB_STRUCTOFMETRIC_ENUM_P2` (`FENUMNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofmetric_enum_r3 definition

CREATE TABLE `t_eb_structofmetric_enum_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofmetric_l definition

CREATE TABLE `t_eb_structofmetric_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_STRUCTOFMETRIC_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofmetric_r3 definition

CREATE TABLE `t_eb_structofmetric_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofperiod definition

CREATE TABLE `t_eb_structofperiod` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEFFDATE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPDATE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFEREDSTATUS` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FEFFMONTH` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFDAY` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPMONTH` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPDAY` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FANOTHERNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_PREIOD_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_PREIOD_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_PERIOD_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_PREIOD_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_PREIOD_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofperiod_l definition

CREATE TABLE `t_eb_structofperiod_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANOTHERNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_PREIOD_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_PREIOD_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofperiod_r3 definition

CREATE TABLE `t_eb_structofperiod_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofprocess definition

CREATE TABLE `t_eb_structofprocess` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFEREDSTATUS` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_BP_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_BP_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_PROCESS_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_BP_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_BP_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofprocess_l definition

CREATE TABLE `t_eb_structofprocess_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_BP_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_BP_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofprocess_r3 definition

CREATE TABLE `t_eb_structofprocess_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofscene definition

CREATE TABLE `t_eb_structofscene` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLEHISREC` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDCHANGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVALUE` bigint NOT NULL DEFAULT '0',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSHAREALL` int NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_SCENE_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_SCENE_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_SCENE_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_SCENE_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_SCENE_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofscene_l definition

CREATE TABLE `t_eb_structofscene_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_SCENE_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_SCENE_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofscene_r3 definition

CREATE TABLE `t_eb_structofscene_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofversion definition

CREATE TABLE `t_eb_structofversion` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(768) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISACTUAL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTORAGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYFROM` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_VERSION_MODEL_NUMBER` (`FMODELID`,`FNUMBER`),
  KEY `IDX_EB_STRUCTOFVERSION_NUMBER` (`FNUMBER`),
  KEY `IDX_EB_STRUCTOFVERSION_LONGNUM` (`FLONGNUMBER`),
  KEY `IDX_EB_STRUCTOFVERSION_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_STRUCTOFVERSION_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofversion_l definition

CREATE TABLE `t_eb_structofversion_l` (
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_STRUCTOFVERSION_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_STROFVERSION_L_NAME` (`FNAME`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_structofversion_r3 definition

CREATE TABLE `t_eb_structofversion_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_subjectang definition

CREATE TABLE `t_eb_subjectang` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_SUBJECTANG_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_submodelsync_log definition

CREATE TABLE `t_eb_submodelsync_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMAINMODEL` bigint DEFAULT '0',
  `FSUBMODEL` bigint DEFAULT '0',
  `FSYNCBASEDATA` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FSYNCSTATUS` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSYNCUSER` bigint DEFAULT '0',
  `FCHANGETYPE` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FMODULENAME` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSYNCFAILEDREASON` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_submodelsync_log_r3 definition

CREATE TABLE `t_eb_submodelsync_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tansmodelerrlogs definition

CREATE TABLE `t_eb_tansmodelerrlogs` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTOMODELID` bigint NOT NULL DEFAULT '0',
  `FTOMODELNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETENAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEDATA` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRINFO` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FINFO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tansmodelerrlogs_r3 definition

CREATE TABLE `t_eb_tansmodelerrlogs_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_target_dimmapper definition

CREATE TABLE `t_eb_target_dimmapper` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FSCRBIZCTRLID` bigint DEFAULT NULL,
  `FTARBIZCTRLID` bigint DEFAULT NULL,
  `FDIMNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSESTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDIMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_TARGET_DIMMAPPER_MODEL` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_target_dimmapper_l definition

CREATE TABLE `t_eb_target_dimmapper_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_TARGET_DIMMAPPER_L_NAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_target_dimmapper_r3 definition

CREATE TABLE `t_eb_target_dimmapper_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_target_membermapper definition

CREATE TABLE `t_eb_target_membermapper` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSUBDIMENSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCRMEMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARMEMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMEMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCRMEMBERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARMEMBERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMEMBERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBDIMENSIONID` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_EB_TARGET_MEMBERMAPPER_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_targetscheme definition

CREATE TABLE `t_eb_targetscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZCTRLID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAIL` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPE` longtext COLLATE utf8mb4_unicode_ci,
  `FCHANGETYPETEXT` longtext COLLATE utf8mb4_unicode_ci,
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FBUDGETPERIOD` longtext COLLATE utf8mb4_unicode_ci,
  `FBUDGETPERIODTEXT` longtext COLLATE utf8mb4_unicode_ci,
  `FACCOUNT` longtext COLLATE utf8mb4_unicode_ci,
  `FACCOUNTTEXT` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TARGETSCHEME_MODEL` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_targetscheme_l definition

CREATE TABLE `t_eb_targetscheme_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_TARGETSCHEME_L_NAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_targetscheme_r3 definition

CREATE TABLE `t_eb_targetscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_targetscheme_reco_r3 definition

CREATE TABLE `t_eb_targetscheme_reco_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_targetscheme_record definition

CREATE TABLE `t_eb_targetscheme_record` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZCTRL` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` bigint NOT NULL DEFAULT '0',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAIL` bigint NOT NULL DEFAULT '0',
  `FENTITY` longtext COLLATE utf8mb4_unicode_ci,
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FTARGETSCHEMEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TARGETSCHEME_RE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_task definition

CREATE TABLE `t_eb_task` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTASKLISTID` bigint NOT NULL DEFAULT '0',
  `FRELYTASKID` bigint NOT NULL DEFAULT '0',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FUSETIME` int NOT NULL DEFAULT '0',
  `FDEADLINE` datetime DEFAULT NULL,
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FTASKSEQ` int NOT NULL DEFAULT '0',
  `FTASKTEMPLATE` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FISCLOSED` char(1) NOT NULL DEFAULT '0',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) NOT NULL DEFAULT ' ',
  `FAPPROVALTYPEID` bigint NOT NULL DEFAULT '0',
  `FMONIOP` char(1) NOT NULL DEFAULT '',
  `FPRETASKSTATUS` char(1) DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TASKNUMBER` (`FNUMBER`),
  KEY `IDX_EB_TASK_LIST` (`FTASKLISTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_task_l definition

CREATE TABLE `t_eb_task_l` (
  `FPKID` varchar(30) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_TASK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_task_msg_reminder definition

CREATE TABLE `t_eb_task_msg_reminder` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMESSAGECONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_task_msg_reminder_r3 definition

CREATE TABLE `t_eb_task_msg_reminder_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_task_r3 definition

CREATE TABLE `t_eb_task_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_taskcatalog_r3 definition

CREATE TABLE `t_eb_taskcatalog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskconf definition

CREATE TABLE `t_eb_taskconf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FPLANUSETIME` int NOT NULL DEFAULT '0',
  `FTEMPLATES` bigint NOT NULL DEFAULT '0',
  `FPRETASKS` bigint NOT NULL DEFAULT '0',
  `FDISCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWARNBEGINTYPE` int NOT NULL DEFAULT '0',
  `FWARNINGBEGINTIME` datetime DEFAULT NULL,
  `FWARNFREQUENCY` int NOT NULL DEFAULT '0',
  `FOUTFREQUENCY` int NOT NULL DEFAULT '0',
  `FTASKSTATUS` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FTASKCATALOGID` bigint NOT NULL DEFAULT '0',
  `FKSEQ` int NOT NULL DEFAULT '0',
  `FFINISHSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TASKCONF` (`FTASKCATALOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskconf_l definition

CREATE TABLE `t_eb_taskconf_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_TASKCON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskconf_r3 definition

CREATE TABLE `t_eb_taskconf_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskdec_executor definition

CREATE TABLE `t_eb_taskdec_executor` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskdec_supervisor definition

CREATE TABLE `t_eb_taskdec_supervisor` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskdecompose definition

CREATE TABLE `t_eb_taskdecompose` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORG` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTASK` bigint NOT NULL DEFAULT '0',
  `FMANAGER` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FORGVIEWID` bigint NOT NULL DEFAULT '0',
  `FPARENTDECOMPOSE` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskdecompose_r3 definition

CREATE TABLE `t_eb_taskdecompose_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskdisptem definition

CREATE TABLE `t_eb_taskdisptem` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_TASKTEM` (`FTEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskdistorg definition

CREATE TABLE `t_eb_taskdistorg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FRANGEVALUE` varchar(10) NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FEXECUTORID` bigint NOT NULL DEFAULT '0',
  `ftaskstatus` char(1) DEFAULT '1',
  `FORGVIEWID` bigint NOT NULL DEFAULT '0',
  `FTASK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IX_EB_TASKDISTORG` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_taskdistorg_bak definition

CREATE TABLE `t_eb_taskdistorg_bak` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FRANGEVALUE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FEXECUTORID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATUS` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `FORGVIEWID` bigint NOT NULL DEFAULT '0',
  `FTASK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskdistorg_r3 definition

CREATE TABLE `t_eb_taskdistorg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_taskdistuser_r3 definition

CREATE TABLE `t_eb_taskdistuser_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_taskforpre definition

CREATE TABLE `t_eb_taskforpre` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTASKCONFID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_EBTASKPRE` (`FTASKCONFID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tasklist definition

CREATE TABLE `t_eb_tasklist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FDATETYPEID` bigint NOT NULL DEFAULT '0',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSTATE` char(1) NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) NOT NULL DEFAULT ' ',
  `FCATALOG` varchar(100) NOT NULL DEFAULT ' ',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FORGVIEW` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TASKLIST` (`FNUMBER`),
  KEY `IDX_EB_TASKLIST_MODEL` (`FMODELID`),
  KEY `IDX_EB_TASKLIST_VIEW` (`FORGVIEW`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_tasklist_l definition

CREATE TABLE `t_eb_tasklist_l` (
  `FPKID` varchar(30) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IX_EB_TASKLIST_L` (`FID`,`FLOCALEID`),
  KEY `IDX_EB_TASKLIST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_tasklist_r3 definition

CREATE TABLE `t_eb_tasklist_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_tasklistgroup definition

CREATE TABLE `t_eb_tasklistgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCODE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMULILANGTEXTFIELD` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TASKLISTGROUP` (`FCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tasklistgroup_l definition

CREATE TABLE `t_eb_tasklistgroup_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULILANGTEXTFIELD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_TASKLISTGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tasklistgroup_r3 definition

CREATE TABLE `t_eb_tasklistgroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskmonitor definition

CREATE TABLE `t_eb_taskmonitor` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASK` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATE` varchar(30) NOT NULL DEFAULT ' ',
  `FORGFIELD` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TASKMONITOR` (`FTASK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_taskmonitor_r3 definition

CREATE TABLE `t_eb_taskmonitor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_taskorg_executors definition

CREATE TABLE `t_eb_taskorg_executors` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_TASKORG_EXECUTORS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskparam definition

CREATE TABLE `t_eb_taskparam` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FYEARID` bigint NOT NULL DEFAULT '0',
  `FTASKCATALOGID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TASKPARAM` (`FTASKCATALOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskparam_r3 definition

CREATE TABLE `t_eb_taskparam_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskproces_executors definition

CREATE TABLE `t_eb_taskproces_executors` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_TASKPROCES_EXECUTORS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskprocess definition

CREATE TABLE `t_eb_taskprocess` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FEXECUTORID` bigint NOT NULL DEFAULT '0',
  `FSTATE` char(1) NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FASSIGNERID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATETYPE` varchar(20) NOT NULL DEFAULT ' ',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FTEMPSEQ` int NOT NULL DEFAULT '1',
  `FORGVIEWID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IX_EB_TASKPROCESS` (`FTASKID`,`FTEMPLATEID`,`FORGID`,`FEXECUTORID`),
  KEY `IX_EB_TASKPROCESSASSID` (`FASSIGNERID`,`FTASKID`,`FTEMPLATEID`),
  KEY `IX_EB_TASKPROCESS_VIEW` (`FORGVIEWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_taskprocess_r3 definition

CREATE TABLE `t_eb_taskprocess_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_taskprosupervisor definition

CREATE TABLE `t_eb_taskprosupervisor` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUSERFIELD` bigint NOT NULL DEFAULT '0',
  `FSUPERVISORID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IX_EB_TASKPROSUPERVISOR` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskreceiver definition

CREATE TABLE `t_eb_taskreceiver` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FRECEIVERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVERUSER` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_TASKRECEIVER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskreftemplate definition

CREATE TABLE `t_eb_taskreftemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATETYPE` varchar(50) NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_TASKREFTEMPLATE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_taskrely definition

CREATE TABLE `t_eb_taskrely` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_TASKRELY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_tasksave definition

CREATE TABLE `t_eb_tasksave` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKLISTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORGRANGE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FEXECUTORID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORGVIEWID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSOURCETYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TASKSAVE_TASKLIST` (`FTASKLISTID`),
  KEY `IDX_EB_TASKSAVE_ORG` (`FORGID`),
  KEY `IDX_EB_TASKSAVE_TASK` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tasksave_bak definition

CREATE TABLE `t_eb_tasksave_bak` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKLISTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORGRANGE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FEXECUTORID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORGVIEWID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tasksave_executors definition

CREATE TABLE `t_eb_tasksave_executors` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_TASKSAVE_EXECUTORS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tasksave_r3 definition

CREATE TABLE `t_eb_tasksave_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskstatus definition

CREATE TABLE `t_eb_taskstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FREPORTTASKID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTASKTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3',
  `FROOTID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FFYID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FREPORTSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TASK_REPORT` (`FREPORTTASKID`,`FTEMPLATEID`,`FTASKTYPE`),
  KEY `IDX_EB_TASK_ROOT` (`FROOTID`),
  KEY `IDX_EB_TASK_DIM` (`FMODELID`,`FFYID`,`FPERIODID`,`FENTITYID`,`FTEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskstatus_r3 definition

CREATE TABLE `t_eb_taskstatus_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tasksupervisor definition

CREATE TABLE `t_eb_tasksupervisor` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSUPERVISOR` bigint NOT NULL DEFAULT '0',
  `FUSERFIELD` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IX__EB_TASKSUPERVISOR_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tasksupervisor_bak definition

CREATE TABLE `t_eb_tasksupervisor_bak` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUPERVISOR` bigint NOT NULL DEFAULT '0',
  `FUSERFIELD` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tasktransfer_detail definition

CREATE TABLE `t_eb_tasktransfer_detail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTASK` bigint DEFAULT '0',
  `FENTITY` bigint DEFAULT '0',
  `FTASKPACKAGE` bigint DEFAULT '0',
  `FTASKSTATE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_EB_TASKTRANSFER_DETAIL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tasktransfer_record definition

CREATE TABLE `t_eb_tasktransfer_record` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint DEFAULT '0',
  `FPERIOD` bigint DEFAULT '0',
  `FEXECUTOR` bigint NOT NULL DEFAULT '0',
  `FTRANSFERUSER` bigint NOT NULL DEFAULT '0',
  `FTRANSFERDATE` datetime DEFAULT NULL,
  `FTRANSFERREASON` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tasktransfer_record_l definition

CREATE TABLE `t_eb_tasktransfer_record_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFERREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_TASKTRANSFER_RECORD_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_taskvariableset definition

CREATE TABLE `t_eb_taskvariableset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FVARIABLENUMBER` bigint NOT NULL DEFAULT '0',
  `FVARIABLE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLEJSONTEXT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_eb_taskvariableset` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_template definition

CREATE TABLE `t_eb_template` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FTEMPLATECATALOGID` bigint NOT NULL DEFAULT '0',
  `FUSAGE` varchar(30) NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FGROUP` bigint NOT NULL DEFAULT '0',
  `FTEMPLATETYPE` varchar(30) NOT NULL DEFAULT ' ',
  `FSEQUENCE` bigint NOT NULL DEFAULT '0',
  `FEFFECTIVEDATE` datetime DEFAULT NULL,
  `FDATA` longtext,
  `FDATAUNIT` varchar(2) NOT NULL DEFAULT '0',
  `FVARBASEFOREB` varchar(150) NOT NULL DEFAULT ' ',
  `FRPTGROUP` bigint NOT NULL DEFAULT '0',
  `FSPREADSERIAL` longtext,
  `FRULEGROUP` longtext,
  `FTEMPLATESTATUS` varchar(2) NOT NULL DEFAULT ' ',
  `FTEMPVERSION` varchar(20) NOT NULL DEFAULT ' ',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FISRELATION` char(1) NOT NULL DEFAULT '0',
  `FDIMRELATIONID` bigint NOT NULL DEFAULT '0',
  `FDIMMEMDEFAULTDISPLAYTYPE` int NOT NULL DEFAULT '1',
  `FFLOATCALCULATE` char(1) NOT NULL DEFAULT '0',
  `FISREADONLY` char(1) NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FSYNCMAINNUMBER` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TEMPLATE_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_template_l definition

CREATE TABLE `t_eb_template_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_TEMPLATE_L_FLOCAL` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_template_r3 definition

CREATE TABLE `t_eb_template_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_templatecatalog definition

CREATE TABLE `t_eb_templatecatalog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(30) NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(100) NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FMODELORG` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  `FNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) NOT NULL DEFAULT ' ',
  `FSYNCSTATUS` varchar(50) NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_CATALOG_MODELID` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_templatecatalog_l definition

CREATE TABLE `t_eb_templatecatalog_l` (
  `FPKID` varchar(30) NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(20) NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_CATALOG_LL_NUMMODID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_templatecatalog_r3 definition

CREATE TABLE `t_eb_templatecatalog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_templateformcolum_r3 definition

CREATE TABLE `t_eb_templateformcolum_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_templateorg definition

CREATE TABLE `t_eb_templateorg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORGRANGE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `FALLOCATERID` bigint NOT NULL DEFAULT '0',
  `FALLOCATETIME` datetime DEFAULT NULL,
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAPPLYTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATETYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTEMPIDSHOW` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECORDIDSHOW` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TEMPLATEORG_P1` (`FSCHEMEID`),
  KEY `IDX_T_EB_TEMPLATEORG_ORG` (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_templateorg_r3 definition

CREATE TABLE `t_eb_templateorg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_templaterelation definition

CREATE TABLE `t_eb_templaterelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_TEMPLATERELATION` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_templateuser definition

CREATE TABLE `t_eb_templateuser` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `fuserid` bigint NOT NULL DEFAULT '0',
  `FPERMISSIONFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FUSERTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATETYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENTITYID` bigint NOT NULL DEFAULT '0',
  `FENTITY_RANGE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `FENTITYTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGN_KEY` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TEMPLATEUSER_P1` (`FMODELID`),
  KEY `IDX_EB_TEMPLATEUSER_P2` (`FTEMPLATEID`),
  KEY `IDX_EB_TEMPLATEUSER_P3` (`fuserid`),
  KEY `IDX_EB_TEMPLATEUSER_P4` (`FENTITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_templateuser_r3 definition

CREATE TABLE `t_eb_templateuser_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tmplcoldim definition

CREATE TABLE `t_eb_tmplcoldim` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FCOLGROUPID` bigint NOT NULL DEFAULT '0',
  `FCOLINDEX` int NOT NULL DEFAULT '0',
  `FDISPLAYCHILD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFORMULA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEADER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_EB_TMPLCOL_ID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tmplcoldim_l definition

CREATE TABLE `t_eb_tmplcoldim_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEADER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_TMPLCOLDIM_L_FID` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tmpldimposition definition

CREATE TABLE `t_eb_tmpldimposition` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FAREARANGE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTPOSITION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_EBTMPLPOSITION_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tmplpagedim definition

CREATE TABLE `t_eb_tmplpagedim` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FMEMBBOUND` int NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_TMPLPAGE_TEMPLATEID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tmplpagedimprop definition

CREATE TABLE `t_eb_tmplpagedimprop` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FPROPERTYID` bigint NOT NULL DEFAULT '0',
  `FMEMBPROPID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROPBOUND` int NOT NULL DEFAULT '10',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_EBTMPLPROP_TID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tmplrowdim definition

CREATE TABLE `t_eb_tmplrowdim` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FMEMBSCOPE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_EB_TMPLROW_ID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_tmplviewpointdim definition

CREATE TABLE `t_eb_tmplviewpointdim` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_TMPLVIEW_TEMPLATEID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_transaction definition

CREATE TABLE `t_eb_transaction` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCOUNT` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_TRANSACTION_COUNT` (`FCOUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_transaction_r3 definition

CREATE TABLE `t_eb_transaction_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_udcfrowcolmemb definition

CREATE TABLE `t_eb_udcfrowcolmemb` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONNUM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBERNUM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEMBBOUND` int NOT NULL DEFAULT '0',
  `FPROPERTYVALUEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_UDCFROWCOLMEMB` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_updaterecord definition

CREATE TABLE `t_eb_updaterecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATETIME` datetime DEFAULT NULL,
  `FSIGN` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGINFO` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX__EB_UPDATERECORD` (`FSIGN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_updetailrecord definition

CREATE TABLE `t_eb_updetailrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FTASKKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTIME` datetime DEFAULT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTIMECOST` bigint NOT NULL DEFAULT '0',
  `FLOGINFO` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_upgrade_log definition

CREATE TABLE `t_eb_upgrade_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FUPGRADESTATUS` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FCREATOR` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_upgrade_log_r3 definition

CREATE TABLE `t_eb_upgrade_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_upgradesrecord definition

CREATE TABLE `t_eb_upgradesrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FOPUSER` bigint NOT NULL DEFAULT '0',
  `FREFMODELS` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_upgradesrecord_r3 definition

CREATE TABLE `t_eb_upgradesrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userdefcvtformula definition

CREATE TABLE `t_eb_userdefcvtformula` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSCENARIOID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FCONVERTFORMULA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTIONORDER` int NOT NULL DEFAULT '1',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCVTFORMULAECHOED` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_USERDEFCVTF_MODEL` (`FMODELID`,`FSCENARIOID`,`FTEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userdefcvtformula_r3 definition

CREATE TABLE `t_eb_userdefcvtformula_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userparameter definition

CREATE TABLE `t_eb_userparameter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FFORMID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FPARAMTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FDATASETID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEMODELDATA` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_USERPARAMETER_FNUMBER` (`FNUMBER`),
  KEY `IDX_EB_USERPARAMETER_FFORMID` (`FFORMID`),
  KEY `IDX_EB_USERPARAMETER_FUSERID` (`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userparameter_l definition

CREATE TABLE `t_eb_userparameter_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_USERPARAMETER_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userparameter_r3 definition

CREATE TABLE `t_eb_userparameter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userremember definition

CREATE TABLE `t_eb_userremember` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATEDATE` datetime DEFAULT NULL,
  `FUPDATEDATE` datetime DEFAULT NULL,
  `FCREATEUSER` bigint NOT NULL DEFAULT '0',
  `FUPDATEUSER` bigint NOT NULL DEFAULT '0',
  `FKEYGROUP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_USERREMEMBER_FKEY` (`FKEY`),
  KEY `IDX_EB_USERREMEMBER_FKEYGROUP` (`FKEYGROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userremember_r3 definition

CREATE TABLE `t_eb_userremember_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userselect definition

CREATE TABLE `t_eb_userselect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FFYEARSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FPERIODSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FSCENESTRUCTID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAPPLICATION` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FONLYMODEL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FFORMID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSIONSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FCSLSCHEME` bigint NOT NULL DEFAULT '0',
  `FDATEALTER` datetime DEFAULT NULL,
  `FEBPERIOD` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FMODELTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_USERSELECT` (`FMODELID`,`FMODIFIERID`,`FAPPLICATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userselect_r3 definition

CREATE TABLE `t_eb_userselect_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userselectforperm definition

CREATE TABLE `t_eb_userselectforperm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBIZCTRLRANGEID` bigint NOT NULL DEFAULT '0',
  `FUSERFIELD` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATEFIELD` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `INDEX_EB_USERSELFORPERM_M` (`FMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userselectforperm_r3 definition

CREATE TABLE `t_eb_userselectforperm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userselnotprompt definition

CREATE TABLE `t_eb_userselnotprompt` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FUSER` bigint NOT NULL DEFAULT '0',
  `FNOAGAINPROMPT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_USERSELNOTPROMPT` (`FMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_userselnotprompt_r3 definition

CREATE TABLE `t_eb_userselnotprompt_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_varmanagement definition

CREATE TABLE `t_eb_varmanagement` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVARINFO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOFFSET` int NOT NULL DEFAULT '0',
  `FBASEVAR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_VARMANAGE_TYPE` (`FVARTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_varmanagemententity definition

CREATE TABLE `t_eb_varmanagemententity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FINFO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSIONDETAIL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_VARMANENTITY_DIM` (`FDIMENSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_varvaluserrecord definition

CREATE TABLE `t_eb_varvaluserrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVARID` bigint NOT NULL DEFAULT '0',
  `FVARVALID` bigint NOT NULL DEFAULT '0',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_EB_VARVALUSERRECORD_S` (`FSOURCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_versioncopyrecord definition

CREATE TABLE `t_eb_versioncopyrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXECUTOR` bigint NOT NULL DEFAULT '0',
  `FEXECUTETIME` datetime DEFAULT NULL,
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMSG` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODTEXT` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATYPETEXT` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTEPARAM` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FSRCVERSIONID` bigint NOT NULL DEFAULT '0',
  `FTARVERSIONID` bigint NOT NULL DEFAULT '0',
  `FLASTTIME` datetime DEFAULT NULL,
  `FISCANCEL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSCHEMENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEMETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYTEXT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEMENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSMODEL` bigint DEFAULT NULL,
  `FORGVIEW` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_VERSIONCOPYRECORD_P1` (`FMODELID`,`FSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_versioncopyrecord_r3 definition

CREATE TABLE `t_eb_versioncopyrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_versioncopyscheme definition

CREATE TABLE `t_eb_versioncopyscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSMODEL` bigint NOT NULL DEFAULT '0',
  `FSCHEMENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEMETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTIVEDATE` datetime DEFAULT NULL,
  `FEXPIRATIONDATE` datetime DEFAULT NULL,
  `FDATALOCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSCHEMENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCVERSION` bigint NOT NULL DEFAULT '0',
  `FTARVERSION` bigint NOT NULL DEFAULT '0',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FTEXTFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODSHOW` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATYPESHOW` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGVIEW` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_versioncopyscheme_l definition

CREATE TABLE `t_eb_versioncopyscheme_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEMENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_VERSIONCOPYSCHEME_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_versioncopyscheme_r3 definition

CREATE TABLE `t_eb_versioncopyscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_viewentry definition

CREATE TABLE `t_eb_viewentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FVIEWID` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_VIEWENTRY_P1` (`FID`),
  KEY `IDX_EB_VIEWENTRY_DIM` (`FDIMENSIONID`),
  KEY `IDX_EB_VIEWENTRY_VIEW` (`FVIEWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_viewmember definition

CREATE TABLE `t_eb_viewmember` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FDSEQ` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMEMBERSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FVIEWID` bigint NOT NULL DEFAULT '0',
  `FAGGOPRT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMERGERNODE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISINNERORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISOUTERORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISOFFSETENTRY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FUSE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCDATE` datetime DEFAULT NULL,
  `FDISABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_EB_VIEWMEMBER_P3` (`FMODELID`,`FVIEWID`,`FDIMENSIONID`,`FNUMBER`),
  KEY `IDX_EB_VIEWMEMBER_P1` (`FMODELID`),
  KEY `IDX_EB_VIEWMEMBER_P2` (`FDIMENSIONID`),
  KEY `IDX_EB_VIEWMEMBER_MEM` (`FMEMBERID`),
  KEY `IDX_EB_VIEWMEMBER_PARENT` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_viewmember_r3 definition

CREATE TABLE `t_eb_viewmember_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_virtualentity_r3 definition

CREATE TABLE `t_eb_virtualentity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_eb_warningreport definition

CREATE TABLE `t_eb_warningreport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FWARNSCHEME` bigint NOT NULL DEFAULT '0',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBUSSMODEL` bigint NOT NULL DEFAULT '0',
  `FEARLYWARNID` bigint NOT NULL DEFAULT '0',
  `FTIME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVERID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_WARNINGREPORTS` (`FWARNSCHEME`),
  KEY `IDX_EB_WARNINGREPORTM` (`FMODELID`,`FBUSSMODEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warningreportentry definition

CREATE TABLE `t_eb_warningreportentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FAUDITTRAILID` bigint NOT NULL DEFAULT '0',
  `FICID` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPEID` bigint NOT NULL DEFAULT '0',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  `FMETRICID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_WARNINGREPORTENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warningrulecondit_r3 definition

CREATE TABLE `t_eb_warningrulecondit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warningrulecondition definition

CREATE TABLE `t_eb_warningrulecondition` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBALANCE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACTUAL` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FOCCUPATION` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FEXECUTE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FRATE` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warningrulerate definition

CREATE TABLE `t_eb_warningrulerate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTIME_PLAN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warningrulerate_l definition

CREATE TABLE `t_eb_warningrulerate_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIME_PLAN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_WARNINGRULERATE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warningrulerate_r3 definition

CREATE TABLE `t_eb_warningrulerate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warningsubentry definition

CREATE TABLE `t_eb_warningsubentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` decimal(19,6) DEFAULT NULL,
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_EB_WARNINGSUBENTRY` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warninguserdef definition

CREATE TABLE `t_eb_warninguserdef` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_EB_WARNINGUSERDEF` (`FID`),
  KEY `IDX_EB_WARNINGUSERDEFE` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warnningentity definition

CREATE TABLE `t_eb_warnningentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTITY` bigint NOT NULL DEFAULT '0',
  `FRANGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXCLUDE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_EB_WARNNINGENTITY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warnningreceiver definition

CREATE TABLE `t_eb_warnningreceiver` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_WARNNINGRECEIVER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warnningscheme definition

CREATE TABLE `t_eb_warnningscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` bigint NOT NULL DEFAULT '0',
  `FBUSINESSMODEL` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWARNNINGRULE` bigint NOT NULL DEFAULT '0',
  `FWARNNINGMSG` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMODIFIER` bigint DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warnningscheme_l definition

CREATE TABLE `t_eb_warnningscheme_l` (
  `FPKID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_EB_WARNNINGSCHEME_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warnningscheme_r3 definition

CREATE TABLE `t_eb_warnningscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warnningtarget definition

CREATE TABLE `t_eb_warnningtarget` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_EB_WARNNINGTARGET` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_warnningtargetentity definition

CREATE TABLE `t_eb_warnningtargetentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBER` bigint NOT NULL DEFAULT '0',
  `FDIMENSIONTREEMODEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMENSION` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSCOPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_T_EB_WARNNINGTARGETENTITY` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_weavedescentity definition

CREATE TABLE `t_eb_weavedescentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FDESC` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_WEAVEDESCENTITY_TEMP` (`FTEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_weavedescentity_r3 definition

CREATE TABLE `t_eb_weavedescentity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_whitebill definition

CREATE TABLE `t_eb_whitebill` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_WHITEBILL_P1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_whitechangelog definition

CREATE TABLE `t_eb_whitechangelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOPERATE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FTIME` datetime DEFAULT NULL,
  `FUSER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EB_WHITELOG_P1` (`FUSER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_whitechangelog_r3 definition

CREATE TABLE `t_eb_whitechangelog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_whiteentry definition

CREATE TABLE `t_eb_whiteentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBIZTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZID` bigint NOT NULL DEFAULT '0',
  `FEXTBIZTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTBIZNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTBIZNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTBIZID` bigint NOT NULL DEFAULT '0',
  `FENTRYSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_BGC_WHITEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_whitelist definition

CREATE TABLE `t_eb_whitelist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FBUSMODELID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FUSEEXTBIZ` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FNAMELISTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  PRIMARY KEY (`FID`),
  KEY `IDX_BGC_WHITELIST_MBS` (`FMODELID`,`FBUSMODELID`,`FSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_whitelist_l definition

CREATE TABLE `t_eb_whitelist_l` (
  `FPKID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_whitelist_r3 definition

CREATE TABLE `t_eb_whitelist_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_whiteorgentry definition

CREATE TABLE `t_eb_whiteorgentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORGBIZTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGBIZNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGBIZNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGBIZID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_EB_WHITEORGENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_writeoffinfoselect definition

CREATE TABLE `t_eb_writeoffinfoselect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FWRITEOFFBILL` bigint NOT NULL DEFAULT '0',
  `FWRITEOFFTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWRITEOFFSOURCEBILL` bigint NOT NULL DEFAULT '0',
  `FWRITEOFFENTRY` bigint NOT NULL DEFAULT '0',
  `FWRITEOFFVALUE` bigint NOT NULL DEFAULT '0',
  `FWRITEOFFSOURCEBILLENTRY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_writeoffscheme definition

CREATE TABLE `t_eb_writeoffscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_writeoffscheme_l definition

CREATE TABLE `t_eb_writeoffscheme_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_EB_WRITEOFFSCHEME_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_writeoffscheme_r3 definition

CREATE TABLE `t_eb_writeoffscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_eb_yhctest2_r3 definition

CREATE TABLE `t_eb_yhctest2_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_far_analysisclass_r3 definition

CREATE TABLE `t_far_analysisclass_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_isv_controlprocess_r3 definition

CREATE TABLE `t_isv_controlprocess_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_isv_controlprocesste_r3 definition

CREATE TABLE `t_isv_controlprocesste_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_isv_controlprocesstest_r3 definition

CREATE TABLE `t_isv_controlprocesstest_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_isv_currency_r3 definition

CREATE TABLE `t_isv_currency_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_isv_xxx_r3 definition

CREATE TABLE `t_isv_xxx_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_mbg_bgdata12981331_r3 definition

CREATE TABLE `t_mbg_bgdata12981331_r3` (
  `FID` varchar(36) NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_mbg_bgorg1001_fa_r3 definition

CREATE TABLE `t_mbg_bgorg1001_fa_r3` (
  `FID` varchar(36) NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_mbg_bgperioddisp_r3 definition

CREATE TABLE `t_mbg_bgperioddisp_r3` (
  `FID` varchar(36) NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_mbg_mbgdim2195390_fa_r3 definition

CREATE TABLE `t_mbg_mbgdim2195390_fa_r3` (
  `fnumber` varchar(36) NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_mbg_mbgdim44597394_f_r3 definition

CREATE TABLE `t_mbg_mbgdim44597394_f_r3` (
  `fnumber` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_mbg_mbgdim44597394_fa_r3 definition

CREATE TABLE `t_mbg_mbgdim44597394_fa_r3` (
  `fnumber` varchar(36) NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_mbg_mbgdim69794972_f_r3 definition

CREATE TABLE `t_mbg_mbgdim69794972_f_r3` (
  `fnumber` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_mbg_mbgdim69794972_fa_r3 definition

CREATE TABLE `t_mbg_mbgdim69794972_fa_r3` (
  `fnumber` varchar(36) NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_mbg_mbgdim72416371_f_r3 definition

CREATE TABLE `t_mbg_mbgdim72416371_f_r3` (
  `fnumber` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_mbg_mbgdim72416371_fa_r3 definition

CREATE TABLE `t_mbg_mbgdim72416371_fa_r3` (
  `fnumber` varchar(36) NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_mbg_mbgdim73623888_f_r3 definition

CREATE TABLE `t_mbg_mbgdim73623888_f_r3` (
  `fnumber` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_mbg_mbgdim73623888_fa_r3 definition

CREATE TABLE `t_mbg_mbgdim73623888_fa_r3` (
  `fnumber` varchar(36) NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_mbg_mbgindex63339200_fa_r3 definition

CREATE TABLE `t_mbg_mbgindex63339200_fa_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_epm.t_mbg_mbgindex63339200_r3 definition

CREATE TABLE `t_mbg_mbgindex63339200_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_perm_permdetail_budget_bak definition

CREATE TABLE `t_perm_permdetail_budget_bak` (
  `fid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fentryid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fseq` int NOT NULL DEFAULT '0',
  `fcontrolmode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpermitemid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fentitytypeid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbizappid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsource` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `fbizroleid` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_perm_userperm_budget_bak definition

CREATE TABLE `t_perm_userperm_budget_bak` (
  `fid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fuserid` bigint NOT NULL DEFAULT '0',
  `forgid` bigint NOT NULL DEFAULT '0',
  `fisincludesuborg` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fdimtype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_epm.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
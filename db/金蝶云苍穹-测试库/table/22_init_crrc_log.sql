USE crrc_log;

-- crrc_log.t_ai_newbuildreportentry definition

CREATE TABLE `t_ai_newbuildreportentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FCHECKITEM` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRLEVEL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMESSAGE` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBUILDREPORTHEADID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_AI_NEWBUILDREPORTENTRY` (`FCHECKITEM`,`FERRLEVEL`,`FBUILDREPORTHEADID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_ai_newbuildreporthead definition

CREATE TABLE `t_ai_newbuildreporthead` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FTRANSID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGLVOUCHER` bigint NOT NULL DEFAULT '0',
  `FGLVOUCHERNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZVOUCHERID` bigint NOT NULL DEFAULT '0',
  `FBIZVOUCHERNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FPERIOD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCESYS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNO` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` bigint NOT NULL DEFAULT '0',
  `FBUILDSTATE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBOOKID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTBOOK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVCHTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FVCHTEMPLATENO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVCHTEMPLATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUILDTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FERRORRESULT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUILDVOUCHERTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCEPTIONINFO` longtext COLLATE utf8mb4_unicode_ci,
  `FEXCEPTIONINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FISEXCEPTIONREPORT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_AI_NEWBUILDREPORT` (`FPERIODID`,`FBOOKID`),
  KEY `IDX_AI_NEWBUILDREPORT_GV` (`FGLVOUCHER`),
  KEY `IDX_AI_NEWBUILDREPORT_TS` (`FOPDATE`,`FSOURCEBILL`),
  KEY `IDX_AI_NEWBUILDREPORT_S` (`FSOURCEBILLNO`,`FSOURCEBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_aqap_biz_log definition

CREATE TABLE `t_aqap_biz_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FBIZ_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGGER_BATCH_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGGER_DETAIL_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG_TIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDT_QUERY` datetime DEFAULT NULL,
  `FLOGGER_BANK_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGGER_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG_CONTENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG_CONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `T_AQAP_BIZ_LOG_TYPE` (`FLOGGER_TYPE`),
  KEY `T_AQAP_BIZ_LOG_BIZ` (`FBIZ_NAME`),
  KEY `IDX_AQAP_BIZ_LOG_LOGGER` (`FLOGGER_BATCH_NO`,`FLOGGER_BANK_NO`),
  KEY `IDX_CLUSTER_AQAP_BIZ_LOG` (`FUSERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bcm_traceoplog definition

CREATE TABLE `t_bcm_traceoplog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FTRACEID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPID` bigint NOT NULL DEFAULT '0',
  `FDETAIL` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIQUEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_BCM_OPTRACEID` (`FTRACEID`),
  KEY `IDX_BCM_UNIQUEID` (`FUNIQUEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bd_secondauth_log definition

CREATE TABLE `t_bd_secondauth_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZOBJ` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFYOPERATE` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFYMODE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOPERATERESULT` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATEUSER` bigint NOT NULL DEFAULT '0',
  `FBIZOBJNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATEDATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FID`),
  KEY `IDX_AUTH_LOG_BIZOBJ` (`FBIZOBJ`),
  KEY `IDX_AUTH_LOG_USER` (`FOPERATEUSER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bd_secondauth_log_r3 definition

CREATE TABLE `t_bd_secondauth_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_archivedataentry definition

CREATE TABLE `t_bdlog_archivedataentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATAENTRYID` bigint NOT NULL DEFAULT '0',
  `FDATANUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATANAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FNEWCREATEORGNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWCREATEORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILURECAUSE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDATAENTRYID`),
  KEY `IDX_BDLOG_ARCHIVEDATAENTRY_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_archivefaildetail definition

CREATE TABLE `t_bdlog_archivefaildetail` (
  `FORGENTRYID` bigint NOT NULL DEFAULT '0',
  `FFAILDETAILID` bigint NOT NULL DEFAULT '0',
  `FFAILDATANUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILDATANAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FFAILCREATEORGNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILCREATEORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGFAILURECAUSE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FFAILDETAILID`),
  KEY `IDX_BDLOG_ARCHIVEFAILDETAIL_ID` (`FORGENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_archivelog definition

CREATE TABLE `t_bdlog_archivelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATTYPEID` bigint NOT NULL DEFAULT '0',
  `FOPERATTYPENUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATTYPENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATSOURCE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATSOURCEID` bigint NOT NULL DEFAULT '0',
  `FOPERATOBJ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATOBJNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORGID` bigint NOT NULL DEFAULT '0',
  `FOPERATORGNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORGNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATTIME` datetime DEFAULT NULL,
  `FOPERATORID` bigint NOT NULL DEFAULT '0',
  `FOPERATORNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATINSTRUCTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTIP` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVETIME` datetime DEFAULT NULL,
  `FFROMBACKUP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_BDLOG_ARCHIVELOG_OBJ` (`FOPERATOBJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_archivelog_r3 definition

CREATE TABLE `t_bdlog_archivelog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_archiveorgentry definition

CREATE TABLE `t_bdlog_archiveorgentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGENTRYID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORGNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FORGENTRYID`),
  KEY `IDX_BDLOG_ARCHIVEORGENTRY_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_dataentry definition

CREATE TABLE `t_bdlog_dataentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATAENTRYID` bigint NOT NULL DEFAULT '0',
  `FDATANUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATANAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FNEWCREATEORGNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWCREATEORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILURECAUSE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDATAENTRYID`),
  KEY `IDX_T_BDLOG_DATAENTRY_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_failcausedetail definition

CREATE TABLE `t_bdlog_failcausedetail` (
  `FORGENTRYID` bigint NOT NULL DEFAULT '0',
  `FFAILDETAILID` bigint NOT NULL DEFAULT '0',
  `FFAILDATANUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILDATANAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FFAILCREATEORGNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFAILCREATEORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGFAILURECAUSE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FFAILDETAILID`),
  KEY `IDX_T_BDLOG_FAILCAUSEDETAIL_ID` (`FORGENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_failmsg definition

CREATE TABLE `t_bdlog_failmsg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMESSAGE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRETRYTIMES` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FNEXTRETRYTIME` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_index definition

CREATE TABLE `t_bdlog_index` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG_TYPE` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCAPACITY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOCS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_BDLOG_NAME` (`FNAME`),
  KEY `IDX_BDLOG_LOGTYPE` (`FLOG_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_log definition

CREATE TABLE `t_bdlog_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATTYPEID` bigint NOT NULL DEFAULT '0',
  `FOPERATTYPENUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATTYPENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATSOURCE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATSOURCEID` bigint NOT NULL DEFAULT '0',
  `FOPERATOBJ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATOBJNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORGID` bigint NOT NULL DEFAULT '0',
  `FOPERATORGNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORGNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATTIME` datetime DEFAULT NULL,
  `FOPERATORID` bigint NOT NULL DEFAULT '0',
  `FOPERATORNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATINSTRUCTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTIP` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVETIME` datetime DEFAULT NULL,
  `FFROMBACKUP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_BDLOG_LOG_OBJ` (`FOPERATOBJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_log_r3 definition

CREATE TABLE `t_bdlog_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_optype definition

CREATE TABLE `t_bdlog_optype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVERETAINDAYS` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_T_BDLOG_OPTYPE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_optype_l definition

CREATE TABLE `t_bdlog_optype_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_BDLOG_OPTYPE_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_optype_r3 definition

CREATE TABLE `t_bdlog_optype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_orgentry definition

CREATE TABLE `t_bdlog_orgentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGENTRYID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORGNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FORGENTRYID`),
  KEY `IDX_T_BDLOG_ORGENTRY_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_bdlog_setting definition

CREATE TABLE `t_bdlog_setting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOG_TYPE` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE_LOG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FARCHIVEA_PERIOD` int NOT NULL DEFAULT '0',
  `FAUTO_ARCHIVEA` bigint NOT NULL DEFAULT '0',
  `FARCHIVEA_RETAINDAYS` int NOT NULL DEFAULT '0',
  `FARCHIVED_COUNT` bigint NOT NULL DEFAULT '0',
  `FAUTO_CLEARTIMES` bigint NOT NULL DEFAULT '0',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FMODIFY_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_BDLOG_SETTING_LOGTYPE` (`FLOG_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_botp_convertlog definition

CREATE TABLE `t_botp_convertlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FOPTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENTITYNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSBILLID` bigint NOT NULL DEFAULT '0',
  `FTENTITYNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTBILLID` bigint NOT NULL DEFAULT '0',
  `FCONVERTRULEVER` bigint NOT NULL DEFAULT '0',
  `FCONVERTRULEVERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONVERTRULE` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_BOTP_CONVERTLOG_OPTYPE` (`FOPTYPE`),
  KEY `IDX_BOTP_CONVERTLOG_STARTTIME` (`FSTARTTIME`),
  KEY `IDX_BOTP_CONVERTLOG_FSBILLNO` (`FSBILLNO`),
  KEY `IDX_BOTP_CONVERTLOG_FTBILLNO` (`FTBILLNO`),
  KEY `IDX_BOTP_CONVERTLOG_FTASKID_FSBILLID` (`FTASKID`,`FSBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_cts_rename_log definition

CREATE TABLE `t_cts_rename_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FNEWVALUE` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDVALUE` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_CTS_RENAMELOG` (`FUSERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_er_caswblog definition

CREATE TABLE `t_er_caswblog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FTRACEID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FTARGETID` bigint NOT NULL DEFAULT '0',
  `FTARGEBILLTYPE` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSETP` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMSG` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_ER_CASWBLOG_FTARGETID` (`FTARGETID`),
  KEY `IDX_ER_CASWBLOG_FTRACEID` (`FTRACEID`),
  KEY `IDX_ER_CASWBLOG_FOPDATE` (`FOPDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_er_datalog definition

CREATE TABLE `t_er_datalog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FLARGEDATA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLARGEDATA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACEID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ER_DATALOG_FUSERNAME` (`FUSERNAME`),
  KEY `IDX_ER_DATALOG_FOPNAME` (`FOPNAME`),
  KEY `IDX_ER_DATALOG_FOPDESC` (`FOPDESC`),
  KEY `IDX_ER_DATALOG_FOPDATE` (`FOPDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_er_invoicelog definition

CREATE TABLE `t_er_invoicelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FOPTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGINFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSERIALNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVOICENO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ER_INVOICELOG_USERNAME` (`FUSERNAME`),
  KEY `IDX_ER_INVOICELOG_DATE` (`FOPDATE`),
  KEY `IDX_ER_INVOICELOG_SERIAL` (`FSERIALNO`),
  KEY `IDX_ER_INVOICELOG_BILLNO` (`FBILLNO`),
  KEY `IDX_ER_INVOICELOG_INVOICENO` (`FINVOICENO`),
  KEY `IDX_ER_INVOICELOG_TRACEID` (`FTRACEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_er_trip_log definition

CREATE TABLE `t_er_trip_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FSERVER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFUNCTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FREQUESTURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQUESTDATA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQUESTDATA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FRESPONSEDATA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSEDATA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FFIELDMAPPINGNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDMAPPINGNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_TRIPLOG_TTRIP` (`FTRACEID`),
  KEY `IDX_TRIPLOG_SERVER` (`FSERVER`,`FFUNCTION`),
  KEY `IDX_TRIPLOGOPDATE` (`FOPDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_evp_archivedetail definition

CREATE TABLE `t_evp_archivedetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FORGNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLCOUNT` int NOT NULL DEFAULT '0',
  `FSUCCESSCNT` int NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FBATCHCODE` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRMSG` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EVP_ARCHIVEDETAIL` (`FORGNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_evp_archivelog definition

CREATE TABLE `t_evp_archivelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FORGNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVEDATE` datetime DEFAULT NULL,
  `FALLCOUNT` int NOT NULL DEFAULT '0',
  `FORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EVP_ARCHIVELOG` (`FORGNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_evp_oridatalog definition

CREATE TABLE `t_evp_oridatalog` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FRECORDCNT` int NOT NULL DEFAULT '0',
  `fsuccesscnt` int NOT NULL DEFAULT '0',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FENTITYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRMSG` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_evp_pulldatalog definition

CREATE TABLE `t_evp_pulldatalog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FORGNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOOKTYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FPSTARTDATE` datetime DEFAULT NULL,
  `FPENDDATE` datetime DEFAULT NULL,
  `FBATCHCODE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FERRORMSG` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPULLDATACNT` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_evp_pulldatalogdetail definition

CREATE TABLE `t_evp_pulldatalogdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FLOGID` bigint NOT NULL DEFAULT '0',
  `FBATCHCODE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FEXECSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FERRORMSG` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPULLDATACNT` int NOT NULL DEFAULT '0',
  `FTASKSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_EVP_PULLDATALOGDETAIL_LOGID` (`FLOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_evt_jobrecordlog definition

CREATE TABLE `t_evt_jobrecordlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCENE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FEVENTID` bigint NOT NULL DEFAULT '0',
  `FSERVICEID` bigint NOT NULL DEFAULT '0',
  `FSUBSCRIBEID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FLOGDATA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGDATA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_EVT_JOBRECORDLOG_JOBID` (`FJOBID`),
  KEY `IDX_EVT_JOBRECORDLOG_OPDATE` (`FOPDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_fa_illegal_operate_log definition

CREATE TABLE `t_fa_illegal_operate_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FORG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATELOG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATELOG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_FA_ILL_OP_LOG_FORG` (`FORG`,`FENTITYID`,`FOPNAME`),
  KEY `IDX_FA_ILL_OP_LOG_FOPDATE` (`FOPDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_fa_operation_log definition

CREATE TABLE `t_fa_operation_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FORGNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPREUSENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIOD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSETBOOKNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPREDCOUNT` int NOT NULL DEFAULT '0',
  `FFROMENTITYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FRESULT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FOPTYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMS` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMS_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_fatvs_op_record definition

CREATE TABLE `t_fatvs_op_record` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FOPOBJ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_FATVS_OP_RECORD_OPNAME` (`FOPNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_hrptmc_hrrptlog definition

CREATE TABLE `t_hrptmc_hrrptlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FLOGID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGLEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLASSNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETHODNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FBIZOBJID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGMESSAGE` longtext COLLATE utf8mb4_unicode_ci,
  `FLOGMESSAGE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRPTMC_HRRPTLOG` (`FLOGID`),
  KEY `IDX_HRPTMC_LOGBIZID` (`FBIZOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_isc_es_log_item definition

CREATE TABLE `t_isc_es_log_item` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FBILLDATA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLDATA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERTSTATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEYWORDS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ISC_ES_LOG_ITEM_B` (`FBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_admin_operation definition

CREATE TABLE `t_log_admin_operation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FOPNAME` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZAPPNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FCLIENTTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTIP` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVETIME` datetime DEFAULT NULL,
  `FOPDESC` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTNAME` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDFIELD1` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDFIELD2` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDFIELD3` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYCONTENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FMODIFYFIELDS` varchar(1020) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_LOG_LOGIN_ADMIN_OPDATE` (`FOPDATE`,`FUSERID`,`FBIZAPPID`),
  KEY `IDX_T_LOG_LOGIN_ADMIN_UTYPE` (`FUSERTYPE`),
  KEY `IDX_T_LOG_LOGIN_ADMIN_CTYPE` (`FCLIENTTYPE`),
  KEY `IDX_T_LOG_LOGIN_ADMIN_BILL` (`FMODIFYBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_aduit definition

CREATE TABLE `t_log_aduit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FMODIFYBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYCONTENT` varchar(510) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMODIFYCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FMODIFYFIELDS` varchar(1020) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTIP` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOG_ADUIT_OPDATEAPPUSER` (`FOPDATE`,`FBIZOBJNUMBER`,`FUSERNAME`),
  KEY `IDX_LOG_ADUIT_MODIFYBILLID` (`FMODIFYBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_aduit_rule definition

CREATE TABLE `t_log_aduit_rule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJ` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYFIELDS` longtext COLLATE utf8mb4_unicode_ci,
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOG_ADUIT_RULE_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_aduit_rule_l definition

CREATE TABLE `t_log_aduit_rule_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_LOG_ADUIT_RULE_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_aduit_rule_r3 definition

CREATE TABLE `t_log_aduit_rule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_app definition

CREATE TABLE `t_log_app` (
  `FID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FUSERID` bigint DEFAULT NULL,
  `FBIZAPPID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FBIZOBJID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FORGID` bigint DEFAULT NULL,
  `FOPTIME` datetime DEFAULT NULL,
  `FCLIENTTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FCLIENTIP` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FARCHIVETIME` datetime DEFAULT NULL,
  `FUSERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAMEE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESCRIPTIONE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTNAMEE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYCONTENT` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMODIFYCONTENT_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMODIFYFIELDS` varchar(1020) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLNO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IX_LOG_APP_OPTIMEAPPUSER` (`FOPTIME`,`FBIZAPPID`,`FUSERID`),
  KEY `IX_LOG_APP_MODIFYBILLID` (`FMODIFYBILLID`),
  KEY `IX_LOG_APP_USERID` (`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_app_archive_v2 definition

CREATE TABLE `t_log_app_archive_v2` (
  `FID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FBIZAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTIME` datetime DEFAULT NULL,
  `FCLIENTTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTIP` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVETIME` datetime DEFAULT NULL,
  `FOPNAMEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESCRIPTIONE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTNAMEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYCONTENT` varchar(510) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMODIFYCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FMODIFYFIELDS` varchar(1020) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGV2_ARCHIVE_OPUSER` (`FOPTIME`,`FBIZAPPID`,`FUSERID`),
  KEY `IDX_LOGV2_ARCHIV_MODIFYBILLID` (`FMODIFYBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_app_bak definition

CREATE TABLE `t_log_app_bak` (
  `FID` varchar(36) NOT NULL,
  `FUSERID` bigint DEFAULT NULL,
  `FBIZAPPID` varchar(36) DEFAULT NULL,
  `FBIZOBJID` varchar(36) DEFAULT NULL,
  `FORGID` bigint DEFAULT NULL,
  `FOPTIME` datetime DEFAULT NULL,
  `FCLIENTTYPE` varchar(30) DEFAULT NULL,
  `FCLIENTIP` varchar(128) DEFAULT NULL,
  `FARCHIVETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_log.t_log_app_l definition

CREATE TABLE `t_log_app_l` (
  `FPKID` varchar(36) NOT NULL,
  `FID` varchar(36) NOT NULL,
  `FLOCALEID` varchar(10) NOT NULL,
  `FOPNAME` varchar(255) NOT NULL,
  `FOPDESCRIPTION` varchar(255) DEFAULT NULL,
  `FCLIENTNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_LOG_APP_L_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_LOG_APP_L_OPDESC` (`FOPDESCRIPTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_log.t_log_app_other definition

CREATE TABLE `t_log_app_other` (
  `FID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FBIZAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTIME` datetime DEFAULT NULL,
  `FCLIENTTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTIP` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVETIME` datetime DEFAULT NULL,
  `FOPNAMEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESCRIPTIONE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTNAMEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYCONTENT` varchar(510) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMODIFYCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FMODIFYFIELDS` varchar(1020) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGV2_OTHER_OPTIMEUSER` (`FOPTIME`,`FBIZAPPID`,`FUSERID`),
  KEY `IDX_LOGV2_OTHER_MODIFYBILLID` (`FMODIFYBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_app_other_r3 definition

CREATE TABLE `t_log_app_other_r3` (
  `FID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_app_r2 definition

CREATE TABLE `t_log_app_r2` (
  `FID` varchar(36) NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_log.t_log_app_r3 definition

CREATE TABLE `t_log_app_r3` (
  `FID` varchar(36) NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_log.t_log_app_v2 definition

CREATE TABLE `t_log_app_v2` (
  `FID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FBIZAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTIME` datetime DEFAULT NULL,
  `FCLIENTTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTIP` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVETIME` datetime DEFAULT NULL,
  `FOPNAMEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESCRIPTIONE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTNAMEE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYCONTENT` varchar(510) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMODIFYCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FMODIFYFIELDS` varchar(1020) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOG_APPV2_OPTIMEAPPUSER` (`FOPTIME`,`FBIZAPPID`,`FUSERID`),
  KEY `IDX_LOG_APPV2_MODIFYBILLID` (`FMODIFYBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_app_v2_l definition

CREATE TABLE `t_log_app_v2_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`,`FID`),
  KEY `IDX_LOG_APP_V2_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_app_v2_r3 definition

CREATE TABLE `t_log_app_v2_r3` (
  `FID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_appsetting definition

CREATE TABLE `t_log_appsetting` (
  `FID` varchar(36) NOT NULL,
  `FAUTOARCHIVEAMT` int DEFAULT NULL,
  `FAUTOCLEARTIME` int DEFAULT NULL,
  `FAPPLOGRETAINDAYS` int NOT NULL DEFAULT '0',
  `FARCHIVEDCOUNT` int NOT NULL DEFAULT '0',
  `FUPGRADESTATUS` varchar(10) NOT NULL DEFAULT ' ',
  `FCURRENTSTEP` varchar(10) NOT NULL DEFAULT ' ',
  `FDUMPEDCOUNT` int NOT NULL DEFAULT '0',
  `FOPUSERFORMAT` varchar(30) NOT NULL DEFAULT ' ',
  `FSEARCHAPPTIME` int NOT NULL DEFAULT '0',
  `FSEARCHAPPBAKTIME` int NOT NULL DEFAULT '0',
  `FDELETEAPPTIME` int NOT NULL DEFAULT '0',
  `FSEARCHARCHIVETIME` int NOT NULL DEFAULT '0',
  `FHEARTBEATTIME` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IX_LOG_APPSETTING_ARCHIVE` (`FAUTOARCHIVEAMT`,`FAUTOCLEARTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_log.t_log_appsetting_r2 definition

CREATE TABLE `t_log_appsetting_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_log.t_log_appsetting_r3 definition

CREATE TABLE `t_log_appsetting_r3` (
  `FID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_archive definition

CREATE TABLE `t_log_archive` (
  `FID` varchar(36) NOT NULL,
  `FUSERID` bigint DEFAULT NULL,
  `FBIZAPPID` varchar(36) DEFAULT NULL,
  `FBIZOBJID` varchar(36) DEFAULT NULL,
  `FORGID` bigint DEFAULT NULL,
  `FOPTIME` datetime DEFAULT NULL,
  `FCLIENTTYPE` varchar(30) DEFAULT NULL,
  `FCLIENTIP` varchar(128) DEFAULT NULL,
  `FARCHIVETIME` datetime DEFAULT NULL,
  `FUSERNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FBIZAPPNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FBIZOBJNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FOPDESCRIPTION` varchar(255) NOT NULL DEFAULT ' ',
  `FCLIENTNAME` varchar(255) NOT NULL DEFAULT ' ',
  `FOPNAMEE` varchar(255) NOT NULL DEFAULT ' ',
  `FOPDESCRIPTIONE` varchar(255) NOT NULL DEFAULT ' ',
  `FCLIENTNAMEE` varchar(255) NOT NULL DEFAULT ' ',
  `FMODIFYBILLID` varchar(36) NOT NULL DEFAULT ' ',
  `FMODIFYCONTENT` varchar(510) DEFAULT NULL,
  `FMODIFYCONTENT_TAG` longtext,
  `FMODIFYFIELDS` varchar(1020) NOT NULL DEFAULT ' ',
  `FMODIFYBILLNO` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IX_LOG_ARCHIVE_USERID` (`FUSERID`),
  KEY `IX_LOG_ARCHIVE_OPTIME` (`FOPTIME`),
  KEY `IX_LOG_ARCHIVE_MODIFYBILLID` (`FMODIFYBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_log.t_log_archive_l definition

CREATE TABLE `t_log_archive_l` (
  `FPKID` varchar(36) NOT NULL,
  `FID` varchar(36) NOT NULL,
  `FLOCALEID` varchar(10) NOT NULL,
  `FOPNAME` varchar(255) NOT NULL,
  `FOPDESCRIPTION` varchar(255) DEFAULT NULL,
  `FCLIENTNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_LOG_ARCHIVE_L_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_LOG_ARCHIVE_L_OPDESC` (`FOPDESCRIPTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_log.t_log_archive_r2 definition

CREATE TABLE `t_log_archive_r2` (
  `FID` varchar(36) NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- crrc_log.t_log_archive_r3 definition

CREATE TABLE `t_log_archive_r3` (
  `FID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_asyncop definition

CREATE TABLE `t_log_asyncop` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATOR` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPRULEKEY` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FPARAM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAM_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FEXETIME` datetime DEFAULT NULL,
  `FCONSUME` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUCCESS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLOG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOG_ASYNCOP_ORG` (`FORGID`),
  KEY `IDX_LOG_ASYNCOP_ENTITY` (`FENTITY`),
  KEY `IDX_LOG_ASYNCOP_OP` (`FOPERATOR`),
  KEY `IDX_LOG_ASYNCOP_RULE` (`FOPRULEKEY`),
  KEY `IDX_LOG_ASYNCOP_TIME` (`FEXETIME`),
  KEY `IDX_LOG_ASYNCOP_BILLID` (`FBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_asyncop_l definition

CREATE TABLE `t_log_asyncop_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORNAME` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FOPRULENAME` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_LOG_ASYNCOP_L_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_asyncop_r3 definition

CREATE TABLE `t_log_asyncop_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_botp_lk definition

CREATE TABLE `t_log_botp_lk` (
  `FID` bigint NOT NULL,
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FOPTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENTITYNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTABLEID` bigint NOT NULL DEFAULT '0',
  `FSBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSBILLID` bigint NOT NULL DEFAULT '0',
  `FSID` bigint NOT NULL DEFAULT '0',
  `FTTABLEID` bigint NOT NULL DEFAULT '0',
  `FTENTITYNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTBILLID` bigint NOT NULL DEFAULT '0',
  `FTID` bigint NOT NULL DEFAULT '0',
  `FLOGTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_LOG_BOTP_LK_FSBILLNO` (`FSBILLNO`),
  KEY `IDX_T_LOG_BOTP_LK_FTBILLNO` (`FTBILLNO`),
  KEY `IDX_T_LOG_BOTP_LK_FSBILLID` (`FSBILLID`),
  KEY `IDX_T_LOG_BOTP_LK_FTBILLID` (`FTBILLID`),
  KEY `IDX_T_LOG_BOTP_LK_OPTTIME` (`FOPDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_dbcache definition

CREATE TABLE `t_log_dbcache` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREGION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEY` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVALUE` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATETIME` datetime DEFAULT NULL,
  `FOVERTIME` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOG_DBCACHE_REGION` (`FREGION`),
  KEY `IDX_LOG_DBCACHE_TYPE` (`FTYPE`),
  KEY `IDX_LOG_DBCACHE_OVERTIME` (`FOVERTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_dbcacheentry definition

CREATE TABLE `t_log_dbcacheentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FVALUE` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATETIME` datetime DEFAULT NULL,
  `FOVERTIME` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_LOG_DBCACHEENTRY_FID` (`FID`),
  KEY `IDX_LOG_DBCACHEENTRY_OT` (`FOVERTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_deploy definition

CREATE TABLE `t_log_deploy` (
  `FID` bigint NOT NULL,
  `FPACKAGEID` bigint NOT NULL,
  `FTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FCATEGORY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FVER` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FCONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOG_DEPLOY_FPKGID` (`FPACKAGEID`,`FCATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_deploy_his definition

CREATE TABLE `t_log_deploy_his` (
  `FID` bigint NOT NULL,
  `FPACKAGEID` bigint NOT NULL,
  `FTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FCATEGORY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FVER` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FCONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOG_DEPLOY_HIS_FPKGID` (`FPACKAGEID`,`FCATEGORY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_etconfig definition

CREATE TABLE `t_log_etconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FREALTIME` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOG_ETCONFIG_CR` (`FCREATORID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_etconfig_r3 definition

CREATE TABLE `t_log_etconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_etconfigentry definition

CREATE TABLE `t_log_etconfigentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '1',
  `FSCHEMEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEMEENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSCHEMEPARAM` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_LOG_ETCONFIGENTRY_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_etl_setting definition

CREATE TABLE `t_log_etl_setting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVEDAYS` bigint NOT NULL DEFAULT '180',
  `FTABLENAME` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ETL_SETTING_TAB` (`FTABLENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_etl_setting_r3 definition

CREATE TABLE `t_log_etl_setting_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_etl_task definition

CREATE TABLE `t_log_etl_task` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMOVECOUNT` bigint NOT NULL DEFAULT '0',
  `FFINISHCOUNT` bigint NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_ETL_TASK_ID` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_etl_task_r3 definition

CREATE TABLE `t_log_etl_task_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_exportlog definition

CREATE TABLE `t_log_exportlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FFINISHTIME` datetime DEFAULT NULL,
  `FEXPORTSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLOGS` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FBIZOBJECT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOWNLOADURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FUSETIME` int NOT NULL DEFAULT '0',
  `FEXPTTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTOTAL` int NOT NULL DEFAULT '0',
  `FCOMPLETE` int NOT NULL DEFAULT '0',
  `FSOURCEOBJ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDELETED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOG_EXPORTLOG_BILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_failrecord definition

CREATE TABLE `t_log_failrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMESSAGE` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETRYTIMES` int NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FNEXTRETRYTIME` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IX_LOG_FAILRECORD_CREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_failrecord_r3 definition

CREATE TABLE `t_log_failrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_index definition

CREATE TABLE `t_log_index` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCAPACITY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOCS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IX_LOG_INDEX_NAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_index_r3 definition

CREATE TABLE `t_log_index_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_login definition

CREATE TABLE `t_log_login` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FBIZAPPID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FCLIENTTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTIP` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FARCHIVETIME` datetime DEFAULT NULL,
  `FOPNAME` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENTNAME` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDFIELD1` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDFIELD2` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTENDFIELD3` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_LOG_LOGIN_OPDATE` (`FOPDATE`,`FBIZAPPID`,`FUSERID`),
  KEY `IDX_T_LOG_LOGIN_USERNAME` (`FUSERNAME`),
  KEY `IDX_T_LOG_LOGIN_CLIENTNAME` (`FCLIENTNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_metaoperate definition

CREATE TABLE `t_log_metaoperate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FVERSION` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISV` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATOR` bigint NOT NULL DEFAULT '0',
  `FOPERATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FCONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOG_METAOPERATE_OPTIME` (`FOPERATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_metaoperate_r3 definition

CREATE TABLE `t_log_metaoperate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_metaversion definition

CREATE TABLE `t_log_metaversion` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FMETAID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETANUMBER` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMETAVER` bigint NOT NULL DEFAULT '0',
  `FBIZAPPID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FREMARK` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_LOG_METAVERSION_FID` (`FID`),
  KEY `IDX_T_LOG_METAVERSION_METAID` (`FMETAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_settings definition

CREATE TABLE `t_log_settings` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPUSERFORMAT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `FMODIFIER` bigint DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FID`),
  KEY `IDX_T_LOG_SETTINGS_USERTYPE` (`FUSERTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_log_settings_r3 definition

CREATE TABLE `t_log_settings_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_openapi_log_data definition

CREATE TABLE `t_openapi_log_data` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOPDESC` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQUEST` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSE` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRMSG` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPINUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FTHIRDAPPNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUDNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJECT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIMECOST` bigint NOT NULL DEFAULT '0',
  `FOPERATIONTIMECOST` bigint NOT NULL DEFAULT '0',
  `FURL` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPIID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACEID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHTTPSTATUS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOG_FOPDATE` (`FOPDATE`),
  KEY `IDX_LOG_APINUMBER` (`FAPINUMBER`),
  KEY `IDX_LOG_APIID` (`FAPIID`),
  KEY `IDX_LOG_TRACEID` (`FTRACEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_openapi_logitem definition

CREATE TABLE `t_openapi_logitem` (
  `FLOGID` bigint NOT NULL DEFAULT '0',
  `FOPDATE` datetime DEFAULT NULL,
  `FREQPARA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQPARA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FRESPPARA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPPARA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FLOGID`),
  KEY `T_OPENAPI_LOGITEM_IDX_OPDATE` (`FOPDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_pcs_costlog definition

CREATE TABLE `t_pcs_costlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FLOGID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGLEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLASSNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FBIZOBJID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGMESSAGE` longtext COLLATE utf8mb4_unicode_ci,
  `FLOGMESSAGE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_PCS_COLOGID` (`FLOGID`),
  KEY `IDX_PCS_COLOGPROCESSID` (`FPROCESSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log definition

CREATE TABLE `t_perm_log` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSI_FROM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSI_TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORM_IDENTITY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORM_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPBTN` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERFACE_METHOD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_ITEM_ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_ITEM_NUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_ITEM_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRE_DATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAFTER_DATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDIFF_CONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FOPER_ID` bigint NOT NULL DEFAULT '0',
  `FOPER_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPER_NUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPER_USERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPER_ORG_ID` bigint NOT NULL DEFAULT '0',
  `FOPER_ORG_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPER_TIME` datetime DEFAULT NULL,
  `FOP_DESC` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCLIENT_TYPE` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENT_IP` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENT_NAME` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FMODIFY_TIME` datetime DEFAULT NULL,
  `FHAS_GENDIFF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FGENDIFF_RESULT` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILING_TIME` datetime DEFAULT NULL,
  `FFROM_BACKUP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`,`FNUMBER`),
  KEY `IDX_FOPER_TIME` (`FOPER_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_archive definition

CREATE TABLE `t_perm_log_archive` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSI_FROM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSI_TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORM_IDENTITY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORM_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPBTN` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERFACE_METHOD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_ITEM_ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_ITEM_NUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_ITEM_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRE_DATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAFTER_DATA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDIFF_CONTENT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FOPER_ID` bigint NOT NULL DEFAULT '0',
  `FOPER_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPER_NUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPER_USERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPER_ORG_ID` bigint NOT NULL DEFAULT '0',
  `FOPER_ORG_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPER_TIME` datetime DEFAULT NULL,
  `FOP_DESC` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCLIENT_TYPE` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENT_IP` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLIENT_NAME` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FMODIFY_TIME` datetime DEFAULT NULL,
  `FHAS_GENDIFF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFILING_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PL_ARCH_OPTIME` (`FOPER_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_archive_r3 definition

CREATE TABLE `t_perm_log_archive_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_copytaruser definition

CREATE TABLE `t_perm_log_copytaruser` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FUSER_ID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_COPYTARUSER` (`FPERM_LOGID`),
  KEY `IDX_UNAME` (`FUSER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_admorg definition

CREATE TABLE `t_perm_log_diff_admorg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FADMORG_ID` bigint NOT NULL DEFAULT '0',
  `FADMORG_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMORG_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ADMORG` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_admorgusr definition

CREATE TABLE `t_perm_log_diff_admorgusr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FUSER_ID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ADMORGUSR` (`FPERM_LOGID`),
  KEY `IDX_UNAME_ADMORGUSR` (`FUSER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_app definition

CREATE TABLE `t_perm_log_diff_app` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_APP` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_bcperm definition

CREATE TABLE `t_perm_log_diff_bcperm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ENTITY_B` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_busirole definition

CREATE TABLE `t_perm_log_diff_busirole` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FROLE_NUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_BUSIROLE` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_busiunit definition

CREATE TABLE `t_perm_log_diff_busiunit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FBUSIUNIT_ID` bigint NOT NULL DEFAULT '0',
  `FBUSIUNIT_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSIUNIT_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_BUSIUNIT` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_commrole definition

CREATE TABLE `t_perm_log_diff_commrole` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FROLE_NUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FOP_ENABLE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ENTITY_A` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_dimdis definition

CREATE TABLE `t_perm_log_diff_dimdis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_ID` bigint NOT NULL DEFAULT '0',
  `FDIM_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCLUDE_SUBORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINCLUDE_SUBORG_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPEDESC` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_DIMDIS` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_dimfield definition

CREATE TABLE `t_perm_log_diff_dimfield` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELD_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELD_COMMENT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROL_MODE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROL_MODEDESC` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_ID` bigint NOT NULL DEFAULT '0',
  `FDIM_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCLUDE_SUBORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINCLUDE_SUBORG_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPEDESC` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_DIMFIELD` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_dimfps definition

CREATE TABLE `t_perm_log_diff_dimfps` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFPSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FFPSCHEMENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENSITIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDIM_ID` bigint NOT NULL DEFAULT '0',
  `FDIM_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCLUDE_SUBORG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINCLUDE_SUBORG_DESC` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPEDESC` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_DIMFPS_PERMLOGID` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_dimfunc definition

CREATE TABLE `t_perm_log_diff_dimfunc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_ID` bigint NOT NULL DEFAULT '0',
  `FDIM_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCLUDE_SUBORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINCLUDE_SUBORG_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPEDESC` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_DIMFUNC` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_dimnewdr definition

CREATE TABLE `t_perm_log_diff_dimnewdr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_ID` bigint NOT NULL DEFAULT '0',
  `FDIM_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCLUDE_SUBORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINCLUDE_SUBORG_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRE_DATA_RULEID` bigint NOT NULL DEFAULT '0',
  `FPRE_DATA_RULENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFTER_DATA_RULEID` bigint NOT NULL DEFAULT '0',
  `FAFTER_DATA_RULENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPEDESC` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_DIMNEWDR` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_dimnewdrp definition

CREATE TABLE `t_perm_log_diff_dimnewdrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROP_KEY` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROP_NAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROP_ENTNUM` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROP_ENTNAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_ID` bigint NOT NULL DEFAULT '0',
  `FDIM_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCLUDE_SUBORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINCLUDE_SUBORG_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRE_DATA_RULEID` bigint NOT NULL DEFAULT '0',
  `FPRE_DATA_RULENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFTER_DATA_RULEID` bigint NOT NULL DEFAULT '0',
  `FAFTER_DATA_RULENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPEDESC` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_DIMNEWDRP` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_dimrange definition

CREATE TABLE `t_perm_log_diff_dimrange` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FDIM_ID` bigint NOT NULL DEFAULT '0',
  `FDIM_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCLUDE_SUBORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINCLUDE_SUBORG_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPEDESC` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_DIMRANGE` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_dimrole definition

CREATE TABLE `t_perm_log_diff_dimrole` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FROLE_NUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_ID` bigint NOT NULL DEFAULT '0',
  `FDIM_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCLUDE_SUBORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINCLUDE_SUBORG_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPEDESC` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_DIMROLE` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_dimuser definition

CREATE TABLE `t_perm_log_diff_dimuser` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FDIM_ID` bigint NOT NULL DEFAULT '0',
  `FDIM_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCLUDE_SUBORG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINCLUDE_SUBORG_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_ID` bigint NOT NULL DEFAULT '0',
  `FUSER_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_NUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_USERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPEDESC` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_DIMUSER` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_disperm definition

CREATE TABLE `t_perm_log_diff_disperm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ENTITY_C` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_drinfo definition

CREATE TABLE `t_perm_log_diff_drinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDR_NUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDR_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDR_NUMBER_AFTER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDR_NAME_AFTER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULE_AFTER` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FENABLE_AFTER` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ENTITY_DRINFO` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_failmsg definition

CREATE TABLE `t_perm_log_diff_failmsg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMESSAGE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRETRYTIMES` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FNEXTRETRYTIME` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PERMLOGDIFF_CREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_fieldperm definition

CREATE TABLE `t_perm_log_diff_fieldperm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELD_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELD_COMMENT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROL_MODE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROL_MODEDESC` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ENTITY2` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_fps definition

CREATE TABLE `t_perm_log_diff_fps` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFPSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FFPSCHEMENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENSITIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOP_DESC` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_FPS_PERMLOGID` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_fpsd definition

CREATE TABLE `t_perm_log_diff_fpsd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDCOMMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROLMODE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROLMODEDESC` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_FPSD_PERMLOGID` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_funcperm definition

CREATE TABLE `t_perm_log_diff_funcperm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ENTITY` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_newdr definition

CREATE TABLE `t_perm_log_diff_newdr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERM_ITEM_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRE_DATA_RULEID` bigint NOT NULL DEFAULT '0',
  `FPRE_DATA_RULENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFTER_DATA_RULEID` bigint NOT NULL DEFAULT '0',
  `FAFTER_DATA_RULENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ENTITY3` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_newdrprop definition

CREATE TABLE `t_perm_log_diff_newdrprop` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROP_KEY` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROP_NAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROP_ENTNUM` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROP_ENTNAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRE_DATA_RULEID` bigint NOT NULL DEFAULT '0',
  `FPRE_DATA_RULENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFTER_DATA_RULEID` bigint NOT NULL DEFAULT '0',
  `FAFTER_DATA_RULENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ENTITY4` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_oprdirect definition

CREATE TABLE `t_perm_log_diff_oprdirect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FDIRECTOR_ID` bigint NOT NULL DEFAULT '0',
  `FDIRECTOR_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIRECTOR_NUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIRECTOR_USERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORG_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_OPRDIRECT` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_oprexrole definition

CREATE TABLE `t_perm_log_diff_oprexrole` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FROLE_ID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE_NUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE_REMARK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_OPREXROLE` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_oprexusgr definition

CREATE TABLE `t_perm_log_diff_oprexusgr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FUSRGRP_ID` bigint NOT NULL DEFAULT '0',
  `FUSRGRP_NUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSRGRP_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSRGRP_DESC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_OPREXUSGR` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_oprexusr definition

CREATE TABLE `t_perm_log_diff_oprexusr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FUSER_ID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORG_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_OPREXUSR` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_oprinfo definition

CREATE TABLE `t_perm_log_diff_oprinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FCLOUD_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLOUD_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_ID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITY_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION_KEY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION_TYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPUBLIC` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRULE` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FOPERATIONRULE_OBJID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOBJENABLED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME_AFTER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION_AFTER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION_KEY_AFTER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION_TYPE_AFTER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPUBLIC_AFTER` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPRESET_AFTER` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRULE_AFTER` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FOPERATIONRULE_OBJID_AFTER` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOBJENABLED_AFTER` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ENTITY_OPRINFO` (`FPERM_LOGID`,`FENTITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_roleadmgr definition

CREATE TABLE `t_perm_log_diff_roleadmgr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FROLE_ID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE_NUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINGROUP_ID` bigint NOT NULL DEFAULT '0',
  `FADMINGROUP_NUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINGROUP_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFIABLE_DESC` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_ROLEADMGRP` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_ugbizrole definition

CREATE TABLE `t_perm_log_diff_ugbizrole` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FUSRGRP_ID` bigint NOT NULL DEFAULT '0',
  `FUSRGRP_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSRGRP_NUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSRGRPSTDID` bigint NOT NULL DEFAULT '1404221671421785088',
  `FUSRGRPSTD_DESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSIROLE_ID` bigint NOT NULL DEFAULT '0',
  `FBUSIROLE_NUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSIROLE_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FOP_DESC` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_DIFFUGBIZROLE` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_ugroledim definition

CREATE TABLE `t_perm_log_diff_ugroledim` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FUSRGRP_ID` bigint NOT NULL DEFAULT '0',
  `FUSRGRP_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSRGRP_NUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE_ID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE_NUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_ID` bigint NOT NULL DEFAULT '0',
  `FDIM_NUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIM_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCLUDE_SUB` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINCLUDE_SUB_DESC` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIMTYPEDESC` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FOP_DESC` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_UGROLEDIM` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_user definition

CREATE TABLE `t_perm_log_diff_user` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FUSER_ID` bigint NOT NULL DEFAULT '0',
  `FUSER_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_NUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_USERNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_DIFFUSER` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_diff_usrgrpu definition

CREATE TABLE `t_perm_log_diff_usrgrpu` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FUSRGRP_ID` bigint NOT NULL DEFAULT '0',
  `FUSRGRP_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSRGRP_NUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_ID` bigint NOT NULL DEFAULT '0',
  `FUSER_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_NUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_USERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROM_TYPE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFROM_TYPE_DESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOP_DESC` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FDATACHANGE_TYPE` int NOT NULL DEFAULT '0',
  `FDATACHANGE_TYPE_DESC` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_LOGID_USRGRPU` (`FPERM_LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_r3 definition

CREATE TABLE `t_perm_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_perm_log_user definition

CREATE TABLE `t_perm_log_user` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERM_LOGID` bigint NOT NULL DEFAULT '0',
  `FUSER_ID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_FPERM_LOGID` (`FPERM_LOGID`),
  KEY `IDX_USERNAME` (`FUSER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_permlog_busitype definition

CREATE TABLE `t_permlog_busitype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBUSITYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSITYPE_DESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIFF_HANDLER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_FORM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIRECT_SAVEDIFF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FARCHIVEA_PERIOD` int NOT NULL DEFAULT '0',
  `FARCHIVEA_RETAINDAYS` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFY_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_PERMLOG_BUSITYPE` (`FBUSITYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_permlog_busitype_l definition

CREATE TABLE `t_permlog_busitype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSITYPE_DESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PERMLOG_BUSITYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_permlog_busitype_r3 definition

CREATE TABLE `t_permlog_busitype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_privacy_desen_detaillog definition

CREATE TABLE `t_privacy_desen_detaillog` (
  `fid` bigint NOT NULL,
  `fusername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopdesc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopdate` datetime DEFAULT NULL,
  `ffieldident` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ffieldname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fentityname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fentitynumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `foperatetype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `foperateterminal` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `foperator` bigint DEFAULT NULL,
  `fschemeid` bigint DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_privacy_desen_log definition

CREATE TABLE `t_privacy_desen_log` (
  `fid` bigint NOT NULL,
  `fusername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopdesc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopdate` datetime DEFAULT NULL,
  `ffieldident` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ffieldname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fentityname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fentitynumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frealcount` bigint DEFAULT NULL,
  `flimitcount` bigint DEFAULT NULL,
  `fschemeid` bigint DEFAULT NULL,
  `foperator` bigint DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_pur_scdatahandlelog definition

CREATE TABLE `t_pur_scdatahandlelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATAHANDLEFAILID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACEID` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGAPPID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FPARAMS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMS_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FRESULT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FOPDATE` datetime DEFAULT NULL,
  `FSCDATAHANDLEID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGDIM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logrecord',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PUR_SDHL_FAILID` (`FDATAHANDLEFAILID`),
  KEY `IDX_T_PUR_SDHL_FLOGAPPID` (`FLOGAPPID`),
  KEY `IDX_T_PUR_SDHL_FOPDATE` (`FOPDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_sys_opreason definition

CREATE TABLE `t_sys_opreason` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FREASON` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FDESCRIPTION` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_SYS_OPREASON_FREID` (`FREID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_wf_condruleparselog definition

CREATE TABLE `t_wf_condruleparselog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCESSDEFINITIONID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYINSTID` bigint NOT NULL DEFAULT '0',
  `FKEY` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGMSG` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGMSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPRESSION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FITEMNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCEPTIONSTACKTRACE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPERPROCESSNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_CONDRULEPARSELOG_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_CONDRULEPARSELOG_ENTITY` (`FENTITYNUMBER`),
  KEY `IDX_WF_CONDRULEPARSELOG_BILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_wf_processjoblog definition

CREATE TABLE `t_wf_processjoblog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FPROCINSTID` bigint NOT NULL DEFAULT '0',
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FTIMESTAMP` datetime DEFAULT NULL,
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FBUSINESSKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FJOBTYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACENO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FLOGDATA` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGDATA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FPROCESSTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AuditFlow',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_PROCESSJOBLOG_PROC` (`FPROCINSTID`),
  KEY `IDX_WF_PROCESSJOBLOG_BUSKEY` (`FBUSINESSKEY`),
  KEY `IDX_WF_PROCESSJOBLOG_BILLNO` (`FBILLNO`),
  KEY `IDX_WF_PROCESSJOBLOG_OPTIME` (`FOPDATE`,`FTIMESTAMP`),
  KEY `IDX_WF_PROCESSJOBLOG_TIMESTAMP` (`FTIMESTAMP`),
  KEY `IDX_WF_PROCESSJOBLOG_JOBID` (`FJOBID`),
  KEY `IDX_WF_PROCESSJOBLOG_SRCJOBID` (`FSRCJOBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.t_wf_runtimeparselog definition

CREATE TABLE `t_wf_runtimeparselog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPDATE` datetime DEFAULT NULL,
  `FENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSDEFINTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGMSG` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARSETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBPROCESS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGMSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_RUNTIMEPARSELOG` (`FENTITYNUMBER`,`FBILLNO`),
  KEY `IDX_WF_RUNTIMEPARSELOG_BILLNO` (`FBILLNO`),
  KEY `IDX_WF_RUNTIMEPARSELOG_BUSKEY` (`FBUSINESSKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jk5mt72la0w_0 definition

CREATE TABLE `temp_a8jk5mt72la0w_0` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JK5MT72LA0W_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jk5mtdlbpq8_0 definition

CREATE TABLE `temp_a8jk5mtdlbpq8_0` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JK5MTDLBPQ8_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jk5mth26nsw_0 definition

CREATE TABLE `temp_a8jk5mth26nsw_0` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JK5MTH26NSW_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jk5mtke1rls_0 definition

CREATE TABLE `temp_a8jk5mtke1rls_0` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JK5MTKE1RLS_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jltppdrs7i8_1 definition

CREATE TABLE `temp_a8jltppdrs7i8_1` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLTPPDRS7I8_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jltppj1kgzk_1 definition

CREATE TABLE `temp_a8jltppj1kgzk_1` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLTPPJ1KGZK_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jltppm8ftog_1 definition

CREATE TABLE `temp_a8jltppm8ftog_1` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLTPPM8FTOG_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jltppp5bjeo_1 definition

CREATE TABLE `temp_a8jltppp5bjeo_1` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLTPPP5BJEO_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jlzdusdtg5c_2 definition

CREATE TABLE `temp_a8jlzdusdtg5c_2` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLZDUSDTG5C_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jlzduyrk35s_2 definition

CREATE TABLE `temp_a8jlzduyrk35s_2` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLZDUYRK35S_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jlzdv1eg934_2 definition

CREATE TABLE `temp_a8jlzdv1eg934_2` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLZDV1EG934_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jlzdv55aqyo_2 definition

CREATE TABLE `temp_a8jlzdv55aqyo_2` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JLZDV55AQYO_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jroa0fqrgu8_g definition

CREATE TABLE `temp_a8jroa0fqrgu8_g` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JROA0FQRGU8_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jroa0moham8_g definition

CREATE TABLE `temp_a8jroa0moham8_g` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JROA0MOHAM8_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jroa0qkbmrk_g definition

CREATE TABLE `temp_a8jroa0qkbmrk_g` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JROA0QKBMRK_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a8jroa0ug5xc0_g definition

CREATE TABLE `temp_a8jroa0ug5xc0_g` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A8JROA0UG5XC0_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a9j1195yktzb4_6 definition

CREATE TABLE `temp_a9j1195yktzb4_6` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A9J1195YKTZB4_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a9j11961wp340_6 definition

CREATE TABLE `temp_a9j11961wp340_6` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A9J11961WP340_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a9j11964jl91c_6 definition

CREATE TABLE `temp_a9j11964jl91c_6` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A9J11964JL91C_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_a9j11966rhzb4_6 definition

CREATE TABLE `temp_a9j11966rhzb4_6` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_TEMP_A9J11966RHZB4_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jk5mto4wb28_0 definition

CREATE TABLE `temp_b8jk5mto4wb28_0` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JK5MTO4WB28_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jk5mts0qlmo_0 definition

CREATE TABLE `temp_b8jk5mts0qlmo_0` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JK5MTS0QLMO_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jk5mtv7lybk_0 definition

CREATE TABLE `temp_b8jk5mtv7lybk_0` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JK5MTV7LYBK_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jk5mtyogutc_0 definition

CREATE TABLE `temp_b8jk5mtyogutc_0` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JK5MTYOGUTC_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jltppsm6hhc_1 definition

CREATE TABLE `temp_b8jltppsm6hhc_1` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLTPPSM6HHC_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jltppvj277k_1 definition

CREATE TABLE `temp_b8jltppvj277k_1` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLTPPVJ277K_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jltppyay5ts_1 definition

CREATE TABLE `temp_b8jltppyay5ts_1` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLTPPYAY5TS_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jltpq0xua68_1 definition

CREATE TABLE `temp_b8jltpq0xua68_1` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLTPQ0XUA68_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jlzdv8c63nk_2 definition

CREATE TABLE `temp_b8jlzdv8c63nk_2` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLZDV8C63NK_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jlzdvb420ow_2 definition

CREATE TABLE `temp_b8jlzdvb420ow_2` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLZDVB420OW_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jlzdvdvxzb4_2 definition

CREATE TABLE `temp_b8jlzdvdvxzb4_2` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLZDVDVXZB4_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jlzdvgntwcg_2 definition

CREATE TABLE `temp_b8jlzdvgntwcg_2` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JLZDVGNTWCG_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jroa0z0z8xs_g definition

CREATE TABLE `temp_b8jroa0z0z8xs_g` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JROA0Z0Z8XS_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jroa13lsiyo_g definition

CREATE TABLE `temp_b8jroa13lsiyo_g` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JROA13LSIYO_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jroa168oow0_g definition

CREATE TABLE `temp_b8jroa168oow0_g` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JROA168OOW0_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b8jroa19ak7b4_g definition

CREATE TABLE `temp_b8jroa19ak7b4_g` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B8JROA19AK7B4_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b9j11969ee58g_6 definition

CREATE TABLE `temp_b9j11969ee58g_6` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B9J11969EE58G_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b9j1196c6a29s_6 definition

CREATE TABLE `temp_b9j1196c6a29s_6` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B9J1196C6A29S_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b9j1196gm3l6o_6 definition

CREATE TABLE `temp_b9j1196gm3l6o_6` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B9J1196GM3L6O_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_b9j1196s4mps0_6 definition

CREATE TABLE `temp_b9j1196s4mps0_6` (
  `FID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_B9J1196S4MPS0_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jk5mu2kb6yo_0 definition

CREATE TABLE `temp_c8jk5mu2kb6yo_0` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JK5MU2KB6YO_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jk5mu5h6wow_0 definition

CREATE TABLE `temp_c8jk5mu5h6wow_0` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JK5MU5H6WOW_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jk5mu8o29ds_0 definition

CREATE TABLE `temp_c8jk5mu8o29ds_0` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JK5MU8O29DS_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jk5mubpxrsw_0 definition

CREATE TABLE `temp_c8jk5mubpxrsw_0` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JK5MUBPXRSW_0` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jltpq5nnegw_1 definition

CREATE TABLE `temp_c8jltpq5nnegw_1` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLTPQ5NNEGW_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jltpq8uipkw_1 definition

CREATE TABLE `temp_c8jltpq8uipkw_1` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLTPQ8UIPKW_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jltpqbregw0_1 definition

CREATE TABLE `temp_c8jltpqbregw0_1` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLTPQBREGW0_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jltpqe9asjk_1 definition

CREATE TABLE `temp_c8jltpqe9asjk_1` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLTPQE9ASJK_1` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jlzdvjppgcg_2 definition

CREATE TABLE `temp_c8jlzdvjppgcg_2` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLZDVJPPGCG_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jlzdvmrkyrk_2 definition

CREATE TABLE `temp_c8jlzdvmrkyrk_2` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLZDVMRKYRK_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jlzdvpjgxds_2 definition

CREATE TABLE `temp_c8jlzdvpjgxds_2` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLZDVPJGXDS_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jlzdvsbcuf4_2 definition

CREATE TABLE `temp_c8jlzdvsbcuf4_2` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JLZDVSBCUF4_2` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jroa1cmfcow_g definition

CREATE TABLE `temp_c8jroa1cmfcow_g` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JROA1CMFCOW_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jroa1g8a1vk_g definition

CREATE TABLE `temp_c8jroa1g8a1vk_g` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JROA1G8A1VK_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jroa1jf5ekg_g definition

CREATE TABLE `temp_c8jroa1jf5ekg_g` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JROA1JF5EKG_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c8jroa1lx1q80_g definition

CREATE TABLE `temp_c8jroa1lx1q80_g` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C8JROA1LX1Q80_G` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c9j1199egsoow_6 definition

CREATE TABLE `temp_c9j1199egsoow_6` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C9J1199EGSOOW_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c9j119agc98n4_6 definition

CREATE TABLE `temp_c9j119agc98n4_6` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C9J119AGC98N4_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c9j119bfktp1c_6 definition

CREATE TABLE `temp_c9j119bfktp1c_6` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C9J119BFKTP1C_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.temp_c9j119ceoeb5s_6 definition

CREATE TABLE `temp_c9j119ceoeb5s_6` (
  `FID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_TEMP_C9J119CEOEB5S_6` (`FID`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.tk_ysq_asset_log definition

CREATE TABLE `tk_ysq_asset_log` (
  `FId` bigint NOT NULL,
  `fusername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopdesc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopdate` datetime DEFAULT NULL,
  `fk_ysq_data_no` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_assetid` bigint DEFAULT NULL,
  `fk_ysq_asset_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_asset_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_asset_desc_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fk_ysq_assrt_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_is_python_exp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_is_client_edit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_access_time` datetime DEFAULT NULL,
  `fk_ysq_data_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_proc_code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_robot_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_robot_no_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fk_ysq_operator` bigint DEFAULT NULL,
  `fk_ysq_job_no` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_agent_type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_proc_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_asset_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_asset_value_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fk_ysq_action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_details_tag` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.tk_ysq_queues_log definition

CREATE TABLE `tk_ysq_queues_log` (
  `FId` bigint NOT NULL,
  `fusername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopdesc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopdate` datetime DEFAULT NULL,
  `fk_ysq_data_no` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_queue_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_fail_try_times` bigint DEFAULT NULL,
  `fk_ysq_queue_max_items` bigint DEFAULT NULL,
  `fk_ysq_queue_desc` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_item_no` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_create_time` datetime DEFAULT NULL,
  `fk_ysq_end_time` datetime DEFAULT NULL,
  `fk_ysq_fail_desc` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_data_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_proc_code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_proc_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_robot_no` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_job_no` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_agent_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_detail` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.tk_ysq_rpa_file_log definition

CREATE TABLE `tk_ysq_rpa_file_log` (
  `FId` bigint NOT NULL,
  `FUSERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '操作人',
  `FOPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '操作名称',
  `FOPDESC` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '操作描述',
  `FOPDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `FK_YSQ_FILE_NAME` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '文件名称',
  `FK_YSQ_OPT_TYPE` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '动作',
  `FK_YSQ_OPT_USER_NAME` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '操作用户名',
  `FK_YSQ_OPT_ORG_CODE` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '操作人部门编号',
  `FK_YSQ_OPT_USER_ID` bigint DEFAULT NULL COMMENT '操作用户id',
  `FK_YSQ_OPT_ORG_NAME` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '操作人部门名称',
  `FK_YSQ_PROC_NAME` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '流程名称',
  `FK_YSQ_AGENT_ALIAS` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '机器人',
  `FK_YSQ_PROC_CODE` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '流程编号',
  `FK_YSQ_OPT_DESC` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '操作描述',
  `FK_YSQ_OPT_TIME` datetime DEFAULT NULL COMMENT '操作时间',
  `FK_YSQ_FILE_ID` bigint DEFAULT NULL COMMENT '文件id',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_log.tk_ysq_ueba_log definition

CREATE TABLE `tk_ysq_ueba_log` (
  `FId` bigint NOT NULL,
  `fusername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopdesc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fopdate` datetime DEFAULT NULL,
  `fk_ysq_msg_type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_tag_fid` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_proc_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_wnd_tile` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_job_no` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_host` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_action` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_order` bigint DEFAULT NULL,
  `fk_ysq_action_s` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_message_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fk_ysq_log_time` datetime DEFAULT NULL,
  `fk_ysq_tags` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_ysq_flow` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
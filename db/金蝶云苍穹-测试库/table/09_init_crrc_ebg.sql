USE crrc_ebg;

-- crrc_ebg.t_aqap_alert_message definition

CREATE TABLE `t_aqap_alert_message` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMESSAGE_SOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALERT_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE_OBJ` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE_TIME` datetime DEFAULT NULL,
  `FMESSAGE_CONTENT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_auth definition

CREATE TABLE `t_aqap_auth` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FCERT_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGANIZATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBLIC_KEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBLIC_KEY_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIRE_TIME` datetime DEFAULT NULL,
  `FIS_ALERT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALERT_DAY` bigint DEFAULT NULL,
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_auth_l definition

CREATE TABLE `t_aqap_auth_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_AUTH_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_auth_r3 definition

CREATE TABLE `t_aqap_auth_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_balance_rec_detail definition

CREATE TABLE `t_aqap_balance_rec_detail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FSUBMIT_SUCCESS_TIME` datetime DEFAULT NULL,
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNC_DATE` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECK_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLE_STATUS` int NOT NULL DEFAULT '0',
  `FSTATUS_ID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_STATUS_MSG` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_PATH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED3` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_BIZ_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_SYS_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` bigint NOT NULL DEFAULT '0',
  `FBANK_LOGIN` bigint NOT NULL DEFAULT '0',
  `FACC_ID` bigint NOT NULL DEFAULT '0',
  `FCURRENCY_ID` bigint NOT NULL DEFAULT '0',
  `FOPERATOR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACK_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMBOFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` int NOT NULL DEFAULT '0',
  `FSTATEMENT_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLE_NUM` int NOT NULL DEFAULT '0',
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBALANCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMONTH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERY_NUM` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `UNIDX_BALANCE_REC_DETAIL` (`FACC_NO`,`FCURRENCY`,`FSYNC_DATE`),
  KEY `IDX_REC_DETAIL__FCURRENCY` (`FCURRENCY`),
  KEY `IDX_REC_DETAIL_FSYNCDATE` (`FSYNC_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_balance_rec_record definition

CREATE TABLE `t_aqap_balance_rec_record` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` int NOT NULL DEFAULT '0',
  `FSYNC_COUNT` int NOT NULL DEFAULT '0',
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNC_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `UNIDX_BALANCE_REC_RECORD` (`FACC_NO`,`FCURRENCY`,`FSYNC_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank definition

CREATE TABLE `t_aqap_bank` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbank_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fnote` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmature` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `flast_update_time` datetime DEFAULT NULL,
  `fbiz_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsort_num` bigint DEFAULT NULL,
  `ftype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE_STATUS` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不支持',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_acnt definition

CREATE TABLE `t_aqap_bank_acnt` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FGROUPID` bigint DEFAULT NULL,
  `FBANK_LOGIN` bigint DEFAULT NULL,
  `FADDR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` bigint DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_ADDRESS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_SHORT_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROVINCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISO_CURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBALANCE` decimal(23,10) DEFAULT NULL,
  `FAVAILABLE_BALANCE` decimal(23,10) DEFAULT NULL,
  `FSEL_BAL_TIME` datetime DEFAULT NULL,
  `FHAS_RECEIPT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACNT_HAS_RECEIPT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_acnt_l definition

CREATE TABLE `t_aqap_bank_acnt_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BANK_ACNT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_acnt_r3 definition

CREATE TABLE `t_aqap_bank_acnt_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_business definition

CREATE TABLE `t_aqap_bank_business` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FGROUPID` bigint DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_business_l definition

CREATE TABLE `t_aqap_bank_business_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BANK_BUSINESS_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_business_r3 definition

CREATE TABLE `t_aqap_bank_business_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_business_type definition

CREATE TABLE `t_aqap_bank_business_type` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSORT` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_BUSINESS_TYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_business_type_l definition

CREATE TABLE `t_aqap_bank_business_type_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BA_BUT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_cafinfo definition

CREATE TABLE `t_aqap_bank_cafinfo` (
  `FID` bigint NOT NULL,
  `fnumber` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fenable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatetime` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fmasterid` bigint DEFAULT NULL,
  `fbiz_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fimpl_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdetail_seq` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ffixed_acc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `finftyp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcur_acc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `famount` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fexplanation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdraw_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcur_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbank_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbank_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ffixed_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ffixed_bank_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ffixed_bank_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdeposit_term` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fnext_deposit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fnext_term` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcurrency` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbank_version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcustomid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbatch_seq_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdetail_seq_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdetail_biz_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `freqnbr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fback_bank_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbank_login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `faccbal` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftrantime` datetime DEFAULT NULL,
  `ftrandate` datetime DEFAULT NULL,
  `fopendate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fclosedate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fratedate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fendintdate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fenddate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fexpireop` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ffixint` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ffixtaxint` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ffixactint` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcloseint` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstatus_msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstatus_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbank_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbank_status_msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `finsert_time` datetime DEFAULT NULL,
  `fupdate_time` datetime DEFAULT NULL,
  `fsubmit_success_time` datetime DEFAULT NULL,
  `ferror_msg` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbank_msg` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fback_error_msg` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `freserve1` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `freserve2` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fversion` bigint DEFAULT NULL,
  `fnotify_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprice_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_BIZ_NO_STATUS_UINDEX` (`fdetail_biz_no`,`fstatus`),
  KEY `IDX_AQAP_CAF_BATCH_SEQ` (`fbatch_seq_id`),
  KEY `IDX_AQAP_CUR_ACC_INDEX` (`fcur_acc`),
  KEY `IDX_AQAP_FIXED_ACC_INDEX` (`ffixed_acc`),
  KEY `IDX_AQAP_NOTIFY_ID_INDEX` (`fnotify_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_cafinfo_l definition

CREATE TABLE `t_aqap_bank_cafinfo_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx_aqap_bank_cafinfo_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_corporation definition

CREATE TABLE `t_aqap_bank_corporation` (
  `FID` bigint NOT NULL,
  `FENTRYID` bigint NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCORPORATION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_AQAP_BANK_CORPORATION_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_currency definition

CREATE TABLE `t_aqap_bank_currency` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_VERSION` bigint DEFAULT NULL,
  `FISO` bigint DEFAULT NULL,
  `FBANK_CURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_BANK_CURRENCY_UN` (`FBANK_VERSION`,`FISO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_currency_l definition

CREATE TABLE `t_aqap_bank_currency_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BANK_CURRENCY_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_currency_r3 definition

CREATE TABLE `t_aqap_bank_currency_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_detail definition

CREATE TABLE `t_aqap_bank_detail` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_VERSION` bigint DEFAULT NULL,
  `FBANK_ACNT` bigint DEFAULT NULL,
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FDETAIL_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEBIT_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FCREDIT_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FOPP_ACCNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_ACCNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_BANKNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPLANATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBALANCE` decimal(23,10) DEFAULT NULL,
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIQUE_SEQ` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIS_KEY_REPEAT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATCH_NODE` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FBANK_DETAIL_NO` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FRECEIPT_NO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FBANK_CURRENCY` bigint DEFAULT NULL,
  `FSORT_FIELD` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FTRANS_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_detail_ext_r3 definition

CREATE TABLE `t_aqap_bank_detail_ext_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_detail_extra2 definition

CREATE TABLE `t_aqap_bank_detail_extra2` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FGROUPID` bigint DEFAULT NULL,
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_INTERFACE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXTRA_FIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPARE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATE_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDES` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_detail_extra2_l definition

CREATE TABLE `t_aqap_bank_detail_extra2_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BANK_DETAIL_EXT2_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_detail_l definition

CREATE TABLE `t_aqap_bank_detail_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BANK_DETAIL_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_detail_r3 definition

CREATE TABLE `t_aqap_bank_detail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_interface definition

CREATE TABLE `t_aqap_bank_interface` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK` bigint DEFAULT NULL,
  `FINTERFACE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSE_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_interface_l definition

CREATE TABLE `t_aqap_bank_interface_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_interface_r3 definition

CREATE TABLE `t_aqap_bank_interface_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_keywords definition

CREATE TABLE `t_aqap_bank_keywords` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FBANK_KEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbasedatafield` bigint DEFAULT NULL,
  `fsettle_accno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_BANK_KEYWORDS_0` (`FBANK_VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_keywords_l definition

CREATE TABLE `t_aqap_bank_keywords_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_keywords_r3 definition

CREATE TABLE `t_aqap_bank_keywords_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_l definition

CREATE TABLE `t_aqap_bank_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE_STATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BANK_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_list definition

CREATE TABLE `t_aqap_bank_list` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbank_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbiz_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmature` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsort_num` bigint DEFAULT NULL,
  `ftype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fnote` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE_STATUS` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不支持',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_list_l definition

CREATE TABLE `t_aqap_bank_list_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BANK_LIST_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_list_r3 definition

CREATE TABLE `t_aqap_bank_list_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_login definition

CREATE TABLE `t_aqap_bank_login` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANKVERSION` bigint DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIG_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_BL_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_login_conf_r3 definition

CREATE TABLE `t_aqap_bank_login_conf_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_login_config definition

CREATE TABLE `t_aqap_bank_login_config` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_CONFIG_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_CONFIG_VALUE` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNULLABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREADONLY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIG_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUT_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_login_config_l definition

CREATE TABLE `t_aqap_bank_login_config_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BANK_LOGIN_CONFIG_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_login_config_r3 definition

CREATE TABLE `t_aqap_bank_login_config_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_login_l definition

CREATE TABLE `t_aqap_bank_login_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BANK_LOGIN_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_login_r3 definition

CREATE TABLE `t_aqap_bank_login_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_login_rel definition

CREATE TABLE `t_aqap_bank_login_rel` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMASTER_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIG_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCLUSIVE_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_BANKLOGIN_REL` (`FMASTER_NUMBER`,`FEXCLUSIVE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_r3 definition

CREATE TABLE `t_aqap_bank_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_req_record definition

CREATE TABLE `t_aqap_bank_req_record` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBIZ_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQ_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBLOCK_MILLIS` bigint DEFAULT NULL,
  `FWAIT_LOCK_TIME` datetime DEFAULT NULL,
  `FGET_LOCK_TIME` datetime DEFAULT NULL,
  `FBLOCK_FLAG` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESS_MILLIS` bigint DEFAULT NULL,
  `FEXT_DATA` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCK_NUM` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_BANK_REQ_RECORD` (`FREQ_NUMBER`),
  KEY `IDX_AQAP_BANK_REQ_RECORD_1` (`FCUSTOM_ID`,`FBANK_LOGIN_ID`,`FWAIT_LOCK_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_req_record_l definition

CREATE TABLE `t_aqap_bank_req_record_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BANK_REQ_RECORD_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_req_record_r3 definition

CREATE TABLE `t_aqap_bank_req_record_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_serial_no definition

CREATE TABLE `t_aqap_bank_serial_no` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FCREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_BANK_SERIAL_NO_SR1` (`FNUMBER`,`FCUSTOM_ID`,`FBANK_VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_support_list definition

CREATE TABLE `t_aqap_bank_support_list` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FGROUPID` bigint DEFAULT NULL,
  `FBANK` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `T_AQAP_BANK_SUPPORT_LIST_INDEX` (`FBANK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_support_list_l definition

CREATE TABLE `t_aqap_bank_support_list_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  UNIQUE KEY `IDX_AQAP_BANK_SUPPORT_LIST_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_type definition

CREATE TABLE `t_aqap_bank_type` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bank_type_l definition

CREATE TABLE `t_aqap_bank_type_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  UNIQUE KEY `IDX_AQAP_BANK_TYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_biz_sys definition

CREATE TABLE `t_aqap_bd_biz_sys` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_biz_sys_l definition

CREATE TABLE `t_aqap_bd_biz_sys_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BD_BIZ_SYS_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_biz_sys_r3 definition

CREATE TABLE `t_aqap_bd_biz_sys_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_business definition

CREATE TABLE `t_aqap_bd_business` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FTEXTFIELD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTR_KEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTR_VALUE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTR_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESS_TYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESS_DETAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_BD_BUSINESS` (`FATTR_KEY`),
  KEY `IDX_AQAP_BD_BUS_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_cert definition

CREATE TABLE `t_aqap_bd_cert` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_CONFIG_ID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_CONFIG_VALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_CONFIG_VALUE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FBANK_CONFIG_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACNT_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIRE_TIME` datetime DEFAULT NULL,
  `FALERT_DAY` bigint DEFAULT NULL,
  `FCERT_PASSWORD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGANIZATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIS_ALERT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMOBILES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALERT_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERT_SOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERT_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERT_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROW_NUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOWNLOAD_PATH` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_cert_l definition

CREATE TABLE `t_aqap_bd_cert_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BD_CERT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_cert_r3 definition

CREATE TABLE `t_aqap_bd_cert_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_detail_archive definition

CREATE TABLE `t_aqap_bd_detail_archive` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_BANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAVAILABLE_BALANCE` decimal(23,10) DEFAULT NULL,
  `FBALANCE` decimal(23,10) DEFAULT NULL,
  `FBANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_REF_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUS_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREDIT_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FDEBIT_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FEXPLANATION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMPL_CLASS_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSERT_TIME` datetime DEFAULT NULL,
  `KD_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_ACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_BANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAY_DETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPT_NO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERIAL_NO` bigint DEFAULT NULL,
  `FSORT_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FTRANS_TIME` datetime DEFAULT NULL,
  `FTRANS_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIQUE_SEQ` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FUSE_CN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUH_NO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_BIZ_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_SYS_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFER_CHARGE` decimal(23,10) DEFAULT NULL,
  `FKD_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIS_KEY_REPEAT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATCH_NODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_DETAIL_NO` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIS_CONFIRM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_BD_DETAIL_ARCHIVE` (`FUNIQUE_SEQ`),
  KEY `IDX_AQAP_BD_DETAIL_AC_0` (`FACC_NO`,`FTRANS_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_detail_archive_l definition

CREATE TABLE `t_aqap_bd_detail_archive_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BD_DETAIL_ARCHIVE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_detail_archive_r3 definition

CREATE TABLE `t_aqap_bd_detail_archive_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_detailinfo definition

CREATE TABLE `t_aqap_bd_detailinfo` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_BANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAVAILABLE_BALANCE` decimal(23,10) DEFAULT NULL,
  `FBALANCE` decimal(23,10) DEFAULT NULL,
  `FBANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_REF_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUS_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREDIT_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FDEBIT_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FEXPLANATION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMPL_CLASS_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSERT_TIME` datetime DEFAULT NULL,
  `KD_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_ACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_BANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAY_DETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPT_NO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERIAL_NO` bigint DEFAULT NULL,
  `FSORT_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FTRANS_TIME` datetime DEFAULT NULL,
  `FTRANS_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIQUE_SEQ` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FUSE_CN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUH_NO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_BIZ_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_SYS_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFER_CHARGE` decimal(23,10) DEFAULT NULL,
  `FKD_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIS_KEY_REPEAT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATCH_NODE` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIS_CONFIRM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_DETAIL_NO` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FUNIQUE_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSORT_FIELD` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_FUNIQUE_SEQ_UINDEX` (`FUNIQUE_SEQ`),
  KEY `IDX_AQAP_BD_DETAILINFO_0` (`FACC_NO`,`FTRANS_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_detailinfo_archive definition

CREATE TABLE `t_aqap_bd_detailinfo_archive` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_BANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAVAILABLE_BALANCE` decimal(23,10) DEFAULT NULL,
  `FBALANCE` decimal(23,10) DEFAULT NULL,
  `FBANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_REF_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUS_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREDIT_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FDEBIT_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FEXPLANATION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMPL_CLASS_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSERT_TIME` datetime DEFAULT NULL,
  `KD_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_ACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_BANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAY_DETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPT_NO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERIAL_NO` bigint DEFAULT NULL,
  `FSORT_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FTRANS_TIME` datetime DEFAULT NULL,
  `FTRANS_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIQUE_SEQ` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FUSE_CN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUH_NO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_BIZ_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_SYS_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFER_CHARGE` decimal(23,10) DEFAULT NULL,
  `FKD_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_BD_DETAILINFO_AC_0` (`FACC_NO`,`FTRANS_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_detailinfo_archive_l definition

CREATE TABLE `t_aqap_bd_detailinfo_archive_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_DETAILINFO_ARCH_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_detailinfo_l definition

CREATE TABLE `t_aqap_bd_detailinfo_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BD_DETAILINFO_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_detailinfo_r3 definition

CREATE TABLE `t_aqap_bd_detailinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_financing definition

CREATE TABLE `t_aqap_bd_financing` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` bigint DEFAULT NULL,
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINANCING_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAREA_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCT_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCT_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAMOUNT` decimal(23,10) DEFAULT NULL,
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRICE` decimal(23,10) DEFAULT NULL,
  `FROLLDATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE_DATE` datetime DEFAULT NULL,
  `FROLL_DATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIRE_DATE` datetime DEFAULT NULL,
  `FPROFIT_AMT` decimal(23,10) DEFAULT NULL,
  `FPROFIT_RATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREDEEM_RATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS_MSG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_STATUS_MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECURITIES_ACCNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXTFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCH_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_BIZ_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFOLL_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCSH_DRA_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED4` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED5` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUY_BIZ_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_FINANCING_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_BATCH_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSE_SERIAL_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREDEEM_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACK_BANK_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMIT_SUCCESS_TIME` datetime DEFAULT NULL,
  `FERROR_MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACK_ERROR_MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_BIZ_FIELD` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_SYS_FIELD` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNC_COUNT` bigint DEFAULT NULL,
  `FLAST_SYNC_TIME` datetime DEFAULT NULL,
  `FBACK_AMOUNT` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_FIN_UINDEX` (`FDETAIL_BIZ_NO`,`FSTATUS`),
  KEY `IDX_AQAP_FIN_BATCH_SEQ` (`FBATCH_SEQ_ID`),
  KEY `IDX_AQAP_FIN_ACC_INDEX` (`FACC_NO`),
  KEY `IDX_AQAP_FIN_CREATETIME_INDEX` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_linkpaymentinfo definition

CREATE TABLE `t_aqap_bd_linkpaymentinfo` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_BATCH_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAMOUNT` decimal(23,10) DEFAULT NULL,
  `FBANK_STATUS` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_STATUS_MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCH_BIZ_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCH_SEQ_ID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOOKING_DATE` datetime DEFAULT NULL,
  `FCHILD_ACNT1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHILD_ACNT2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHILD_ACNT3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHILD_ACNT4` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHILD_ACNT5` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC_MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_BIZ_NO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_SEQ_ID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEB_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEB_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEB_STATUS_MSG` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEE_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORCE_MANUAL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSERT_BATCH_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMOBILE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENT_ACNT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYEE_ACC_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPAYEE_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYEE_AREA_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYEE_BANK_ADDR` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPAYEE_BANK_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPAYEE_CITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYEE_CNAPS_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYEE_COUNTRY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYEE_PROVINCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYEE_SWIFT_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYEE_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUB_BIZ_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FURGENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTAL_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FTOTAL_COUNT` bigint DEFAULT NULL,
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FUSE_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSE_MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFY_FIELD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLINKPAY_TYPE` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED4` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACK_BANK_STATUS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_BIZ_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_SYS_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_LINKPAY_DETAIL_SEQ` (`FDETAIL_SEQ_ID`),
  UNIQUE KEY `IDX_AQAP_LINKPAYMENTINFO_BIZNO` (`FDETAIL_BIZ_NO`,`FBACK_BANK_STATUS`),
  KEY `IDX_AQAP_LINKPAYMENTINFO_BATCH` (`FBATCH_SEQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_linkpaymentinfo_l definition

CREATE TABLE `t_aqap_bd_linkpaymentinfo_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_LINKPAYMENTINFO_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_linkpaymentinfo_r3 definition

CREATE TABLE `t_aqap_bd_linkpaymentinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_pay_route definition

CREATE TABLE `t_aqap_bd_pay_route` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FNODE_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENT_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODE_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODE_DATA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODE_LEVEL` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_pay_route_l definition

CREATE TABLE `t_aqap_bd_pay_route_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BD_PAY_ROUTE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_pay_route_r3 definition

CREATE TABLE `t_aqap_bd_pay_route_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_payment_hash definition

CREATE TABLE `t_aqap_bd_payment_hash` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_DETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATA_HASH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_PAYHASH_SEQ` (`FDETAIL_SEQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_payment_hash_l definition

CREATE TABLE `t_aqap_bd_payment_hash_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BD_PAYMENT_HASH_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_payment_hash_r3 definition

CREATE TABLE `t_aqap_bd_payment_hash_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_payment_record definition

CREATE TABLE `t_aqap_bd_payment_record` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FCREATE_TIME` datetime DEFAULT NULL,
  `FUPDATE_COUNT` bigint DEFAULT NULL,
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FPAYMENT_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_PAYMENT_RECORD_PID` (`FPAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_payment_record_l definition

CREATE TABLE `t_aqap_bd_payment_record_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BD_PAYMENT_RECORD_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_payment_record_r3 definition

CREATE TABLE `t_aqap_bd_payment_record_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_payment_track definition

CREATE TABLE `t_aqap_bd_payment_track` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FUPDATE_BATCH_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS_NAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS_ID` bigint DEFAULT NULL,
  `FSTATUS_MSG` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_STATUS` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERROR_MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERROR_STACK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_BATCH_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPACKAGE_TIME` datetime DEFAULT NULL,
  `FBANK_DETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_SERIAL_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCH_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTAL_COUNT` bigint DEFAULT NULL,
  `FTOTAL_AMOUNT` decimal(19,2) DEFAULT NULL,
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FOPERATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_payment_track_l definition

CREATE TABLE `t_aqap_bd_payment_track_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BD_PAYMENT_TRACK_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_payment_track_r3 definition

CREATE TABLE `t_aqap_bd_payment_track_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_paymentinfo definition

CREATE TABLE `t_aqap_bd_paymentinfo` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FCUSTOMID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` bigint DEFAULT NULL,
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUB_BIZ_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMPL_CLASS_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERY_IMPL_CLASS_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPACKAGE_KEY` longtext COLLATE utf8mb4_unicode_ci,
  `FTOTAL_COUNT` bigint DEFAULT NULL,
  `FTOTAL_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FBATCH_SEQ_ID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_SEQ_ID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_BIZ_NO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSERT_BATCH_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSERT_TIME` datetime DEFAULT NULL,
  `FREQUEST_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQUEST_TIME` datetime DEFAULT NULL,
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FUPDATE_BATCH_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATE_OPERATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFY_FIELD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAMOUNT` decimal(23,10) DEFAULT NULL,
  `FCURRENCY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSE_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSE_CN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPLANATION` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSAME_BANK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAME_CITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FURGENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `INDIVIDUAL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMERGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEE_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOOKING_TIME` datetime DEFAULT NULL,
  `FEMAILS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMOBILES` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBANK_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBANK_ADDRESS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FAREA_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_DEPT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_COUNTRY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_PROVINCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_CITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHIRD_ACC_NO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHIRD_ACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHIRD_BANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHIRD_BANK_ADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHIRD_AREA_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHIRD_ACC_DEPT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOME_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOME_ACC_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINCOME_BANK_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINCOME_BANK_ADDRESS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINCOME_AREA_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOME_ACC_DEPT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOME_SWIFT_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOME_CNAPS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOME_COUNTRY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOME_PROVINCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOME_CITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS_ID` bigint DEFAULT NULL,
  `FSTATUS_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS_MSG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_STATUS` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_MSG` longtext COLLATE utf8mb4_unicode_ci,
  `FERROR_MSG` longtext COLLATE utf8mb4_unicode_ci,
  `FERROR_STACK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACK_STATUS` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACK_STATUS_MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACK_BANK_STATUS` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACK_BANK_MSG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBACK_ERROR_MSG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBACK_ERROR_STACK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPACKAGE_TIME` datetime DEFAULT NULL,
  `FBANK_BATCH_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_DETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_SERIAL_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAST_SUBMIT_TIME` datetime DEFAULT NULL,
  `FLAST_SUBMIT_REQUEST_REQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMIT_COUNT` bigint DEFAULT NULL,
  `FSUBMIT_SUCCESS_TIME` datetime DEFAULT NULL,
  `FLAST_SYNC_TIME` datetime DEFAULT NULL,
  `FLAST_SYNC_REQUEST_REQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNC_COUNT` bigint DEFAULT NULL,
  `FPAY_FINISH_DATE` datetime DEFAULT NULL,
  `FTO_GIVE_UP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYER_FEE_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYER_FEE_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYER_FEE_CURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCHANGE_RATE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTUAL_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FPAYEE_BANK_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSACTION_REMARKS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROXY_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROXY_ACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROXY_BANK_COUNTRY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROXY_BANK_AREA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROXY_BANK_SWIFT_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROXY_BANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROXY_BANK_ADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROXY_FEE_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROXY_FEE_CURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAY_CURRENCY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEX_CONTRACT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOCHK_MESSAGE_BANK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBBC_CODE_WORDS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_REF_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTO_GROUND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISO_CURRENCY_CODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISO_CURRENCY_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FK_EBC_TEXTFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLEARING_BRANCH_CODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLEARING_BRANCH_SUB_CODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELIVERY_METHOD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHEQUE_TYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYMENT_METHOD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICE_LEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANS_UP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLINKPAY_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATIVE_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLINKPAY_DETAIL_SEQ_ID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_BIZ_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_SYS_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATOR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_PAYMENT_DETAIL_SEQ` (`FDETAIL_SEQ_ID`),
  UNIQUE KEY `IDX_AQAP_PAYMENT_BIZNO` (`FDETAIL_BIZ_NO`,`FBACK_BANK_STATUS`),
  KEY `IDX_AQAP_BD_PAYMENTINFO_0` (`FBATCH_SEQ_ID`),
  KEY `IDX_AQAP_PAYMENTINFO_ACCNO` (`FACC_NO`),
  KEY `IDX_AQAP_PAYMENT_INSERTTIME` (`FINSERT_TIME`),
  KEY `IDX_AQAP_PAYMENT_STATUSID` (`FEBG_ID`,`FSTATUS_ID`),
  KEY `IDX_AQAP_PAYMENT_STATUSID_BANK` (`FSTATUS_ID`,`FBANK_VERSION_ID`),
  KEY `IDX_AQAP_PAYMENT_SEQ_STATUS` (`FBANK_BATCH_SEQ_ID`,`FSTATUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_paymentinfo_l definition

CREATE TABLE `t_aqap_bd_paymentinfo_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BD_PAYMENTINFO_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bd_paymentinfo_r3 definition

CREATE TABLE `t_aqap_bd_paymentinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_bl_tenant definition

CREATE TABLE `t_aqap_bl_tenant` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_SYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBD_BIZ_SYS` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_business_log definition

CREATE TABLE `t_aqap_business_log` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBD_BIZ_NAME` bigint DEFAULT NULL,
  `FBIZ_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQUEST_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG_TIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBD_BANK_VERSION` bigint DEFAULT NULL,
  `FDT_QUERY` datetime DEFAULT NULL,
  `FBANK_LOGIN` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNT` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_business_log_l definition

CREATE TABLE `t_aqap_business_log_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BUSINESS_LOG_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_business_log_r3 definition

CREATE TABLE `t_aqap_business_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_business_transinfo definition

CREATE TABLE `t_aqap_business_transinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FTRANS_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_AQAP_BU_TRS_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_business_type definition

CREATE TABLE `t_aqap_business_type` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_business_type_l definition

CREATE TABLE `t_aqap_business_type_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_BUSINESS_TYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_business_type_r3 definition

CREATE TABLE `t_aqap_business_type_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_code_less definition

CREATE TABLE `t_aqap_code_less` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FBIZ_TYPE` bigint NOT NULL DEFAULT '0',
  `FNOTE_INTERFACE` bigint NOT NULL DEFAULT '0',
  `FCONTENTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIS_FILEUPLOAD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFILE_SPLIT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILENAME_SPLIT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILENAME_SUFFIX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_BIZTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_HEAD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_HEAD_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FTRANS_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_TYPE_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_CODE_LESS` (`FBIZ_TYPE_NUMBER`,`FTRANS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_code_less_l definition

CREATE TABLE `t_aqap_code_less_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_CODE_LESS_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_custom_note definition

CREATE TABLE `t_aqap_custom_note` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBANK_VERSION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_CUSTOM_NOTE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_custom_note_l definition

CREATE TABLE `t_aqap_custom_note_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_CUSTOM_NOTE_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_detail_completion definition

CREATE TABLE `t_aqap_detail_completion` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_COUNT` bigint NOT NULL DEFAULT '0',
  `FSYNC_DATE` datetime DEFAULT NULL,
  `FENABLE` bigint NOT NULL DEFAULT '0',
  `FSYNC_COUNT` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPENSATION_COUNT` bigint NOT NULL DEFAULT '0',
  `FIS_COMPLETED` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` bigint NOT NULL DEFAULT '0',
  `FBANK_ACNT` bigint NOT NULL DEFAULT '0',
  `FBANK_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPENSATION_DETAIL` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_DETAIL_COMPLETION` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_detail_field definition

CREATE TABLE `t_aqap_detail_field` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int DEFAULT NULL,
  `FDETAIL_FIELD` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_AQAP_DETAIL_FIELD` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_detail_field_conf definition

CREATE TABLE `t_aqap_detail_field_conf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDETAIL_INTERFACE` bigint DEFAULT NULL,
  `FSPLIT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_DETAIL_FIELD_CONF` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_detail_field_conf_l definition

CREATE TABLE `t_aqap_detail_field_conf_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_DETAIL_FIELD_CONF_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_detail_field_tpl definition

CREATE TABLE `t_aqap_detail_field_tpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_DETAIL_FIELD_TPL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_detail_field_tpl_l definition

CREATE TABLE `t_aqap_detail_field_tpl_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_DETAIL_FIELD_TPL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_detail_json definition

CREATE TABLE `t_aqap_detail_json` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPT_DETAIL_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJSON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJSON_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FBANK_VERSION` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_detail_sync_record definition

CREATE TABLE `t_aqap_detail_sync_record` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_COUNT` bigint DEFAULT NULL,
  `FSYNC_DATE` datetime DEFAULT NULL,
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CNY',
  `FENABLE` bigint NOT NULL DEFAULT '1',
  `FSYNC_COUNT` bigint NOT NULL DEFAULT '1',
  `FCOMPENSATION_COUNT` bigint DEFAULT NULL,
  `FIS_COMPLETED` bigint DEFAULT NULL,
  `FBANK_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPENSATION_DETAIL` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_DETAIL_SR1` (`FACC_NO`,`FSYNC_DATE`,`FCURRENCY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_detailinfo_archive_r3 definition

CREATE TABLE `t_aqap_detailinfo_archive_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_exception_type definition

CREATE TABLE `t_aqap_exception_type` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FEXP_NO` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CLUSTER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_exception_type_l definition

CREATE TABLE `t_aqap_exception_type_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_EXCEPTION_TYPE_L_0` (`FID`,`FLOCALEID`),
  KEY `IDX_CLUSTER_EXP_TYPE_L` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_exception_type_r3 definition

CREATE TABLE `t_aqap_exception_type_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_financ_detail definition

CREATE TABLE `t_aqap_financ_detail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCT_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBLISH_START_DATE` datetime DEFAULT NULL,
  `FPUBLISH_END_DATE` datetime DEFAULT NULL,
  `FBUY_PRICE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREDEEM_MAX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREDEEM_MIN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRISK_LEV` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED4` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVED5` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_FINANC_DETAIL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_financ_sync_record definition

CREATE TABLE `t_aqap_financ_sync_record` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNC_DATE` datetime DEFAULT NULL,
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_FINANC_SYNC_RECORD` (`FBANK_VERSION_ID`,`FSYNC_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_gov_exception definition

CREATE TABLE `t_aqap_gov_exception` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBD_BIZ_TYPE` bigint NOT NULL DEFAULT '0',
  `FBD_EXP` bigint NOT NULL DEFAULT '0',
  `FVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPATTERN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `INDEX_CLUSTER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_gov_exception_l definition

CREATE TABLE `t_aqap_gov_exception_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_GOV_EXCEPTION_L_0` (`FID`,`FLOCALEID`),
  KEY `IDX_CLUSTER_GOV_EXCEPTION_L` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_gov_exception_r3 definition

CREATE TABLE `t_aqap_gov_exception_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_instance_reg definition

CREATE TABLE `t_aqap_instance_reg` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FCLUSTER_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPP_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIG_APP_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSTANCE_NAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIP_ADDRESS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWEB_PORT` bigint DEFAULT NULL,
  `FMONITOR_PORT` bigint DEFAULT NULL,
  `FSTART_TIME` datetime DEFAULT NULL,
  `FVALID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODE_PATH` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOST_NAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_instance_reg_l definition

CREATE TABLE `t_aqap_instance_reg_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_INSTANCE_REG_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_instance_reg_r3 definition

CREATE TABLE `t_aqap_instance_reg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_iso_currency definition

CREATE TABLE `t_aqap_iso_currency` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_iso_currency_l definition

CREATE TABLE `t_aqap_iso_currency_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_ISO_CURRENCY_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_iso_currency_r3 definition

CREATE TABLE `t_aqap_iso_currency_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_license_detail definition

CREATE TABLE `t_aqap_license_detail` (
  `FID` bigint NOT NULL,
  `FMODULE_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODULE_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_LICENSE_DETAIL_UK` (`FMODULE_CODE`,`FBANK_VERSION`,`FCUSTOM_ID`),
  KEY `IDX_AQAP_LICENSE_INFO_0` (`FCUSTOM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_license_detail_l definition

CREATE TABLE `t_aqap_license_detail_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_license_detail_r3 definition

CREATE TABLE `t_aqap_license_detail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_license_file definition

CREATE TABLE `t_aqap_license_file` (
  `FID` bigint NOT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLICENSE_FILE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLICENSE_FILE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FLICENSE_COUNT` bigint DEFAULT NULL,
  `FUPLOAD_TIME` datetime DEFAULT NULL,
  `FEXPIRE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_AQAP_LICENSE_FILE_UNIQUE` (`FCUSTOM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_log_detail definition

CREATE TABLE `t_aqap_log_detail` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FCREATETIME1` datetime DEFAULT NULL,
  `FMODIFYTIME1` datetime DEFAULT NULL,
  `FMODIFIER1` bigint DEFAULT NULL,
  `FSTATUS1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID1` bigint DEFAULT NULL,
  `FCREATOR1` bigint DEFAULT NULL,
  `FDISABLERID` bigint DEFAULT NULL,
  `FENABLERID` bigint DEFAULT NULL,
  `FENABLEDATE` datetime DEFAULT NULL,
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCOMPANYID` bigint DEFAULT NULL,
  `FNAME1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPENORGID` bigint DEFAULT NULL,
  `FCOMMENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER1` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANKINTERFACE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANKINTERFACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYEEACNT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBD_BIZ_NAME` bigint DEFAULT NULL,
  `FLOG_TIME` datetime DEFAULT NULL,
  `FACCOUNT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBD_BANK_VERSION` bigint DEFAULT NULL,
  `FLOGGER_BATCH_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGGER_DETAIL_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSSINESS_REQUEST` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSSINESS_REQUEST_TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FBUSSINESS_RESPONSE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSSINESS_RESPONSE_TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FBANK_LOG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOG_TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FOTHER_LOG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOTHER_LOG_TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSSINESS_REQUEST_PAY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSSINESS_REQUEST_PAY_TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FBUSSINESS_RESPONSE_PAY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSSINESS_RESPONSE_PAY_TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FBANK_LOG_PAY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOG_PAY_TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FOTHER_LOG_PAY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOTHER_LOG_PAY_TAG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_log_detail_l definition

CREATE TABLE `t_aqap_log_detail_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_log_detail_r3 definition

CREATE TABLE `t_aqap_log_detail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_log_filter_conf_r3 definition

CREATE TABLE `t_aqap_log_filter_conf_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_log_filter_config definition

CREATE TABLE `t_aqap_log_filter_config` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FWORD_KEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORD_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_LOG_FILTER_CONFIG_EB` (`FENABLE`,`FGROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_log_filter_config_l definition

CREATE TABLE `t_aqap_log_filter_config_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_log_privacy definition

CREATE TABLE `t_aqap_log_privacy` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FBANK_KEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FBANK_TYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_LOG_PRIVACY_0` (`FBANK_VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_log_privacy_l definition

CREATE TABLE `t_aqap_log_privacy_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_log_privacy_r3 definition

CREATE TABLE `t_aqap_log_privacy_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_login_busy_monitor definition

CREATE TABLE `t_aqap_login_busy_monitor` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FTIME_SLOT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBLOCK_NUM` bigint DEFAULT NULL,
  `FNORMAL_NUM` bigint DEFAULT NULL,
  `FBLOCK_RATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAIT_TIME` bigint DEFAULT NULL,
  `FPROCESS_TIME` bigint DEFAULT NULL,
  `FUSE_RATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERY_DATE` datetime DEFAULT NULL,
  `FBD_BANK_LOGIN` bigint DEFAULT NULL,
  `FBD_BANK_VERSION` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_login_link_check definition

CREATE TABLE `t_aqap_login_link_check` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTIFY_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_login_lock_monitor definition

CREATE TABLE `t_aqap_login_lock_monitor` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FTIME_STAMP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHREAD_NAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATE_TIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACE_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCK_PATH` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_C_AQAP_LOGIN_LOCK_MONITOR` (`FNUMBER`),
  KEY `IDX_LOGIN_LOCK_MONITOR_1` (`FBANK_VERSION`),
  KEY `IDX_LOGIN_LOCK_MONITOR_2` (`FBANK_LOGIN`),
  KEY `IDX_LOGIN_LOCK_MONITOR_3` (`FLOCK_PATH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_login_lock_monitor_l definition

CREATE TABLE `t_aqap_login_lock_monitor_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_LOGIN_LOCK_MONITOR_L_0` (`FID`,`FLOCALEID`),
  KEY `IDX_C_LOCK_MONITOR_L` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_mapping_acct definition

CREATE TABLE `t_aqap_mapping_acct` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPARENTACCT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCHILDACCT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSWIFTCODE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FRESERVE` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_MA_FPARENT` (`FPARENTACCT`,`FCURRENCY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_monitor definition

CREATE TABLE `t_aqap_monitor` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXTFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACNT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGINID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_monitor_l definition

CREATE TABLE `t_aqap_monitor_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_MONITOR_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_monitor_list_r3 definition

CREATE TABLE `t_aqap_monitor_list_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_monitor_r3 definition

CREATE TABLE `t_aqap_monitor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_new_log definition

CREATE TABLE `t_aqap_new_log` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBD_BIZ_NAME` bigint DEFAULT NULL,
  `FBIZ_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGGER_BATCH_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGGER_DETAIL_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG_TIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBD_BANK_VERSION` bigint DEFAULT NULL,
  `FDT_QUERY` datetime DEFAULT NULL,
  `FLOGGER_BANK_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGGER_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_NEW_LOG_BATCH_NO` (`FLOGGER_BATCH_NO`),
  KEY `IDX_AQAP_NEW_LOG_LOGIN` (`FBANK_LOGIN`),
  KEY `IDX_AQAP_NEW_LOG_BANK_NO` (`FLOGGER_BANK_NO`),
  KEY `IDX_AQAP_NEW_LOG_DTQUERY` (`FDT_QUERY`),
  KEY `IDX_AQAP_NEW_LOG_TYPE` (`FLOGGER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_new_log_detail definition

CREATE TABLE `t_aqap_new_log_detail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBD_BIZ_NAME` bigint NOT NULL DEFAULT '0',
  `FBIZ_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGGER_BATCH_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGGER_DETAIL_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG_TIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBD_BANK_VERSION` bigint NOT NULL DEFAULT '0',
  `FDT_QUERY` datetime DEFAULT NULL,
  `FLOGGER_BANK_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGGER_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG_CONTENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOG_CONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `T_AQAP_NEW_LOG_DETAIL_TYPE` (`FLOGGER_TYPE`),
  KEY `T_AQAP_NEW_LOG_DETAIL_BIZ` (`FBIZ_NAME`),
  KEY `IDX_AQAP_NEW_LOG_DETAIL_LOGGER` (`FLOGGER_BATCH_NO`,`FLOGGER_BANK_NO`),
  KEY `IDX_CLUSTER_AQAP_LOG_DETAIL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_new_log_detail_l definition

CREATE TABLE `t_aqap_new_log_detail_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_NEW_LOG_DETAIL_L_0` (`FID`,`FLOCALEID`),
  KEY `IDX_CLUSTER_AQAP_LOG_DETAIL_L` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_new_log_detail_r3 definition

CREATE TABLE `t_aqap_new_log_detail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CLUSTER_AQAP_LOG_DETAIL_R3` (`FREFSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_new_log_l definition

CREATE TABLE `t_aqap_new_log_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_new_log_r3 definition

CREATE TABLE `t_aqap_new_log_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_object_properties definition

CREATE TABLE `t_aqap_object_properties` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FATTR_KEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTR_VALUE` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTR_DESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOBJECT_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOBJECT_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_OBJECT_PROP` (`FOBJECT_ID`,`FOBJECT_NAME`,`FATTR_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_object_properties_l definition

CREATE TABLE `t_aqap_object_properties_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_OBJECT_PROPERTIES_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_object_properties_r3 definition

CREATE TABLE `t_aqap_object_properties_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_oversea_balance definition

CREATE TABLE `t_aqap_oversea_balance` (
  `FID` bigint NOT NULL,
  `fnumber` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '  ',
  `fcustom_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fenable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `fcreatetime` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fmasterid` bigint DEFAULT NULL,
  `fupdate_source` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fbank_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fbank_version` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fcurrency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fbalance_date` datetime DEFAULT NULL,
  `fcurrent_balance` decimal(23,2) DEFAULT NULL,
  `favailable_balance` decimal(23,2) DEFAULT NULL,
  `flast_day_balance` decimal(23,2) DEFAULT NULL,
  `ffrozen_balance` decimal(23,2) DEFAULT NULL,
  `fext_system_field` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_biz_field` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_config_field` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_field1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_field2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_field3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_field4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_OVERSEA_BALANCE_0` (`fnumber`,`fbalance_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_oversea_balance_l definition

CREATE TABLE `t_aqap_oversea_balance_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_oversea_balance_r3 definition

CREATE TABLE `t_aqap_oversea_balance_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_oversea_detail definition

CREATE TABLE `t_aqap_oversea_detail` (
  `FID` bigint NOT NULL,
  `fnumber` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fcustom_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fenable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `fcreatetime` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fmasterid` bigint DEFAULT NULL,
  `fpay_bank_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fpay_bank_version` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fbenefit_acc_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBENEFIT_ACC_NAME` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FBENEFIT_BANK_NAME` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fdetail_file_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fdetail_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fcurrency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `ftx_amt` decimal(23,2) DEFAULT NULL,
  `fbalance` decimal(23,2) DEFAULT NULL,
  `fcord_flag` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `ftx_date` datetime DEFAULT NULL,
  `ftextfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fbank_orderid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `ftrans_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fexplanation` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fuse_desc` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fmemory` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fpayid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_system_field` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_biz_field` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_config_field` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_field1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_field2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_field3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fext_field4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDETAIL_NO` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_OVERSEA_DETAIL_0` (`fnumber`,`ftx_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_oversea_detail_l definition

CREATE TABLE `t_aqap_oversea_detail_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_oversea_detail_r3 definition

CREATE TABLE `t_aqap_oversea_detail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_interface definition

CREATE TABLE `t_aqap_pay_interface` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FBANK_CODE` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLIMIT_NUM` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCLASS_NAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_TYPE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CLUSTER_PAY_INTERFACE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_interface_l definition

CREATE TABLE `t_aqap_pay_interface_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_PAY_INTERFACE_L_0` (`FID`,`FLOCALEID`),
  KEY `IDX_CLUSTER_PAY_INTERFACE_L` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_interface_r3 definition

CREATE TABLE `t_aqap_pay_interface_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_route_bank definition

CREATE TABLE `t_aqap_pay_route_bank` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_C_PAY_ROUTE_BANK` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_route_bank_l definition

CREATE TABLE `t_aqap_pay_route_bank_l` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_PAY_ROUTE_BANK_L_0` (`FID`,`FLOCALEID`),
  KEY `IDX_C_PAY_ROUTE_BANK_L` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_route_rec definition

CREATE TABLE `t_aqap_pay_route_rec` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUB_BIZ_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDIVIDUAL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMERGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAME_BANK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSE_CN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSCONF` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCPROP` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMPL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'system',
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSINGLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FURGENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PAY_ROUTE` (`FBANK_VERSION`,`FSUB_BIZ_TYPE`),
  KEY `IDX_IMPL` (`FIMPL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_route_rec_l definition

CREATE TABLE `t_aqap_pay_route_rec_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PAY_ROUTE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_route_rec_r3 definition

CREATE TABLE `t_aqap_pay_route_rec_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_rsp definition

CREATE TABLE `t_aqap_pay_rsp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int DEFAULT NULL,
  `FINTERFACE_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUT_RSP_PARSE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FOUT_RSPCODE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FOUT_RSPMSG` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIN_RSP_PARSE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIN_RSPCODE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIN_RSPMSG` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPROXY_RSP_PARSE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPROXY_RSPCODE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPROXY_RSPMSG` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FEB_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_AQAP_PAY_RSP` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_rsp_code definition

CREATE TABLE `t_aqap_pay_rsp_code` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FINTERFACE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_PAY_RSP_CODE` (`FGROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_rsp_code_l definition

CREATE TABLE `t_aqap_pay_rsp_code_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_PAY_RSP_CODE_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_rsp_code_r3 definition

CREATE TABLE `t_aqap_pay_rsp_code_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_rule definition

CREATE TABLE `t_aqap_pay_rule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONDITION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGIC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` bigint DEFAULT NULL,
  `FCREATETIME` bigint DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_AQAP_PAY_RULE_FK` (`FID`),
  KEY `IDX_CLUSTER_PAY_RULE` (`FKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_rule_config definition

CREATE TABLE `t_aqap_pay_rule_config` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBD_INTERFACE` bigint NOT NULL DEFAULT '0',
  `FSORT_NUM` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CLUSTER_PAY_RULE_CONFIG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_rule_config_l definition

CREATE TABLE `t_aqap_pay_rule_config_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_PAY_RULE_CONFIG_L_0` (`FID`,`FLOCALEID`),
  KEY `IDX_CLUSTER_PAY_RULE_CONFIG_L` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_pay_rule_config_r3 definition

CREATE TABLE `t_aqap_pay_rule_config_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_payment_lock definition

CREATE TABLE `t_aqap_payment_lock` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FEXT_DATA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_PAYMENT_LOCK` (`FNUMBER`),
  KEY `IDX_C_PAYMENT_LOCK` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_payment_lock_l definition

CREATE TABLE `t_aqap_payment_lock_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_PAYMENT_LOCK_L_0` (`FID`,`FLOCALEID`),
  KEY `IDX_C_PAYMENT_LOCK_L` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_platform_cert definition

CREATE TABLE `t_aqap_platform_cert` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_CONFIG_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_CONFIG_VALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_CONFIG_VALUE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FBANK_CONFIG_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACNT_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIRE_TIME` datetime DEFAULT NULL,
  `FIS_ALERT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALERT_DAY` bigint DEFAULT NULL,
  `FCERT_PASSWORD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_platform_cert_l definition

CREATE TABLE `t_aqap_platform_cert_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_PLATFORM_CERT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_platform_cert_page definition

CREATE TABLE `t_aqap_platform_cert_page` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FPRIVATE_KEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRIVATE_KEY_SECRET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBLIC_KEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FK_EBC_TEXTFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_platform_cert_page_l definition

CREATE TABLE `t_aqap_platform_cert_page_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_PCP_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_platform_cert_page_r3 definition

CREATE TABLE `t_aqap_platform_cert_page_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_platform_cert_r3 definition

CREATE TABLE `t_aqap_platform_cert_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_proxy_bank_login definition

CREATE TABLE `t_aqap_proxy_bank_login` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSERT_TIME` datetime DEFAULT NULL,
  `FBANK_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_proxy_bank_login_l definition

CREATE TABLE `t_aqap_proxy_bank_login_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_PROXY_BANK_LOGIN_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_proxy_bank_login_r3 definition

CREATE TABLE `t_aqap_proxy_bank_login_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_proxy_config definition

CREATE TABLE `t_aqap_proxy_config` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBLIC_KEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBLIC_KEY_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FPUBLIC_KEY_ALIAS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRIVATE_KEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRIVATE_KEY_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FPRIVATE_KEY_ALIAS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBLIC_KEY_SECRET` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRIVATE_KEY_SECRET` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROXY_HOST` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROXY_PORT` bigint DEFAULT NULL,
  `FPROXY_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSA_SIGN_ALGO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_proxy_config_l definition

CREATE TABLE `t_aqap_proxy_config_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_PROXY_CONFIG_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_proxy_config_r3 definition

CREATE TABLE `t_aqap_proxy_config_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_query_pay definition

CREATE TABLE `t_aqap_query_pay` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_ACNT` bigint DEFAULT NULL,
  `FBANK_VERSION` bigint DEFAULT NULL,
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FBATCH_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_ACC_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISO_CURRENCY_CODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMIT_TIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS_MSG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAMOUNT` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_query_pay_l definition

CREATE TABLE `t_aqap_query_pay_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_QUERY_PAY_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_query_pay_r3 definition

CREATE TABLE `t_aqap_query_pay_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_second_detailinfo definition

CREATE TABLE `t_aqap_second_detailinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_BANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENT_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAVAILABLE_BALANCE` decimal(23,10) DEFAULT NULL,
  `FBALANCE` decimal(23,10) DEFAULT NULL,
  `FBANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_REF_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUS_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREDIT_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FDEBIT_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FEXPLANATION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMPL_CLASS_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSERT_TIME` datetime DEFAULT NULL,
  `FOPP_ACC_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPP_BANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAY_DETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPT_NO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERIAL_NO` bigint NOT NULL DEFAULT '0',
  `FSORT_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FTRANS_TIME` datetime DEFAULT NULL,
  `FTRANS_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIQUE_SEQ` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FUSE_CN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUH_NO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_BIZ_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVERSED_SYS_FIELD` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFER_CHARGE` decimal(23,10) DEFAULT NULL,
  `FKD_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_DETAIL_NO` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIQUE_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATE_DATE` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSORT_FIELD` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_AQAP_SEC_DEL_AC_TR` (`FACC_NO`,`FTRANS_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_second_detailinfo_l definition

CREATE TABLE `t_aqap_second_detailinfo_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_SEC_DEL_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_sett_bank_keywo_r3 definition

CREATE TABLE `t_aqap_sett_bank_keywo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_sett_bank_keywords definition

CREATE TABLE `t_aqap_sett_bank_keywords` (
  `FID` bigint NOT NULL,
  `fnumber` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fenable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatetime` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fmasterid` bigint DEFAULT NULL,
  `FBANK_KEY` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsettle_accno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_sett_bank_keywords_l definition

CREATE TABLE `t_aqap_sett_bank_keywords_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_support_busines_r3 definition

CREATE TABLE `t_aqap_support_busines_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_support_business definition

CREATE TABLE `t_aqap_support_business` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FBANK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SUPPORT_BUSINESS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_support_business_l definition

CREATE TABLE `t_aqap_support_business_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_SU_BU_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_sync_detail definition

CREATE TABLE `t_aqap_sync_detail` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FBASEDATAFIELD` bigint DEFAULT NULL,
  `FBASEDATAFIELD1` bigint DEFAULT NULL,
  `FBASEDATAFIELD2` bigint DEFAULT NULL,
  `FSYNC_DATE` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTART_DATE` datetime DEFAULT NULL,
  `FDATEFIELD1` datetime DEFAULT NULL,
  `FEND_DATE` datetime DEFAULT NULL,
  `FTAKE_UP_TIME` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_use_key_word definition

CREATE TABLE `t_aqap_use_key_word` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FUSE_KEY_WORD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_use_key_word_l definition

CREATE TABLE `t_aqap_use_key_word_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_use_key_word_r3 definition

CREATE TABLE `t_aqap_use_key_word_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_use_mapping definition

CREATE TABLE `t_aqap_use_mapping` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FGROUPID` bigint DEFAULT NULL,
  `FINTERFACE` bigint DEFAULT NULL,
  `FUSE_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSE_KEY_WORD` bigint DEFAULT NULL,
  `FBANK_KEY_WORD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEDATAFIELD` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_use_mapping_l definition

CREATE TABLE `t_aqap_use_mapping_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_use_mapping_r3 definition

CREATE TABLE `t_aqap_use_mapping_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_user_cert definition

CREATE TABLE `t_aqap_user_cert` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FBANK_CONFIG_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_CONFIG_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_CONFIG_VALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_CONFIG_VALUE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FACNT_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_user_cert_l definition

CREATE TABLE `t_aqap_user_cert_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_USER_CERT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_user_cert_r3 definition

CREATE TABLE `t_aqap_user_cert_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_white_list definition

CREATE TABLE `t_aqap_white_list` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_CLUSTER_WHITE_LIST` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_white_list_l definition

CREATE TABLE `t_aqap_white_list_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_AQAP_WHITE_LIST_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_aqap_white_list_r3 definition

CREATE TABLE `t_aqap_white_list_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_ebg_simulator definition

CREATE TABLE `t_ebg_simulator` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FEXT` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_EBG_SIMULATOR_KEY` (`FKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_ebg_simulator_r3 definition

CREATE TABLE `t_ebg_simulator_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_bank_app_list definition

CREATE TABLE `t_note_bank_app_list` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_NOTE_BANK_APP_LIST` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_bank_app_list_l definition

CREATE TABLE `t_note_bank_app_list_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_NOTE_BANK_APP_LIST_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_codeless_bodyentry definition

CREATE TABLE `t_note_codeless_bodyentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FPARAMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMUST` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBODYPARAMDES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMDESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMNODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBGPARAM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBGPARAM_SOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGING_CONDITION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGING_CONDITIONS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_NOTE_CODELESS_BODYENTRY` (`FPARAMNAME`),
  KEY `IDX_NOTE_CODELESS_BODYENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_codeless_filecont definition

CREATE TABLE `t_note_codeless_filecont` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FEBGPARAM_SOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBGPARAM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMUST` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBODYPARAMDES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGING_CONDITION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGING_CONDITIONS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_NOTE_CODELESS_FILECONT_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_codeless_fileentry definition

CREATE TABLE `t_note_codeless_fileentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FPARAMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMDES` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBGPARAM_SOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBGPARAM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMUST` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMNODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBODYPARAMDES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGING_CONDITION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_NOTE_CODELESS_FILEENTRY` (`FPARAMNAME`),
  KEY `IDX_NOTE_CODELESS_FILEENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_codeless_filename definition

CREATE TABLE `t_note_codeless_filename` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FEBGPARAM_SOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBGPARAM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBODYPARAMDES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGING_CONDITION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGING_CONDITIONS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_NOTE_CODELESS_FILENAME_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_codeless_headerent definition

CREATE TABLE `t_note_codeless_headerent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FHEADERNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEADERVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEADERDES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_NOTE_CODELESS_HEADERENT` (`FHEADERNAME`),
  KEY `IDX_NOTE_CODELESS_HEADERENT_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_codeless_rspbody definition

CREATE TABLE `t_note_codeless_rspbody` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FRSP_PARAMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSP_PARAMDES` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSP_PARAMNODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSP_EBGPARAM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSP_CODE_FIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSP_BODYPARAMDES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSP_MATCH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_NOTE_CODELESS_RSPBODY` (`FRSP_PARAMNAME`),
  KEY `IDX_NOTE_CODELESS_RSPBODY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_ebg_field definition

CREATE TABLE `t_note_ebg_field` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FTYPE_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_NOTE_EBG_FIELD` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_ebg_field_l definition

CREATE TABLE `t_note_ebg_field_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_NOTE_EBG_FIELD_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_ebg_field_type definition

CREATE TABLE `t_note_ebg_field_type` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_NOTE_EBG_FIELD_TYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_ebg_field_type_l definition

CREATE TABLE `t_note_ebg_field_type_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_NOTE_EBG_FIELD_TYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_inner_rspcode definition

CREATE TABLE `t_note_inner_rspcode` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRSP_JUDGING` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSP_RESULT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSP_INNER_JUDGING` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_NOTE_INNER_RSPCODE_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_judging_body definition

CREATE TABLE `t_note_judging_body` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBGPARAM_SOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBGPARAM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTER_RIGHT_BRACKET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTER_LINK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTER_COMPARE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTER_LEFT_BRACKET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCODE_FIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_NOTE_JUDGING_BODY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_judging_condition definition

CREATE TABLE `t_note_judging_condition` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FJUDGING_CONDITION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGING_CONDITION_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FBIZ_TYPE_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_NOTE_JUDGING_CONDITION` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_judging_condition_l definition

CREATE TABLE `t_note_judging_condition_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_NOTE_JUDGING_CONDITION_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_judging_conditions definition

CREATE TABLE `t_note_judging_conditions` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FBIZ_TYPE_NUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_NOTE_JUDGING_CONDITIONS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_judging_conditions_l definition

CREATE TABLE `t_note_judging_conditions_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_NOTE_JUDGING_CONDS_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_judgings definition

CREATE TABLE `t_note_judgings` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRSP_JUDGING` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGING_CONDITION_DESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBGPARAM_SOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBGPARAM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGING_NAME` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCONDITION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_NOTE_JUDGINGS_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_judgings_n definition

CREATE TABLE `t_note_judgings_n` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEBGPARAM_SOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGING_CONDITION_DESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBG_FIELD_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEBGPARAM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_NOTE_JUDGINGS_N_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_out_rspcode definition

CREATE TABLE `t_note_out_rspcode` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRSP_JUDGING` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSP_RESULT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSP_OUT_JUDGINGS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_NOTE_OUT_RSPCODE_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_payable definition

CREATE TABLE `t_note_payable` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FEBG_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` bigint DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUB_BIZ_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMPL_CLASS_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERY_IMPL_CLASS_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPACKAGE_KEY` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FTOTAL_COUNT` bigint DEFAULT NULL,
  `FTOTAL_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FBATCH_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDETAIL_BIZ_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FINSERT_BATCH_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FINSERT_TIME` datetime DEFAULT NULL,
  `FREQUEST_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FREQUEST_TIME` datetime DEFAULT NULL,
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FUPDATE_BATCH_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBILL_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FAMOUNT` decimal(23,10) DEFAULT NULL,
  `FCURRENCY` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAFT_TYPE` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FTRANSFER_FLAG` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FKEEP_FLAG` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCONTRACT_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FINVOICE_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCONTRACT_OBJ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FAUTO_ACCEPT` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FAUTO_RECEIVE` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBOOKING_DATE` datetime DEFAULT NULL,
  `FDUE_DATE` datetime DEFAULT NULL,
  `FISSUE_DATE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FNOTE_STATUS` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FOTHER_INFO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FOPERATION_CODE` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FOPERATION_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FEXPLANATION` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_ACC_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FDRAWER_BANK_CNAPS` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_BANK_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FDRAWER_BANK_ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FDRAWER_ACC_COUNTRY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_ACC_PROVINCE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_ACC_CITY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_RATINGS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_AGENCY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_DUE_DATE` datetime DEFAULT NULL,
  `FACCEPTOR_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FACCEPTOR_ACC_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FACCEPTOR_BANK_CNAPS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FACCEPTOR_BANK_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FACCEPTOR_BANK_ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FACCEPTOR_ACC_COUNTRY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FACCEPTOR_ACC_PROVINCE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FACCEPTOR_ACC_CITY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPAYEE_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPAYEE_ACC_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FPAYEE_BANK_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FPAYEE_BANK_CNAPS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPAYEE_BANK_ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FPAYEE_COUNTRY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPAYEE_PROVINCE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPAYEE_CITY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSTATUS_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSTATUS_MSG` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBANK_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBANK_MSG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FERROR_MSG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FBAK_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBAK_STATUS_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBAK_STATUS_MSG` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FBAK_BANK_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBAK_BANK_MSG` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FBAK_ERROR_MSG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FPACKAGE_TIME` datetime DEFAULT NULL,
  `FBANK_BATCH_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBANK_DETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBANK_SERIAL_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FLAST_SUBMIT_TIME` datetime DEFAULT NULL,
  `FLAST_SUBMIT_REQUEST_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSUBMIT_COUNT` bigint DEFAULT NULL,
  `FSUBMIT_SUCCESS_TIME` datetime DEFAULT NULL,
  `FLAST_SYNC_TIME` datetime DEFAULT NULL,
  `FLAST_SYNC_REQUEST_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSYNC_COUNT` bigint DEFAULT NULL,
  `FPAY_FINISH_TIME` datetime DEFAULT NULL,
  `FTO_GIVE_UP` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FOBSSID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FQUERY_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSEQUENCE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FRESERVED1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `FRESERVED2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `FRESERVED3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `FRESERVED4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `FRQSTSERIALNO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FRSPSERIALNO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FUPDATE_OPERATION` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FISNEWECDS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FGRDBAG` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSTARTNO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FENDNO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCIRSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBANKREFDATE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBANKREFKEY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSUBRANGE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `ftotalsize` bigint DEFAULT '0',
  `fisacceptsamebank` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fispayeesamebank` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fbatchtotalamount` decimal(23,10) DEFAULT NULL,
  `fdraftamount` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_NOTE_PAYABLE_BATCH_SEQ` (`FBATCH_SEQ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_payable_l definition

CREATE TABLE `t_note_payable_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_NOTE_PAYABLE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_payable_r3 definition

CREATE TABLE `t_note_payable_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_receivable definition

CREATE TABLE `t_note_receivable` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FEBG_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` bigint DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZ_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUB_BIZ_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMPL_CLASS_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUERY_IMPL_CLASS_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPACKAGE_KEY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FTOTAL_COUNT` bigint DEFAULT NULL,
  `FTOTAL_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FBATCH_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDETAIL_BIZ_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FINSERT_TIME` datetime DEFAULT NULL,
  `FREQUEST_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FREQUEST_TIME` datetime DEFAULT NULL,
  `FUPDATE_TIME` datetime DEFAULT NULL,
  `FUPDATE_BATCH_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FUPDATE_OPERATION` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBILL_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRATE_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDISCOUNT_RATE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDISCOUNT_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FLOAN_AMOUNT` decimal(23,10) DEFAULT NULL,
  `FOTHER_INFO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FOPERATION_CODE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FOPERATION_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FAMOUNT` decimal(23,10) NOT NULL,
  `FCURRENCY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAFT_TYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFER_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FKEEP_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCONTRACT_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBOOKING_DATE` datetime DEFAULT NULL,
  `FDUE_DATE` datetime DEFAULT NULL,
  `FISSUE_DATE` datetime DEFAULT NULL,
  `FNOTE_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FEXPLANATION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FDRAWER_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_ACC_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FDRAWER_BANK_CNAPS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_BANK_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FDRAWER_BANK_ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FDRAWER_ACC_COUNTRYS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_ACC_PROVINCE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_ACC_CITY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FINSERT_BATCH_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_RATINGS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_AGENCY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FTEXTFIELD` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDRAWER_DUE_DATE` datetime DEFAULT NULL,
  `FACCEPTOR_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FACCEPTOR_ACC_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FACCEPTOR_BANK_CNAPS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FACCEPTOR_BANK_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FACCEPTOR_BANK_ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FACCEPTOR_ACC_COUNTRY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FACCEPTOR_ACC_PROVINCE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FACCEPTOR_ACC_CITY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPAYEE_ACC_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPAYEE_ACC_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FPAYEE_BANK_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FPAYEE_BANK_CNAPS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPAYEE_BANK_ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FPAYEE_COUNTRY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPAYEE_PROVINCE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPAYEE_CITY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBANK_REF_KEY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FPAY_AGENCY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FREDEMPTION_S_DATE` datetime DEFAULT NULL,
  `FREDEMPTION_E_DATE` datetime DEFAULT NULL,
  `FDIS_RED_RATE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FINCREASE_RATE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FADD_DAY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSTATUS_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSTATUS_MSG` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FBANK_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBANK_MSG` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FERROR_MSG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FBAK_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBAK_STATUS_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBAK_STATUS_MSG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FBAK_BANK_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBAK_BANK_MSG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FBAK_ERROR_MSG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FPACKAGE_TIME` datetime DEFAULT NULL,
  `FBANK_BATCH_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBANK_DETAIL_SEQ_ID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FBANK_SERIAL_NO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FLAST_SUBMIT_TIME` datetime DEFAULT NULL,
  `FLAST_SUBMIT_REQUEST_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSUBMIT_COUNT` bigint DEFAULT NULL,
  `FSUBMIT_SUCCESS_TIME` datetime DEFAULT NULL,
  `FLAST_SYNC_TIME` datetime DEFAULT NULL,
  `FLAST_SYNC_REQUEST_SEQ` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSYNC_COUNT` bigint DEFAULT NULL,
  `FPAY_FINISH_TIME` datetime DEFAULT NULL,
  `FTEXTFIELD1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FIMPA_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FOBSSID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FQUERY_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSEQUENCE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FRESERVED1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `FRESERVED2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `FRESERVED3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `FRESERVED4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `FDISCOUNT_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDISCOUNT_ACCNO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDISCOUNT_ACCNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT ' ',
  `FBANK_REF_DATE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FRQSTSERIALNO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FRSPSERIALNO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FISNEWECDS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FGRDBAG` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSTARTNO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FENDNO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCIRSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FINTEREST` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSUBRANGE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `ftotalsize` bigint DEFAULT '0',
  `fispayeesamebank` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fbatchtotalamount` decimal(23,10) DEFAULT NULL,
  `fdraftamount` decimal(23,10) DEFAULT NULL,
  `fsettleway` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fcleartype` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FORGSTARTNO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FORGENDNO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_receivable_l definition

CREATE TABLE `t_note_receivable_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_NOTE_RECEIVABLE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_note_receivable_r3 definition

CREATE TABLE `t_note_receivable_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_bd_match_param definition

CREATE TABLE `t_receipt_bd_match_param` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FDETAIL_PARAM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPT_PARAM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREF_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_bd_match_param_l definition

CREATE TABLE `t_receipt_bd_match_param_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_RECEIPT_BD_MATCH_PARAM_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_bd_match_param_r3 definition

CREATE TABLE `t_receipt_bd_match_param_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_bd_match_rule definition

CREATE TABLE `t_receipt_bd_match_rule` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FMATCH_RULE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_bd_match_rule_l definition

CREATE TABLE `t_receipt_bd_match_rule_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_RECEIPT_BD_MATCH_RULE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_bd_match_rule_r3 definition

CREATE TABLE `t_receipt_bd_match_rule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_connect_monitor definition

CREATE TABLE `t_receipt_connect_monitor` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT '0',
  `FMODIFIERID` bigint DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT '0',
  `FRECEIPT_WAY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPORT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMONITOR_STATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERROR_MSG` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRIVATE_CERT_PATH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMONITOR_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_connect_monitor_l definition

CREATE TABLE `t_receipt_connect_monitor_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_defect_stats definition

CREATE TABLE `t_receipt_defect_stats` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT '0',
  `FMODIFIERID` bigint DEFAULT '0',
  `FAUDITORID` bigint DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FBANK_VERSION` bigint DEFAULT '0',
  `FBANK_LOGIN` bigint DEFAULT '0',
  `FACC_NO` bigint DEFAULT '0',
  `FDEFECT_DAY` bigint DEFAULT '0',
  `FDEFECT_MONTH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEFECT_YEAR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_NAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN_NUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_detail definition

CREATE TABLE `t_receipt_detail` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FBANK_FILE_PATH` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACC_NO` bigint DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPLETE_TIME` datetime DEFAULT NULL,
  `FDETAIL_NO` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMD5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMD5_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FQUERY_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOAD_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOAD_REDO` bigint DEFAULT NULL,
  `FUPLOAD_EXP_MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOAD_EXP_MSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FEXP_MSG` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FMATCH_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` bigint DEFAULT NULL,
  `FBANK_LOGIN` bigint DEFAULT NULL,
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_NAME` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOAD_FILE_NAME` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_LINK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOAD_TIME` datetime DEFAULT NULL,
  `FOFD_JSON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATCH_IS_DEFECT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMATCH_DEFECT_DESC` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_RECEIPT_TASK_D_PK` (`FDETAIL_NO`),
  KEY `IDX_RECEIPT_TASK_D_INDEX` (`FREFID`,`FSTATUS`),
  KEY `IDX_RECEIPT_T_D_U_INDEX` (`FUPLOAD_FLAG`),
  KEY `IDX_RECEIPT_T_D_S_INDEX` (`FSTATUS`),
  KEY `IDX_RECEIPT_TASK_T_INDEX` (`FTRANS_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_download_task definition

CREATE TABLE `t_receipt_download_task` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FACC_NO` bigint DEFAULT NULL,
  `FBANK_LOGIN` bigint DEFAULT NULL,
  `FBANK_VERSION` bigint DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXP_MSG` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEXP_MSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FMATCH_NUM` bigint NOT NULL DEFAULT '0',
  `FDETAIL_NUM` bigint NOT NULL DEFAULT '0',
  `FREDO` bigint DEFAULT NULL,
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FTODAYS_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `FBATCH_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPLETE_TIME` datetime DEFAULT NULL,
  `FRECEIPT_NUM` bigint NOT NULL DEFAULT '0',
  `FUPLOAD_NUM` bigint NOT NULL DEFAULT '0',
  `FUPLOAD_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAIL_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEFECT_TYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUGGESTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `t_receipt_download_task_pk` (`FACC_NO`,`FTRANS_DATE`,`FBANK_LOGIN`,`FBANK_VERSION`),
  KEY `IDX_RECEIPT_TASK_INDEX` (`FACC_NO`,`FSTATUS`,`FTRANS_DATE`),
  KEY `IDX_RECEIPT_T_BD_INDEX` (`FBANK_VERSION`,`FTRANS_DATE`),
  KEY `IDX_RECEIPT_T_T_INDEX` (`FTRANS_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_encodemapping_r2 definition

CREATE TABLE `t_receipt_encodemapping_r2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_encodemapping_r3 definition

CREATE TABLE `t_receipt_encodemapping_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_info definition

CREATE TABLE `t_receipt_info` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION` bigint DEFAULT NULL,
  `FTASK_NUM` bigint DEFAULT NULL,
  `FCOMPELETED_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_NUM` bigint DEFAULT NULL,
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FBATCH_NO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPT_ACNT_NUM` bigint DEFAULT NULL,
  `FNEED_CREATE_NUM` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_RECEIPT_INFO_PK` (`FTRANS_DATE`,`FBANK_VERSION`),
  KEY `IDX_RECEIPT_T_I_INDEX` (`FBANK_VERSION`,`FTRANS_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_json definition

CREATE TABLE `t_receipt_json` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPT_DETAIL_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJSON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJSON_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FBANK_VERSION` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_RECEIPT_JSON_PK` (`FRECEIPT_DETAIL_ID`),
  KEY `IDX_RECEIPT_J_B_INDEX` (`FBANK_VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_reconcilia_task definition

CREATE TABLE `t_receipt_reconcilia_task` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FBANK_VERSION` bigint DEFAULT NULL,
  `FBANK_LOGIN` bigint DEFAULT NULL,
  `FACC_NO` bigint DEFAULT NULL,
  `FEXP_MSG` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEXP_MSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FUPLOAD_NUM` bigint DEFAULT NULL,
  `FREDO` bigint DEFAULT NULL,
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FCOMPLETE_TIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOAD_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECONCILIA_NUM` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_RECONCILI_TASK_INDEX` (`FACC_NO`,`FSTATUS`,`FTRANS_DATE`),
  KEY `IDX_RECONCILI_T_BD_INDEX` (`FBANK_VERSION`,`FTRANS_DATE`),
  KEY `IDX_RECONCILI_T_T_INDEX` (`FTRANS_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_receipt_statistics definition

CREATE TABLE `t_receipt_statistics` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FBANK_VERSION` bigint DEFAULT NULL,
  `TRANS_DATE` datetime DEFAULT NULL,
  `FRECEIPT_NUM` bigint DEFAULT NULL,
  `FDETAIL_NUM` bigint DEFAULT NULL,
  `FMATCH_NUM` bigint DEFAULT NULL,
  `FCOMPLETE_PC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATCH_PC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_VERSION_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOAD_NUM` bigint DEFAULT NULL,
  `FUPLOAD_PC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANK_LOGIN` bigint DEFAULT NULL,
  `FACC_NO` bigint DEFAULT NULL,
  `FACCNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANS_MONTH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FBANK_LOGIN_NAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_ebg.t_reconciliation_detail definition

CREATE TABLE `t_reconciliation_detail` (
  `FID` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FAUDITORID` bigint DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint DEFAULT NULL,
  `FBANK_VERSION` bigint DEFAULT NULL,
  `FBANK_LOGIN` bigint DEFAULT NULL,
  `FACC_NO` bigint DEFAULT NULL,
  `FBANK_FILE_PATH` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_NAME` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOAD_FILE_NAME` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILE_LINK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOM_ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPLETE_TIME` datetime DEFAULT NULL,
  `FREFID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOAD_FLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOAD_TIME` datetime DEFAULT NULL,
  `FUPLOAD_REDO` bigint DEFAULT NULL,
  `FUPLOAD_EXP_MSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOAD_EXP_MSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FEXP_MSG` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FTRANS_DATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECONCILIATION_NO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR_MONTH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROTOCOL_NO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEED_RESULT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_RECONCILI_R_D_INDEX` (`FREFID`,`FSTATUS`),
  KEY `IDX_RECONCILI_R_D_U_INDEX` (`FUPLOAD_FLAG`),
  KEY `IDX_RECONCILI_R_T_INDEX` (`FTRANS_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
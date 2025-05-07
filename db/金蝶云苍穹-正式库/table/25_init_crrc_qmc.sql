USE crrc_qmc;

-- crrc_qmc.t_dtx_local_tcc definition

CREATE TABLE `t_dtx_local_tcc` (
  `FID` bigint NOT NULL,
  `FXID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FCREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_baddeal definition

CREATE TABLE `t_qcas_baddeal` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPEDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FHANDDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCAS_BADDAL_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCAS_BADDAL_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_baddeal_l definition

CREATE TABLE `t_qcas_baddeal_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCAS_BADDALL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCAS_BADDALL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_baddeal_lk definition

CREATE TABLE `t_qcas_baddeal_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_baddeal_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_baddeal_tc definition

CREATE TABLE `t_qcas_baddeal_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCAS_BADDEAL_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCAS_BADDEAL_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_baddeal_wb definition

CREATE TABLE `t_qcas_baddeal_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcas_baddeal_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_baddealentry definition

CREATE TABLE `t_qcas_baddealentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FUNQUALIREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNQUALITYPE` bigint NOT NULL DEFAULT '0',
  `FHANDMETHED` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONORG` bigint NOT NULL DEFAULT '0',
  `FRESPONDEPART` bigint NOT NULL DEFAULT '0',
  `FRESPONUSER` bigint NOT NULL DEFAULT '0',
  `FHANDTIME` datetime DEFAULT NULL,
  `FUNQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDINSPEC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNQUALITIME` datetime DEFAULT NULL,
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FJOINBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FDRAWCAPNUM` int NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMER` bigint NOT NULL DEFAULT '0',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FDRAWPRONOTICENUM` int NOT NULL DEFAULT '0',
  `FDRAWQCTOPICNUM` int NOT NULL DEFAULT '0',
  `FNEWHANDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCAS_BADDRY_FID` (`FID`),
  KEY `IDX_QCAS_BADDRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCAS_BADDRY_FMAT` (`FMATERIELID`),
  KEY `IDX_QCAS_BADDRY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_baddealentry_lk definition

CREATE TABLE `t_qcas_baddealentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_baddealentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_insappentry definition

CREATE TABLE `t_qcas_insappentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMER` bigint NOT NULL DEFAULT '0',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCAS_INSARY_FID` (`FID`),
  KEY `IDX_QCAS_INSARY_FSEQ` (`FSEQ`),
  KEY `IDX_QCAS_INSARY_FMAT` (`FMATERIELID`),
  KEY `IDX_QCAS_INSARY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_insappentry_lk definition

CREATE TABLE `t_qcas_insappentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_insappentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspapplyproj definition

CREATE TABLE `t_qcas_inspapplyproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHECKITEMSID` bigint NOT NULL DEFAULT '0',
  `FCHECKCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCHECKMETHODID` bigint NOT NULL DEFAULT '0',
  `FCHECKFREQID` bigint NOT NULL DEFAULT '0',
  `FCHECKBASISID` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKINSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATCHFLAGID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJOINDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTORID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FJOININSPBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FJOININSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCAS_INSPAPP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCAS_INSPAPP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspapplyproj_lk definition

CREATE TABLE `t_qcas_inspapplyproj_lk` (
  `FDetailId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_inspapplyproj_lk_fk` (`FDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspbill definition

CREATE TABLE `t_qcas_inspbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPESTARTDATE` datetime DEFAULT NULL,
  `FINSPEENDDATE` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPECTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCAS_INSPLL_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCAS_INSPLL_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspbill_l definition

CREATE TABLE `t_qcas_inspbill_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCAS_INSPLLL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCAS_INSPLLL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspbill_lk definition

CREATE TABLE `t_qcas_inspbill_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_inspbill_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspbill_tc definition

CREATE TABLE `t_qcas_inspbill_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCAS_INSPBILL_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCAS_INSPBILL_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspbill_wb definition

CREATE TABLE `t_qcas_inspbill_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcas_inspbill_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspecapply definition

CREATE TABLE `t_qcas_inspecapply` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FQUALITYORG` bigint NOT NULL DEFAULT '0',
  `FAPPLYUSER` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FINSPECORGID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLCRETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPECTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCAS_INSPLY_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCAS_INSPLY_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspecapply_l definition

CREATE TABLE `t_qcas_inspecapply_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCAS_INSPLYL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCAS_INSPLYL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspecapply_lk definition

CREATE TABLE `t_qcas_inspecapply_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_inspecapply_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspecapply_tc definition

CREATE TABLE `t_qcas_inspecapply_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCAS_INSPECAPPLY_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCAS_INSPECAPPLY_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspecapply_wb definition

CREATE TABLE `t_qcas_inspecapply_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcas_inspecapply_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspentry definition

CREATE TABLE `t_qcas_inspentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPSCHEME` bigint NOT NULL DEFAULT '0',
  `FSAMPPERCENTAGE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFORMULA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRE` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONSTD` bigint NOT NULL DEFAULT '0',
  `FEMERGENCY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLYORG` bigint NOT NULL DEFAULT '0',
  `FSUPPLYDEP` bigint NOT NULL DEFAULT '0',
  `FPROPOSER` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FACSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FENTERRESULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAMPLINGRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLINGSIZEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUERECQTY` int NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTUNQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FSUBINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSPECTIONLOT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSAMPINGQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPINGUNQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPUQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWSSTAGEID` bigint NOT NULL DEFAULT '0',
  `FWSRULEID` bigint NOT NULL DEFAULT '0',
  `FINSPECTPROID` bigint NOT NULL DEFAULT '0',
  `FSHOWTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRINSQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMER` bigint NOT NULL DEFAULT '0',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCAS_INSPRY_FID` (`FID`),
  KEY `IDX_QCAS_INSPRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCAS_INSPRY_FMAT` (`FMATERIALID`),
  KEY `IDX_QCAS_INSPRY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspentry_l definition

CREATE TABLE `t_qcas_inspentry_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCAS_INSPRYL_FENTRYID` (`FENTRYID`,`FLOCALEID`),
  KEY `IDX_QCAS_INSPRYL_FSUBCOMMENT` (`FSUBCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspentry_lk definition

CREATE TABLE `t_qcas_inspentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_inspentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspresult definition

CREATE TABLE `t_qcas_inspresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FASSBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCKMATERIALID` bigint NOT NULL DEFAULT '0',
  `FCKUNITID` bigint NOT NULL DEFAULT '0',
  `FCKBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FCKQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FASSBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FINSOBJID` bigint NOT NULL DEFAULT '0',
  `FEXECSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FCKHANDMETHED` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FCKNEWHANDID` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCAS_INSPLT_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCAS_INSPLT_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_QCAS_INSPRESULT_ASSBILL` (`FASSENTITYNUMBERID`,`FASSBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspresult_lk definition

CREATE TABLE `t_qcas_inspresult_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_inspresult_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspresult_tc definition

CREATE TABLE `t_qcas_inspresult_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCAS_INSPRESULT_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCAS_INSPRESULT_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspresult_wb definition

CREATE TABLE `t_qcas_inspresult_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcas_inspresult_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspsubresproj definition

CREATE TABLE `t_qcas_inspsubresproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSPECTIONITEM` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINSPECTMETHOD` bigint NOT NULL DEFAULT '0',
  `FINSPECTFREQ` bigint NOT NULL DEFAULT '0',
  `FINSPECTBASIS` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTINSTRUCT` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECUNITID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPARISON` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJACCEPTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJREJECTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJUNQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJCKRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMAXVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAVEVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDEVIA` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHOOSESAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXAMPLES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCITEMENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCITEMENTRYID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCAS_INSPOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCAS_INSPOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspsubresproj_l definition

CREATE TABLE `t_qcas_inspsubresproj_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCAS_INSPOJL_FDETAILID` (`FDETAILID`,`FLOCALEID`),
  KEY `IDX_QCAS_INSPOJL_COMMENT` (`FINSPECCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspsubresrela definition

CREATE TABLE `t_qcas_inspsubresrela` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXMAPLEID` bigint NOT NULL DEFAULT '0',
  `FSAMP_SEQ` int NOT NULL DEFAULT '0',
  `FVALDETER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALRATSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCAS_INSPLA_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCAS_INSPLA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_inspsubressamp definition

CREATE TABLE `t_qcas_inspsubressamp` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSAMPLENUMID` bigint NOT NULL DEFAULT '0',
  `FSAMPLENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLERES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCAS_INSPMP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCAS_INSPMP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_joininspect definition

CREATE TABLE `t_qcas_joininspect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLCRETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCAS_JOINCT_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCAS_JOINCT_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_joininspect_lk definition

CREATE TABLE `t_qcas_joininspect_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_joininspect_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_joininspect_tc definition

CREATE TABLE `t_qcas_joininspect_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCAS_JOININSPECT_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCAS_JOININSPECT_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_joininspect_wb definition

CREATE TABLE `t_qcas_joininspect_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcas_joininspect_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_joininspentry definition

CREATE TABLE `t_qcas_joininspentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FMATERIALCFGID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONSTDID` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTYID` bigint NOT NULL DEFAULT '0',
  `FSUPPLYORGID` bigint NOT NULL DEFAULT '0',
  `FSUPPLYDEPID` bigint NOT NULL DEFAULT '0',
  `FPROPOSERID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCSYSTEM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FMAINBILLID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FRINSQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCAS_JOINRY_FID` (`FID`),
  KEY `IDX_QCAS_JOINRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCAS_JOINRY_FMAT` (`FMATERIALID`),
  KEY `IDX_QCAS_JOINRY_FMATCFG` (`FMATERIALCFGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_joininspentry_lk definition

CREATE TABLE `t_qcas_joininspentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_joininspentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_joininspproj definition

CREATE TABLE `t_qcas_joininspproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSPECTIONITEMID` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINSPECTMETHODID` bigint NOT NULL DEFAULT '0',
  `FINSPECTFREQID` bigint NOT NULL DEFAULT '0',
  `FINSPECTBASISID` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTINSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECUNITID` bigint NOT NULL DEFAULT '0',
  `FCOMPARISONID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJACCEPTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJUNQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJCKRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHOOSESAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXAMPLES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTORID` bigint NOT NULL DEFAULT '0',
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCITEMENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCITEMENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCAS_JOINOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCAS_JOINOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_joininspproj_lk definition

CREATE TABLE `t_qcas_joininspproj_lk` (
  `FDetailId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_joininspproj_lk_fk` (`FDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_joininsprela_n definition

CREATE TABLE `t_qcas_joininsprela_n` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXMAPLEID` bigint NOT NULL DEFAULT '0',
  `FSAMP_SEQ` int NOT NULL DEFAULT '0',
  `FVALDETER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALRATSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCAS_JOINLA_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCAS_JOINLA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_joininspsamp_n definition

CREATE TABLE `t_qcas_joininspsamp_n` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSAMPLENUMID` bigint NOT NULL DEFAULT '0',
  `FSAMPLENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLERES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCAS_JOINMP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCAS_JOINMP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_resultentry definition

CREATE TABLE `t_qcas_resultentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFYBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCENTITYNUMBERID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITUNITID` bigint NOT NULL DEFAULT '0',
  `FUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDSRCENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDSRCBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FDSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FASSIGNBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPLINGRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDSRCENTRYNUMBER` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCAS_RESURY_FID` (`FID`),
  KEY `IDX_QCAS_RESURY_FSEQ` (`FSEQ`),
  KEY `IDX_QCAS_RESULTENTRY_FSRCBILLENTRYID` (`FSRCBILLENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_resultentry_lk definition

CREATE TABLE `t_qcas_resultentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_resultentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_urgentpass definition

CREATE TABLE `t_qcas_urgentpass` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FAPPLYDEPTID` bigint NOT NULL DEFAULT '0',
  `FAPPLYUSERID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORGID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLCRETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCAS_URGESS_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCAS_URGESS_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_urgentpass_lk definition

CREATE TABLE `t_qcas_urgentpass_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcas_urgentpass_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_urgentpass_mat definition

CREATE TABLE `t_qcas_urgentpass_mat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FMATERIALCFGID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTYID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCSYSTEM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPASSREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FMANUDATE` datetime DEFAULT NULL,
  `FDUEDATE` datetime DEFAULT NULL,
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCAS_URGESS_FID` (`FID`),
  KEY `IDX_QCAS_URGESS_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_urgentpass_tc definition

CREATE TABLE `t_qcas_urgentpass_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCAS_URGENTPASS_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCAS_URGENTPASS_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcas_urgentpass_wb definition

CREATE TABLE `t_qcas_urgentpass_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcas_urgentpass_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activistep definition

CREATE TABLE `t_qcbd_activistep` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FISSYSPRE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ACTIEP_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_ACTIEP_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_ACTIVISTEP_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_ACTIVISTEP_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activistep_bit definition

CREATE TABLE `t_qcbd_activistep_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activistep_l definition

CREATE TABLE `t_qcbd_activistep_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ACTIEPL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_ACTIEPL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activistep_r3 definition

CREATE TABLE `t_qcbd_activistep_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activistep_u definition

CREATE TABLE `t_qcbd_activistep_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_ACTIVISTEP_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activistepentry definition

CREATE TABLE `t_qcbd_activistepentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHARGEUSERID` bigint NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_ACTIRY_FID` (`FID`),
  KEY `IDX_QCBD_ACTIRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activistepexc definition

CREATE TABLE `t_qcbd_activistepexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_ACTIVISTEPEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activistepusereg definition

CREATE TABLE `t_qcbd_activistepusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_ACTIVISTEPUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activitytep definition

CREATE TABLE `t_qcbd_activitytep` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ACTIVIEP_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_ACTIVIEP_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_ACTIVITYTEP_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_ACTIVITYTEP_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activitytep_bit definition

CREATE TABLE `t_qcbd_activitytep_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activitytep_l definition

CREATE TABLE `t_qcbd_activitytep_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ACTIVIEPL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_ACTIVIEPL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activitytep_r3 definition

CREATE TABLE `t_qcbd_activitytep_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activitytep_u definition

CREATE TABLE `t_qcbd_activitytep_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_ACTIVITYTEP_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activitytepentry definition

CREATE TABLE `t_qcbd_activitytepentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSTEPNAMEID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_ACTIVIRY_FID` (`FID`),
  KEY `IDX_QCBD_ACTIVIRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activitytepexc definition

CREATE TABLE `t_qcbd_activitytepexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_ACTIVITYTEPEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_activitytepusereg definition

CREATE TABLE `t_qcbd_activitytepusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_ACTIVITYTEPUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_auditconclus definition

CREATE TABLE `t_qcbd_auditconclus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_AUDIUS_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_AUDIUS_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_AUDITCONCLUS_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_AUDITCONCLUS_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_auditconclus_bit definition

CREATE TABLE `t_qcbd_auditconclus_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_auditconclus_l definition

CREATE TABLE `t_qcbd_auditconclus_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_AUDIUSL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_AUDIUSL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_auditconclus_r3 definition

CREATE TABLE `t_qcbd_auditconclus_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_auditconclus_u definition

CREATE TABLE `t_qcbd_auditconclus_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_AUDITCONCLUS_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_auditconclusexc definition

CREATE TABLE `t_qcbd_auditconclusexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_AUDITCONCLUSEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_auditconclususereg definition

CREATE TABLE `t_qcbd_auditconclususereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_AUDITCONCLUSUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_authorize definition

CREATE TABLE `t_qcbd_authorize` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTITY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_AUTHZE_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_AUTHZE_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_authorize_l definition

CREATE TABLE `t_qcbd_authorize_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_AUTHZEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_AUTHZEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_authorize_r3 definition

CREATE TABLE `t_qcbd_authorize_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_awardhonor definition

CREATE TABLE `t_qcbd_awardhonor` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_AWAROR_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_AWAROR_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_AWARDHONOR_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_AWARDHONOR_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_awardhonor_bit definition

CREATE TABLE `t_qcbd_awardhonor_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_awardhonor_l definition

CREATE TABLE `t_qcbd_awardhonor_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_AWARORL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_AWARORL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_awardhonor_r3 definition

CREATE TABLE `t_qcbd_awardhonor_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_awardhonor_u definition

CREATE TABLE `t_qcbd_awardhonor_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_AWARDHONOR_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_awardhonorexc definition

CREATE TABLE `t_qcbd_awardhonorexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_AWARDHONOREXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_awardhonorusereg definition

CREATE TABLE `t_qcbd_awardhonorusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_AWARDHONORUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_baddeal definition

CREATE TABLE `t_qcbd_baddeal` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPEDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FHANDDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_BADDAL_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCBD_BADDAL_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_baddeal_l definition

CREATE TABLE `t_qcbd_baddeal_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_BADDALL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_BADDALL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_baddealentry definition

CREATE TABLE `t_qcbd_baddealentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FUNQUALIREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNQUALITYPE` bigint NOT NULL DEFAULT '0',
  `FHANDMETHED` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONORG` bigint NOT NULL DEFAULT '0',
  `FRESPONDEPART` bigint NOT NULL DEFAULT '0',
  `FRESPONUSER` bigint NOT NULL DEFAULT '0',
  `FHANDTIME` datetime DEFAULT NULL,
  `FUNQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDINSPEC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNQUALITIME` datetime DEFAULT NULL,
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FJOINBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FDRAWCAPNUM` int NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_BADDRY_FID` (`FID`),
  KEY `IDX_QCBD_BADDRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_baddealmapp definition

CREATE TABLE `t_qcbd_baddealmapp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNEWHANDID` bigint NOT NULL DEFAULT '0',
  `FOLDHANDID` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_BADDPP_FID` (`FID`),
  KEY `IDX_QCBD_BADDPP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_baddealrec definition

CREATE TABLE `t_qcbd_baddealrec` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSUNCESS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODEBILLTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_BADDEC_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_BADDEC_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_baddealrec_l definition

CREATE TABLE `t_qcbd_baddealrec_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_BADDECL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_BADDECL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_baddealrec_r3 definition

CREATE TABLE `t_qcbd_baddealrec_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_badhandentry definition

CREATE TABLE `t_qcbd_badhandentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBILLFORMID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSHOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODEBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FISPRESETENTRY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_BADHRY_FID` (`FID`),
  KEY `IDX_QCBD_BADHRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_badhandmode definition

CREATE TABLE `t_qcbd_badhandmode` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOLDBADDEALSTYLE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_BADHDE_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_BADHDE_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_badhandmode_l definition

CREATE TABLE `t_qcbd_badhandmode_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_BADHDEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_BADHDEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_badhandmode_r3 definition

CREATE TABLE `t_qcbd_badhandmode_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_biztype definition

CREATE TABLE `t_qcbd_biztype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_BIZTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_biztype_l definition

CREATE TABLE `t_qcbd_biztype_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_QCBD_BIZTYPEL_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_biztype_r3 definition

CREATE TABLE `t_qcbd_biztype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_biztypeentry definition

CREATE TABLE `t_qcbd_biztypeentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FBILLFORM` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_BIZTYPEENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_chartset definition

CREATE TABLE `t_qcbd_chartset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCHARTINDEX` bigint NOT NULL DEFAULT '0',
  `FFORMKEY` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSETTINGNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTINGDETAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTINGDETAIL_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSETTINGSTR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTINGSTR_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_CSET_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_chartset_l definition

CREATE TABLE `t_qcbd_chartset_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_CHASETL_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_chartset_r3 definition

CREATE TABLE `t_qcbd_chartset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_customtemp definition

CREATE TABLE `t_qcbd_customtemp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FISPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSELECTEDSTEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_CUSTMP_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_CUSTMP_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_CUSTOMTEMP_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_CUSTOMTEMP_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_customtemp_bit definition

CREATE TABLE `t_qcbd_customtemp_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_customtemp_l definition

CREATE TABLE `t_qcbd_customtemp_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_CUSTMPL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_CUSTMPL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_customtemp_r3 definition

CREATE TABLE `t_qcbd_customtemp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_customtemp_u definition

CREATE TABLE `t_qcbd_customtemp_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_CUSTOMTEMP_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_customtempexc definition

CREATE TABLE `t_qcbd_customtempexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_CUSTOMTEMPEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_customtempusereg definition

CREATE TABLE `t_qcbd_customtempusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_CUSTOMTEMPUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_datamigrat definition

CREATE TABLE `t_qcbd_datamigrat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSUNCESS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FERRDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRDESC_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FPREFIX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPGRADESTAND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEDATAFIELD` bigint NOT NULL DEFAULT '0',
  `FISEXEINSPEC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAPPVALUE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTESTBILLNOS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_DATAAT_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_DATAAT_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_datamigrat_l definition

CREATE TABLE `t_qcbd_datamigrat_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_DATAATL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_DATAATL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_datamigrat_r3 definition

CREATE TABLE `t_qcbd_datamigrat_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_eavscheme definition

CREATE TABLE `t_qcbd_eavscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FLEVELSTART` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLEVELEND` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERIOUSLEVELID` bigint NOT NULL DEFAULT '0',
  `FIMPROVEWAYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_EAVSME_FID` (`FID`),
  KEY `IDX_QCBD_EAVSME_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_fieldmap_entry definition

CREATE TABLE `t_qcbd_fieldmap_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTITYOBJECTID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLFIELDNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_FIELAP_FID` (`FID`),
  KEY `IDX_QCBD_FIELAP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_happenrateentry definition

CREATE TABLE `t_qcbd_happenrateentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FHAPPENRATELEVEL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIBE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGESTD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_HAPPRY_FID` (`FID`),
  KEY `IDX_QCBD_HAPPRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_improveway definition

CREATE TABLE `t_qcbd_improveway` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_IMPRAY_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_IMPRAY_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_IMPROVEWAY_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_IMPROVEWAY_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_improveway_bit definition

CREATE TABLE `t_qcbd_improveway_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_improveway_l definition

CREATE TABLE `t_qcbd_improveway_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_IMPRAYL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_IMPRAYL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_improveway_r3 definition

CREATE TABLE `t_qcbd_improveway_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_improveway_u definition

CREATE TABLE `t_qcbd_improveway_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_IMPROVEWAY_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_improvewayexc definition

CREATE TABLE `t_qcbd_improvewayexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_IMPROVEWAYEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_improvewayusereg definition

CREATE TABLE `t_qcbd_improvewayusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_IMPROVEWAYUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insappentry definition

CREATE TABLE `t_qcbd_insappentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FAUTHORIZEOBJID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_INSARY_FID` (`FID`),
  KEY `IDX_QCBD_INSARY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inscmmater definition

CREATE TABLE `t_qcbd_inscmmater` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INSCER_FID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inscmmatgrp definition

CREATE TABLE `t_qcbd_inscmmatgrp` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INSCRP_FID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_cas definition

CREATE TABLE `t_qcbd_insobj_cas` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCMATERIALID` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBATCHNO` bigint NOT NULL DEFAULT '0',
  `FSBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUMSRCQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMSRCUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHRETFLG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBATCHRETMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHRETMSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISOCAS_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_ISOCAS_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_QCBD_INSOBJ_QCAS_FSRCENTRYID` (`FSRCENTRYID`),
  KEY `IDX_QCBD_ISOCAS_FSBILLID` (`FSENTITYNUMBERID`,`FSBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_cas_l definition

CREATE TABLE `t_qcbd_insobj_cas_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISOCAS_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_ISOCAS_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_cas_r3 definition

CREATE TABLE `t_qcbd_insobj_cas_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_oth definition

CREATE TABLE `t_qcbd_insobj_oth` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCMATERIALID` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBATCHNO` bigint NOT NULL DEFAULT '0',
  `FSBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUMSRCQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMSRCUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHRETFLG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBATCHRETMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHRETMSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_INSOBJ_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_INSOBJ_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_QCBD_INSOBJ_QCNP_FSRCENTRYID` (`FSRCENTRYID`),
  KEY `IDX_QCBD_ISOOTH_FSBILLID` (`FSENTITYNUMBERID`,`FSBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_oth_l definition

CREATE TABLE `t_qcbd_insobj_oth_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INSOBJL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_INSOBJL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_oth_r3 definition

CREATE TABLE `t_qcbd_insobj_oth_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_qcp definition

CREATE TABLE `t_qcbd_insobj_qcp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCMATERIALID` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBATCHNO` bigint NOT NULL DEFAULT '0',
  `FSBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUMSRCQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMSRCUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHRETFLG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBATCHRETMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHRETMSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISOQCP_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_ISOQCP_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_QCBD_INSOBJ_QCP_FSRCENTRYID` (`FSRCENTRYID`),
  KEY `IDX_QCBD_ISOQCP_FSBILLID` (`FSENTITYNUMBERID`,`FSBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_qcp_l definition

CREATE TABLE `t_qcbd_insobj_qcp_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISOLQCP_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_ISOLQCP_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_qcp_r3 definition

CREATE TABLE `t_qcbd_insobj_qcp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_qcpp definition

CREATE TABLE `t_qcbd_insobj_qcpp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCMATERIALID` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBATCHNO` bigint NOT NULL DEFAULT '0',
  `FSBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUMSRCQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMSRCUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHRETFLG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBATCHRETMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHRETMSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISOQCPP_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_ISOQCPP_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_QCBD_INSOBJ_QCPP_FSRCENTRYID` (`FSRCENTRYID`),
  KEY `IDX_QCBD_ISOQCPP_FSBILLID` (`FSENTITYNUMBERID`,`FSBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_qcpp_l definition

CREATE TABLE `t_qcbd_insobj_qcpp_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISOLQCPP_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_ISOLQCPP_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insobj_qcpp_r3 definition

CREATE TABLE `t_qcbd_insobj_qcpp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspbill definition

CREATE TABLE `t_qcbd_inspbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPESTARTDATE` datetime DEFAULT NULL,
  `FINSPEENDDATE` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_INSPLL_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCBD_INSPLL_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspbill_l definition

CREATE TABLE `t_qcbd_inspbill_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INSPLLL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_INSPLLL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspec_methodgr_r3 definition

CREATE TABLE `t_qcbd_inspec_methodgr_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspec_methodgrp definition

CREATE TABLE `t_qcbd_inspec_methodgrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPMETHGRP_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspec_methodgrp_l definition

CREATE TABLE `t_qcbd_inspec_methodgrp_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPMETHGRP_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspecapply definition

CREATE TABLE `t_qcbd_inspecapply` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FQUALITYORG` bigint NOT NULL DEFAULT '0',
  `FAPPLYUSER` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FINSPECORGID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_INSPLY_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCBD_INSPLY_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspecapply_l definition

CREATE TABLE `t_qcbd_inspecapply_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INSPLYL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_INSPLYL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspeccrit_att definition

CREATE TABLE `t_qcbd_inspeccrit_att` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPCRITATT_FNUMBER` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspeccrit_entry definition

CREATE TABLE `t_qcbd_inspeccrit_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FWORDNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORDNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_ISPCRITENT_FNUMBER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspecinstrugrp definition

CREATE TABLE `t_qcbd_inspecinstrugrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPECISTGRP_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspecinstrugrp_l definition

CREATE TABLE `t_qcbd_inspecinstrugrp_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPECISTGRP_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspecinstrugrp_r3 definition

CREATE TABLE `t_qcbd_inspecinstrugrp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspecitems_entry definition

CREATE TABLE `t_qcbd_inspecitems_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` bigint NOT NULL DEFAULT '0',
  `FDOWNVALUE` bigint NOT NULL DEFAULT '0',
  `FCHECKMETHOD` bigint NOT NULL DEFAULT '0',
  `FCHECKBASIS` bigint NOT NULL DEFAULT '0',
  `FCHECKCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FNORMTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKINSTRUCT` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITLD` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_ISPITEMSENT_FNUMBER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspecitemsgrp definition

CREATE TABLE `t_qcbd_inspecitemsgrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPITEMGRP_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspecitemsgrp_l definition

CREATE TABLE `t_qcbd_inspecitemsgrp_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPITEMGRP_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspecitemsgrp_r3 definition

CREATE TABLE `t_qcbd_inspecitemsgrp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspect_fieldma_r3 definition

CREATE TABLE `t_qcbd_inspect_fieldma_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspect_fieldmap definition

CREATE TABLE `t_qcbd_inspect_fieldmap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCALFIELDID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_INSPCT_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_INSPCT_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspect_fieldmap_l definition

CREATE TABLE `t_qcbd_inspect_fieldmap_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INSPCTL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_INSPCTL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspection_meth_r3 definition

CREATE TABLE `t_qcbd_inspection_meth_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspection_method definition

CREATE TABLE `t_qcbd_inspection_method` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPMETHOD_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_QCBD_INSPECTION_METHOD_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_INSPECTION_METHOD_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspection_method_bit definition

CREATE TABLE `t_qcbd_inspection_method_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspection_method_l definition

CREATE TABLE `t_qcbd_inspection_method_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPMETHOD_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspection_method_u definition

CREATE TABLE `t_qcbd_inspection_method_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTION_METHOD_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspection_methodexc definition

CREATE TABLE `t_qcbd_inspection_methodexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTION_METHODEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspection_methodusereg definition

CREATE TABLE `t_qcbd_inspection_methodusereg` (
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FASSIGNORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISASSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  KEY `IDX_QCBD_INSPECMETHOD_CO` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_INSPECTION_METHODUSEREG_D` (`FDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioncrit definition

CREATE TABLE `t_qcbd_inspectioncrit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPCRIT_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_QCBD_INSPECTIONCRIT_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_INSPECTIONCRIT_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioncrit_bit definition

CREATE TABLE `t_qcbd_inspectioncrit_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioncrit_l definition

CREATE TABLE `t_qcbd_inspectioncrit_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPCRIT_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioncrit_r3 definition

CREATE TABLE `t_qcbd_inspectioncrit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioncrit_u definition

CREATE TABLE `t_qcbd_inspectioncrit_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONCRIT_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioncritexc definition

CREATE TABLE `t_qcbd_inspectioncritexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONCRITEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioncritg_r3 definition

CREATE TABLE `t_qcbd_inspectioncritg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioncritgrp definition

CREATE TABLE `t_qcbd_inspectioncritgrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPECRITGRP_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioncritgrp_l definition

CREATE TABLE `t_qcbd_inspectioncritgrp_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPECRITGRP_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioncritusereg definition

CREATE TABLE `t_qcbd_inspectioncritusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONCRITUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionfreq definition

CREATE TABLE `t_qcbd_inspectionfreq` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPTFREQ_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_QCBD_INSPECTIONFREQ_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_INSPECTIONFREQ_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionfreq_bit definition

CREATE TABLE `t_qcbd_inspectionfreq_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionfreq_l definition

CREATE TABLE `t_qcbd_inspectionfreq_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPTFREQ_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionfreq_r3 definition

CREATE TABLE `t_qcbd_inspectionfreq_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionfreq_u definition

CREATE TABLE `t_qcbd_inspectionfreq_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONFREQ_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionfreqexc definition

CREATE TABLE `t_qcbd_inspectionfreqexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONFREQEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionfreqg_r3 definition

CREATE TABLE `t_qcbd_inspectionfreqg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionfreqgrp definition

CREATE TABLE `t_qcbd_inspectionfreqgrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPTFREQGRP_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionfreqgrp_l definition

CREATE TABLE `t_qcbd_inspectionfreqgrp_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPTFREQGRP_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_ISPTFREQGRP_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionfrequsereg definition

CREATE TABLE `t_qcbd_inspectionfrequsereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONFREQUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioninstr_r3 definition

CREATE TABLE `t_qcbd_inspectioninstr_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioninstru definition

CREATE TABLE `t_qcbd_inspectioninstru` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIFICATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMANUFACTURER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPINSTRU_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_QCBD_INSPECTIONINSTRU_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_INSPECTIONINSTRU_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioninstru_bit definition

CREATE TABLE `t_qcbd_inspectioninstru_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioninstru_l definition

CREATE TABLE `t_qcbd_inspectioninstru_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPINSTRU_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioninstru_u definition

CREATE TABLE `t_qcbd_inspectioninstru_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONINSTRU_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioninstruexc definition

CREATE TABLE `t_qcbd_inspectioninstruexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONINSTRUEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectioninstruusereg definition

CREATE TABLE `t_qcbd_inspectioninstruusereg` (
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FASSIGNORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISASSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  KEY `IDX_QCBD_INSPECSTR_CO` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_INSPECTIONINSTRUUSEREG_D` (`FDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionitems definition

CREATE TABLE `t_qcbd_inspectionitems` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCHECKMETHOD` bigint NOT NULL DEFAULT '0',
  `FCHECKBASIS` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRADIOGROUPFIELD` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKINSTRUCT` bigint NOT NULL DEFAULT '0',
  `FRADIOGROUPFIELD1` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FITEMENTRYQTY` int NOT NULL DEFAULT '0',
  `FSOURCEITEMID` bigint NOT NULL DEFAULT '0',
  `FSOURCEENTRYID` bigint NOT NULL DEFAULT '0',
  `FSPLIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSPC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPITEMS_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_QCBD_INSPECTIONITEMS_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_INSPECTIONITEMS_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionitems_bit definition

CREATE TABLE `t_qcbd_inspectionitems_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionitems_l definition

CREATE TABLE `t_qcbd_inspectionitems_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPITEMS_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionitems_r3 definition

CREATE TABLE `t_qcbd_inspectionitems_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionitems_u definition

CREATE TABLE `t_qcbd_inspectionitems_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONITEMS_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionitemsexc definition

CREATE TABLE `t_qcbd_inspectionitemsexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONITEMSEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionitemsusereg definition

CREATE TABLE `t_qcbd_inspectionitemsusereg` (
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FASSIGNORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISASSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  KEY `IDX_QCBD_INSPECITEM_CO` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_INSPECTIONITEMSUSEREG_D` (`FDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionstd definition

CREATE TABLE `t_qcbd_inspectionstd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCHECKMETHOD` bigint NOT NULL DEFAULT '0',
  `FCHECKBASIS` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRADIOGROUPFIELD` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKINSTRUCT` bigint NOT NULL DEFAULT '0',
  `FRADIOGROUPFIELD1` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISREPAIR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCSTDID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPSTD_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_QCBD_INSPECTIONSTD_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_INSPECTIONSTD_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionstd_bit definition

CREATE TABLE `t_qcbd_inspectionstd_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionstd_l definition

CREATE TABLE `t_qcbd_inspectionstd_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPSTD_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionstd_r3 definition

CREATE TABLE `t_qcbd_inspectionstd_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionstd_u definition

CREATE TABLE `t_qcbd_inspectionstd_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONSTD_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionstdentry definition

CREATE TABLE `t_qcbd_inspectionstdentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FCHECKMETHOD` bigint NOT NULL DEFAULT '0',
  `FCHECKBASIS` bigint NOT NULL DEFAULT '0',
  `FCHECKCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FNORMTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKINSTRUCT` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITLD` bigint NOT NULL DEFAULT '0',
  `FCHECKITEMS` bigint NOT NULL DEFAULT '0',
  `FCHECKFREQ` bigint NOT NULL DEFAULT '0',
  `FMATCHFLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATCHFLAGINT` bigint NOT NULL DEFAULT '0',
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_ISPSTDENT_FNUMBER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionstdexc definition

CREATE TABLE `t_qcbd_inspectionstdexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONSTDEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionstdgr_r3 definition

CREATE TABLE `t_qcbd_inspectionstdgr_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionstdgrp definition

CREATE TABLE `t_qcbd_inspectionstdgrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_ISPSTDGRP_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionstdgrp_l definition

CREATE TABLE `t_qcbd_inspectionstdgrp_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_ISPSTDGRP_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectionstdusereg definition

CREATE TABLE `t_qcbd_inspectionstdusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTIONSTDUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectpro definition

CREATE TABLE `t_qcbd_inspectpro` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBIZSTYPEID` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_INSPRO_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_INSPRO_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_INSPECTPRO_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_INSPECTPRO_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectpro_bit definition

CREATE TABLE `t_qcbd_inspectpro_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectpro_l definition

CREATE TABLE `t_qcbd_inspectpro_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INSPROL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_INSPROL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectpro_r3 definition

CREATE TABLE `t_qcbd_inspectpro_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectpro_u definition

CREATE TABLE `t_qcbd_inspectpro_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTPRO_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectproexc definition

CREATE TABLE `t_qcbd_inspectproexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTPROEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspectprousereg definition

CREATE TABLE `t_qcbd_inspectprousereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INSPECTPROUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspentry definition

CREATE TABLE `t_qcbd_inspentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPSCHEME` bigint NOT NULL DEFAULT '0',
  `FSAMPPERCENTAGE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFORMULA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRE` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONSTD` bigint NOT NULL DEFAULT '0',
  `FEMERGENCY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLYORG` bigint NOT NULL DEFAULT '0',
  `FSUPPLYDEP` bigint NOT NULL DEFAULT '0',
  `FPROPOSER` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FACSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FENTERRESULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAMPLINGRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLINGSIZEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUERECQTY` int NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTUNQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FSUBINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSPECTIONLOT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSAMPINGQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPINGUNQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPUQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWSSTAGEID` bigint NOT NULL DEFAULT '0',
  `FWSRULEID` bigint NOT NULL DEFAULT '0',
  `FINSPECTPROID` bigint NOT NULL DEFAULT '0',
  `FSHOWTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRINSQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_INSPRY_FID` (`FID`),
  KEY `IDX_QCBD_INSPRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspentry_l definition

CREATE TABLE `t_qcbd_inspentry_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INSPRYL_FENTRYID` (`FENTRYID`,`FLOCALEID`),
  KEY `IDX_QCBD_INSPRYL_FSUBCOMMENT` (`FSUBCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspobjdp definition

CREATE TABLE `t_qcbd_inspobjdp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FTGOPR` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTGENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMAKEPARA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTGAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_INSPDP_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_INSPDP_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspobjdp_e definition

CREATE TABLE `t_qcbd_inspobjdp_e` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARAINFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSDENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAINFOBATCH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAINFOBATCH_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_INSPDPE_FID` (`FID`),
  KEY `IDX_QCBD_INSPDPE_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspobjdp_l definition

CREATE TABLE `t_qcbd_inspobjdp_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INSPDPL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_INSPDPL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspro_ent definition

CREATE TABLE `t_qcbd_inspro_ent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSETUPTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FMATERIELTYPEID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FSAMPLEPROID` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTDID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORGID` bigint NOT NULL DEFAULT '0',
  `FINSPECTUSERID` bigint NOT NULL DEFAULT '0',
  `FQROUTEID` bigint NOT NULL DEFAULT '0',
  `FOPERATIONNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPROPERATION` bigint NOT NULL DEFAULT '0',
  `FWSTRSPROID` bigint NOT NULL DEFAULT '0',
  `FROCESSSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPECTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_INSPRO_FID` (`FID`),
  KEY `IDX_QCBD_INSPRO_FSEQ` (`FSEQ`),
  KEY `IDX_QCBD_INSPROENT_FMATERIELID` (`FMATERIELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insprogro definition

CREATE TABLE `t_qcbd_insprogro` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_INSPROGRO_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_INSPROGRO_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insprogro_l definition

CREATE TABLE `t_qcbd_insprogro_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INSPROGROL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_INSPROGROL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_insprogro_r3 definition

CREATE TABLE `t_qcbd_insprogro_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspsubresproj definition

CREATE TABLE `t_qcbd_inspsubresproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSPECTIONITEM` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONCONTENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTMETHOD` bigint NOT NULL DEFAULT '0',
  `FINSPECTFREQ` bigint NOT NULL DEFAULT '0',
  `FINSPECTBASIS` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTINSTRUCT` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECUNITID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPARISON` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJACCEPTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJREJECTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJUNQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJCKRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMAXVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAVEVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDEVIA` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHOOSESAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXAMPLES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCBD_INSPOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCBD_INSPOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspsubresproj_l definition

CREATE TABLE `t_qcbd_inspsubresproj_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INSPOJL_FDETAILID` (`FDETAILID`,`FLOCALEID`),
  KEY `IDX_QCBD_INSPOJL_COMMENT` (`FINSPECCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspsubresrela definition

CREATE TABLE `t_qcbd_inspsubresrela` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXMAPLEID` bigint NOT NULL DEFAULT '0',
  `FSAMP_SEQ` int NOT NULL DEFAULT '0',
  `FVALDETER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALRATSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCBD_INSPLA_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCBD_INSPLA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_inspsubressamp definition

CREATE TABLE `t_qcbd_inspsubressamp` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSAMPLENUMID` bigint NOT NULL DEFAULT '0',
  `FSAMPLENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLERES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCBD_INSPMP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCBD_INSPMP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscm definition

CREATE TABLE `t_qcbd_invpscm` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FFIRSTINSPECTDATE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTCYSCLE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTFREEZEINV` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSPECTLEADTIME` int NOT NULL DEFAULT '0',
  `FINSPECTNUMSTYLE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUTOEXEC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAPPLYORGID` bigint NOT NULL DEFAULT '0',
  `FQUAORGID` bigint NOT NULL DEFAULT '0',
  `FLONGMON` int NOT NULL DEFAULT '0',
  `FDATASOURCE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FILTERSTRING` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FILTERSTRING_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSETDATE` datetime DEFAULT NULL,
  `FLONGDAY` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_INVPCM_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_INVPCM_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_INVPSCM_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_INVPSCM_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscm_bit definition

CREATE TABLE `t_qcbd_invpscm_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscm_l definition

CREATE TABLE `t_qcbd_invpscm_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INVPCML_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_INVPCML_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscm_r3 definition

CREATE TABLE `t_qcbd_invpscm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscm_u definition

CREATE TABLE `t_qcbd_invpscm_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INVPSCM_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscmentry definition

CREATE TABLE `t_qcbd_invpscmentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSPLITREASON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_INVPRY_FID` (`FID`),
  KEY `IDX_QCBD_INVPRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscmexc definition

CREATE TABLE `t_qcbd_invpscmexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INVPSCMEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscmgrp definition

CREATE TABLE `t_qcbd_invpscmgrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_INVPRP_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_INVPRP_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscmgrp_l definition

CREATE TABLE `t_qcbd_invpscmgrp_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_INVPRPL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_INVPRPL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscmgrp_r3 definition

CREATE TABLE `t_qcbd_invpscmgrp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscmlog definition

CREATE TABLE `t_qcbd_invpscmlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEXECTIME` datetime DEFAULT NULL,
  `FEXECSTEP` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECRES` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEXECLOG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECLOG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_INVPOG_FID` (`FID`),
  KEY `IDX_QCBD_INVPOG_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_invpscmusereg definition

CREATE TABLE `t_qcbd_invpscmusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_INVPSCMUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_ksqlscheme definition

CREATE TABLE `t_qcbd_ksqlscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FENTRYOBJECTID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPRESETDATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRESETUSER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRESETORG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANNOTATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPOSEDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_KSQLME_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_KSQLME_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_KSQLSCHEME_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_KSQLSCHEME_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_ksqlscheme_bit definition

CREATE TABLE `t_qcbd_ksqlscheme_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_ksqlscheme_entity definition

CREATE TABLE `t_qcbd_ksqlscheme_entity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSELECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCFIELDTAGNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCFIELDTAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIDENTIFICATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_KSQLME_FID` (`FID`),
  KEY `IDX_QCBD_KSQLME_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_ksqlscheme_l definition

CREATE TABLE `t_qcbd_ksqlscheme_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_KSQLMEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_KSQLMEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_ksqlscheme_r3 definition

CREATE TABLE `t_qcbd_ksqlscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_ksqlscheme_u definition

CREATE TABLE `t_qcbd_ksqlscheme_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_KSQLSCHEME_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_ksqlschemeexc definition

CREATE TABLE `t_qcbd_ksqlschemeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_KSQLSCHEMEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_ksqlschemeusereg definition

CREATE TABLE `t_qcbd_ksqlschemeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_KSQLSCHEMEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_matchflag definition

CREATE TABLE `t_qcbd_matchflag` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_MATCHFLAG_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_matchflag_l definition

CREATE TABLE `t_qcbd_matchflag_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_QCBD_MATCHFLAG_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_matchflag_r3 definition

CREATE TABLE `t_qcbd_matchflag_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_migratentry definition

CREATE TABLE `t_qcbd_migratentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSRCTABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESTABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCFIELDTAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCFIELDTAGNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPFIX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTDESTABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISMUTILAN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREFLEXCFG` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_MIGRRY_FID` (`FID`),
  KEY `IDX_QCBD_MIGRRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_otho_entry definition

CREATE TABLE `t_qcbd_otho_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLENTRYSEQ` int NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHANDMETHED` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALIFSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCUSTTEXTVAL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDTIME` datetime DEFAULT NULL,
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSPRESBILLID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYNUMBER` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSNEWHANDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_OTHO_FID` (`FID`),
  KEY `IDX_QCBD_OTHO_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_pg_resentry definition

CREATE TABLE `t_qcbd_pg_resentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRESPLUGIN` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPLUGINDESC` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRESOPREATE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_PG_FID` (`FID`),
  KEY `IDX_QCBD_PG_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_plugin_cfg definition

CREATE TABLE `t_qcbd_plugin_cfg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FENTITYTYPEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPLUGINTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROUTE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_PLUGIN_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_PLUGIN_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_plugin_cfg_l definition

CREATE TABLE `t_qcbd_plugin_cfg_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_PLUGINL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_PLUGINL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_plugin_cfg_r3 definition

CREATE TABLE `t_qcbd_plugin_cfg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_pro_matchdimen definition

CREATE TABLE `t_qcbd_pro_matchdimen` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPROFIELDNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_PRO_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_PRO_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_pro_matchdimen_l definition

CREATE TABLE `t_qcbd_pro_matchdimen_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_PROL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_PROL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_pro_matchdimen_r3 definition

CREATE TABLE `t_qcbd_pro_matchdimen_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_pro_mulpmd definition

CREATE TABLE `t_qcbd_pro_mulpmd` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_PRO_MULPMD_FID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_proeqentry definition

CREATE TABLE `t_qcbd_proeqentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROCESSSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSSEQNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSSEQTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSSEQREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFERENCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATION` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTPUT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_PROERY_FID` (`FID`),
  KEY `IDX_QCBD_PROERY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_proseqrel definition

CREATE TABLE `t_qcbd_proseqrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSEQRELATIONSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQRELATIONNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQRELATIONPARSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQRELATIONPARNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFERPROCESSNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFERPROCESSNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTURNOUTPROCESSNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTURNOUTPROCESSNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARALLELRATION` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_PROSEL_FID` (`FID`),
  KEY `IDX_QCBD_PROSEL_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qcas_entry definition

CREATE TABLE `t_qcbd_qcas_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLENTRYSEQ` int NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHANDMETHED` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALIFSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCUSTTEXTVAL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDTIME` datetime DEFAULT NULL,
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSPRESBILLID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYNUMBER` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSNEWHANDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_QCAS_FID` (`FID`),
  KEY `IDX_QCBD_QCAS_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qcpo_entry definition

CREATE TABLE `t_qcbd_qcpo_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLENTRYSEQ` int NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHANDMETHED` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALIFSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCUSTTEXTVAL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDTIME` datetime DEFAULT NULL,
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSPRESBILLID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYNUMBER` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSNEWHANDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_ISOQCP_FID` (`FID`),
  KEY `IDX_QCBD_ISOQCP_FSEQ` (`FSEQ`),
  KEY `IDX_QCBD_ISOQCP_FBILLID` (`FENTITYNUMBERID`,`FBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qcppo_entry definition

CREATE TABLE `t_qcbd_qcppo_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLENTRYSEQ` int NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHANDMETHED` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALIFSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFSRCQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCUSTTEXTVAL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDTIME` datetime DEFAULT NULL,
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSPRESBILLID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYNUMBER` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSNEWHANDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_ISOQCPP_FID` (`FID`),
  KEY `IDX_QCBD_ISOQCPP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qcteam definition

CREATE TABLE `t_qcbd_qcteam` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FTEAMBADGE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGISTDATE` datetime DEFAULT NULL,
  `FGRPDESC` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUTURALCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_QCTEAM_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_QCTEAM_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_QCTEAM_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_QCTEAM_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qcteam_bit definition

CREATE TABLE `t_qcbd_qcteam_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qcteam_l definition

CREATE TABLE `t_qcbd_qcteam_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_QCTEAML_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_QCTEAML_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qcteam_r3 definition

CREATE TABLE `t_qcbd_qcteam_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qcteam_u definition

CREATE TABLE `t_qcbd_qcteam_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_QCTEAM_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qcteamexc definition

CREATE TABLE `t_qcbd_qcteamexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_QCTEAMEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qcteamuser definition

CREATE TABLE `t_qcbd_qcteamuser` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FROLEVAL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FPERFDUTY` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPERSONFAIL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_QCTEER_FID` (`FID`),
  KEY `IDX_QCBD_QCTEER_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qcteamusereg definition

CREATE TABLE `t_qcbd_qcteamusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_QCTEAMUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qroute definition

CREATE TABLE `t_qcbd_qroute` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSIONID` bigint NOT NULL DEFAULT '0',
  `FROUTEREPLACE` bigint NOT NULL DEFAULT '0',
  `FISMAINPROCESS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPROCESSTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALGROUPID` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FAUXPROPERTYID` bigint NOT NULL DEFAULT '0',
  `FBOMVERSIONID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FCANCELERID` bigint NOT NULL DEFAULT '0',
  `FCANCELTIME` datetime DEFAULT NULL,
  `FMANUROUTEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOMVERSIONSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOMTYPESTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNTIME` datetime DEFAULT NULL,
  `FQAUDITOR` bigint NOT NULL DEFAULT '0',
  `FORIGIN` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_QROUTE_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_QROUTE_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_QROUTE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_QROUTE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qroute_bit definition

CREATE TABLE `t_qcbd_qroute_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qroute_l definition

CREATE TABLE `t_qcbd_qroute_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_QROUTEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_QROUTEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qroute_r3 definition

CREATE TABLE `t_qcbd_qroute_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qroute_u definition

CREATE TABLE `t_qcbd_qroute_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_QROUTE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qrouteexc definition

CREATE TABLE `t_qcbd_qrouteexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_QROUTEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qrouteusereg definition

CREATE TABLE `t_qcbd_qrouteusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_QROUTEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qualityorgentry definition

CREATE TABLE `t_qcbd_qualityorgentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FOPERATORID` bigint NOT NULL DEFAULT '0',
  `FOPERATORNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERGRPNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERGRPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERGRPTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVALID` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QUALITYORGENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qualityorgentry_l definition

CREATE TABLE `t_qcbd_qualityorgentry_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERGRPNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QUALITYORGENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qualityorgtpl definition

CREATE TABLE `t_qcbd_qualityorgtpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORGROUPTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_QUALPL_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_QCBD_QUALITYORGTPL_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_QUALITYORGTPL_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qualityorgtpl_bit definition

CREATE TABLE `t_qcbd_qualityorgtpl_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qualityorgtpl_l definition

CREATE TABLE `t_qcbd_qualityorgtpl_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QUALITYORGTPL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qualityorgtpl_r3 definition

CREATE TABLE `t_qcbd_qualityorgtpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qualityorgtpl_u definition

CREATE TABLE `t_qcbd_qualityorgtpl_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_QUALITYORGTPL_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qualityorgtplexc definition

CREATE TABLE `t_qcbd_qualityorgtplexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_QUALITYORGTPLEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_qualityorgtplusereg definition

CREATE TABLE `t_qcbd_qualityorgtplusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_QUALITYORGTPLUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_ractentry definition

CREATE TABLE `t_qcbd_ractentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROCESSNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATIONNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSSTAGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDFORMULAID` bigint NOT NULL DEFAULT '0',
  `FMINFORMULAID` bigint NOT NULL DEFAULT '0',
  `FSTANDARDFORMULA1ID` bigint NOT NULL DEFAULT '0',
  `FMINFORMULA1ID` bigint NOT NULL DEFAULT '0',
  `FACTRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FACTSCHEDULING` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCBD_RACTRY_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCBD_RACTRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_recinfoentity definition

CREATE TABLE `t_qcbd_recinfoentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSAMPLINGSIZECODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLINGSIZE` bigint NOT NULL DEFAULT '0',
  `FSAMPPERCENTAGE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FAC` bigint NOT NULL DEFAULT '0',
  `FRE` bigint NOT NULL DEFAULT '0',
  `FFORMULA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHCUTOFFVALUE` bigint DEFAULT NULL,
  `FBATCHINITIALVALUE` bigint DEFAULT NULL,
  `FACSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTIONRULE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTIONLEVELENTRY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTRICTNESSENTRY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAQLVALUEENTRY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_RECINFOENTITY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reflexcfg definition

CREATE TABLE `t_qcbd_reflexcfg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDESTABKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESTABNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_REFLFG_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_REFLFG_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reflexcfg_l definition

CREATE TABLE `t_qcbd_reflexcfg_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_REFLFGL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_REFLFGL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reflexcfg_r3 definition

CREATE TABLE `t_qcbd_reflexcfg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reflexentry definition

CREATE TABLE `t_qcbd_reflexentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_REFLRY_FID` (`FID`),
  KEY `IDX_QCBD_REFLRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewcommit_att definition

CREATE TABLE `t_qcbd_reviewcommit_att` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_REVIIT_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewsta definition

CREATE TABLE `t_qcbd_reviewsta` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_REVITA_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_REVITA_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_REVIEWSTA_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_REVIEWSTA_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewsta_bit definition

CREATE TABLE `t_qcbd_reviewsta_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewsta_l definition

CREATE TABLE `t_qcbd_reviewsta_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_REVITAL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_REVITAL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewsta_r3 definition

CREATE TABLE `t_qcbd_reviewsta_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewsta_u definition

CREATE TABLE `t_qcbd_reviewsta_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_REVIEWSTA_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewstaexc definition

CREATE TABLE `t_qcbd_reviewstaexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_REVIEWSTAEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewstausereg definition

CREATE TABLE `t_qcbd_reviewstausereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_REVIEWSTAUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewtype definition

CREATE TABLE `t_qcbd_reviewtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_REVIPE_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_REVIPE_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_REVIEWTYPE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_REVIEWTYPE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewtype_bit definition

CREATE TABLE `t_qcbd_reviewtype_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewtype_l definition

CREATE TABLE `t_qcbd_reviewtype_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_REVIPEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_REVIPEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewtype_r3 definition

CREATE TABLE `t_qcbd_reviewtype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewtype_u definition

CREATE TABLE `t_qcbd_reviewtype_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_REVIEWTYPE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewtypeexc definition

CREATE TABLE `t_qcbd_reviewtypeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_REVIEWTYPEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_reviewtypeusereg definition

CREATE TABLE `t_qcbd_reviewtypeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_REVIEWTYPEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_rproentry definition

CREATE TABLE `t_qcbd_rproentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATIONNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMACHININGTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCTIONORGID` bigint NOT NULL DEFAULT '0',
  `FWORKCENTERID` bigint NOT NULL DEFAULT '0',
  `FPURCHASEORGID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTIONWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FOPERATIONID` bigint NOT NULL DEFAULT '0',
  `FOPRCTRLSTRATEGY` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEBATCHQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHEADQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHEADUNITID` bigint NOT NULL DEFAULT '0',
  `FOPERATIONQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOPERATIONUNITID` bigint NOT NULL DEFAULT '0',
  `FISSPLIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPROCESSOVERLAP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSPLITQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMINWORKTIME` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTIMEUNIT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINOVERLAPTIME` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOVERLAPTIMEUNIT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOVERLAPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOVERLAPUNITID` bigint NOT NULL DEFAULT '0',
  `FPURCHASEGROUPID` bigint NOT NULL DEFAULT '0',
  `FPURCHASEPERSONID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYFIELD` bigint NOT NULL DEFAULT '0',
  `FTAXRATE` bigint NOT NULL DEFAULT '0',
  `FTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEMENTUNITID` bigint NOT NULL DEFAULT '0',
  `FSETTLEMENTCOEFFICIENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYMATERIALID` bigint NOT NULL DEFAULT '0',
  `FUPPERRATIO` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFLOORRATIO` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHECKTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIRSTCHECK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOPERATIONDESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_RPRORY_FID` (`FID`),
  KEY `IDX_QCBD_RPRORY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_rsubentry definition

CREATE TABLE `t_qcbd_rsubentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRESOURCEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCBD_RSUBRY_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCBD_RSUBRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sampplangroup definition

CREATE TABLE `t_qcbd_sampplangroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_SAMPPLANGROUP_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sampplangroup_l definition

CREATE TABLE `t_qcbd_sampplangroup_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_SLGL_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sampplangroup_r3 definition

CREATE TABLE `t_qcbd_sampplangroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sampscheme definition

CREATE TABLE `t_qcbd_sampscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLINGTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTIONLEVEL` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTRICTNESS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAQLVALUE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTIONTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `T_QCBD_SAMPSCHEME_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_QCBD_SAMPSCHEME_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_SAMPSCHEME_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sampscheme_bit definition

CREATE TABLE `t_qcbd_sampscheme_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sampscheme_l definition

CREATE TABLE `t_qcbd_sampscheme_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_SS_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sampscheme_r3 definition

CREATE TABLE `t_qcbd_sampscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sampscheme_u definition

CREATE TABLE `t_qcbd_sampscheme_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SAMPSCHEME_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sampschemeexc definition

CREATE TABLE `t_qcbd_sampschemeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SAMPSCHEMEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sampschemeusereg definition

CREATE TABLE `t_qcbd_sampschemeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SAMPSCHEMEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_schemeproj definition

CREATE TABLE `t_qcbd_schemeproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHECKITEMSID` bigint NOT NULL DEFAULT '0',
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHECKCONTENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKMETHODID` bigint NOT NULL DEFAULT '0',
  `FCHECKBASISID` bigint NOT NULL DEFAULT '0',
  `FCHECKINSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FCHECKFREQID` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATCHFLAGID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FJOINDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTORID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FSTDENTRYID` bigint NOT NULL DEFAULT '0',
  `FIMPORTSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCBD_SCHEOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCBD_SCHEOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scoregrade definition

CREATE TABLE `t_qcbd_scoregrade` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_SCORDE_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_SCORDE_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_SCOREGRADE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_SCOREGRADE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scoregrade_bit definition

CREATE TABLE `t_qcbd_scoregrade_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scoregrade_l definition

CREATE TABLE `t_qcbd_scoregrade_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_SCORDEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_SCORDEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scoregrade_r3 definition

CREATE TABLE `t_qcbd_scoregrade_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scoregrade_u definition

CREATE TABLE `t_qcbd_scoregrade_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SCOREGRADE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scoregradeexc definition

CREATE TABLE `t_qcbd_scoregradeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SCOREGRADEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scoregradeusereg definition

CREATE TABLE `t_qcbd_scoregradeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SCOREGRADEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scorentry definition

CREATE TABLE `t_qcbd_scorentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `fstartvalue` bigint DEFAULT NULL,
  `fendvalue` bigint DEFAULT NULL,
  `FSCOREGRADEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_SCORRY_FID` (`FID`),
  KEY `IDX_QCBD_SCORRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scorescheme definition

CREATE TABLE `t_qcbd_scorescheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_SCORME_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_SCORME_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_SCORESCHEME_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_SCORESCHEME_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scorescheme_bit definition

CREATE TABLE `t_qcbd_scorescheme_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scorescheme_l definition

CREATE TABLE `t_qcbd_scorescheme_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_SCORMEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_SCORMEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scorescheme_r3 definition

CREATE TABLE `t_qcbd_scorescheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scorescheme_u definition

CREATE TABLE `t_qcbd_scorescheme_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SCORESCHEME_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scoreschemeexc definition

CREATE TABLE `t_qcbd_scoreschemeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SCORESCHEMEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_scoreschemeusereg definition

CREATE TABLE `t_qcbd_scoreschemeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SCORESCHEMEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_searchdeepentry definition

CREATE TABLE `t_qcbd_searchdeepentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSEARCHDEEPLEVEL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIBE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGESTD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_SEARRY_FID` (`FID`),
  KEY `IDX_QCBD_SEARRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_seriouslevel definition

CREATE TABLE `t_qcbd_seriouslevel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_SERIEL_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_SERIEL_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_SERIOUSLEVEL_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_SERIOUSLEVEL_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_seriouslevel_bit definition

CREATE TABLE `t_qcbd_seriouslevel_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_seriouslevel_l definition

CREATE TABLE `t_qcbd_seriouslevel_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_SERIELL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_SERIELL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_seriouslevel_r3 definition

CREATE TABLE `t_qcbd_seriouslevel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_seriouslevel_u definition

CREATE TABLE `t_qcbd_seriouslevel_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SERIOUSLEVEL_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_seriouslevelexc definition

CREATE TABLE `t_qcbd_seriouslevelexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SERIOUSLEVELEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_seriouslevelusereg definition

CREATE TABLE `t_qcbd_seriouslevelusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SERIOUSLEVELUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_serlevelscheme definition

CREATE TABLE `t_qcbd_serlevelscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FSERIOUSMAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHAPPENRATEMAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSEARCHDEEPMAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSERIOUSLEVELMAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMMENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_SERLME_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_SERLME_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_SERLEVELSCHEME_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_SERLEVELSCHEME_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_serlevelscheme_bit definition

CREATE TABLE `t_qcbd_serlevelscheme_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_serlevelscheme_l definition

CREATE TABLE `t_qcbd_serlevelscheme_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_SERLMEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_SERLMEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_serlevelscheme_r3 definition

CREATE TABLE `t_qcbd_serlevelscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_serlevelscheme_u definition

CREATE TABLE `t_qcbd_serlevelscheme_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SERLEVELSCHEME_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_serlevelschemeexc definition

CREATE TABLE `t_qcbd_serlevelschemeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SERLEVELSCHEMEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_serlevelschemeusereg definition

CREATE TABLE `t_qcbd_serlevelschemeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SERLEVELSCHEMEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_suspicious definition

CREATE TABLE `t_qcbd_suspicious` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUSPICIOUSFILENO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_SUSPUS_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_SUSPUS_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_QCBD_SUSPUS_FCREATEORGID` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_SUSPICIOUS_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_SUSPICIOUS_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_suspicious_bit definition

CREATE TABLE `t_qcbd_suspicious_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_suspicious_l definition

CREATE TABLE `t_qcbd_suspicious_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_SUSPUSL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_SUSPUSL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_suspicious_r3 definition

CREATE TABLE `t_qcbd_suspicious_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_suspicious_u definition

CREATE TABLE `t_qcbd_suspicious_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SUSPICIOUS_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_suspiciousentry definition

CREATE TABLE `t_qcbd_suspiciousentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FAUXPTYID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FBATCHNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMANUFACTURER` bigint NOT NULL DEFAULT '0',
  `FSERIALNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_SUSPRY_FID` (`FID`),
  KEY `IDX_QCBD_SUSPRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCBD_SUSPRY_FMATERIALID` (`FMATERIALID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_suspiciousexc definition

CREATE TABLE `t_qcbd_suspiciousexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SUSPICIOUSEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_suspiciousgrp definition

CREATE TABLE `t_qcbd_suspiciousgrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_SUSPRP_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_SUSPRP_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_suspiciousgrp_l definition

CREATE TABLE `t_qcbd_suspiciousgrp_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_SUSPRPL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_SUSPRPL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_suspiciousgrp_r3 definition

CREATE TABLE `t_qcbd_suspiciousgrp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_suspicioususereg definition

CREATE TABLE `t_qcbd_suspicioususereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_SUSPICIOUSUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sysconfig definition

CREATE TABLE `t_qcbd_sysconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_SYSCIG_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_SYSCIG_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sysconfig_l definition

CREATE TABLE `t_qcbd_sysconfig_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_SYSCIGL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_SYSCIGL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sysconfig_r3 definition

CREATE TABLE `t_qcbd_sysconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_sysconfigentry definition

CREATE TABLE `t_qcbd_sysconfigentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FVALUE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FATTRKEYCAPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_SYSCRY_FID` (`FID`),
  KEY `IDX_QCBD_SYSCRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_tablepk definition

CREATE TABLE `t_qcbd_tablepk` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_TABLPK_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_TABLPK_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_tablepk_l definition

CREATE TABLE `t_qcbd_tablepk_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_TABLPKL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_TABLPKL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_tablepk_r3 definition

CREATE TABLE `t_qcbd_tablepk_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_tabpk_entry definition

CREATE TABLE `t_qcbd_tabpk_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTABKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_TABPPK_FID` (`FID`),
  KEY `IDX_QCBD_TABPPK_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_target_conf definition

CREATE TABLE `t_qcbd_target_conf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FENTITYID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_TARGET_CONF` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_target_conf_entry definition

CREATE TABLE `t_qcbd_target_conf_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECIMALFIELD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_TARGET_CONF_ENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_topictype definition

CREATE TABLE `t_qcbd_topictype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_TOPIPE_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_TOPIPE_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_TOPICTYPE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_TOPICTYPE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_topictype_bit definition

CREATE TABLE `t_qcbd_topictype_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_topictype_l definition

CREATE TABLE `t_qcbd_topictype_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_TOPIPEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_TOPIPEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_topictype_r3 definition

CREATE TABLE `t_qcbd_topictype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_topictype_u definition

CREATE TABLE `t_qcbd_topictype_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_TOPICTYPE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_topictypeexc definition

CREATE TABLE `t_qcbd_topictypeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_TOPICTYPEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_topictypegrp definition

CREATE TABLE `t_qcbd_topictypegrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_TOPIRP_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_TOPIRP_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_topictypegrp_l definition

CREATE TABLE `t_qcbd_topictypegrp_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_TOPIRPL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_TOPIRPL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_topictypegrp_r3 definition

CREATE TABLE `t_qcbd_topictypegrp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_topictypeusereg definition

CREATE TABLE `t_qcbd_topictypeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_TOPICTYPEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_tra_mulpmd definition

CREATE TABLE `t_qcbd_tra_mulpmd` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_TRA_FID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactype definition

CREATE TABLE `t_qcbd_transactype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FJOININSPECTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSPITEMMODFLG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSPSAMPPROJFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCKVALFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAMPNUMRULE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUSPICIOUSRULE` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPRESET` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FMATCHMATTYPE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATCHPRIORITY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_TRANPE_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_TRANPE_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_TRANSACTYPE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_TRANSACTYPE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactype_bit definition

CREATE TABLE `t_qcbd_transactype_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactype_l definition

CREATE TABLE `t_qcbd_transactype_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_TRANPEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_TRANPEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactype_r3 definition

CREATE TABLE `t_qcbd_transactype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactype_u definition

CREATE TABLE `t_qcbd_transactype_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_TRANSACTYPE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactypeexc definition

CREATE TABLE `t_qcbd_transactypeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_TRANSACTYPEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactypegrp definition

CREATE TABLE `t_qcbd_transactypegrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FTEXTFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_TRANRP_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_TRANRP_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_TRANSACTYPEGRP_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_TRANSACTYPEGRP_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactypegrp_bit definition

CREATE TABLE `t_qcbd_transactypegrp_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactypegrp_l definition

CREATE TABLE `t_qcbd_transactypegrp_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_TRANRPL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_TRANRPL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactypegrp_r3 definition

CREATE TABLE `t_qcbd_transactypegrp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactypegrp_u definition

CREATE TABLE `t_qcbd_transactypegrp_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_TRANSACTYPEGRP_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactypegrpexc definition

CREATE TABLE `t_qcbd_transactypegrpexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_TRANSACTYPEGRPEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactypegrpusereg definition

CREATE TABLE `t_qcbd_transactypegrpusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_TRANSACTYPEGRPUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_transactypeusereg definition

CREATE TABLE `t_qcbd_transactypeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_TRANSACTYPEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_triggerset definition

CREATE TABLE `t_qcbd_triggerset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYSY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTRIGGEROBJID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTARGETOBJID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_TRIGET_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_TRIGET_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_triggerset_l definition

CREATE TABLE `t_qcbd_triggerset_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_TRIGETL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_TRIGETL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_triggerset_r3 definition

CREATE TABLE `t_qcbd_triggerset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_triggersetentry definition

CREATE TABLE `t_qcbd_triggersetentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTRIGGERMODE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FTRIGGER` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCLOUDID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLASSNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETHODNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRIGGERSCENE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FTRIGGERENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_TRIGRY_FID` (`FID`),
  KEY `IDX_QCBD_TRIGRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_unquaprobgrp definition

CREATE TABLE `t_qcbd_unquaprobgrp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_UG_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_unquaprobgrp_l definition

CREATE TABLE `t_qcbd_unquaprobgrp_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_UG_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_unquaprobgrp_r3 definition

CREATE TABLE `t_qcbd_unquaprobgrp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_unquaproblem definition

CREATE TABLE `t_qcbd_unquaproblem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATETIME` datetime DEFAULT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_UP_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_QCBD_UNQUAPROBLEM_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_UNQUAPROBLEM_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_unquaproblem_bit definition

CREATE TABLE `t_qcbd_unquaproblem_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_unquaproblem_l definition

CREATE TABLE `t_qcbd_unquaproblem_l` (
  `FPKID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_UP_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_unquaproblem_r3 definition

CREATE TABLE `t_qcbd_unquaproblem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_unquaproblem_u definition

CREATE TABLE `t_qcbd_unquaproblem_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_UNQUAPROBLEM_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_unquaproblemexc definition

CREATE TABLE `t_qcbd_unquaproblemexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_UNQUAPROBLEMEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_unquaproblemusereg definition

CREATE TABLE `t_qcbd_unquaproblemusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_UNQUAPROBLEMUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_viewcomentry definition

CREATE TABLE `t_qcbd_viewcomentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FISPERSONFAIL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWINTELLI` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISADMIN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_VIEWRY_FID` (`FID`),
  KEY `IDX_QCBD_VIEWRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_viewcommit definition

CREATE TABLE `t_qcbd_viewcommit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_VIEWIT_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_VIEWIT_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_VIEWCOMMIT_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_VIEWCOMMIT_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_viewcommit_bit definition

CREATE TABLE `t_qcbd_viewcommit_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_viewcommit_l definition

CREATE TABLE `t_qcbd_viewcommit_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_VIEWITL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_VIEWITL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_viewcommit_r3 definition

CREATE TABLE `t_qcbd_viewcommit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_viewcommit_u definition

CREATE TABLE `t_qcbd_viewcommit_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_VIEWCOMMIT_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_viewcommitexc definition

CREATE TABLE `t_qcbd_viewcommitexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_VIEWCOMMITEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_viewcommitusereg definition

CREATE TABLE `t_qcbd_viewcommitusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_VIEWCOMMITUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_viewstdentry definition

CREATE TABLE `t_qcbd_viewstdentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREVIEWTYPEID` bigint NOT NULL DEFAULT '0',
  `FREVIEWITEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWMETHED` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWSTANDARD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDARDVALUE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_VIEWRYSTD_FID` (`FID`),
  KEY `IDX_QCBD_VIEWRYSTD_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstct_rle definition

CREATE TABLE `t_qcbd_wdstct_rle` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONTACCEPTNUM` int NOT NULL DEFAULT '0',
  `FACCEPTVALIDDT` int NOT NULL DEFAULT '0',
  `FCONTINSPECTNUM` int NOT NULL DEFAULT '0',
  `FREJECTVALIDDT` int NOT NULL DEFAULT '0',
  `FREJECTNUM` int NOT NULL DEFAULT '0',
  `FCURRENTSTAGEID` bigint NOT NULL DEFAULT '0',
  `FNEXTSTAGEID` bigint NOT NULL DEFAULT '0',
  `FRNEXTSTAGEID` bigint NOT NULL DEFAULT '0',
  `FSTARTTAGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAPPLANID` bigint NOT NULL DEFAULT '0',
  `FSTARTCONDITION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRSTARTCONDITION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_WDSTCT_FID` (`FID`),
  KEY `IDX_QCBD_WDSTCT_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstct_rule definition

CREATE TABLE `t_qcbd_wdstct_rule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FRESETPRD` int NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_WS_RULE_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_WS_RULE_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCBD_WDSTCT_RULE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCBD_WDSTCT_RULE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstct_rule_bit definition

CREATE TABLE `t_qcbd_wdstct_rule_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstct_rule_l definition

CREATE TABLE `t_qcbd_wdstct_rule_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_WSL_RULE_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_WSL_RULE_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstct_rule_r3 definition

CREATE TABLE `t_qcbd_wdstct_rule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstct_rule_u definition

CREATE TABLE `t_qcbd_wdstct_rule_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_WDSTCT_RULE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstct_ruleexc definition

CREATE TABLE `t_qcbd_wdstct_ruleexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_WDSTCT_RULEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstct_ruleusereg definition

CREATE TABLE `t_qcbd_wdstct_ruleusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCBD_WDSTCT_RULEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstct_stg definition

CREATE TABLE `t_qcbd_wdstct_stg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_WS_STG_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCBD_WS_STG_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstct_stg_l definition

CREATE TABLE `t_qcbd_wdstct_stg_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCBD_WSL_STG_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCBD_WSL_STG_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstct_stg_r3 definition

CREATE TABLE `t_qcbd_wdstct_stg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wdstrt_rec definition

CREATE TABLE `t_qcbd_wdstrt_rec` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FOPRWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FWSRULEID` bigint NOT NULL DEFAULT '0',
  `FCURSTAGEID` bigint NOT NULL DEFAULT '0',
  `FNEXSTAGEID` bigint NOT NULL DEFAULT '0',
  `FEFFDTEND` datetime DEFAULT NULL,
  `FSAPPLANID` bigint NOT NULL DEFAULT '0',
  `FJPENDTM` datetime DEFAULT NULL,
  `FJPLEFTNUM` bigint NOT NULL DEFAULT '0',
  `FSRCBILL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINSPECTAUDITDATE` datetime DEFAULT NULL,
  `FINSPECTPROID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCBD_WDSTRT_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCBD_WDSTRT_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcbd_wsrec_ety definition

CREATE TABLE `t_qcbd_wsrec_ety` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLENTRY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITDTFST` datetime DEFAULT NULL,
  `FSAMPLINGRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FRECVDATE` datetime DEFAULT NULL,
  `FDFWSSTAGEID` bigint NOT NULL DEFAULT '0',
  `FETYBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FETYWSRULEID` bigint NOT NULL DEFAULT '0',
  `FAUDITDTLAST` datetime DEFAULT NULL,
  `FUNAUDITDTLAST` datetime DEFAULT NULL,
  `FDELETEDT` datetime DEFAULT NULL,
  `FAUDITNUM` int NOT NULL DEFAULT '0',
  `FETYINSPECTPROID` bigint NOT NULL DEFAULT '0',
  `FWSSTAGEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCBD_WSREEC_FID` (`FID`),
  KEY `IDX_QCBD_WSREEC_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnd_seriousentry definition

CREATE TABLE `t_qcnd_seriousentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSERIOUSLEVEL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIBE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGESTD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCND_SERIRY_FID` (`FID`),
  KEY `IDX_QCND_SERIRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_appinsentry definition

CREATE TABLE `t_qcnp_appinsentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FMATERIALCFGID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FAPPLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTYID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMAINBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FINVORGID` bigint NOT NULL DEFAULT '0',
  `FOWNERTYPEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FKEEPERTYPEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEEPERID` bigint NOT NULL DEFAULT '0',
  `FINVSTATUSID` bigint NOT NULL DEFAULT '0',
  `FINVTYPEID` bigint NOT NULL DEFAULT '0',
  `FINVUNITID` bigint NOT NULL DEFAULT '0',
  `FASSUNITID` bigint NOT NULL DEFAULT '0',
  `FEXECCASENUM` bigint NOT NULL DEFAULT '0',
  `FATTCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBATTCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVFREZSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FNEWARRDATE` datetime DEFAULT NULL,
  `FPRODUCTDATE` datetime DEFAULT NULL,
  `FARRDATE` datetime DEFAULT NULL,
  `FCHECKCOMQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBCHECKCOMQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHECKCOMSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOWINVID` bigint NOT NULL DEFAULT '0',
  `FISFREZZINV` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCHECK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCNP_APPIRY_FID` (`FID`),
  KEY `IDX_QCNP_APPIRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCNP_APPIRY_FMAT` (`FMATERIALID`),
  KEY `IDX_QCNP_APPIRY_FMATCFG` (`FMATERIALCFGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_appinsentry_lk definition

CREATE TABLE `t_qcnp_appinsentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_appinsentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_applyinssub definition

CREATE TABLE `t_qcnp_applyinssub` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FHANDMETHODID` bigint NOT NULL DEFAULT '0',
  `FDEALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDEALQTYBASE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVMODQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVMODQTYBASE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNEWARRDATE` datetime DEFAULT NULL,
  `FINSPRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCNP_APPLUB_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCNP_APPLUB_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_baddeal definition

CREATE TABLE `t_qcnp_baddeal` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPEDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FHANDDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCNP_BADDAL_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCNP_BADDAL_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_baddeal_l definition

CREATE TABLE `t_qcnp_baddeal_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCNP_BADDALL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCNP_BADDALL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_baddeal_lk definition

CREATE TABLE `t_qcnp_baddeal_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_baddeal_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_baddeal_tc definition

CREATE TABLE `t_qcnp_baddeal_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCNP_BADDEAL_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCNP_BADDEAL_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_baddeal_wb definition

CREATE TABLE `t_qcnp_baddeal_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcnp_baddeal_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_baddealentry definition

CREATE TABLE `t_qcnp_baddealentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FUNQUALIREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNQUALITYPE` bigint NOT NULL DEFAULT '0',
  `FHANDMETHED` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONORG` bigint NOT NULL DEFAULT '0',
  `FRESPONDEPART` bigint NOT NULL DEFAULT '0',
  `FRESPONUSER` bigint NOT NULL DEFAULT '0',
  `FHANDTIME` datetime DEFAULT NULL,
  `FUNQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDINSPEC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNQUALITIME` datetime DEFAULT NULL,
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FJOINBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FDRAWCAPNUM` int NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCEDATE` datetime DEFAULT NULL,
  `FEXPIRYDATE` datetime DEFAULT NULL,
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FDRAWPRONOTICENUM` int NOT NULL DEFAULT '0',
  `FDRAWQCTOPICNUM` int NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FINVSTATUSID` bigint NOT NULL DEFAULT '0',
  `FINVTYPEID` bigint NOT NULL DEFAULT '0',
  `FINVORGID` bigint NOT NULL DEFAULT '0',
  `FOWNERTYPEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FKEEPERTYPEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEEPERID` bigint NOT NULL DEFAULT '0',
  `FINVUNITID` bigint NOT NULL DEFAULT '0',
  `FASSUNITID` bigint NOT NULL DEFAULT '0',
  `FNOWINVID` bigint NOT NULL DEFAULT '0',
  `FNEWHANDID` bigint NOT NULL DEFAULT '0',
  `FNEWARRDATE` datetime DEFAULT NULL,
  `FLOTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCNP_BADDRY_FID` (`FID`),
  KEY `IDX_QCNP_BADDRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCNP_BADDRY_FMAT` (`FMATERIELID`),
  KEY `IDX_QCNP_BADDRY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_baddealentry_lk definition

CREATE TABLE `t_qcnp_baddealentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_baddealentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_iminv_entry definition

CREATE TABLE `t_qcnp_iminv_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINVENTORYID` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FAUXPTYID` bigint NOT NULL DEFAULT '0',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FINVSTATUSID` bigint NOT NULL DEFAULT '0',
  `FINVTYPEID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESERVQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAVBQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FPRODUCEDATE` datetime DEFAULT NULL,
  `FEXPIRYDATE` datetime DEFAULT NULL,
  `FINVORGID` bigint NOT NULL DEFAULT '0',
  `FINSPRES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYORGID` bigint NOT NULL DEFAULT '0',
  `FINSPECORGID` bigint NOT NULL DEFAULT '0',
  `FINVUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASERESERVQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEAVBQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNIT2NDID` bigint NOT NULL DEFAULT '0',
  `FQTY2ND` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESERV2NDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAVB2NDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOWNERTYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FKEEPERTYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEEPERID` bigint NOT NULL DEFAULT '0',
  `FBASEAPPLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCNP_IMINNV_FID` (`FID`),
  KEY `IDX_QCNP_IMINNV_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_imminv definition

CREATE TABLE `t_qcnp_imminv` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FEXEDATE` datetime DEFAULT NULL,
  `FINVIMPSCHEMEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCNP_IMMINV_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCNP_IMMINV_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_insappentry definition

CREATE TABLE `t_qcnp_insappentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCEDATE` datetime DEFAULT NULL,
  `FEXPIRYDATE` datetime DEFAULT NULL,
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FNOWINVSCHID` bigint NOT NULL DEFAULT '0',
  `FINVORGID` bigint NOT NULL DEFAULT '0',
  `FOWNERTYPEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FKEEPERTYPEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEEPERID` bigint NOT NULL DEFAULT '0',
  `FINVSTATUSID` bigint NOT NULL DEFAULT '0',
  `FINVTYPEID` bigint NOT NULL DEFAULT '0',
  `FINVUNITID` bigint NOT NULL DEFAULT '0',
  `FASSUNITID` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTDID` bigint NOT NULL DEFAULT '0',
  `FLOTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCNP_INSARY_FID` (`FID`),
  KEY `IDX_QCNP_INSARY_FSEQ` (`FSEQ`),
  KEY `IDX_QCNP_INSARY_FMAT` (`FMATERIELID`),
  KEY `IDX_QCNP_INSARY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_insappentry_lk definition

CREATE TABLE `t_qcnp_insappentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_insappentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspapplyproj definition

CREATE TABLE `t_qcnp_inspapplyproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHECKITEMSID` bigint NOT NULL DEFAULT '0',
  `FCHECKCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCHECKMETHODID` bigint NOT NULL DEFAULT '0',
  `FCHECKFREQID` bigint NOT NULL DEFAULT '0',
  `FCHECKBASISID` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKINSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATCHFLAGID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJOINDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTORID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FJOININSPBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FJOININSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCNP_INSPAPP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCNP_INSPAPP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspbill definition

CREATE TABLE `t_qcnp_inspbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPESTARTDATE` datetime DEFAULT NULL,
  `FINSPEENDDATE` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPECTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCNP_INSPLL_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCNP_INSPLL_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspbill_l definition

CREATE TABLE `t_qcnp_inspbill_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCNP_INSPLLL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCNP_INSPLLL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspbill_lk definition

CREATE TABLE `t_qcnp_inspbill_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_inspbill_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspbill_tc definition

CREATE TABLE `t_qcnp_inspbill_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCNP_INSPBILL_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCNP_INSPBILL_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspbill_wb definition

CREATE TABLE `t_qcnp_inspbill_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcnp_inspbill_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspecapply definition

CREATE TABLE `t_qcnp_inspecapply` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FQUALITYORG` bigint NOT NULL DEFAULT '0',
  `FAPPLYUSER` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FINSPECORGID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLCRETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPECTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCNP_INSPLY_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCNP_INSPLY_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspecapply_l definition

CREATE TABLE `t_qcnp_inspecapply_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCNP_INSPLYL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCNP_INSPLYL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspecapply_lk definition

CREATE TABLE `t_qcnp_inspecapply_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_inspecapply_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspecapply_tc definition

CREATE TABLE `t_qcnp_inspecapply_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCNP_INSPECAPPLY_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCNP_INSPECAPPLY_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspecapply_wb definition

CREATE TABLE `t_qcnp_inspecapply_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcnp_inspecapply_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspentry definition

CREATE TABLE `t_qcnp_inspentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPSCHEME` bigint NOT NULL DEFAULT '0',
  `FSAMPPERCENTAGE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFORMULA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRE` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONSTD` bigint NOT NULL DEFAULT '0',
  `FEMERGENCY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLYORG` bigint NOT NULL DEFAULT '0',
  `FSUPPLYDEP` bigint NOT NULL DEFAULT '0',
  `FPROPOSER` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FACSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FENTERRESULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAMPLINGRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLINGSIZEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUERECQTY` int NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTUNQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FSUBINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSPECTIONLOT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSAMPINGQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPINGUNQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPUQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWSSTAGEID` bigint NOT NULL DEFAULT '0',
  `FWSRULEID` bigint NOT NULL DEFAULT '0',
  `FINSPECTPROID` bigint NOT NULL DEFAULT '0',
  `FSHOWTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRINSQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRODUCEDATE` datetime DEFAULT NULL,
  `FEXPIRYDATE` datetime DEFAULT NULL,
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FINVORGID` bigint NOT NULL DEFAULT '0',
  `FOWNERTYPEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FKEEPERTYPEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEEPERID` bigint NOT NULL DEFAULT '0',
  `FINVSTATUSID` bigint NOT NULL DEFAULT '0',
  `FINVTYPEID` bigint NOT NULL DEFAULT '0',
  `FINVUNITID` bigint NOT NULL DEFAULT '0',
  `FASSUNITID` bigint NOT NULL DEFAULT '0',
  `FNEWARRDATE` datetime DEFAULT NULL,
  `FNOWINVID` bigint NOT NULL DEFAULT '0',
  `FLOTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCNP_INSPRY_FID` (`FID`),
  KEY `IDX_QCNP_INSPRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCNP_INSPRY_FMAT` (`FMATERIALID`),
  KEY `IDX_QCNP_INSPRY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspentry_l definition

CREATE TABLE `t_qcnp_inspentry_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCNP_INSPRYL_FENTRYID` (`FENTRYID`,`FLOCALEID`),
  KEY `IDX_QCNP_INSPRYL_FSUBCOMMENT` (`FSUBCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspentry_lk definition

CREATE TABLE `t_qcnp_inspentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_inspentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspresult definition

CREATE TABLE `t_qcnp_inspresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FASSBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCKMATERIALID` bigint NOT NULL DEFAULT '0',
  `FCKUNITID` bigint NOT NULL DEFAULT '0',
  `FCKBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FCKQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FASSBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FINSOBJID` bigint NOT NULL DEFAULT '0',
  `FEXECSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FCKHANDMETHED` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FCKNEWHANDID` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCNP_INSPLT_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCNP_INSPLT_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_QCNP_INSPRESULT_ASSBILL` (`FASSENTITYNUMBERID`,`FASSBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspresult_lk definition

CREATE TABLE `t_qcnp_inspresult_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_inspresult_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspresult_tc definition

CREATE TABLE `t_qcnp_inspresult_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCNP_INSPRESULT_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCNP_INSPRESULT_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspresult_wb definition

CREATE TABLE `t_qcnp_inspresult_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcnp_inspresult_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspsubresproj definition

CREATE TABLE `t_qcnp_inspsubresproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSPECTIONITEM` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINSPECTMETHOD` bigint NOT NULL DEFAULT '0',
  `FINSPECTFREQ` bigint NOT NULL DEFAULT '0',
  `FINSPECTBASIS` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTINSTRUCT` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECUNITID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPARISON` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJACCEPTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJREJECTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJUNQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJCKRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMAXVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAVEVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDEVIA` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHOOSESAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXAMPLES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCITEMENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCITEMENTRYID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCNP_INSPOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCNP_INSPOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspsubresproj_l definition

CREATE TABLE `t_qcnp_inspsubresproj_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCNP_INSPOJL_FDETAILID` (`FDETAILID`,`FLOCALEID`),
  KEY `IDX_QCNP_INSPOJL_COMMENT` (`FINSPECCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspsubresrela definition

CREATE TABLE `t_qcnp_inspsubresrela` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXMAPLEID` bigint NOT NULL DEFAULT '0',
  `FSAMP_SEQ` int NOT NULL DEFAULT '0',
  `FVALDETER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALRATSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCNP_INSPLA_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCNP_INSPLA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inspsubressamp definition

CREATE TABLE `t_qcnp_inspsubressamp` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSAMPLENUMID` bigint NOT NULL DEFAULT '0',
  `FSAMPLENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLERES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCNP_INSPMP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCNP_INSPMP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_inv_ip_mod_r3 definition

CREATE TABLE `t_qcnp_inv_ip_mod_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_invapplyins definition

CREATE TABLE `t_qcnp_invapplyins` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FQUALITYORGID` bigint NOT NULL DEFAULT '0',
  `FAPPLYUSERID` bigint NOT NULL DEFAULT '0',
  `FINSPECORGID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCNP_INVANS_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCNP_INVANS_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_invapplyins_l definition

CREATE TABLE `t_qcnp_invapplyins_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCNP_INVANSL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCNP_INVANSL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_invapplyins_lk definition

CREATE TABLE `t_qcnp_invapplyins_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_invapplyins_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_invapplyins_tc definition

CREATE TABLE `t_qcnp_invapplyins_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCNP_INVAPPLYINS_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCNP_INVAPPLYINS_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_invapplyins_wb definition

CREATE TABLE `t_qcnp_invapplyins_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcnp_invapplyins_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_invinsp_inf definition

CREATE TABLE `t_qcnp_invinsp_inf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATASOURCE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FINVENTORYID` bigint NOT NULL DEFAULT '0',
  `FLASTINSPDATE` datetime DEFAULT NULL,
  `FINSPRES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCHECK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXESCHEMEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCNP_INVINSP_FMAT` (`FMATERIALID`),
  KEY `IDX_QCNP_INVINSP_FINV` (`FINVENTORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_invinsp_inf_r3 definition

CREATE TABLE `t_qcnp_invinsp_inf_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_joininspect definition

CREATE TABLE `t_qcnp_joininspect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLCRETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCNP_JOINCT_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCNP_JOINCT_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_joininspect_lk definition

CREATE TABLE `t_qcnp_joininspect_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_joininspect_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_joininspect_tc definition

CREATE TABLE `t_qcnp_joininspect_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCNP_JOININSPECT_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCNP_JOININSPECT_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_joininspect_wb definition

CREATE TABLE `t_qcnp_joininspect_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcnp_joininspect_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_joininspentry definition

CREATE TABLE `t_qcnp_joininspentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FMATERIALCFGID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONSTDID` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTYID` bigint NOT NULL DEFAULT '0',
  `FSUPPLYORGID` bigint NOT NULL DEFAULT '0',
  `FSUPPLYDEPID` bigint NOT NULL DEFAULT '0',
  `FPROPOSERID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCSYSTEM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FMAINBILLID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FRINSQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCNP_JOINRY_FID` (`FID`),
  KEY `IDX_QCNP_JOINRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCNP_JOINRY_FMAT` (`FMATERIALID`),
  KEY `IDX_QCNP_JOINRY_FMATCFG` (`FMATERIALCFGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_joininspentry_lk definition

CREATE TABLE `t_qcnp_joininspentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_joininspentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_joininspproj definition

CREATE TABLE `t_qcnp_joininspproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSPECTIONITEMID` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINSPECTMETHODID` bigint NOT NULL DEFAULT '0',
  `FINSPECTFREQID` bigint NOT NULL DEFAULT '0',
  `FINSPECTBASISID` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTINSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECUNITID` bigint NOT NULL DEFAULT '0',
  `FCOMPARISONID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJACCEPTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJUNQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJCKRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHOOSESAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXAMPLES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTORID` bigint NOT NULL DEFAULT '0',
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCITEMENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCITEMENTRYID` bigint NOT NULL DEFAULT '0',
  `FSTDENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCNP_JOINOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCNP_JOINOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_joininspproj_lk definition

CREATE TABLE `t_qcnp_joininspproj_lk` (
  `FDetailId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_joininspproj_lk_fk` (`FDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_joininsprela_n definition

CREATE TABLE `t_qcnp_joininsprela_n` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXMAPLEID` bigint NOT NULL DEFAULT '0',
  `FSAMP_SEQ` int NOT NULL DEFAULT '0',
  `FVALDETER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALRATSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCNP_JOINLA_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCNP_JOINLA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_joininspsamp_n definition

CREATE TABLE `t_qcnp_joininspsamp_n` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSAMPLENUMID` bigint NOT NULL DEFAULT '0',
  `FSAMPLENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLERES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCNP_JOINMP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCNP_JOINMP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_resultentry definition

CREATE TABLE `t_qcnp_resultentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFYBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCENTITYNUMBERID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITUNITID` bigint NOT NULL DEFAULT '0',
  `FUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDSRCENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDSRCBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FDSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FASSIGNBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPLINGRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDSRCENTRYNUMBER` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCNP_RESURY_FID` (`FID`),
  KEY `IDX_QCNP_RESURY_FSEQ` (`FSEQ`),
  KEY `IDX_QCNP_RESULTENTRY_FSRCBILLENTRYID` (`FSRCBILLENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcnp_resultentry_lk definition

CREATE TABLE `t_qcnp_resultentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcnp_resultentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_acceptrecord definition

CREATE TABLE `t_qcp_acceptrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_ACCERD_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCP_ACCERD_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_acceptrecord_entry definition

CREATE TABLE `t_qcp_acceptrecord_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FMATERIALCFGID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTYID` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_ACCERD_FID` (`FID`),
  KEY `IDX_QCP_ACCERD_FSEQ` (`FSEQ`),
  KEY `IDX_QCP_ACCERD_FMAT` (`FMATERIALCFGID`),
  KEY `IDX_QCP_ACCERD_FSRCBILLENTRYID` (`FSRCBILLENTRYID`),
  KEY `IDX_QCP_ACCERD_ENTRY_FMATID` (`FMATERIALID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_acceptrecord_entry_l definition

CREATE TABLE `t_qcp_acceptrecord_entry_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_ACCERDL_FENTRYID` (`FENTRYID`,`FLOCALEID`),
  KEY `IDX_QCP_ACCERDL_FSUBCOMMENT` (`FSUBCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_acceptrecord_entry_lk definition

CREATE TABLE `t_qcp_acceptrecord_entry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_acceptrecord_entry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_acceptrecord_lk definition

CREATE TABLE `t_qcp_acceptrecord_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_acceptrecord_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_acceptrecord_tc definition

CREATE TABLE `t_qcp_acceptrecord_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCP_ACCEPTRECORD_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCP_ACCEPTRECORD_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_acceptrecord_wb definition

CREATE TABLE `t_qcp_acceptrecord_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcp_acceptrecord_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddeal definition

CREATE TABLE `t_qcp_baddeal` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPEDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FHANDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_BADDEAL_IDNO` (`FORGID`,`FBILLNO` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddeal_l definition

CREATE TABLE `t_qcp_baddeal_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_BADDEAL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddeal_lk definition

CREATE TABLE `t_qcp_baddeal_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_baddeal_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddeal_tc definition

CREATE TABLE `t_qcp_baddeal_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCP_BADDEAL_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCP_BADDEAL_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddeal_wb definition

CREATE TABLE `t_qcp_baddeal_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcp_baddeal_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddealent_lk definition

CREATE TABLE `t_qcp_baddealent_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_baddealent_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddealentry definition

CREATE TABLE `t_qcp_baddealentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FUNQUALIREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNQUALITYPE` bigint NOT NULL DEFAULT '0',
  `FHANDMETHED` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONORG` bigint NOT NULL DEFAULT '0',
  `FRESPONDEPART` bigint NOT NULL DEFAULT '0',
  `FRESPONUSER` bigint NOT NULL DEFAULT '0',
  `FHANDTIME` datetime DEFAULT NULL,
  `FUNQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDINSPEC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNQUALITIME` datetime DEFAULT NULL,
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCORRECTANDPREVENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJOINBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FDRAWCAPNUM` int NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_BADDEALENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddealentry_a definition

CREATE TABLE `t_qcp_baddealentry_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIER` bigint NOT NULL DEFAULT '0',
  `FORDERNUM` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMANUTIME` datetime DEFAULT NULL,
  `FEXPIRETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_BADDEALENTRY_A` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddealentry_c definition

CREATE TABLE `t_qcp_baddealentry_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FOPRWORKSHOP` bigint NOT NULL DEFAULT '0',
  `FOPRWORKCENTER` bigint NOT NULL DEFAULT '0',
  `FOPROPERATION` bigint NOT NULL DEFAULT '0',
  `FMANUFACTUREORDER` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FREPORDERNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQROUTEID` bigint NOT NULL DEFAULT '0',
  `FOPERATIONNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCTIONWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FPROCESSSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_BADDEALENTRY_C` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddealentry_i definition

CREATE TABLE `t_qcp_baddealentry_i` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FEXPIRYDATE` datetime DEFAULT NULL,
  `FPRODUCEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_BADDEALENTRY_I` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddealentry_s definition

CREATE TABLE `t_qcp_baddealentry_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FCUSTOMER` bigint NOT NULL DEFAULT '0',
  `FORDERNUM` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_BADDEALENTRY_S` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddealentry_w definition

CREATE TABLE `t_qcp_baddealentry_w` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_BADDRYW_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddealn definition

CREATE TABLE `t_qcp_baddealn` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPEDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FHANDDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_BADDLN_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCP_BADDLN_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddealn_l definition

CREATE TABLE `t_qcp_baddealn_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_BADDLNL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCP_BADDLNL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_baddealnentry definition

CREATE TABLE `t_qcp_baddealnentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FUNQUALIREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNQUALITYPE` bigint NOT NULL DEFAULT '0',
  `FHANDMETHED` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONORG` bigint NOT NULL DEFAULT '0',
  `FRESPONDEPART` bigint NOT NULL DEFAULT '0',
  `FRESPONUSER` bigint NOT NULL DEFAULT '0',
  `FHANDTIME` datetime DEFAULT NULL,
  `FUNQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDINSPEC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNQUALITIME` datetime DEFAULT NULL,
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FJOINBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FDRAWCAPNUM` int NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIER` bigint NOT NULL DEFAULT '0',
  `FMANUTIME` datetime DEFAULT NULL,
  `FEXPIRETIME` datetime DEFAULT NULL,
  `FORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FDRAWPRONOTICENUM` int NOT NULL DEFAULT '0',
  `FDRAWQCTOPICNUM` int NOT NULL DEFAULT '0',
  `FNEWHANDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_BADDRY_FID` (`FID`),
  KEY `IDX_QCP_BADDRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCP_BADDRY_FMAT` (`FMATERIELID`),
  KEY `IDX_QCP_BADDRY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_decisubentity definition

CREATE TABLE `t_qcp_decisubentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPINGQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPINGUNQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESTRUCTIVEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESUNDERTAKER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAKERORG` bigint NOT NULL DEFAULT '0',
  `FSUBSUPPLIER` bigint NOT NULL DEFAULT '0',
  `FINSPECTRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBBASEUNIT` bigint NOT NULL DEFAULT '0',
  `FUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_DECITY_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCP_DECITY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_decisubentity_l definition

CREATE TABLE `t_qcp_decisubentity_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_DECISUBENTITY_L` (`FID`,`FLOCALEID`),
  KEY `IDX_QCP_DECITYL_FDETAILID` (`FLOCALEID`),
  KEY `IDX_QCP_DECITYL_FSUBCOMMENT` (`FSUBCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_insappnentry definition

CREATE TABLE `t_qcp_insappnentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMANUTIME` datetime DEFAULT NULL,
  `FEXPIRETIME` datetime DEFAULT NULL,
  `FORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIER` bigint NOT NULL DEFAULT '0',
  `FORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FAUTHORIZEOBJID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_INSARY_FID` (`FID`),
  KEY `IDX_QCP_INSARY_FSEQ` (`FSEQ`),
  KEY `IDX_QCP_INSARY_FMAT` (`FMATERIELID`),
  KEY `IDX_QCP_INSARY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspapplyproj definition

CREATE TABLE `t_qcp_inspapplyproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHECKITEMSID` bigint NOT NULL DEFAULT '0',
  `FCHECKCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCHECKMETHODID` bigint NOT NULL DEFAULT '0',
  `FCHECKFREQID` bigint NOT NULL DEFAULT '0',
  `FCHECKBASISID` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKINSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATCHFLAGID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJOINDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTORID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FJOININSPBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FJOININSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSAPPPOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCP_INSAPPPOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspapplyproj_lk definition

CREATE TABLE `t_qcp_inspapplyproj_lk` (
  `FDetailId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_inspapplyproj_lk_fk` (`FDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspbill definition

CREATE TABLE `t_qcp_inspbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPESTARTDATE` datetime DEFAULT NULL,
  `FINSPEENDDATE` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPECTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_INSPLL_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCP_INSPLL_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspbill_l definition

CREATE TABLE `t_qcp_inspbill_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_INSPLLL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCP_INSPLLL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapply definition

CREATE TABLE `t_qcp_inspecapply` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FQUALITYORG` bigint NOT NULL DEFAULT '0',
  `FAPPLYUSER` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FFINISHTIME` datetime DEFAULT NULL,
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECORGID` bigint NOT NULL DEFAULT '0',
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_INSPECAPPLY_IDNO` (`FORGID`,`FBILLNO` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapply_l definition

CREATE TABLE `t_qcp_inspecapply_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_INSPECAPPLY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapply_lk definition

CREATE TABLE `t_qcp_inspecapply_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_inspecapply_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapply_tc definition

CREATE TABLE `t_qcp_inspecapply_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCP_INSPECAPPLY_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCP_INSPECAPPLY_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapply_wb definition

CREATE TABLE `t_qcp_inspecapply_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcp_inspecapply_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapplyentry definition

CREATE TABLE `t_qcp_inspecapplyentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERNUM` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FAPPLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FINSPECORGID` bigint NOT NULL DEFAULT '0',
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_INSPECAPPLYENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapplyentry_a definition

CREATE TABLE `t_qcp_inspecapplyentry_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FMANUTIME` datetime DEFAULT NULL,
  `FEXPIRETIME` datetime DEFAULT NULL,
  `FSUPPLIER` bigint NOT NULL DEFAULT '0',
  `FORDERNUM` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_INSPECAPPLYENTRY_A` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapplyentry_c definition

CREATE TABLE `t_qcp_inspecapplyentry_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FOPRWORKSHOP` bigint NOT NULL DEFAULT '0',
  `FOPRWORKCENTER` bigint NOT NULL DEFAULT '0',
  `FOPROPERATION` bigint NOT NULL DEFAULT '0',
  `FMANUFACTUREORDER` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FREPORDERNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATIONNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQROUTEID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTIONWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FPROCESSSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_INSPECAPPLYENTRY_C` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapplyentry_i definition

CREATE TABLE `t_qcp_inspecapplyentry_i` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FEXPIRYDATE` datetime DEFAULT NULL,
  `FPRODUCEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_INSPECAPPLYENTRY_I` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapplyentry_lk definition

CREATE TABLE `t_qcp_inspecapplyentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_inspecapplyentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapplyentry_s definition

CREATE TABLE `t_qcp_inspecapplyentry_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FCUSTOMER` bigint NOT NULL DEFAULT '0',
  `FORDERNUM` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_INSPECAPPLYENTRY_S` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapplyentry_w definition

CREATE TABLE `t_qcp_inspecapplyentry_w` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_INSPRYW_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapplyn definition

CREATE TABLE `t_qcp_inspecapplyn` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FQUALITYORG` bigint NOT NULL DEFAULT '0',
  `FAPPLYUSER` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FINSPECORGID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `FAUTHORIZEOBJID` bigint NOT NULL DEFAULT '0',
  `FINTERFACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLCRETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPECTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_INSPYN_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCP_INSPYN_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecapplyn_l definition

CREATE TABLE `t_qcp_inspecapplyn_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_INSPYNL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCP_INSPYNL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecbill definition

CREATE TABLE `t_qcp_inspecbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPESTARTDATE` datetime DEFAULT NULL,
  `FINSPEENDDATE` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_INSPECBILL_IDNO` (`FORGID`,`FBILLNO` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecbill_l definition

CREATE TABLE `t_qcp_inspecbill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_INSPECBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecbill_lk definition

CREATE TABLE `t_qcp_inspecbill_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_inspecbill_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecbill_tc definition

CREATE TABLE `t_qcp_inspecbill_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCP_INSPECBILL_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCP_INSPECBILL_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecbill_wb definition

CREATE TABLE `t_qcp_inspecbill_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcp_inspecbill_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecobject definition

CREATE TABLE `t_qcp_inspecobject` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMAINBILL` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORDERNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYORGID` bigint NOT NULL DEFAULT '0',
  `FAPPLYUSERID` bigint NOT NULL DEFAULT '0',
  `FAPPLYDEPTID` bigint NOT NULL DEFAULT '0',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_INSPECOBJECT_FNUMBER` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecobjent definition

CREATE TABLE `t_qcp_inspecobjent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FRESULTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_INSPECOBJENT_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecobjsrc definition

CREATE TABLE `t_qcp_inspecobjsrc` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSPECOBJSRC_FENTID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecresult definition

CREATE TABLE `t_qcp_inspecresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRIGHTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWRONGQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINPSECUNITID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_INSPECRESULT_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspecresult_l definition

CREATE TABLE `t_qcp_inspecresult_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_INSPECRESULT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspentry definition

CREATE TABLE `t_qcp_inspentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPSCHEME` bigint NOT NULL DEFAULT '0',
  `FSAMPPERCENTAGE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFORMULA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRE` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONSTD` bigint NOT NULL DEFAULT '0',
  `FEMERGENCY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLYORG` bigint NOT NULL DEFAULT '0',
  `FSUPPLYDEP` bigint NOT NULL DEFAULT '0',
  `FPROPOSER` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FACSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FENTERRESULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAMPLINGRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLINGSIZEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUERECQTY` int NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTUNQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FSUBINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSPECTIONLOT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSAMPINGQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPINGUNQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPUQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWSSTAGEID` bigint NOT NULL DEFAULT '0',
  `FWSRULEID` bigint NOT NULL DEFAULT '0',
  `FINSPECTPROID` bigint NOT NULL DEFAULT '0',
  `FSHOWTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRINSQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FORDERNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMANUDATE` datetime DEFAULT NULL,
  `FDUEDATE` datetime DEFAULT NULL,
  `FSUPPLIEID` bigint NOT NULL DEFAULT '0',
  `FORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCEPTNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCEPTID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FSUSPICIOUSSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_INSPRY_FID` (`FID`),
  KEY `IDX_QCP_INSPRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCP_INSPRY_FMAT` (`FMATERIALID`),
  KEY `IDX_QCP_INSPRY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspentry_l definition

CREATE TABLE `t_qcp_inspentry_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_INSPRYL_FENTRYID` (`FENTRYID`,`FLOCALEID`),
  KEY `IDX_QCP_INSPRYL_FSUBCOMMENT` (`FSUBCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspresult definition

CREATE TABLE `t_qcp_inspresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FASSBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCKMATERIALID` bigint NOT NULL DEFAULT '0',
  `FCKUNITID` bigint NOT NULL DEFAULT '0',
  `FCKBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FCKQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FASSBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FINSOBJID` bigint NOT NULL DEFAULT '0',
  `FEXECSTATUS` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FCKHANDMETHED` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FCKNEWHANDID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_INSPLT_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCP_INSPLT_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_QCP_INSPRESULT_ASSBILL` (`FASSENTITYNUMBERID`,`FASSBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspresult_lk definition

CREATE TABLE `t_qcp_inspresult_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_inspresult_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspresult_tc definition

CREATE TABLE `t_qcp_inspresult_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCP_INSPRESULT_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCP_INSPRESULT_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspresult_wb definition

CREATE TABLE `t_qcp_inspresult_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcp_inspresult_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubentity definition

CREATE TABLE `t_qcp_inspsubentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONITEM` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONCONTENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTMETHOD` bigint NOT NULL DEFAULT '0',
  `FINSPECTFREQ` bigint NOT NULL DEFAULT '0',
  `FINSPECTBASIS` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTINSTRUCT` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECUNITID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPARISON` bigint NOT NULL DEFAULT '0',
  `FMATCHFLAG` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAXVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAVEVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDEVIA` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSPSUBENTITY` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubentity_a definition

CREATE TABLE `t_qcp_inspsubentity_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTEXT4` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT5` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT6` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT7` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT8` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT9` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT10` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT11` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT12` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT13` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT14` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT15` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT16` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT17` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT18` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT19` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT20` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT21` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT22` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT23` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT24` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT25` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT26` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT27` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT28` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT29` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT30` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT31` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT32` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT33` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT34` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT35` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT36` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT37` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT38` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT39` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT40` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT41` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT42` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT43` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT44` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT45` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT46` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT47` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT48` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT49` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT50` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSPSUBENTITY_A_FENTRYID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubentity_b definition

CREATE TABLE `t_qcp_inspsubentity_b` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTEXT51` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT52` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT53` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT54` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT55` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT56` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT57` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT58` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT59` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT60` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT61` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT62` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT63` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT64` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT65` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT66` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT67` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT68` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT69` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT70` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT71` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT72` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT73` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT74` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT75` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT76` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT77` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT78` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT79` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT80` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT81` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT82` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT83` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT84` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT85` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT86` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT87` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT88` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT89` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT90` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT91` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT92` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT93` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT94` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT95` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT96` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT97` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT98` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT99` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT100` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSPSUBENTITY_B_FENTRYID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubentity_c definition

CREATE TABLE `t_qcp_inspsubentity_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTEXT150` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT149` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT148` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT147` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT146` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT145` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT144` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT143` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT142` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT141` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT140` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT139` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT138` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT137` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT136` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT135` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT134` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT133` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT132` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT131` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT130` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT129` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT128` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT127` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT126` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT125` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT124` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT123` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT122` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT121` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT120` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT119` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT118` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT117` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT116` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT115` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT114` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT113` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT112` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT111` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT110` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT109` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT108` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT107` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT106` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT105` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT104` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT103` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT102` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT101` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSPSUBENTITY_C_FENTRYID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubentity_d definition

CREATE TABLE `t_qcp_inspsubentity_d` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTEXT200` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT199` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT198` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT197` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT196` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT195` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT194` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT193` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT192` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT191` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT190` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT189` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT188` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT187` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT186` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT185` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT184` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT183` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT182` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT181` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT180` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT179` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT178` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT177` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT176` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT175` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT174` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT173` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT172` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT171` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT170` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT169` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT168` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT167` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT166` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT165` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT164` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT163` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT162` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT161` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT160` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT159` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT158` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT157` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT156` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT155` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT154` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT153` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT152` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT151` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSPSUBENTITY_D_FENTRYID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubentity_e definition

CREATE TABLE `t_qcp_inspsubentity_e` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTEXT250` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT249` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT248` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT247` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT246` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT245` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT244` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT243` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT242` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT241` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT240` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT239` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT238` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT237` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT236` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT235` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT234` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT233` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT232` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT231` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT230` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT229` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT228` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT227` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT226` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT225` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT224` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT223` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT222` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT221` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT220` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT219` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT218` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT217` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT216` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT215` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT214` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT213` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT212` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT211` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT210` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT209` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT208` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT207` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT206` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT205` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT204` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT203` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT202` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT201` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSPSUBENTITY_E_FENTRYID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubentity_f definition

CREATE TABLE `t_qcp_inspsubentity_f` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTEXT300` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT299` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT298` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT297` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT296` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT295` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT294` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT293` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT292` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT291` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT290` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT289` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT288` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT287` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT286` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT285` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT284` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT283` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT282` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT281` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT280` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT279` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT278` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT277` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT276` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT275` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT274` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT273` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT272` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT271` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT270` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT269` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT268` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT267` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT266` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT265` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT264` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT263` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT262` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT261` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT260` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT259` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT258` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT257` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT256` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT255` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT254` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT253` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT252` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEXT251` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSPSUBENTITY_F_FENTRYID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubentity_l definition

CREATE TABLE `t_qcp_inspsubentity_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_INSPSUB_FCOMMENT` (`FINSPECCOMMENT`),
  KEY `IDX_QCP_INSPSUB_FDETAILID` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubresproj definition

CREATE TABLE `t_qcp_inspsubresproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSPECTIONITEM` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINSPECTMETHOD` bigint NOT NULL DEFAULT '0',
  `FINSPECTFREQ` bigint NOT NULL DEFAULT '0',
  `FINSPECTBASIS` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTINSTRUCT` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECUNITID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPARISON` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJACCEPTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJREJECTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJUNQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJCKRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMAXVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAVEVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDEVIA` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHOOSESAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXAMPLES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCITEMENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCITEMENTRYID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSPOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCP_INSPOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubresproj_l definition

CREATE TABLE `t_qcp_inspsubresproj_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_INSPOJL_FDETAILID` (`FDETAILID`,`FLOCALEID`),
  KEY `IDX_QCP_INSPOJL_COMMENT` (`FINSPECCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubresrela definition

CREATE TABLE `t_qcp_inspsubresrela` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXMAPLEID` bigint NOT NULL DEFAULT '0',
  `FSAMP_SEQ` int NOT NULL DEFAULT '0',
  `FVALDETER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALRATSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSPLA_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCP_INSPLA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_inspsubressamp definition

CREATE TABLE `t_qcp_inspsubressamp` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSAMPLENUMID` bigint NOT NULL DEFAULT '0',
  `FSAMPLENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLERES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSPMP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCP_INSPMP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_insresentity definition

CREATE TABLE `t_qcp_insresentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FRSAMNO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRINSPECTIONITEM` bigint NOT NULL DEFAULT '0',
  `FRINSPECTIONCONTENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRINSVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVIEWUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMVIEWUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_INSRESENTITY` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_joininspect definition

CREATE TABLE `t_qcp_joininspect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLCRETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_JOINCT_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCP_JOINCT_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_joininspect_l definition

CREATE TABLE `t_qcp_joininspect_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_JOINCTL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCP_JOINCTL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_joininspect_lk definition

CREATE TABLE `t_qcp_joininspect_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_joininspect_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_joininspect_tc definition

CREATE TABLE `t_qcp_joininspect_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCP_JOININSPECT_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCP_JOININSPECT_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_joininspect_wb definition

CREATE TABLE `t_qcp_joininspect_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcp_joininspect_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_joininspentry definition

CREATE TABLE `t_qcp_joininspentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FMATERIALCFGID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONSTDID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTYID` bigint NOT NULL DEFAULT '0',
  `FSUPPLYORGID` bigint NOT NULL DEFAULT '0',
  `FSUPPLYDEPID` bigint NOT NULL DEFAULT '0',
  `FPROPOSERID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCSYSTEM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FMAINBILLID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FRINSQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_JOINRY_FID` (`FID`),
  KEY `IDX_QCP_JOINRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCP_JOINRY_FMATERIALID` (`FMATERIALID`),
  KEY `IDX_QCP_JOINRY_FMATERIALCFGID` (`FMATERIALCFGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_joininspentry_lk definition

CREATE TABLE `t_qcp_joininspentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_joininspentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_joininspproj definition

CREATE TABLE `t_qcp_joininspproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSPECTIONITEMID` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINSPECTMETHODID` bigint NOT NULL DEFAULT '0',
  `FINSPECTFREQID` bigint NOT NULL DEFAULT '0',
  `FINSPECTBASISID` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTINSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECUNITID` bigint NOT NULL DEFAULT '0',
  `FCOMPARISONID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJACCEPTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJUNQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJCKRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHOOSESAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXAMPLES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTORID` bigint NOT NULL DEFAULT '0',
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCITEMENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCITEMENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_JOINOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCP_JOINOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_joininspproj_lk definition

CREATE TABLE `t_qcp_joininspproj_lk` (
  `FDetailId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_joininspproj_lk_fk` (`FDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_joininsprela_n definition

CREATE TABLE `t_qcp_joininsprela_n` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXMAPLEID` bigint NOT NULL DEFAULT '0',
  `FSAMP_SEQ` int NOT NULL DEFAULT '0',
  `FVALDETER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALRATSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_JOINLA_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCP_JOINLA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_joininspsamp_n definition

CREATE TABLE `t_qcp_joininspsamp_n` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSAMPLENUMID` bigint NOT NULL DEFAULT '0',
  `FSAMPLENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLERES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_JOINMP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCP_JOINMP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_matintoentity definition

CREATE TABLE `t_qcp_matintoentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPSCHEME` bigint NOT NULL DEFAULT '0',
  `FSAMPPERCENTAGE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFORMULA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSPECTIONSTD` bigint NOT NULL DEFAULT '0',
  `FEMERGENCY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLYORG` bigint NOT NULL DEFAULT '0',
  `FSUPPLYDEP` bigint NOT NULL DEFAULT '0',
  `FPROPOSER` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FACSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FDESTRUCTIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESTRUCTIVEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTERRESULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAMPINGQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPINGUNQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPLINGRESULT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLINGSIZEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUERECQTY` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTUNQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESUNDERTAKER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FSUBINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSPECTIONLOT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRINSQTY` bigint NOT NULL DEFAULT '0',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWSSTAGEID` bigint NOT NULL DEFAULT '0',
  `FWSRULEID` bigint NOT NULL DEFAULT '0',
  `FINSPECTPROID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_MATINTOENTITY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_matintoentity_i definition

CREATE TABLE `t_qcp_matintoentity_i` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIEID` bigint NOT NULL DEFAULT '0',
  `forderno` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMANUDATE` datetime DEFAULT NULL,
  `FDUEDATE` datetime DEFAULT NULL,
  `FORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_MATINTOENTITY_I` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_matintoentity_k definition

CREATE TABLE `t_qcp_matintoentity_k` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FEXPIRYDATE` datetime DEFAULT NULL,
  `FPRODUCEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_MATINTOENTITY_K` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_matintoentity_lk definition

CREATE TABLE `t_qcp_matintoentity_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_matintoentity_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_matintoentity_m definition

CREATE TABLE `t_qcp_matintoentity_m` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FOPRWORKSHOP` bigint NOT NULL DEFAULT '0',
  `FOPRWORKCENTER` bigint NOT NULL DEFAULT '0',
  `FOPROPERATION` bigint NOT NULL DEFAULT '0',
  `FMANUFACTUREORDER` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FREPORDERNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATIONNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQROUTEID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTIONWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FPROCESSSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_MATINTOENTITY_M` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_matintoentity_n definition

CREATE TABLE `t_qcp_matintoentity_n` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPUQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_MATITYN_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_matintoentity_s definition

CREATE TABLE `t_qcp_matintoentity_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FCUSTOMER` bigint NOT NULL DEFAULT '0',
  `FORDERNUM` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_MATINTOENTITY_S` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_matintoentity_w definition

CREATE TABLE `t_qcp_matintoentity_w` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_MATITYW_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_resultentry definition

CREATE TABLE `t_qcp_resultentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFYBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCENTITYNUMBERID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCSYSTEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSUBMITUNITID` bigint NOT NULL DEFAULT '0',
  `FUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDSRCENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDSRCBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FDSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FASSIGNBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPLINGRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDSRCENTRYNUMBER` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_RESURY_FID` (`FID`),
  KEY `IDX_QCP_RESURY_FSEQ` (`FSEQ`),
  KEY `IDX_QCP_RESULTENTRY_FSRCBILLENTRYID` (`FSRCBILLENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_resultentry_lk definition

CREATE TABLE `t_qcp_resultentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_resultentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_samresentity definition

CREATE TABLE `t_qcp_samresentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSAMNO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_SAMRESENTITY` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspbill definition

CREATE TABLE `t_qcp_tg_inspbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPESTARTDATE` datetime DEFAULT NULL,
  `FINSPEENDDATE` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPECTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_TG_INSPLL_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCP_TG_INSPLL_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspbill_l definition

CREATE TABLE `t_qcp_tg_inspbill_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_TG_INSPLLL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCP_TG_INSPLLL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspbill_lk definition

CREATE TABLE `t_qcp_tg_inspbill_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_tg_inspbill_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspbill_tc definition

CREATE TABLE `t_qcp_tg_inspbill_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCP_TG_INSPBILL_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCP_TG_INSPBILL_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspbill_wb definition

CREATE TABLE `t_qcp_tg_inspbill_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcp_tg_inspbill_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspentry definition

CREATE TABLE `t_qcp_tg_inspentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPSCHEME` bigint NOT NULL DEFAULT '0',
  `FSAMPPERCENTAGE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFORMULA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRE` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONSTD` bigint NOT NULL DEFAULT '0',
  `FEMERGENCY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLYORG` bigint NOT NULL DEFAULT '0',
  `FSUPPLYDEP` bigint NOT NULL DEFAULT '0',
  `FPROPOSER` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FACSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FENTERRESULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAMPLINGRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLINGSIZEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUERECQTY` int NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTUNQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FSUBINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSPECTIONLOT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSAMPINGQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPINGUNQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPUQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWSSTAGEID` bigint NOT NULL DEFAULT '0',
  `FWSRULEID` bigint NOT NULL DEFAULT '0',
  `FINSPECTPROID` bigint NOT NULL DEFAULT '0',
  `FSHOWTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRINSQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCEPTNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCEPTID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FMANUDATE` datetime DEFAULT NULL,
  `FDUEDATE` datetime DEFAULT NULL,
  `FSUPPLIEID` bigint NOT NULL DEFAULT '0',
  `FSUSPICIOUSSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNJOININSPSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_TG_INSPRY_FID` (`FID`),
  KEY `IDX_QCP_TG_INSPRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCP_TG_INSPRY_FMAT` (`FMATERIALID`),
  KEY `IDX_QCP_TG_INSPRY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspentry_l definition

CREATE TABLE `t_qcp_tg_inspentry_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_TG_INSPRYL_FENTRYID` (`FENTRYID`,`FLOCALEID`),
  KEY `IDX_QCP_TG_INSPRYL_FSUBCOMMENT` (`FSUBCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspentry_lk definition

CREATE TABLE `t_qcp_tg_inspentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_tg_inspentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspsubresproj definition

CREATE TABLE `t_qcp_tg_inspsubresproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSPECTIONITEM` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINSPECTMETHOD` bigint NOT NULL DEFAULT '0',
  `FINSPECTFREQ` bigint NOT NULL DEFAULT '0',
  `FINSPECTBASIS` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTINSTRUCT` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECUNITID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPARISON` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FPROJACCEPTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJREJECTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJUNQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJCKRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMAXVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAVEVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDEVIA` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJSAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHOOSESAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXAMPLES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJOININSPDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOININSPUSERID` bigint NOT NULL DEFAULT '0',
  `FSRCITEMENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCITEMENTRYID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_TG_INSPOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCP_TG_INSPOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspsubresproj_l definition

CREATE TABLE `t_qcp_tg_inspsubresproj_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCP_TG_INSPOJL_FDETAILID` (`FDETAILID`,`FLOCALEID`),
  KEY `IDX_QCP_TG_INSPOJL_FCOMMENT` (`FINSPECCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspsubresrela definition

CREATE TABLE `t_qcp_tg_inspsubresrela` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXMAPLEID` bigint NOT NULL DEFAULT '0',
  `FSAMP_SEQ` int NOT NULL DEFAULT '0',
  `FVALDETER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALRATSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_TG_INSPLA_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCP_TG_INSPLA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_tg_inspsubressamp definition

CREATE TABLE `t_qcp_tg_inspsubressamp` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSAMPLENUMID` bigint NOT NULL DEFAULT '0',
  `FSAMPLENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLERES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCP_TG_INSPMP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCP_TG_INSPMP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_urgentpass definition

CREATE TABLE `t_qcp_urgentpass` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FAPPLYDEPTID` bigint NOT NULL DEFAULT '0',
  `FAPPLYUSERID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORGID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLCRETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCP_URGESS_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCP_URGESS_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_urgentpass_lk definition

CREATE TABLE `t_qcp_urgentpass_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_urgentpass_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_urgentpass_mat definition

CREATE TABLE `t_qcp_urgentpass_mat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FMATERIALCFGID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTYID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCSYSTEM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPASSREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FMANUDATE` datetime DEFAULT NULL,
  `FDUEDATE` datetime DEFAULT NULL,
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIEID` bigint NOT NULL DEFAULT '0',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCP_URGESS_FID` (`FID`),
  KEY `IDX_QCP_URGESS_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_urgentpass_mat_lk definition

CREATE TABLE `t_qcp_urgentpass_mat_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcp_urgentpass_mat_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_urgentpass_tc definition

CREATE TABLE `t_qcp_urgentpass_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCP_URGENTPASS_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCP_URGENTPASS_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcp_urgentpass_wb definition

CREATE TABLE `t_qcp_urgentpass_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcp_urgentpass_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_baddeal definition

CREATE TABLE `t_qcpp_baddeal` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPEDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FHANDDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCPP_BADDAL_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCPP_BADDAL_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_baddeal_l definition

CREATE TABLE `t_qcpp_baddeal_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCPP_BADDALL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCPP_BADDALL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_baddealentry definition

CREATE TABLE `t_qcpp_baddealentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FUNQUALIREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNQUALITYPE` bigint NOT NULL DEFAULT '0',
  `FHANDMETHED` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONORG` bigint NOT NULL DEFAULT '0',
  `FRESPONDEPART` bigint NOT NULL DEFAULT '0',
  `FRESPONUSER` bigint NOT NULL DEFAULT '0',
  `FHANDTIME` datetime DEFAULT NULL,
  `FUNQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDINSPEC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNQUALITIME` datetime DEFAULT NULL,
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FJOINBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FDRAWCAPNUM` int NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPRWORKCENTER` bigint NOT NULL DEFAULT '0',
  `FOPROPERATION` bigint NOT NULL DEFAULT '0',
  `FMANUFACTUREORDER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORDERNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPRWORKSHOP` bigint NOT NULL DEFAULT '0',
  `FQROUTEID` bigint NOT NULL DEFAULT '0',
  `FOPERATIONNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCTIONWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FPROCESSSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FMANUDATE` datetime DEFAULT NULL,
  `FEXPIREDATE` datetime DEFAULT NULL,
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATIONDESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FDRAWPRONOTICENUM` int NOT NULL DEFAULT '0',
  `FDRAWQCTOPICNUM` int NOT NULL DEFAULT '0',
  `FNEWHANDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCPP_BADDRY_FID` (`FID`),
  KEY `IDX_QCPP_BADDRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCPP_BADDRY_FMAT` (`FMATERIELID`),
  KEY `IDX_QCPP_BADDRY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_insappentry definition

CREATE TABLE `t_qcpp_insappentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPRWORKCENTER` bigint NOT NULL DEFAULT '0',
  `FOPROPERATION` bigint NOT NULL DEFAULT '0',
  `FMANUFACTUREORDER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORDERNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPRWORKSHOP` bigint NOT NULL DEFAULT '0',
  `FQROUTEID` bigint NOT NULL DEFAULT '0',
  `FOPERATIONNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCTIONWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FPROCESSSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FMANUDATE` datetime DEFAULT NULL,
  `FEXPIREDATE` datetime DEFAULT NULL,
  `FAUTHORIZEOBJID` bigint NOT NULL DEFAULT '0',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATIONDESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FINSPECTSTDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCPP_INSARY_FID` (`FID`),
  KEY `IDX_QCPP_INSARY_FSEQ` (`FSEQ`),
  KEY `IDX_QCPP_INSARY_FMAT` (`FMATERIELID`),
  KEY `IDX_QCPP_INSARY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspapplyproj definition

CREATE TABLE `t_qcpp_inspapplyproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHECKITEMSID` bigint NOT NULL DEFAULT '0',
  `FCHECKCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCHECKMETHODID` bigint NOT NULL DEFAULT '0',
  `FCHECKFREQID` bigint NOT NULL DEFAULT '0',
  `FCHECKBASISID` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKINSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATCHFLAGID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJOINDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTORID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FJOININSPBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FJOININSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCPP_INSPAPP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCPP_INSPAPP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspapplyproj_lk definition

CREATE TABLE `t_qcpp_inspapplyproj_lk` (
  `FDetailId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcpp_inspapplyproj_lk_fk` (`FDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspbill definition

CREATE TABLE `t_qcpp_inspbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINSPESTARTDATE` datetime DEFAULT NULL,
  `FINSPEENDDATE` datetime DEFAULT NULL,
  `FINSPEDEPTID` bigint NOT NULL DEFAULT '0',
  `FINSPECTORID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FJOININSPECTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCPP_INSPBILL_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCPP_INSPBILL_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspbill_l definition

CREATE TABLE `t_qcpp_inspbill_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCPP_INSPBILL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCPP_INSPBILL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspecapply definition

CREATE TABLE `t_qcpp_inspecapply` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FQUALITYORG` bigint NOT NULL DEFAULT '0',
  `FAPPLYUSER` bigint NOT NULL DEFAULT '0',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FINSPECORGID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `FAUTHORIZEOBJID` bigint NOT NULL DEFAULT '0',
  `FINTERFACEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLCRETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPECTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCPP_INSPLY_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCPP_INSPLY_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspecapply_l definition

CREATE TABLE `t_qcpp_inspecapply_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCPP_INSPLYL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCPP_INSPLYL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspentry definition

CREATE TABLE `t_qcpp_inspentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPSCHEME` bigint NOT NULL DEFAULT '0',
  `FSAMPPERCENTAGE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFORMULA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRE` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONSTD` bigint NOT NULL DEFAULT '0',
  `FEMERGENCY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLYORG` bigint NOT NULL DEFAULT '0',
  `FSUPPLYDEP` bigint NOT NULL DEFAULT '0',
  `FPROPOSER` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FACSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTY` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FENTERRESULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAMPLINGRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLINGSIZEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUERECQTY` int NOT NULL DEFAULT '0',
  `FSRCUNITID` bigint NOT NULL DEFAULT '0',
  `FCONVERTUNQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONVERTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSDEPARTMENT` bigint NOT NULL DEFAULT '0',
  `FSUBINSPECTOR` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINSPECTIONLOT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` bigint NOT NULL DEFAULT '0',
  `FLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFIEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHKOBJID` bigint NOT NULL DEFAULT '0',
  `FCHKOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FSAMPINGQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPINGUNQUALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASESAMPUQLYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEJOINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSECONDCK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALCFG` bigint NOT NULL DEFAULT '0',
  `FSCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWSSTAGEID` bigint NOT NULL DEFAULT '0',
  `FWSRULEID` bigint NOT NULL DEFAULT '0',
  `FINSPECTPROID` bigint NOT NULL DEFAULT '0',
  `FSHOWTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRINSQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOPRWORKCENTER` bigint NOT NULL DEFAULT '0',
  `FOPROPERATION` bigint NOT NULL DEFAULT '0',
  `FMANUFACTUREORDER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORDERNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPRWORKSHOP` bigint NOT NULL DEFAULT '0',
  `FQROUTEID` bigint NOT NULL DEFAULT '0',
  `FOPERATIONNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCTIONWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FPROCESSSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FMANUDATE` datetime DEFAULT NULL,
  `FEXPIREDATE` datetime DEFAULT NULL,
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPFIRSTENTRYKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATIONDESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCPP_INSPRY_FID` (`FID`),
  KEY `IDX_QCPP_INSPRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCPP_INSPRY_FMAT` (`FMATERIALID`),
  KEY `IDX_QCPP_INSPRY_FMATCFG` (`FMATERIALCFG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspentry_l definition

CREATE TABLE `t_qcpp_inspentry_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCPP_INSPRYL_FENTRYID` (`FENTRYID`,`FLOCALEID`),
  KEY `IDX_QCPP_INSPRYL_FSUBCOMMENT` (`FSUBCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspresult definition

CREATE TABLE `t_qcpp_inspresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FASSBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FCKMATERIALID` bigint NOT NULL DEFAULT '0',
  `FCKUNITID` bigint NOT NULL DEFAULT '0',
  `FCKBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FCKQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCKUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FASSBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINSOBJENTRYID` bigint NOT NULL DEFAULT '0',
  `FINSOBJID` bigint NOT NULL DEFAULT '0',
  `FEXECSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FCKHANDMETHED` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FCKNEWHANDID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCPP_INSPLT_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCPP_INSPLT_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_QCPP_INSPRESULT_ASSBILL` (`FASSENTITYNUMBERID`,`FASSBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspresult_lk definition

CREATE TABLE `t_qcpp_inspresult_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcpp_inspresult_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspresult_tc definition

CREATE TABLE `t_qcpp_inspresult_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCPP_INSPRESULT_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCPP_INSPRESULT_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspresult_wb definition

CREATE TABLE `t_qcpp_inspresult_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcpp_inspresult_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspsubresproj definition

CREATE TABLE `t_qcpp_inspsubresproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSPECTIONITEM` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINSPECTMETHOD` bigint NOT NULL DEFAULT '0',
  `FINSPECTFREQ` bigint NOT NULL DEFAULT '0',
  `FINSPECTBASIS` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTINSTRUCT` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECUNITID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPARISON` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJACCEPTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJREJECTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJUNQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJCKRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMAXVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAVEVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDEVIA` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHOOSESAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXAMPLES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCITEMENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCITEMENTRYID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOININSPENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCPP_INSPOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCPP_INSPOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspsubresproj_l definition

CREATE TABLE `t_qcpp_inspsubresproj_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCPP_INSPOJL_FDETAILID` (`FDETAILID`,`FLOCALEID`),
  KEY `IDX_QCPP_INSPOJL_COMMENT` (`FINSPECCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspsubresrela definition

CREATE TABLE `t_qcpp_inspsubresrela` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXMAPLEID` bigint NOT NULL DEFAULT '0',
  `FSAMP_SEQ` int NOT NULL DEFAULT '0',
  `FVALDETER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALRATSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCPP_INSPLA_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCPP_INSPLA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_inspsubressamp definition

CREATE TABLE `t_qcpp_inspsubressamp` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSAMPLENUMID` bigint NOT NULL DEFAULT '0',
  `FSAMPLENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLERES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCPP_INSPMP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCPP_INSPMP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_joininspect definition

CREATE TABLE `t_qcpp_joininspect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLCRETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEIDBAK` bigint NOT NULL DEFAULT '0',
  `FTRANSACTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCPP_JOINCT_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCPP_JOINCT_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_joininspect_lk definition

CREATE TABLE `t_qcpp_joininspect_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcpp_joininspect_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_joininspect_tc definition

CREATE TABLE `t_qcpp_joininspect_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCPP_JOININSPECT_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCPP_JOININSPECT_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_joininspect_wb definition

CREATE TABLE `t_qcpp_joininspect_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcpp_joininspect_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_joininspentry definition

CREATE TABLE `t_qcpp_joininspentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FMATERIALCFGID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONFIGUREDCODEID` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBERID` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONSTDID` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUXPTYID` bigint NOT NULL DEFAULT '0',
  `FSUPPLYORGID` bigint NOT NULL DEFAULT '0',
  `FSUPPLYDEPID` bigint NOT NULL DEFAULT '0',
  `FPROPOSERID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCSYSTEM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINISHTIME` datetime DEFAULT NULL,
  `FMAINBILLID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FRINSQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQROUTEID` bigint NOT NULL DEFAULT '0',
  `FPROCESSSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATIONNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPROPERATIONID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTIONWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FOPRWORKCENTER` bigint NOT NULL DEFAULT '0',
  `FOPERATIONDESC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPRWORKSHOP` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCPP_JOINRY_FID` (`FID`),
  KEY `IDX_QCPP_JOINRY_FSEQ` (`FSEQ`),
  KEY `IDX_QCPP_JOINRY_FMAT` (`FMATERIALID`),
  KEY `IDX_QCPP_JOINRY_FMATCFG` (`FMATERIALCFGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_joininspentry_lk definition

CREATE TABLE `t_qcpp_joininspentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcpp_joininspentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_joininspproj definition

CREATE TABLE `t_qcpp_joininspproj` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSPECTIONITEMID` bigint NOT NULL DEFAULT '0',
  `FINSPECTIONCONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINSPECTMETHODID` bigint NOT NULL DEFAULT '0',
  `FINSPECTFREQID` bigint NOT NULL DEFAULT '0',
  `FINSPECTBASISID` bigint NOT NULL DEFAULT '0',
  `FKEYQUALITY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECTINSTRUCTID` bigint NOT NULL DEFAULT '0',
  `FNORMTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSPECUNITID` bigint NOT NULL DEFAULT '0',
  `FCOMPARISONID` bigint NOT NULL DEFAULT '0',
  `FSPECVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPVALUE` decimal(23,10) DEFAULT NULL,
  `FDOWNVALUE` decimal(23,10) DEFAULT NULL,
  `FUQUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJSAMPID` bigint NOT NULL DEFAULT '0',
  `FPROJSAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJACCEPTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJUNQUALIFIYQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJCKRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHOOSESAMPQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXAMPLES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLES_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FINSPECCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOINDEPTID` bigint NOT NULL DEFAULT '0',
  `FJOININSPECTORID` bigint NOT NULL DEFAULT '0',
  `FISJOININSPECT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCITEMENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCITEMENTRYID` bigint NOT NULL DEFAULT '0',
  `FSTDENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCPP_JOINOJ_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCPP_JOINOJ_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_joininsprela_n definition

CREATE TABLE `t_qcpp_joininsprela_n` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJUUID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXMAPLEID` bigint NOT NULL DEFAULT '0',
  `FSAMP_SEQ` int NOT NULL DEFAULT '0',
  `FVALDETER` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALRATSTR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCPP_JOINLA_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCPP_JOINLA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_joininspsamp_n definition

CREATE TABLE `t_qcpp_joininspsamp_n` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSAMPLENUMID` bigint NOT NULL DEFAULT '0',
  `FSAMPLENUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPLERES` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAMPCKVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCPP_JOINMP_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCPP_JOINMP_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_resultentry definition

CREATE TABLE `t_qcpp_resultentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFYBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCENTITYNUMBERID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSRCBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITUNITID` bigint NOT NULL DEFAULT '0',
  `FUNQUALIFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDSRCENTITYNUMBERID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDSRCBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FDSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FASSIGNBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSAMPLINGRESULT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDSRCENTRYNUMBER` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCPP_RESURY_FID` (`FID`),
  KEY `IDX_QCPP_RESURY_FSEQ` (`FSEQ`),
  KEY `IDX_QCPP_RESULTENTRY_FSRCBILLENTRYID` (`FSRCBILLENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcpp_resultentry_lk definition

CREATE TABLE `t_qcpp_resultentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcpp_resultentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_buildt definition

CREATE TABLE `t_qcqi_cap_buildt` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FROLE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDUTY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACTWAY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_CAP_BUILDT_FID` (`FID`),
  KEY `IDX_QCQI_CAP_BUILDT_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_cauana definition

CREATE TABLE `t_qcqi_cap_cauana` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCAUSE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALIDRESULT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIINISHTIME` datetime DEFAULT NULL,
  `FISPRIMARYCAUSE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_CAP_CAUANA_FID` (`FID`),
  KEY `IDX_QCQI_CAP_CAUANA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_cormea definition

CREATE TABLE `t_qcqi_cap_cormea` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRESPONSER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCORRECTMEASURE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALIDRESULTCM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIINISHTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_CAP_CORMEA_FID` (`FID`),
  KEY `IDX_QCQI_CAP_CORMEA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_despro definition

CREATE TABLE `t_qcqi_cap_despro` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTIME` datetime DEFAULT NULL,
  `FPLACE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROBLEM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEASURE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEGREE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_CAP_DESPRO_FID` (`FID`),
  KEY `IDX_QCQI_CAP_DESPRO_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_effcon definition

CREATE TABLE `t_qcqi_cap_effcon` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUSAFTER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUSBEFORE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIINISHTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_CAP_EFFCON_FID` (`FID`),
  KEY `IDX_QCQI_CAP_EFFCON_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_entry definition

CREATE TABLE `t_qcqi_cap_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORDERNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FUNITID` bigint NOT NULL DEFAULT '0',
  `FUNQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISREPEAT` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPEATID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTCREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEUNQUALIQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSEDEP` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEXCEPTIONINFO` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FUNQUALITYPE` bigint NOT NULL DEFAULT '0',
  `FORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTITYENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLENTRYSEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FLOTNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FCUSTOMERID` bigint NOT NULL DEFAULT '0',
  `FOPRWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTIONWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FOPRWORKCENTERID` bigint NOT NULL DEFAULT '0',
  `FEXCEPTIONINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FDRAWQCTOPICNUM` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_CAP_ENTRY_FID` (`FID`),
  KEY `IDX_QCQI_CAP_ENTRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_fastact definition

CREATE TABLE `t_qcqi_cap_fastact` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIINISHTIME` datetime DEFAULT NULL,
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKALLOT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_CAP_FASTACT_FID` (`FID`),
  KEY `IDX_QCQI_CAP_FASTACT_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_premea definition

CREATE TABLE `t_qcqi_cap_premea` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPREVENTMEASURE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILESTD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIINISHTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_CAP_PREMEA_FID` (`FID`),
  KEY `IDX_QCQI_CAP_PREMEA_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_proclo definition

CREATE TABLE `t_qcqi_cap_proclo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRESULT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIINISHTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_CAP_PROCLO_FID` (`FID`),
  KEY `IDX_QCQI_CAP_PROCLO_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_proveca definition

CREATE TABLE `t_qcqi_cap_proveca` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVECA_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_provecas definition

CREATE TABLE `t_qcqi_cap_provecas` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVECAS_FID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_provecm definition

CREATE TABLE `t_qcqi_cap_provecm` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVECM_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_provecms definition

CREATE TABLE `t_qcqi_cap_provecms` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVECMS_FID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_provedp definition

CREATE TABLE `t_qcqi_cap_provedp` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP__PROVEDPFENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_provedps definition

CREATE TABLE `t_qcqi_cap_provedps` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVEDPS_FID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_proveec definition

CREATE TABLE `t_qcqi_cap_proveec` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVEEC_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_proveent definition

CREATE TABLE `t_qcqi_cap_proveent` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVEENT_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_provefa definition

CREATE TABLE `t_qcqi_cap_provefa` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVEFA_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_provepl definition

CREATE TABLE `t_qcqi_cap_provepl` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVEPL_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_provepls definition

CREATE TABLE `t_qcqi_cap_provepls` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVEPLS_FID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_provepm definition

CREATE TABLE `t_qcqi_cap_provepm` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVEPM_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_provepms definition

CREATE TABLE `t_qcqi_cap_provepms` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVEPMS_FID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_proveta definition

CREATE TABLE `t_qcqi_cap_proveta` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_CAP_PROVETA_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_tc definition

CREATE TABLE `t_qcqi_cap_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_QCQI_CAP_TC_TBILL` (`FTBillId`),
  KEY `IDX_QCQI_CAP_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_temact definition

CREATE TABLE `t_qcqi_cap_temact` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRESPONSER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTMPACT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALIDRESULT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIINISHTIMET` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_CAP_TEMACT_FID` (`FID`),
  KEY `IDX_QCQI_CAP_TEMACT_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_unqety_lk definition

CREATE TABLE `t_qcqi_cap_unqety_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_cap_unqety_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_cap_wb definition

CREATE TABLE `t_qcqi_cap_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRuleVerId` bigint DEFAULT NULL,
  `FRuleItemId` bigint DEFAULT NULL,
  `FOperate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FWriteValue` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcqi_cap_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_corandpre definition

CREATE TABLE `t_qcqi_corandpre` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINITIATEDPTID` bigint NOT NULL DEFAULT '0',
  `FINITIALPERSONID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPLAINTTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELECTEDSTEP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITIALDATE` datetime DEFAULT NULL,
  `FTEMPLETID` bigint NOT NULL DEFAULT '0',
  `FPLANCLOSETIME` datetime DEFAULT NULL,
  `FINFACTCLOSETIME` datetime DEFAULT NULL,
  `FPROGRESS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELECTEDSTEPNAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBILLTYPE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQI_CORARE_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCQI_CORARE_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_corandpre_s definition

CREATE TABLE `t_qcqi_corandpre_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FANALYREASON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCORRECTACT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREVENTACT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCLOSE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROBLEMDESC` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSERCA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSERCM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSERPM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSERPL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSERDP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIINISHTIMEDP` datetime DEFAULT NULL,
  `FFIINISHTIMECA` datetime DEFAULT NULL,
  `FFIINISHTIMECM` datetime DEFAULT NULL,
  `FFIINISHTIMEPM` datetime DEFAULT NULL,
  `FFIINISHTIMEPL` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQI_CORANDPRE_S_FDATE` (`FFIINISHTIMEDP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_prob_feedbackatta definition

CREATE TABLE `t_qcqi_prob_feedbackatta` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_PROB_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_problemnotice definition

CREATE TABLE `t_qcqi_problemnotice` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FCREATEDEPARTID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQI_PROBCE_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCQI_PROBCE_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_problemnotice_l definition

CREATE TABLE `t_qcqi_problemnotice_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_PROBCEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCQI_PROBCEL_FCOMMENT` (`FCOMMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_problemnotice_lk definition

CREATE TABLE `t_qcqi_problemnotice_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_problemnotice_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_problemnotice_tc definition

CREATE TABLE `t_qcqi_problemnotice_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_QCQI_PROBLEMNOTICE_TC_TBILL` (`FTBILLID`),
  KEY `IDX_QCQI_PROBLEMNOTICE_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_problemnotice_wb definition

CREATE TABLE `t_qcqi_problemnotice_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint DEFAULT NULL COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint DEFAULT NULL COMMENT '反写条目编码',
  `FOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '反写源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '反写源单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) DEFAULT NULL COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcqi_problemnotice_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_pronotice_entry definition

CREATE TABLE `t_qcqi_pronotice_entry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROBLEMSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALCFGID` bigint NOT NULL DEFAULT '0',
  `FMATERIALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMEASUREUNITID` bigint NOT NULL DEFAULT '0',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` bigint NOT NULL DEFAULT '0',
  `FUNQUAPROBLEMID` bigint NOT NULL DEFAULT '0',
  `FDETAILS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILS_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FLOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPRWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FPRODUCTIONWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FSERIOUSLEVELSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FHOPENDATE` datetime DEFAULT NULL,
  `FINFACTCLOSEDATE` datetime DEFAULT NULL,
  `FHANDLERWORKSHOPID` bigint NOT NULL DEFAULT '0',
  `FHANDLER` bigint NOT NULL DEFAULT '0',
  `FSRCBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLNUMBER` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMAINBILLNUMBER` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FCUSTOMERID` bigint NOT NULL DEFAULT '0',
  `FRECURRENCE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROGRESS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRPTCLOSEDATE` datetime DEFAULT NULL,
  `FTOPICCLOSEDATE` datetime DEFAULT NULL,
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCSYSTEM` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBILLID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FMAINBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FMAINBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FOPRWORKCENTERID` bigint NOT NULL DEFAULT '0',
  `FDRAWCAPNUM` int NOT NULL DEFAULT '0',
  `FDRAWQCTOPICNUM` int NOT NULL DEFAULT '0',
  `FFEEDBACKDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKDESC_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FFEEDBACKSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKERID` bigint NOT NULL DEFAULT '0',
  `FFACEBACKTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_PRONCE_FID` (`FID`),
  KEY `IDX_QCQI_PRONCE_FSEQ` (`FSEQ`),
  KEY `IDX_QCQI_PRONCE_FMATERIALID` (`FMATERIALID`),
  KEY `IDX_QCQI_PRONCE_FMATERIALCFGID` (`FMATERIALCFGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_pronotice_entry_l definition

CREATE TABLE `t_qcqi_pronotice_entry_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_PRONCEL_FENTRYID` (`FENTRYID`,`FLOCALEID`),
  KEY `IDX_QCQI_PRONCEL_FREMARK` (`FREMARK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_pronotice_entry_lk definition

CREATE TABLE `t_qcqi_pronotice_entry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_pronotice_entry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_pronotice_sub definition

CREATE TABLE `t_qcqi_pronotice_sub` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSUBSEQ` int NOT NULL DEFAULT '0',
  `FSERIOUSSCORE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHAPPENRATESCORE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSEARCHDEEPSCORE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSERIOUSLEVELSCORE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FIMPROVEWAYID` bigint NOT NULL DEFAULT '0',
  `FSERIOUSLEVELID` bigint NOT NULL DEFAULT '0',
  `FSUBREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCQI_PRONCE_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCQI_PRONCE_FSUBSEQ` (`FSUBSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_pronotice_sub_l definition

CREATE TABLE `t_qcqi_pronotice_sub_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_PRONCEL_FDETAILID` (`FDETAILID`,`FLOCALEID`),
  KEY `IDX_QCQI_PRONCEL_FSUBREMARK` (`FSUBREMARK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcacteamentry definition

CREATE TABLE `t_qcqi_qcacteamentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTCREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FROLEVAL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERFDUTY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_QCACRY_FID` (`FID`),
  KEY `IDX_QCQI_QCACRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcactimanage definition

CREATE TABLE `t_qcqi_qcactimanage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICTARGET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICDESC` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICTYPEID` bigint NOT NULL DEFAULT '0',
  `FTOPICSOURCE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQCTEAMID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYSTART` datetime DEFAULT NULL,
  `FACTIVITYCOMP` datetime DEFAULT NULL,
  `FACTIVITYACTUAL` datetime DEFAULT NULL,
  `FACTIVITYPROG` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FPUSHNUM` int NOT NULL DEFAULT '0',
  `FREVIEWCOMMITID` bigint NOT NULL DEFAULT '0',
  `FTOPICSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQI_QCACGE_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCQI_QCACGE_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcactimanage_lk definition

CREATE TABLE `t_qcqi_qcactimanage_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_qcactimanage_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcactimanage_tc definition

CREATE TABLE `t_qcqi_qcactimanage_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_QCQI_QCACTIMANAGE_TC_TBILL` (`FTBillId`),
  KEY `IDX_QCQI_QCACTIMANAGE_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcactimanage_wb definition

CREATE TABLE `t_qcqi_qcactimanage_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRuleVerId` bigint DEFAULT NULL,
  `FRuleItemId` bigint DEFAULT NULL,
  `FOperate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FWriteValue` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcqi_qcactimanage_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcactimanagentry definition

CREATE TABLE `t_qcqi_qcactimanagentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FACTIVITYSTEPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_QCACRYENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcactimanagsub definition

CREATE TABLE `t_qcqi_qcactimanagsub` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONTENT` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCHARGEUSERID` bigint NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FSUBREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCQI_QCACUB_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCQI_QCACUB_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcactmanageatt definition

CREATE TABLE `t_qcqi_qcactmanageatt` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_QCACTT_FDETAILID` (`FDETAILID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcawardatt definition

CREATE TABLE `t_qcqi_qcawardatt` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_QCAWTT_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcawardentry definition

CREATE TABLE `t_qcqi_qcawardentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYSTART` datetime DEFAULT NULL,
  `FTOPICCOMP` datetime DEFAULT NULL,
  `FSCOREGRADEID` bigint NOT NULL DEFAULT '0',
  `FAWARDTEAMID` bigint NOT NULL DEFAULT '0',
  `FAWARDHONORID` bigint NOT NULL DEFAULT '0',
  `FTEAMPRIZE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAWARDREMARK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICID` bigint NOT NULL DEFAULT '0',
  `FREVIEWCOUNTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_QCAWRY_FID` (`FID`),
  KEY `IDX_QCQI_QCAWRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcawardentry_lk definition

CREATE TABLE `t_qcqi_qcawardentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_qcawardentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcawardman definition

CREATE TABLE `t_qcqi_qcawardman` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAWARDDATE` datetime DEFAULT NULL,
  `FENDDATE_STARTDATE` datetime DEFAULT NULL,
  `FENDDATE_ENDDATE` datetime DEFAULT NULL,
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQI_QCAWAN_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCQI_QCAWAN_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcawardman_lk definition

CREATE TABLE `t_qcqi_qcawardman_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_qcawardman_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcawardman_tc definition

CREATE TABLE `t_qcqi_qcawardman_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_QCQI_QCAWARDMAN_TC_TBILL` (`FTBillId`),
  KEY `IDX_QCQI_QCAWARDMAN_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcawardman_wb definition

CREATE TABLE `t_qcqi_qcawardman_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRuleVerId` bigint DEFAULT NULL,
  `FRuleItemId` bigint DEFAULT NULL,
  `FOperate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FWriteValue` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcqi_qcawardman_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qconlinescore definition

CREATE TABLE `t_qcqi_qconlinescore` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWUSERID` bigint NOT NULL DEFAULT '0',
  `FREVIEWDATE` datetime DEFAULT NULL,
  `FREVIEWSTANDARDID` bigint NOT NULL DEFAULT '0',
  `FSCORESCHEMEID` bigint NOT NULL DEFAULT '0',
  `FSCORETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWCOMMITID` bigint NOT NULL DEFAULT '0',
  `FPLANREVIEWDATE` datetime DEFAULT NULL,
  `FREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSCOREGRADEID` bigint NOT NULL DEFAULT '0',
  `FSCOREAVA` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWCOUNTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEVALAUTE` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQCTEAMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQI_QCONRE_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCQI_QCONRE_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qconlinescore_lk definition

CREATE TABLE `t_qcqi_qconlinescore_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_qconlinescore_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qconlinescore_tc definition

CREATE TABLE `t_qcqi_qconlinescore_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_QCQI_QCONLINESCORE_TC_TBILL` (`FTBillId`),
  KEY `IDX_QCQI_QCONLINESCORE_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qconlinescore_wb definition

CREATE TABLE `t_qcqi_qconlinescore_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRuleVerId` bigint DEFAULT NULL,
  `FRuleItemId` bigint DEFAULT NULL,
  `FOperate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FWriteValue` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcqi_qconlinescore_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qconlinestatt definition

CREATE TABLE `t_qcqi_qconlinestatt` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_QCONTT_FENTRYID` (`FENTRYID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qconlinestentry definition

CREATE TABLE `t_qcqi_qconlinestentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREVIEWTYPEID` bigint NOT NULL DEFAULT '0',
  `FREVIEWITEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWMETHED` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTREVIEWSTANDARD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDARDVALUEQTY` int NOT NULL DEFAULT '0',
  `FREVIEWFIND` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSTSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSTSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSTSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWSCOREQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_QCONRY_FID` (`FID`),
  KEY `IDX_QCQI_QCONRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qconlinestentry_lk definition

CREATE TABLE `t_qcqi_qconlinestentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_qconlinestentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcountrventry definition

CREATE TABLE `t_qcqi_qcountrventry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FREVIEWINTELLI` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTCREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPSCOREGRADEID` bigint NOT NULL DEFAULT '0',
  `FSCREVIEWDATE` datetime DEFAULT NULL,
  `FSTDCOUNTQTY` int NOT NULL DEFAULT '0',
  `FSCOREAVA` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQCREVIEWSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVALAUTE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVCOUNTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESRCBILLID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_QCOURY_FID` (`FID`),
  KEY `IDX_QCQI_QCOURY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcountrventry_lk definition

CREATE TABLE `t_qcqi_qcountrventry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_qcountrventry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcountscatt definition

CREATE TABLE `t_qcqi_qcountscatt` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQI_QCOUTT_FDETAILID` (`FDETAILID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcountscore definition

CREATE TABLE `t_qcqi_qcountscore` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICTARGET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICDESC` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICTYPEID` bigint NOT NULL DEFAULT '0',
  `FTOPICSOURCE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWCOMMITID` bigint NOT NULL DEFAULT '0',
  `FQCTEAMID` bigint NOT NULL DEFAULT '0',
  `FPLANREVIEWDATE` datetime DEFAULT NULL,
  `FREVIEWSTANDARDID` bigint NOT NULL DEFAULT '0',
  `FSCORESCHEMEID` bigint NOT NULL DEFAULT '0',
  `FSCORETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICCOMP` datetime DEFAULT NULL,
  `FTOPICSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCOREGRADEID` bigint NOT NULL DEFAULT '0',
  `FTOPICSTART` datetime DEFAULT NULL,
  `FAWARDHONORID` bigint NOT NULL DEFAULT '0',
  `FPUSHNUMQTY` int NOT NULL DEFAULT '0',
  `FPUSHLINENUMQTY` int NOT NULL DEFAULT '0',
  `FREVIEWSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWCOM` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWCOUNTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOPICID` bigint NOT NULL DEFAULT '0',
  `FSRCORDERNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQI_QCOURE_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCQI_QCOURE_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcountscore_lk definition

CREATE TABLE `t_qcqi_qcountscore_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_qcountscore_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcountscore_tc definition

CREATE TABLE `t_qcqi_qcountscore_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_QCQI_QCOUNTSCORE_TC_TBILL` (`FTBillId`),
  KEY `IDX_QCQI_QCOUNTSCORE_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcountscore_wb definition

CREATE TABLE `t_qcqi_qcountscore_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRuleVerId` bigint DEFAULT NULL,
  `FRuleItemId` bigint DEFAULT NULL,
  `FOperate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FWriteValue` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcqi_qcountscore_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcountscsubentry definition

CREATE TABLE `t_qcqi_qcountscsubentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSCUSERID` bigint NOT NULL DEFAULT '0',
  `FCOUNTSCOREQTY` int NOT NULL DEFAULT '0',
  `FREVIEWTYPEID` bigint NOT NULL DEFAULT '0',
  `FREVIEWITEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWMETHED` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTREVIEWSTANDARD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDARDVALUEQTY` int NOT NULL DEFAULT '0',
  `FREVIEWFIND` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWSCOREQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_QCQI_QCOURY_FENTRYID` (`FENTRYID`),
  KEY `IDX_QCQI_QCOURY_FSEQASC` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcountscsubentry_lk definition

CREATE TABLE `t_qcqi_qcountscsubentry_lk` (
  `FDetailId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_qcountscsubentry_lk_fk` (`FDetailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcreviewplan definition

CREATE TABLE `t_qcqi_qcreviewplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICTARGET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICDESC` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICTYPEID` bigint NOT NULL DEFAULT '0',
  `FTOPICSOURCE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQCTEAMID` bigint NOT NULL DEFAULT '0',
  `FREVIEWCOMMITID` bigint NOT NULL DEFAULT '0',
  `FPLANREVIEWDATE` datetime DEFAULT NULL,
  `FREVIEWSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVIEWSTANDARDID` bigint NOT NULL DEFAULT '0',
  `FSCORESCHEMEID` bigint NOT NULL DEFAULT '0',
  `FSCORETYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUSHNUMQTY` int NOT NULL DEFAULT '0',
  `FACTIVITYSTART` datetime DEFAULT NULL,
  `FTOPICID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCORDERNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQI_QCREAN_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCQI_QCREAN_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcreviewplan_lk definition

CREATE TABLE `t_qcqi_qcreviewplan_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_qcreviewplan_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcreviewplan_tc definition

CREATE TABLE `t_qcqi_qcreviewplan_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_QCQI_QCREVIEWPLAN_TC_TBILL` (`FTBillId`),
  KEY `IDX_QCQI_QCREVIEWPLAN_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcreviewplan_wb definition

CREATE TABLE `t_qcqi_qcreviewplan_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRuleVerId` bigint DEFAULT NULL,
  `FRuleItemId` bigint DEFAULT NULL,
  `FOperate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FWriteValue` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcqi_qcreviewplan_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qcrevplanentry definition

CREATE TABLE `t_qcqi_qcrevplanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTCREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FREVIEWINTELLI` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_QCRERY_FID` (`FID`),
  KEY `IDX_QCQI_QCRERY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qctopicmanage definition

CREATE TABLE `t_qcqi_qctopicmanage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTOPICDESC` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICTARGET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICTYPEID` bigint NOT NULL DEFAULT '0',
  `FTOPICSOURCE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOPICSTATUS` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FQCTEAMID` bigint NOT NULL DEFAULT '0',
  `FSCORE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSCOREGRADEID` bigint NOT NULL DEFAULT '0',
  `FAWARDHONORID` bigint NOT NULL DEFAULT '0',
  `FHOPENDATE` datetime DEFAULT NULL,
  `FACTIVITYSTART` datetime DEFAULT NULL,
  `FTOPICCOMP` datetime DEFAULT NULL,
  `FPUSHNUM` int NOT NULL DEFAULT '0',
  `FMANAGECOMP` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQI_QCTOGE_FBILLNO` (`FBILLNO`),
  KEY `IDX_QCQI_QCTOGE_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qctopicmanage_tc definition

CREATE TABLE `t_qcqi_qctopicmanage_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_QCQI_QCTOPICMANAGE_TC_TBILL` (`FTBillId`),
  KEY `IDX_QCQI_QCTOPICMANAGE_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qctopicmanage_wb definition

CREATE TABLE `t_qcqi_qctopicmanage_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRuleVerId` bigint DEFAULT NULL,
  `FRuleItemId` bigint DEFAULT NULL,
  `FOperate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FWriteValue` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_qcqi_qctopicmanage_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qctopicmanentry definition

CREATE TABLE `t_qcqi_qctopicmanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTCREMARK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYID` bigint NOT NULL DEFAULT '0',
  `FSRCBILLENTITY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCBILLID` bigint NOT NULL DEFAULT '0',
  `FSRCORDERTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCORDERNUM` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCBILLTYPE` bigint NOT NULL DEFAULT '0',
  `FMAINBILLNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQI_QCTORY_FID` (`FID`),
  KEY `IDX_QCQI_QCTORY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqi_qctopicmanentry_lk definition

CREATE TABLE `t_qcqi_qctopicmanentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_qcqi_qctopicmanentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_analyrptkey definition

CREATE TABLE `t_qcqs_analyrptkey` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSPLITTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQS_ANALEY_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCQS_ANALEY_FCREATETIME` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_analyrptkey_l definition

CREATE TABLE `t_qcqs_analyrptkey_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQS_ANALEYL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCQS_ANALEYL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_analyrptkey_r3 definition

CREATE TABLE `t_qcqs_analyrptkey_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_biztype definition

CREATE TABLE `t_qcqs_biztype` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQS_BIZTPE_FID` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_chartentry definition

CREATE TABLE `t_qcqs_chartentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHARTTYPE` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOLOR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATALABEL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSECONDYAXIS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHECKED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSERIESNAMER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERIESNAMESID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQS_CHARRY_FID` (`FID`),
  KEY `IDX_QCQS_CHARRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_chartschem definition

CREATE TABLE `t_qcqs_chartschem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FISSYS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRPTFLAGID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FXAXISSELECT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMULXAXISSELECT` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCHECKBOX` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSEQINDEX` int NOT NULL DEFAULT '0',
  `FSCHEMTYPE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQS_CHAREM_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCQS_CHAREM_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCQS_CHARTSCHEM_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCQS_CHARTSCHEM_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_chartschem_bit definition

CREATE TABLE `t_qcqs_chartschem_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_chartschem_l definition

CREATE TABLE `t_qcqs_chartschem_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQS_CHAREML_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCQS_CHAREML_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_chartschem_r3 definition

CREATE TABLE `t_qcqs_chartschem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_chartschem_u definition

CREATE TABLE `t_qcqs_chartschem_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCQS_CHARTSCHEM_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_chartschemexc definition

CREATE TABLE `t_qcqs_chartschemexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCQS_CHARTSCHEMEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_chartschemusereg definition

CREATE TABLE `t_qcqs_chartschemusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCQS_CHARTSCHEMUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_entryentity definition

CREATE TABLE `t_qcqs_entryentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINDEXSTART` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINDEXEND` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FGRADEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQS_ENTRTY_FID` (`FID`),
  KEY `IDX_QCQS_ENTRTY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evgrade definition

CREATE TABLE `t_qcqs_evgrade` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQS_EVGRDE_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCQS_EVGRDE_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCQS_EVGRADE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCQS_EVGRADE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evgrade_bit definition

CREATE TABLE `t_qcqs_evgrade_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evgrade_l definition

CREATE TABLE `t_qcqs_evgrade_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQS_EVGRDEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCQS_EVGRDEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evgrade_r3 definition

CREATE TABLE `t_qcqs_evgrade_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evgrade_u definition

CREATE TABLE `t_qcqs_evgrade_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCQS_EVGRADE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evgradeexc definition

CREATE TABLE `t_qcqs_evgradeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCQS_EVGRADEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evgradeusereg definition

CREATE TABLE `t_qcqs_evgradeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCQS_EVGRADEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evscheme definition

CREATE TABLE `t_qcqs_evscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_QCQS_EVSCME_FNUMBER` (`FNUMBER`),
  KEY `IDX_QCQS_EVSCME_FCREATETIME` (`FCREATETIME`),
  KEY `IDX_T_QCQS_EVSCHEME_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_QCQS_EVSCHEME_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evscheme_bit definition

CREATE TABLE `t_qcqs_evscheme_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evscheme_l definition

CREATE TABLE `t_qcqs_evscheme_l` (
  `FPKID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_QCQS_EVSCMEL_FID` (`FID`,`FLOCALEID`),
  KEY `IDX_QCQS_EVSCMEL_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evscheme_r3 definition

CREATE TABLE `t_qcqs_evscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evscheme_u definition

CREATE TABLE `t_qcqs_evscheme_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCQS_EVSCHEME_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evschemeexc definition

CREATE TABLE `t_qcqs_evschemeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCQS_EVSCHEMEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_evschemeusereg definition

CREATE TABLE `t_qcqs_evschemeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_QCQS_EVSCHEMEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_qmc.t_qcqs_rptkeyentry definition

CREATE TABLE `t_qcqs_rptkeyentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRPTID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_QCQS_RPTKRY_FID` (`FID`),
  KEY `IDX_QCQS_RPTKRY_FSEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
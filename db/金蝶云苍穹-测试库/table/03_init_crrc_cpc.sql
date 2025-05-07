USE crrc_cpc;

-- crrc_cpc.jrx_irrc_getbillno definition

CREATE TABLE `jrx_irrc_getbillno` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.jrx_irrc_getbillno_l definition

CREATE TABLE `jrx_irrc_getbillno_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx_x_irrc_getbillno_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.jrx_irrc_getbillno_r3 definition

CREATE TABLE `jrx_irrc_getbillno_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.ls_xxf definition

CREATE TABLE `ls_xxf` (
  `fid` bigint NOT NULL,
  KEY `fk_jrx_id` (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.ls_xxf01 definition

CREATE TABLE `ls_xxf01` (
  `fid` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.ls_xxf02 definition

CREATE TABLE `ls_xxf02` (
  `FEntryId` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_isv_xxx_r3 definition

CREATE TABLE `t_isv_xxx_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_dcdeliverybillt_r3 definition

CREATE TABLE `t_mscp_dcdeliverybillt_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_dcdeliverybilltype definition

CREATE TABLE `t_mscp_dcdeliverybilltype` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '类型编号',
  `FK_JRX_RETRIEVALTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '出库类型',
  `FK_JRX_RETRIEVALTYPENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '出库类型名称',
  `FK_JRX_TRANTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '事务类型',
  `FK_JRX_TRANTYPENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '事务类型名称',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '类型名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_dcdeliverybilltype_l definition

CREATE TABLE `t_mscp_dcdeliverybilltype_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx_mscp_dcdeliverybilltype_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_dcdorderentry definition

CREATE TABLE `t_mscp_dcdorderentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_purmfrsupplierid` bigint DEFAULT NULL,
  `fpurid` bigint DEFAULT NULL,
  `fordernumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurorderid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `forderseq` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialid` bigint DEFAULT NULL,
  `fmaterialunitid` bigint DEFAULT NULL,
  `ftotalundownqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_decimalfield1` decimal(23,4) DEFAULT NULL,
  `fqty` decimal(23,4) DEFAULT NULL,
  `fsupplierid` bigint DEFAULT NULL,
  `fprojectid` bigint DEFAULT NULL,
  `ftrackid` bigint DEFAULT NULL,
  `ftotalreceiptqty` decimal(23,10) DEFAULT NULL,
  `feaspurid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `feaspurentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprice` decimal(23,10) DEFAULT NULL,
  `ftaxprice` decimal(23,10) DEFAULT NULL,
  `ftaxamount` decimal(23,10) DEFAULT NULL,
  `famount` decimal(23,10) DEFAULT NULL,
  `ftax` decimal(23,10) DEFAULT NULL,
  `ftaxrate` decimal(18,2) DEFAULT NULL,
  `fdctamount` decimal(23,10) DEFAULT NULL,
  `fdctrate` decimal(19,2) DEFAULT NULL,
  `fsumcheckqty` decimal(23,10) DEFAULT NULL,
  `fsumcheckamt` decimal(23,10) DEFAULT NULL,
  `forderremark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpursyncstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_easentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbatch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textareafield` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fcodeidlist` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_mscp_dcdorderentry_fk` (`FId`),
  KEY ```FEntryId``` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_dcdorderentry_r3 definition

CREATE TABLE `t_mscp_dcdorderentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_dcdstockentry definition

CREATE TABLE `t_mscp_dcdstockentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `freqnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmanufid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstockseq` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstockid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialid` bigint DEFAULT NULL,
  `funitid` bigint DEFAULT NULL,
  `funbillqty` decimal(23,4) DEFAULT NULL,
  `freceivedqty` decimal(23,4) DEFAULT NULL,
  `fprojectid` bigint DEFAULT NULL,
  `ftrackid` bigint DEFAULT NULL,
  `fprocess` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_mscp_dcdstockentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_getprocess definition

CREATE TABLE `t_mscp_getprocess` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_fbusinessdate` datetime DEFAULT NULL,
  `fk_jrx_fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_finventoryorgid` bigint DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_fstarttrackid` bigint DEFAULT NULL,
  `fk_jrx_fendtrackid` bigint DEFAULT NULL,
  `fk_jrx_fremark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fisrelateprocess` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_feasgetprocessid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fisdelivery` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_invoicebill_lk definition

CREATE TABLE `t_mscp_invoicebill_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_mscp_invoicebill_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_invoicebill_tc definition

CREATE TABLE `t_mscp_invoicebill_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_MSCP_INVOICEBILL_TC_TBILL` (`FTBillId`),
  KEY `IDX_MSCP_INVOICEBILL_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_invoicebill_tc_230201 definition

CREATE TABLE `t_mscp_invoicebill_tc_230201` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_invoicebill_wb definition

CREATE TABLE `t_mscp_invoicebill_wb` (
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
  KEY `idx_mscp_invoicebill_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_invoiceentry definition

CREATE TABLE `t_mscp_invoiceentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `finvoicetype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `finvoicecode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finvoicenum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `finvoiceamount` decimal(23,10) DEFAULT NULL,
  `finvoicedate` datetime DEFAULT NULL,
  `fdownload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `famountax` decimal(23,10) DEFAULT NULL,
  `fextaxamount` decimal(23,10) DEFAULT NULL,
  `fremark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frowcheckstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fserialno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_mscp_invoiceentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_invoicerecord definition

CREATE TABLE `t_mscp_invoicerecord` (
  `FID` bigint NOT NULL,
  `foperator` bigint DEFAULT NULL,
  `fdatetime` datetime DEFAULT NULL,
  `faction` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `freason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbackcouriernum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEntryId` bigint NOT NULL DEFAULT '0',
  `FSeq` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_invoicerecord_r3 definition

CREATE TABLE `t_mscp_invoicerecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_loadvicedeyentry definition

CREATE TABLE `t_mscp_loadvicedeyentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fdeliverymaterialid` bigint DEFAULT NULL,
  `fdmaterialid` bigint DEFAULT NULL,
  `fk_jrx_basedatapropfield` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_basedatapropfield1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fdwarehouseid` bigint DEFAULT NULL,
  `frequireqty` decimal(23,4) DEFAULT NULL,
  `fddeliveredqty` decimal(23,4) DEFAULT NULL,
  `fdcandeliveryqty` decimal(23,4) DEFAULT NULL,
  `fcurrdeliveryqty` decimal(23,4) DEFAULT NULL,
  `fstorekeeper` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdeliveryproject` bigint DEFAULT NULL,
  `ftrackno` bigint DEFAULT NULL,
  `fusableqty` decimal(23,10) DEFAULT NULL,
  `frequiredate` datetime DEFAULT NULL,
  `fpurgroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurperson` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmpq` decimal(23,4) DEFAULT NULL,
  `fpurtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frequirecust` bigint DEFAULT NULL,
  `fpurcust` bigint DEFAULT NULL,
  `fdeliveryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_workshop` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_workshopclassify` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_mscp_loadvicedeyentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_loadvicepurentr_r3 definition

CREATE TABLE `t_mscp_loadvicepurentr_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_loadvicepurentry definition

CREATE TABLE `t_mscp_loadvicepurentry` (
  `fentryid` bigint NOT NULL,
  `fpobillno` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fentrymaterialid` bigint DEFAULT NULL,
  `funitid` bigint DEFAULT NULL,
  `fqty` decimal(23,10) DEFAULT NULL,
  `fbatch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsupplierid` bigint DEFAULT NULL,
  `fcodeserialnum` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fprojectid` bigint DEFAULT NULL,
  `fcodeidlist` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FId` bigint NOT NULL DEFAULT '0',
  `FSeq` int NOT NULL DEFAULT '0',
  `flinetypeid` bigint DEFAULT NULL,
  `fmaterialid` bigint DEFAULT NULL,
  `fmaterialnametext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_purmfrsupplier` bigint DEFAULT NULL,
  `fpobillnoid` bigint DEFAULT NULL,
  `fdelidate` datetime DEFAULT NULL,
  `fk_jrx_isbzq` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fsavedaylong` decimal(23,2) DEFAULT NULL,
  `fk_jrx_shengchanriqi` datetime DEFAULT NULL,
  `fautorecbillno` varchar(77) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_expdate` datetime DEFAULT NULL,
  `fproddate` datetime DEFAULT NULL,
  `fduedate` datetime DEFAULT NULL,
  `fmaterialname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialmodel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fispresent` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fsuplot` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fnotpushqty` decimal(23,10) DEFAULT NULL,
  `foverqty` decimal(23,10) DEFAULT NULL,
  `flotid` bigint DEFAULT NULL,
  `fwarehouseid` bigint DEFAULT NULL,
  `fdeliaddr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprice` decimal(23,10) DEFAULT NULL,
  `ftaxrateid` bigint DEFAULT NULL,
  `ftaxprice` decimal(23,10) DEFAULT NULL,
  `fdctrate` decimal(19,2) DEFAULT NULL,
  `fdctamount` decimal(23,10) DEFAULT NULL,
  `ftaxrate` decimal(19,2) DEFAULT NULL,
  `frowlogstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftax` decimal(23,10) DEFAULT NULL,
  `famount` decimal(23,10) DEFAULT NULL,
  `ftaxamount` decimal(23,10) DEFAULT NULL,
  `fnote` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fgoodsid` bigint DEFAULT NULL,
  `fgoodsdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `freqorgid` bigint DEFAULT NULL,
  `fpurorgid` bigint DEFAULT NULL,
  `frcvorgid` bigint DEFAULT NULL,
  `fsettleorgid` bigint DEFAULT NULL,
  `fpayorgid` bigint DEFAULT NULL,
  `fentrystatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcheckstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsumcheckqty` decimal(23,10) DEFAULT NULL,
  `fsumcheckamt` decimal(23,10) DEFAULT NULL,
  `fk_jrx_qtyfield1` decimal(23,10) DEFAULT NULL,
  `fsuminstockqty` decimal(23,10) DEFAULT NULL,
  `flocamount` decimal(23,10) DEFAULT NULL,
  `floctax` decimal(23,10) DEFAULT NULL,
  `floctaxamount` decimal(23,10) DEFAULT NULL,
  `factprice` decimal(23,10) DEFAULT NULL,
  `facttaxprice` decimal(23,10) DEFAULT NULL,
  `fasstunitid` bigint DEFAULT NULL,
  `fasstqty` decimal(23,10) DEFAULT NULL,
  `fbasicunitid` bigint DEFAULT NULL,
  `fbasicqty` decimal(23,10) DEFAULT NULL,
  `fpobillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpoentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpcbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpcbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpcentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frejectqty` decimal(23,10) DEFAULT NULL,
  `frejectreason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftraceid` bigint DEFAULT NULL,
  `fendtraceid` bigint DEFAULT NULL,
  `fsrcbilltype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsrcbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsrcentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpackageno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `forder_packtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fnetweight` decimal(23,4) DEFAULT NULL,
  `fpursyncstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `froughweight` decimal(23,4) DEFAULT NULL,
  `fmixlongsize` decimal(23,4) DEFAULT NULL,
  `fmixweigthsize` decimal(23,4) DEFAULT NULL,
  `fmixheightsize` decimal(23,4) DEFAULT NULL,
  `fmaterialqty` decimal(23,4) DEFAULT NULL,
  `fampackageqty` decimal(23,4) DEFAULT NULL,
  `flocation` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `flocationclass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_basedatapropfield` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_businesstype1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_entryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_crrc_isbyoitem` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_crrc_isownermaterial` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`),
  KEY ```fentryid``` (`fentryid`),
  KEY ```FId``` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_loadvicepurentry_lk definition

CREATE TABLE `t_mscp_loadvicepurentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  `fqty_old` decimal(23,10) DEFAULT NULL,
  `fqty` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_mscp_loadvicepurentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_loasamaterial definition

CREATE TABLE `t_mscp_loasamaterial` (
  `FID` bigint NOT NULL,
  `fsamaterialnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsamaterialname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsamaterial` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsamodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsaqty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsaunit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsaprojectnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsaprojectname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsataiw` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fitemno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsaclass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsaclassname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textfield12` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fmaterialcontent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsafybatchnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_foreignname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_materiallistno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_materialno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_nanmaterialname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_mfrsupplier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_proddate` datetime DEFAULT NULL,
  `FEntryId` bigint NOT NULL DEFAULT '0',
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_saunit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_loasamaterial_r3 definition

CREATE TABLE `t_mscp_loasamaterial_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_materialreqentr_r3 definition

CREATE TABLE `t_mscp_materialreqentr_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_mscp_materialreqentry definition

CREATE TABLE `t_mscp_materialreqentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmaterialreqpoid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialreqpoentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialid` bigint DEFAULT NULL,
  `fmaterialnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialreqno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fshouldqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_qtyfield` decimal(23,10) DEFAULT NULL,
  `fproject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprojectname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftrack` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprojectjch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprojectjchid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `foperationname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fteam` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftextfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_traytype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_traynumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_istray` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_trayway` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_lceasentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_unit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_unitname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_mscp_materialreqentry_fk` (`FId`),
  KEY ```FEntryId``` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_ordchange_lk definition

CREATE TABLE `t_pur_ordchange_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_pur_ordchange_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_ordchange_tc definition

CREATE TABLE `t_pur_ordchange_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_PUR_ORDCHANGE_TC_TBILL` (`FTBillId`),
  KEY `IDX_PUR_ORDCHANGE_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_ordchange_wb definition

CREATE TABLE `t_pur_ordchange_wb` (
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
  KEY `idx_pur_ordchange_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_ordchangentry_lk definition

CREATE TABLE `t_pur_ordchangentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx_pur_ordchangentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_order definition

CREATE TABLE `t_pur_order` (
  `FID` bigint NOT NULL,
  `fpurtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fcfmid` bigint DEFAULT NULL,
  `fhiscfm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_order_r3 definition

CREATE TABLE `t_pur_order_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_orderejectreasonatt definition

CREATE TABLE `t_pur_orderejectreasonatt` (
  `FPKID` bigint NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FBasedataId` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_orderentry definition

CREATE TABLE `t_pur_orderentry` (
  `FID` bigint NOT NULL,
  `fpobillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialid` bigint DEFAULT NULL,
  `funitid` bigint DEFAULT NULL,
  `fqty` decimal(23,10) DEFAULT NULL,
  `fdelidate` datetime DEFAULT NULL,
  `fprojectid` bigint DEFAULT NULL,
  `ftraceid` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_orderentry_q definition

CREATE TABLE `t_pur_orderentry_q` (
  `FID` bigint NOT NULL,
  `fsupplierid` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_orderentry_r3 definition

CREATE TABLE `t_pur_orderentry_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_return definition

CREATE TABLE `t_pur_return` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fbusinesstypeid` bigint DEFAULT NULL,
  `fbilldate` datetime DEFAULT NULL,
  `FRetType` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSumTaxAmount` decimal(23,10) DEFAULT NULL,
  `FPurOrgID` bigint DEFAULT NULL,
  `FPersonID` bigint DEFAULT NULL,
  `FSettleOrgID` bigint DEFAULT NULL,
  `FSupplierID` bigint DEFAULT NULL,
  `fcontacterid` bigint DEFAULT NULL,
  `FRemark` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FReplenishType` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fischeck` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fchkbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fwriteoffflag` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPayCondID` bigint DEFAULT NULL,
  `FSettleTypeID` bigint DEFAULT NULL,
  `FCurrID` bigint DEFAULT NULL,
  `FTaxType` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLocCurrID` bigint DEFAULT NULL,
  `FExchTypeID` bigint DEFAULT NULL,
  `FExchRate` decimal(23,10) DEFAULT NULL,
  `FBizType` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsumqty` decimal(19,2) DEFAULT NULL,
  `FSumAmount` decimal(23,10) DEFAULT NULL,
  `FSumTax` decimal(23,10) DEFAULT NULL,
  `fsupaddr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDeliSupID` bigint DEFAULT NULL,
  `FInvoiceSupID` bigint DEFAULT NULL,
  `FPayeeSupID` bigint DEFAULT NULL,
  `freqorgid` bigint DEFAULT NULL,
  `fpayorgid` bigint DEFAULT NULL,
  `FCfmStatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fserialnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `flastupdateuserid` bigint DEFAULT NULL,
  `flastupdatetime` datetime DEFAULT NULL,
  `fcfmid` bigint DEFAULT NULL,
  `fcfmdate` datetime DEFAULT NULL,
  `FOrigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBizPartnerID` bigint DEFAULT NULL,
  `fiscentersettle` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_basedatafield` bigint DEFAULT NULL,
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_return_l definition

CREATE TABLE `t_pur_return_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRemark` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx_pur_return_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_returnentry definition

CREATE TABLE `t_pur_returnentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FPOBillNo` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `flinetypeid` bigint DEFAULT NULL,
  `FMaterialID` bigint DEFAULT NULL,
  `fmaterialnametext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_materialname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_materialmodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMaterialDesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUnitId` bigint DEFAULT NULL,
  `FQty` decimal(19,6) DEFAULT NULL,
  `FReplenishQty` decimal(19,6) DEFAULT NULL,
  `FMaterialNewID` bigint DEFAULT NULL,
  `FRetReason` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPrice` decimal(23,10) DEFAULT NULL,
  `FTaxPrice` decimal(23,10) DEFAULT NULL,
  `FDctRate` decimal(19,2) DEFAULT NULL,
  `FDctAmount` decimal(23,10) DEFAULT NULL,
  `FAmount` decimal(23,10) DEFAULT NULL,
  `ftaxrateid` bigint DEFAULT NULL,
  `FTaxRate` decimal(19,2) DEFAULT NULL,
  `FTax` decimal(23,10) DEFAULT NULL,
  `FTaxAmount` decimal(23,10) DEFAULT NULL,
  `FIsPresent` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWarehouseID` bigint DEFAULT NULL,
  `FlotID` bigint DEFAULT NULL,
  `flotnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSupLot` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FProdDate` datetime DEFAULT NULL,
  `FDueDate` datetime DEFAULT NULL,
  `FNote` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurtypeid` bigint DEFAULT NULL,
  `FReqOrgID` bigint DEFAULT NULL,
  `fpurorgid` bigint DEFAULT NULL,
  `FInvOrgID` bigint DEFAULT NULL,
  `fpayorgid` bigint DEFAULT NULL,
  `FEntryStatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSumCheckQty` decimal(23,10) DEFAULT NULL,
  `FSumCheckAmt` decimal(23,10) DEFAULT NULL,
  `finvoiceqty` decimal(19,6) DEFAULT NULL,
  `finvoiceamt` decimal(23,10) DEFAULT NULL,
  `funmatchqty` decimal(23,10) DEFAULT NULL,
  `funmatchbaseqty` decimal(23,10) DEFAULT NULL,
  `fischeckorinvoice` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fsuminvoiceqty` decimal(23,10) DEFAULT NULL,
  `FSumReturnQty` decimal(23,10) DEFAULT NULL,
  `FSettleSupID` bigint DEFAULT NULL,
  `fgoodsid` bigint DEFAULT NULL,
  `fk_jrx_goodsname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_goodsmodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fgoodsdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLocAmount` decimal(23,10) DEFAULT NULL,
  `FLocTax` decimal(23,10) DEFAULT NULL,
  `FLocTaxAmount` decimal(23,10) DEFAULT NULL,
  `FActPrice` decimal(23,10) DEFAULT NULL,
  `FActTaxPrice` decimal(23,10) DEFAULT NULL,
  `FBasicUnitID` bigint DEFAULT NULL,
  `FBasicQty` decimal(23,10) DEFAULT NULL,
  `FAsstUnitID` bigint DEFAULT NULL,
  `FAsstQty` decimal(19,6) DEFAULT NULL,
  `fprojectid` bigint DEFAULT NULL,
  `ftraceid` bigint DEFAULT NULL,
  `FPOBillID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOEntryID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPCBillNo` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPCBillID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPCEntryID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSrcBillType` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSrcBillID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSrcEntryID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsrcinsbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsrcinsentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpcprice` decimal(23,10) DEFAULT NULL,
  `fpcnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsettleorgid` bigint DEFAULT NULL,
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx_pur_returnentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_saloutstock_log definition

CREATE TABLE `t_pur_saloutstock_log` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fsupplierid` bigint DEFAULT NULL,
  `flogbillno` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `flogdate` datetime DEFAULT NULL,
  `fdelidate` datetime DEFAULT NULL,
  `fnote` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_pur_saloutstock_log_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_saloutstock_rej definition

CREATE TABLE `t_pur_saloutstock_rej` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fpobillno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `finbillno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialid` bigint DEFAULT NULL,
  `funitid` bigint DEFAULT NULL,
  `frejdate` datetime DEFAULT NULL,
  `frejectqty` decimal(23,10) DEFAULT NULL,
  `frejectreason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpoentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpobillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_pur_saloutstock_rej_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_saloutstock_tc definition

CREATE TABLE `t_pur_saloutstock_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_PUR_SALOUTSTOCK_TC_TBILL` (`FTBillId`),
  KEY `IDX_PUR_SALOUTSTOCK_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_pur_saloutstock_wb definition

CREATE TABLE `t_pur_saloutstock_wb` (
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
  KEY `idx_PUR_SALOUTSTOCK_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.t_wf_jobrecord definition

CREATE TABLE `t_wf_jobrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCKEXPTIME` datetime DEFAULT NULL,
  `FLOCKOWNERID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCLUSIVE` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FEXECUTIONID` bigint NOT NULL DEFAULT '0',
  `FPROCESSINSTANCEID` bigint NOT NULL DEFAULT '0',
  `FPROCDEFID` bigint NOT NULL DEFAULT '0',
  `FRETRIES` int NOT NULL DEFAULT '3',
  `FEXCEPTIONMSG` longtext COLLATE utf8mb4_unicode_ci,
  `FDUEDATE` datetime DEFAULT NULL,
  `FREPEAT` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERCFG` longtext COLLATE utf8mb4_unicode_ci,
  `FBUSINESSKEY` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FSRCJOBID` bigint NOT NULL DEFAULT '0',
  `FROOTTRACENO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FExecutor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUCCESS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fendtime` datetime DEFAULT NULL,
  `fduration` bigint NOT NULL DEFAULT '0',
  `fstate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROOTJOBID` bigint NOT NULL DEFAULT '0',
  `FBIZTRACENO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGUNITID` bigint NOT NULL DEFAULT '0',
  `FORGVIEWID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_WF_JOBRECORD_LOCKSTATE` (`FLOCKEXPTIME`,`fstate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_customer definition

CREATE TABLE `tk_crrc_customer` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FNAME` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_customer_l definition

CREATE TABLE `tk_crrc_customer_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__crrc_customer_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_customer_r3 definition

CREATE TABLE `tk_crrc_customer_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_easinstockentry definition

CREATE TABLE `tk_crrc_easinstockentry` (
  `FID` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FK_CRRC_MATERIALID` bigint DEFAULT NULL COMMENT '物料',
  `FK_CRRC_EASENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'EAS分录ID',
  `FK_CRRC_EASQTY` decimal(23,10) DEFAULT NULL COMMENT 'EAS数量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__crrc_easinstockentry_fk` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_geteasinstock definition

CREATE TABLE `tk_crrc_geteasinstock` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '入库单号',
  `FK_CRRC_EASID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'EAS入库单ID',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  `FK_CRRC_EASDATE` datetime DEFAULT NULL COMMENT 'EAS业务日期',
  `FK_CRRC_SUPPLIER` bigint DEFAULT NULL COMMENT '供应商',
  `FK_JRX_ORG` bigint DEFAULT NULL COMMENT '收货方',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_geteasinstock_l definition

CREATE TABLE `tk_crrc_geteasinstock_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__crrc_geteasinstock_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_geteasinstock_r3 definition

CREATE TABLE `tk_crrc_geteasinstock_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_jrx_salesplan definition

CREATE TABLE `tk_crrc_jrx_salesplan` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_saleorg` bigint DEFAULT NULL,
  `fk_crrc_saleperson` bigint DEFAULT NULL,
  `fk_crrc_contno` bigint DEFAULT NULL,
  `fk_crrc_salegroup` bigint DEFAULT NULL,
  `fk_crrc_adminorgunit` bigint DEFAULT NULL,
  `fk_crrc_companyorgunit` bigint DEFAULT NULL,
  `fk_crrc_purchaseorgunit` bigint DEFAULT NULL,
  `fk_crrc_description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_isreverse` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_crrc_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_ordercustomer` bigint DEFAULT NULL,
  `fk_crrc_saletype` bigint DEFAULT NULL,
  `fk_crrc_branchpurordernum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_iscentralbalance` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_crrc_unitsource` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_totaltaxamount` decimal(23,10) DEFAULT NULL,
  `fk_crrc_localtotaltaxamou` decimal(23,10) DEFAULT NULL,
  `fk_crrc_totalamount` decimal(23,10) DEFAULT NULL,
  `fk_crrc_localtotalamount` decimal(23,10) DEFAULT NULL,
  `fk_crrc_customerordernumb` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_sourcefunction` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_customerphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_linkman` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_warehouse` bigint DEFAULT NULL,
  `fk_crrc_storageorgunit` bigint DEFAULT NULL,
  `fk_crrc_biztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_date` datetime DEFAULT NULL,
  `fk_crrc_contractgroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_jrx_salesplan_lk definition

CREATE TABLE `tk_crrc_jrx_salesplan_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx__crrc_jrx_salesplan_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_jrx_salesplan_tc definition

CREATE TABLE `tk_crrc_jrx_salesplan_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_TK_CRRC_JRX_SALESPLAN_TC_TBILL` (`FTBillId`),
  KEY `IDX_TK_CRRC_JRX_SALESPLAN_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_jrx_salesplan_wb definition

CREATE TABLE `tk_crrc_jrx_salesplan_wb` (
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
  KEY `idx__crrc_jrx_salesplan_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_jrx_spareentry definition

CREATE TABLE `tk_crrc_jrx_spareentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_crrc_contsno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_system` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_manuf` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_unit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_remarks` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_partno` bigint DEFAULT NULL,
  `fk_crrc_amount` decimal(23,10) DEFAULT NULL,
  `fk_crrc_totalundownqty` decimal(23,10) DEFAULT NULL,
  `fk_crrc_holeproqty` decimal(23,10) DEFAULT NULL,
  `fk_crrc_onelineqty` decimal(23,10) DEFAULT NULL,
  `fk_crrc_textfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_supplierfield` bigint DEFAULT NULL,
  `fk_crrc_unpricetax` decimal(23,4) DEFAULT NULL,
  `fk_crrc_pricetax` decimal(23,4) DEFAULT NULL,
  `fk_crrc_untaxtotal` decimal(23,4) DEFAULT NULL,
  `fk_crrc_taxtotal` decimal(23,4) DEFAULT NULL,
  `fk_crrc_textfield1` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_integerfield` bigint DEFAULT NULL,
  `fk_crrc_integerfield1` bigint DEFAULT NULL,
  `fk_crrc_integerfield2` bigint DEFAULT NULL,
  `fk_crrc_integerfield3` bigint DEFAULT NULL,
  `fk_crrc_textfield2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_textfield3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__crrc_jrx_spareentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_jrx_spareparts definition

CREATE TABLE `tk_crrc_jrx_spareparts` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_contractno` bigint DEFAULT NULL,
  `fk_crrc_currency` bigint DEFAULT NULL,
  `fk_crrc_taxrate` decimal(23,10) DEFAULT NULL,
  `fk_crrc_belongsys` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_project` bigint DEFAULT NULL,
  `fk_crrc_largetextfield` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_largetextfield_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fk_crrc_basedatafield` bigint DEFAULT NULL,
  `fk_crrc_checkboxfield` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_jrx_yshtkp definition

CREATE TABLE `tk_crrc_jrx_yshtkp` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '合同编号',
  `FK_CRRC_EASSOURCEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'eas原id',
  `FK_CRRC_NAME` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '合同名称',
  `FNAME` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_jrx_yshtkp_l definition

CREATE TABLE `tk_crrc_jrx_yshtkp_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__crrc_jrx_yshtkp_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_jrx_yshtkp_r3 definition

CREATE TABLE `tk_crrc_jrx_yshtkp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_pureiabackbill_co definition

CREATE TABLE `tk_crrc_pureiabackbill_co` (
  `FId` bigint NOT NULL,
  `fk_crrc_billno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_uretime` datetime DEFAULT NULL,
  `fk_crrc_audittime` datetime DEFAULT NULL,
  `fk_crrc_sureman` bigint DEFAULT NULL,
  `fk_crrc_isreasonable` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_crrc_isexecute` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_crrc_executetime` datetime DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_salegroup definition

CREATE TABLE `tk_crrc_salegroup` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_salegroup_l definition

CREATE TABLE `tk_crrc_salegroup_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__crrc_salegroup_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_salegroup_r3 definition

CREATE TABLE `tk_crrc_salegroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_salesplanentry definition

CREATE TABLE `tk_crrc_salesplanentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_crrc_materiel` bigint DEFAULT NULL,
  `fk_crrc_qty` decimal(23,10) DEFAULT NULL,
  `fk_crrc_unpricetax` decimal(23,4) DEFAULT NULL,
  `fk_crrc_pricetax` decimal(23,4) DEFAULT NULL,
  `fk_crrc_untaxtotal` decimal(23,4) DEFAULT NULL,
  `fk_crrc_taxtotal` decimal(23,4) DEFAULT NULL,
  `fk_crrc_onelineqty` decimal(23,10) DEFAULT NULL,
  `fk_crrc_holeproqty` decimal(23,10) DEFAULT NULL,
  `fk_crrc_project` bigint DEFAULT NULL,
  `fk_crrc_trace` bigint DEFAULT NULL,
  `fk_crrc_deliverydate` datetime DEFAULT NULL,
  `fk_crrc_manuf` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_text` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_vehicletype` bigint DEFAULT NULL,
  `fk_crrc_taxrate` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__crrc_salesplanentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_salesplanentry_lk definition

CREATE TABLE `tk_crrc_salesplanentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx__crrc_salesplanentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_saletype definition

CREATE TABLE `tk_crrc_saletype` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_saletype_l definition

CREATE TABLE `tk_crrc_saletype_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__crrc_saletype_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_saletype_r3 definition

CREATE TABLE `tk_crrc_saletype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_vehicletype definition

CREATE TABLE `tk_crrc_vehicletype` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_CRRC_DATATYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '资料类型',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_vehicletype_l definition

CREATE TABLE `tk_crrc_vehicletype_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__crrc_vehicletype_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_crrc_vehicletype_r3 definition

CREATE TABLE `tk_crrc_vehicletype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_bankentry definition

CREATE TABLE `tk_jrx_bankentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_bankname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_banknnono` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_bankfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_bankdate` datetime DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_bankentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_bankentryn definition

CREATE TABLE `tk_jrx_bankentryn` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_banknamen` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_banknnonon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_bankdatenew` datetime DEFAULT NULL,
  `fk_jrx_bankfilenew` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_bankentryn_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_bankentryod definition

CREATE TABLE `tk_jrx_bankentryod` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_bankname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_banknnono` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_bankdate` datetime DEFAULT NULL,
  `fk_jrx_bankfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_bankentryod_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_billsupfildmapp_r3 definition

CREATE TABLE `tk_jrx_billsupfildmapp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_billsupfildmappin definition

CREATE TABLE `tk_jrx_billsupfildmappin` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '单据标识',
  `FK_JRX_SUPFILD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '供应商标识',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_billsupfildmappin_l definition

CREATE TABLE `tk_jrx_billsupfildmappin_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_billsupfildmappin_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_ccfzpurentry definition

CREATE TABLE `tk_jrx_ccfzpurentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fpurid` bigint DEFAULT NULL,
  `fpurnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurorderid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurorderentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurseq` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_order_materialname1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_order_modelnum1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_order_mversion1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialunitid` bigint DEFAULT NULL,
  `fpurqty` decimal(23,4) DEFAULT NULL,
  `ftotalundownqty` decimal(23,4) DEFAULT NULL,
  `fdcdqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_spur_supplier` bigint DEFAULT NULL,
  `fprojectid` bigint DEFAULT NULL,
  `fk_jrx_order_projectname1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftrackid` bigint DEFAULT NULL,
  `fk_jrx_order_trackname1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftotalreceiptqty` decimal(23,10) DEFAULT NULL,
  `feaspurid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `feaspurentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_productname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_productmodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_ccfzpurentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_ccstockentry definition

CREATE TABLE `tk_jrx_ccstockentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `freqnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmanufid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstockseq` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstockid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_stock_materialname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `funitid` bigint DEFAULT NULL,
  `funbillqty` decimal(23,4) DEFAULT NULL,
  `freceivedqty` decimal(23,4) DEFAULT NULL,
  `fprojectid` bigint DEFAULT NULL,
  `fk_jrx_stock_projectname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftrackid` bigint DEFAULT NULL,
  `fprocess` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_ccstockentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_clczxlhgl definition

CREATE TABLE `tk_jrx_clczxlhgl` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_wlbm` bigint DEFAULT NULL,
  `fk_jrx_wlewm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_clczxlh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_company` bigint DEFAULT NULL,
  `fk_jrx_tbstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_srcbillid` bigint DEFAULT NULL,
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_concomydcd definition

CREATE TABLE `tk_jrx_concomydcd` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fbizdate` datetime DEFAULT NULL,
  `fdeliveryorgid` bigint DEFAULT NULL,
  `fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_mfrsupplier` bigint DEFAULT NULL,
  `fdcdtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsupplierid` bigint DEFAULT NULL,
  `fflow` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdcdtypeid` bigint DEFAULT NULL,
  `ftypenumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftypename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftrantype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fremark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fremark_tag` longtext COLLATE utf8mb4_unicode_ci,
  `feasbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsyncstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ferrormsg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ferrormsg_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fcodenumid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `freqorgid` bigint DEFAULT NULL,
  `fworkcent` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fiscatbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_easentryids` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_controlnode definition

CREATE TABLE `tk_jrx_controlnode` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_controlnode_l definition

CREATE TABLE `tk_jrx_controlnode_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_controlnode_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_controlnode_r3 definition

CREATE TABLE `tk_jrx_controlnode_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_cpentitynew definition

CREATE TABLE `tk_jrx_cpentitynew` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_agencysupname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_authorizationdate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_purfinishdate` datetime DEFAULT NULL,
  `fk_jrx_productname` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_productclass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_productdate` datetime DEFAULT NULL,
  `fk_jrx_crccfinishdate` datetime DEFAULT NULL,
  `fk_jrx_crccfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_other` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_otherfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_suplevelnew` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supqualificationsn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_eselforproxy` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_cpentitynew_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_cpentityold definition

CREATE TABLE `tk_jrx_cpentityold` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_agencysupnameod` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_authorizationdateo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_purfinishdateod` datetime DEFAULT NULL,
  `fk_jrx_productnameod` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_productclassod` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_productdateod` datetime DEFAULT NULL,
  `fk_jrx_crccfinishdateod` datetime DEFAULT NULL,
  `fk_jrx_crccfileod` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_otherod` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_otherfileod` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_suplevelold` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supqualificationso` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_eselforproxyod` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_cpentityold_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_cpentry definition

CREATE TABLE `tk_jrx_cpentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_productname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_productclass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_productdate` datetime DEFAULT NULL,
  `fk_jrx_crccfinishdate` datetime DEFAULT NULL,
  `fk_jrx_crccfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_other` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_otherfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_agencysupname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_authorizationdate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_purfinishdate` datetime DEFAULT NULL,
  `fk_jrx_materialstyle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_suplevel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supqualifications` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_eselforproxy` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_cpentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_cpreqpurentry definition

CREATE TABLE `tk_jrx_cpreqpurentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_pmaterialno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pmaterialname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pmaterialmodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_punit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ppurdate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pdeliverydate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pproject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pprojectname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pnotpushqty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pqty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_phasqty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_phasonqty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_cpreqpurentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_cpreqsaleentry definition

CREATE TABLE `tk_jrx_cpreqsaleentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_smaterialno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_smaterialname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_smaterialmodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_sqty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_shasqty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_saddqty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_sprice` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_samount` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_cpreqsaleentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dcdeliveryplan definition

CREATE TABLE `tk_jrx_dcdeliveryplan` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_businesstype` bigint DEFAULT NULL,
  `fk_jrx_biztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fbilldate` datetime DEFAULT NULL,
  `fk_jrx_fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_lastupdateuser` bigint DEFAULT NULL,
  `fk_jrx_lastupdatetime` datetime DEFAULT NULL,
  `fk_jrx_fbizpartnerid` bigint DEFAULT NULL,
  `fk_jrx_fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_frcvorgid` bigint DEFAULT NULL,
  `fk_jrx_freqorgid` bigint DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_ftraceid` bigint DEFAULT NULL,
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_funitid` bigint DEFAULT NULL,
  `fk_jrx_fqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fdemanddate` datetime DEFAULT NULL,
  `fk_jrx_fordernumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurpersonid` bigint DEFAULT NULL,
  `fk_jrx_fpurgroup` bigint DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fwmpersonid` bigint DEFAULT NULL,
  `fk_jrx_combofield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fworkshop` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcarnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fworkcentername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fworkcenterno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_foperationname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_foperationno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fissolaterule` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsuminstockqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fwarehouseid` bigint DEFAULT NULL,
  `fk_jrx_fsumdeliveryqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fflow` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_forigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_forderid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_forderentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_feasdcdbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurorderlist` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurorderentrylist` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dcdeliveryplan_a definition

CREATE TABLE `tk_jrx_dcdeliveryplan_a` (
  `FId` bigint NOT NULL,
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_fcfmid` bigint DEFAULT NULL,
  `fk_jrx_fcfmdate` datetime DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dcdeliveryplan_l definition

CREATE TABLE `tk_jrx_dcdeliveryplan_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_fremark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_dcdeliveryplan_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dcdorderentry definition

CREATE TABLE `tk_jrx_dcdorderentry` (
  `FID` bigint NOT NULL,
  `fordernumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialid` bigint NOT NULL,
  `fmaterialunitid` bigint DEFAULT NULL,
  `fk_order_dcdqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_batch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_order_supplier` bigint DEFAULT NULL,
  `fk_jrx_codeserialnum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprojectid` bigint DEFAULT NULL,
  `fk_jrx_codeidlist` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurorderid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `feaspurentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEntryId` bigint NOT NULL DEFAULT '0',
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_purmfrsupplierid` bigint DEFAULT NULL,
  `fpurid` bigint DEFAULT NULL,
  `fk_jrx_entrustorg` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `forderseq` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_order_materialname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_order_modelnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fqty` decimal(23,4) DEFAULT NULL,
  `ftotalundownqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_order_projectname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftrackid` bigint DEFAULT NULL,
  `fk_jrx_order_trackname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftotalreceiptqty` decimal(23,10) DEFAULT NULL,
  `feaspurid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprice` decimal(23,10) DEFAULT NULL,
  `ftaxprice` decimal(23,10) DEFAULT NULL,
  `ftaxamount` decimal(23,10) DEFAULT NULL,
  `famount` decimal(23,10) DEFAULT NULL,
  `ftax` decimal(23,10) DEFAULT NULL,
  `ftaxrate` decimal(18,2) DEFAULT NULL,
  `fdctamount` decimal(23,10) DEFAULT NULL,
  `fdctrate` decimal(19,2) DEFAULT NULL,
  `fsumcheckqty` decimal(23,10) DEFAULT NULL,
  `fsumcheckamt` decimal(23,10) DEFAULT NULL,
  `forderremark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpursyncstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_easentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dcdorderentry_r3 definition

CREATE TABLE `tk_jrx_dcdorderentry_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dcdpfeedback definition

CREATE TABLE `tk_jrx_dcdpfeedback` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_businesstype` bigint DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_fbilldate` datetime DEFAULT NULL,
  `fk_jrx_fbiztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_forgid` bigint DEFAULT NULL,
  `fk_jrx_frcvorgid` bigint DEFAULT NULL,
  `fk_jrx_freqorgid` bigint DEFAULT NULL,
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_funitid` bigint DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_ftraceid` bigint DEFAULT NULL,
  `fk_jrx_fdemanddate` datetime DEFAULT NULL,
  `fk_jrx_fdemandqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ffbstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcommitqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fcommitdate` datetime DEFAULT NULL,
  `fk_jrx_freason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ffbdate` datetime DEFAULT NULL,
  `fk_jrx_ffbuser` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fdeliveredqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fwarehouseid` bigint DEFAULT NULL,
  `fk_jrx_fextsourceid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_lastupdateuser` bigint DEFAULT NULL,
  `fk_jrx_lastupdatetime` datetime DEFAULT NULL,
  `fk_jrx_fbizpartnerid` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dcdpfeedback_a definition

CREATE TABLE `tk_jrx_dcdpfeedback_a` (
  `FId` bigint NOT NULL,
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_fcfmid` bigint DEFAULT NULL,
  `fk_jrx_fcfmdate` datetime DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dcdpfeedback_l definition

CREATE TABLE `tk_jrx_dcdpfeedback_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_fremark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_dcdpfeedback_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dcdpfeedbackentry definition

CREATE TABLE `tk_jrx_dcdpfeedbackentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_fentrysupplierid` bigint DEFAULT NULL,
  `fk_jrx_fentrymaterialid` bigint DEFAULT NULL,
  `fk_jrx_fentryunitid` bigint DEFAULT NULL,
  `fk_jrx_fentrycommitdate` datetime DEFAULT NULL,
  `fk_jrx_fentrypurorgid` bigint DEFAULT NULL,
  `fk_jrx_fentrycommitqty` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_dcdpfeedbackentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dcdptofb definition

CREATE TABLE `tk_jrx_dcdptofb` (
  `FId` bigint NOT NULL,
  `fk_jrx_fdcdpid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fdcdpfbid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fdelfbqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fusefbqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fdemanddate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsupplydate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_forigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcommitdate` datetime DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_deliveryflow definition

CREATE TABLE `tk_jrx_deliveryflow` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_ORG` bigint DEFAULT NULL COMMENT '库存组织',
  `FK_JRX_PROJECT` bigint DEFAULT NULL COMMENT '项目号',
  `FK_JRX_TRACKNUMBER` bigint DEFAULT NULL COMMENT '跟踪号',
  `FK_JRX_SUPPLIER` bigint DEFAULT NULL COMMENT '供应商',
  `FK_JRX_FLOW` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '流程字',
  `FK_JRX_FLOWID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '流程字id',
  `FK_JRX_EASID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'easid',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_deliveryflow_l definition

CREATE TABLE `tk_jrx_deliveryflow_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_deliveryflow_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_deliveryflow_r3 definition

CREATE TABLE `tk_jrx_deliveryflow_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_deliveryplan definition

CREATE TABLE `tk_jrx_deliveryplan` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_businesstype` bigint DEFAULT NULL,
  `fk_jrx_purorg` bigint DEFAULT NULL,
  `fk_jrx_rcvorg` bigint DEFAULT NULL,
  `fk_jrx_reqorg` bigint DEFAULT NULL,
  `fk_jrx_datefield` datetime DEFAULT NULL,
  `fk_jrx_material` bigint DEFAULT NULL,
  `fk_jrx_unit` bigint DEFAULT NULL,
  `fk_jrx_qty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_trace` bigint DEFAULT NULL,
  `fk_jrx_purgroup` bigint DEFAULT NULL,
  `fk_jrx_basedatafield` bigint DEFAULT NULL,
  `fk_jrx_flow` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_workshopclassify` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_workshop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_warehouse` bigint DEFAULT NULL,
  `fk_jrx_wmperson` bigint DEFAULT NULL,
  `fk_jrx_purtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_issolaterule` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_suminstockqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_sumdeliveryqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_supplier` bigint DEFAULT NULL,
  `fk_jrx_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_orderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_orderentryid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_eassourceid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_purorderentrylist` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_purorderlist` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_bizpartner` bigint DEFAULT NULL,
  `fk_jrx_ordernumber` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_isdirect` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_directsuporgid` bigint DEFAULT NULL,
  `fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_directsuporg_new` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`),
  KEY `fk_jrx_supplier` (`fk_jrx_supplier`),
  KEY `fcreatorid` (`fcreatorid`),
  KEY `fk_jrx_eassourceid` (`fk_jrx_eassourceid`),
  KEY `fbillno` (`fbillno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_deliveryplan_r3 definition

CREATE TABLE `tk_jrx_deliveryplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_directsuporg definition

CREATE TABLE `tk_jrx_directsuporg` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_SUPPLIER` bigint DEFAULT NULL COMMENT '供应商',
  `FK_JRX_MATERIEL` bigint DEFAULT NULL COMMENT '物料',
  `FK_JRX_PROJECT` bigint DEFAULT NULL COMMENT '项目号',
  `fk_jrx_org` bigint DEFAULT NULL,
  `FK_JRX_ISDIRECT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '是否直流件',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  `FK_JRX_ORG_NEW` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '供方生产组织',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_directsuporg_230307 definition

CREATE TABLE `tk_jrx_directsuporg_230307` (
  `FID` bigint NOT NULL,
  `fnumber` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supplier` bigint DEFAULT NULL,
  `fk_jrx_materiel` bigint DEFAULT NULL,
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_org` bigint DEFAULT NULL,
  `fk_jrx_isdirect` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fenable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatetime` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fmasterid` bigint DEFAULT NULL,
  `fk_jrx_org_new` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_directsuporg_230307f definition

CREATE TABLE `tk_jrx_directsuporg_230307f` (
  `FID` bigint NOT NULL,
  `fnumber` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supplier` bigint DEFAULT NULL,
  `fk_jrx_materiel` bigint DEFAULT NULL,
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_org` bigint DEFAULT NULL,
  `fk_jrx_isdirect` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fenable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatetime` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fmasterid` bigint DEFAULT NULL,
  `fk_jrx_org_new` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_directsuporg_230307f2 definition

CREATE TABLE `tk_jrx_directsuporg_230307f2` (
  `FID` bigint NOT NULL,
  `fnumber` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supplier` bigint DEFAULT NULL,
  `fk_jrx_materiel` bigint DEFAULT NULL,
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_org` bigint DEFAULT NULL,
  `fk_jrx_isdirect` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fenable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatetime` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fmasterid` bigint DEFAULT NULL,
  `fk_jrx_org_new` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_directsuporg_l definition

CREATE TABLE `tk_jrx_directsuporg_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_directsuporg_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_directsuporg_r3 definition

CREATE TABLE `tk_jrx_directsuporg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dpfbentry definition

CREATE TABLE `tk_jrx_dpfbentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_fentrydeliverydate` datetime DEFAULT NULL,
  `fk_jrx_fentryreqorg` bigint DEFAULT NULL,
  `fk_jrx_fentryrcvorgid` bigint DEFAULT NULL,
  `fk_jrx_fentrydemandqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fentrymaterialid` bigint DEFAULT NULL,
  `fk_jrx_fentryunit` bigint DEFAULT NULL,
  `fk_jrx_fentryprojectid` bigint DEFAULT NULL,
  `fk_jrx_fentrytrace` bigint DEFAULT NULL,
  `fk_jrx_fentrysupplier` bigint DEFAULT NULL,
  `fk_jrx_fentrywarehouse` bigint DEFAULT NULL,
  `fk_jrx_fentrycommitqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fentrycommitdate` datetime DEFAULT NULL,
  `fk_jrx_fentrydeliveredqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fentryfbuser` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fentryreason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_dpfbentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dpfeedback definition

CREATE TABLE `tk_jrx_dpfeedback` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_frcvorgid` bigint DEFAULT NULL,
  `fk_jrx_businesstypeid` bigint DEFAULT NULL,
  `fk_jrx_freqorgid` bigint DEFAULT NULL,
  `fk_jrx_fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_fdeliverydate` datetime DEFAULT NULL,
  `fk_jrx_fwarehouseid` bigint DEFAULT NULL,
  `fk_jrx_fdemandqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_funitid` bigint DEFAULT NULL,
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_ftraceid` bigint DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fcommitdate` datetime DEFAULT NULL,
  `fk_jrx_fcommitqty` decimal(10,4) DEFAULT NULL,
  `fk_jrx_ffbstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ffbdate` datetime DEFAULT NULL,
  `fk_jrx_ffbuser` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fdeliveredqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_funcloseqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_freason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fadjustcontent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fclosereason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fclosetime` datetime DEFAULT NULL,
  `fk_jrx_fdelayday` decimal(10,1) DEFAULT NULL,
  `fk_jrx_fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fmceasid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_forgid` bigint DEFAULT NULL,
  `fk_jrx_fcreatorid` bigint DEFAULT NULL,
  `fk_jrx_fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_fmodifierid` bigint DEFAULT NULL,
  `fk_jrx_fmodifytime` datetime DEFAULT NULL,
  `fk_jrx_fauditorid` bigint DEFAULT NULL,
  `fk_jrx_fauditdate` datetime DEFAULT NULL,
  `fk_jrx_fcfmid` bigint DEFAULT NULL,
  `fk_jrx_fcfmdate` datetime DEFAULT NULL,
  `fk_jrx_fbilldate` datetime DEFAULT NULL,
  `fk_jrx_fbiztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fbizpartnerid` bigint DEFAULT NULL,
  `fk_jrx_fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_forigin` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `fk_jrx_fcreatorid` (`fk_jrx_fcreatorid`),
  KEY `fk_jrx_fmceasid` (`fk_jrx_fmceasid`),
  KEY `fk_jrx_fdeliverydate` (`fk_jrx_fdeliverydate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dpfeedback_l definition

CREATE TABLE `tk_jrx_dpfeedback_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_fremark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_dpfeedback_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dpplanmergeid definition

CREATE TABLE `tk_jrx_dpplanmergeid` (
  `FID` bigint NOT NULL,
  `fk_jrx_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_easid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dpplanmergeid_r3 definition

CREATE TABLE `tk_jrx_dpplanmergeid_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dptofb definition

CREATE TABLE `tk_jrx_dptofb` (
  `FId` bigint NOT NULL,
  `fdpid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmceasdpid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fdpfbid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmceasdpfbid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fusefbqty` decimal(23,10) DEFAULT NULL,
  `fdemanddate` datetime DEFAULT NULL,
  `fsupplydate` datetime DEFAULT NULL,
  `fbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `forigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmceasid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `fmceasdpid` (`fmceasdpid`),
  KEY `fmceasdpfbid` (`fmceasdpfbid`),
  KEY `fmceasid` (`fmceasid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_dptoorder definition

CREATE TABLE `tk_jrx_dptoorder` (
  `FId` bigint NOT NULL,
  `fk_jrx_forderid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_forderentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fdpid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_frcvorgid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_easyffpdata definition

CREATE TABLE `tk_jrx_easyffpdata` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_EASID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'EASID',
  `FK_JRX_YFFPH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '应付发票号',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_easyffpdata_l definition

CREATE TABLE `tk_jrx_easyffpdata_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_easyffpdata_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_easyffpdata_r3 definition

CREATE TABLE `tk_jrx_easyffpdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_entrustmentswit_r3 definition

CREATE TABLE `tk_jrx_entrustmentswit_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_entrustmentswitch definition

CREATE TABLE `tk_jrx_entrustmentswitch` (
  `FID` bigint NOT NULL,
  `fk_jrx_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `jrx_maintain` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_entrustpurreq definition

CREATE TABLE `tk_jrx_entrustpurreq` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_deliverytype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_paymet` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_saleorgid` bigint DEFAULT NULL,
  `fk_jrx_supplierid` bigint DEFAULT NULL,
  `fk_jrx_easpurreqid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_eassalebillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_pbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_sbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_purclass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_sbilldate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_susername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_sstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_suserbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_erpstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_toerpuserid` bigint DEFAULT NULL,
  `fk_jrx_easstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_returnreason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `fk_jrx_supplierid` (`fk_jrx_supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_entrustpurreqentry definition

CREATE TABLE `tk_jrx_entrustpurreqentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_materielfield` bigint DEFAULT NULL,
  `fk_jrx_storageorgunit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_demanddate` datetime DEFAULT NULL,
  `fk_jrx_projectid` bigint DEFAULT NULL,
  `fk_jrx_begintrackid` bigint DEFAULT NULL,
  `fk_jrx_endtrackid` bigint DEFAULT NULL,
  `fk_jrx_flow` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qualityreq` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_unitid` bigint DEFAULT NULL,
  `fk_jrx_purreqid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_salebillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_return` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_crrc_purreqstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_entrustpurreqentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_entrustwhitelis_r3 definition

CREATE TABLE `tk_jrx_entrustwhitelis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_entrustwhitelist definition

CREATE TABLE `tk_jrx_entrustwhitelist` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_SUPPLIER` bigint DEFAULT NULL COMMENT '供应商',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_entrustwhitelist_l definition

CREATE TABLE `tk_jrx_entrustwhitelist_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_entrustwhitelist_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_entryentity definition

CREATE TABLE `tk_jrx_entryentity` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_controlnode` bigint DEFAULT NULL,
  `fk_jrx_datefield` datetime DEFAULT NULL,
  `fk_jrx_attname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_attvalue` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_attnum` bigint DEFAULT NULL,
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_xuliehao` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_filename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_kzname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fileaddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fileaddress_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fk_jrx_textfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_material` bigint DEFAULT NULL,
  `fk_jrx_unitfield` bigint DEFAULT NULL,
  `fk_jrx_qty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_amount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_tatalamount` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_entryentity_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_errortype definition

CREATE TABLE `tk_jrx_errortype` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '异常类别编码',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '异常类别名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_errortype_l definition

CREATE TABLE `tk_jrx_errortype_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_errortype_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_errortype_r3 definition

CREATE TABLE `tk_jrx_errortype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_fcontract definition

CREATE TABLE `tk_jrx_fcontract` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_fcontracts definition

CREATE TABLE `tk_jrx_fcontracts` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_cfproductnumberid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_cfproductname` bigint DEFAULT NULL,
  `fk_jrx_cfmodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_cfbaseuint` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_cforderqty` bigint DEFAULT NULL,
  `fk_jrx_cfprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_cftaxrate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_cftax` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_cfmoney` decimal(23,10) DEFAULT NULL,
  `fk_jrx_cfdeliverydate` int NOT NULL DEFAULT '-1',
  `fk_jrx_cfprojectnameid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_cfsourcearea` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_fcontracts_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_formal_checkbill definition

CREATE TABLE `tk_jrx_formal_checkbill` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_handin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_proname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_protype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_contractno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_writtenwarning1` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_econassess1` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_assesssum1` decimal(23,10) DEFAULT NULL,
  `fk_jrx_scoremarks1` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_pausesupply1` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_pausesum1` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_reducepursum1` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_reducepurcount1` decimal(15,2) DEFAULT NULL,
  `fk_jrx_appealmarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_writtenwarning2` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_econassess2` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_assesssum2` decimal(23,10) DEFAULT NULL,
  `fk_jrx_scoremarks2` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_pausesupply2` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_pausesum2` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_reducepursum2` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_reducepurcount2` decimal(15,2) DEFAULT NULL,
  `fk_jrx_audit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_noaudit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_auditer` bigint DEFAULT NULL,
  `fk_jrx_auditdate` datetime DEFAULT NULL,
  `fk_jrx_approve` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_noapprove` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_approve_user` bigint DEFAULT NULL,
  `fk_jrx_auditremark2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_auditremark1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_approve_date` datetime DEFAULT NULL,
  `fk_jrx_qualityment` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_processment` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_otherment` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_testprocess` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_makeprocess` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_applyscene` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_appealfilename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_assessscore4` decimal(15,2) DEFAULT NULL,
  `fk_jrx_assessscore3` decimal(15,2) DEFAULT NULL,
  `fk_jrx_nkhbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_contractsumt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textareafield2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supplierfield` bigint DEFAULT NULL,
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_getprocessconsign definition

CREATE TABLE `tk_jrx_getprocessconsign` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_fbusinessdate` datetime DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_finventoryorgid` bigint DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_fstarttrackid` bigint DEFAULT NULL,
  `fk_jrx_fendtrackid` bigint DEFAULT NULL,
  `fk_jrx_fremark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fisrelateprocess` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_fnewscoutid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_demandorg` bigint DEFAULT NULL,
  `fk_jrx_barcode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_failmsg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_failmsg_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fk_jrx_iszz` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_isoutbill` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_getprocessconsign_lk definition

CREATE TABLE `tk_jrx_getprocessconsign_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx__jrx_getprocessconsign_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_getprocessconsign_tc definition

CREATE TABLE `tk_jrx_getprocessconsign_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_TK_JRX_GETPROCESSCONSIGN_TC_TBILL` (`FTBillId`),
  KEY `IDX_TK_JRX_GETPROCESSCONSIGN_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_getprocessconsign_wb definition

CREATE TABLE `tk_jrx_getprocessconsign_wb` (
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
  KEY `idx__jrx_getprocessconsign_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_gpchbprint definition

CREATE TABLE `tk_jrx_gpchbprint` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_barcode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supplier` bigint DEFAULT NULL,
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_gpchbprintentry definition

CREATE TABLE `tk_jrx_gpchbprintentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_billno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_starttrack` bigint DEFAULT NULL,
  `fk_jrx_endtrack` bigint DEFAULT NULL,
  `fk_jrx_material` bigint DEFAULT NULL,
  `fk_jrx_unit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_outsideqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_srcid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_srcentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_gpchbprintentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_gpcoutsideentry definition

CREATE TABLE `tk_jrx_gpcoutsideentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_funit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_foutsideqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_fprocess` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fqualifiedqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_fnoqualifiedqtypur` decimal(23,4) DEFAULT NULL,
  `fk_jrx_fnoqualifiedqtysup` decimal(23,4) DEFAULT NULL,
  `fk_jrx_fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_finvoicedqty` bigint DEFAULT NULL,
  `fk_jrx_fentryremark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fprocessprice` decimal(23,4) DEFAULT NULL,
  `fk_jrx_famount` decimal(23,4) DEFAULT NULL,
  `fk_jrx_fcostcenter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcostcodingnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcostcodingname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcostitem` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcostitemname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ccentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fcodeserialnum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_fcodeidlist` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_gpcoutsideentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_gpcoutsideentry_lk definition

CREATE TABLE `tk_jrx_gpcoutsideentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx__jrx_gpcoutsideentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_gpcoutsideentry_r3 definition

CREATE TABLE `tk_jrx_gpcoutsideentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_gpcrelateprocessen definition

CREATE TABLE `tk_jrx_gpcrelateprocessen` (
  `FEntryId` bigint NOT NULL,
  `FDetailId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_fprocessno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fprocessname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fproductbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_frpstarttrackid` bigint DEFAULT NULL,
  `fk_jrx_frpendtrack` bigint DEFAULT NULL,
  `fk_jrx_fprocessqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_falreadydispatchqt` decimal(23,4) DEFAULT NULL,
  `fk_jrx_freturnfactoryqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_fcostobject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcostobjectname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fprocessnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_islast` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_flow` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_flowid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FDetailId`),
  KEY `idx__jrx_gpcrelateprocessen_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_gpcreqentry definition

CREATE TABLE `tk_jrx_gpcreqentry` (
  `FEntryId` bigint NOT NULL,
  `FDetailId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_materialreqno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_reqid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_reqentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_irrc_materialid` bigint DEFAULT NULL,
  `fk_jrx_irrc_materialnumbe` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_irrc_materialname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_shouldqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_qty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_irrc_project` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_projectname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_track` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_projectjch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_projectjchid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_operationname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_team` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_workcenter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_irrc_unit` bigint DEFAULT NULL,
  `fk_jrx_unitname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FDetailId`),
  KEY `idx__jrx_gpcreqentry_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_gpoutsideentrys definition

CREATE TABLE `tk_jrx_gpoutsideentrys` (
  `fentryid` bigint NOT NULL,
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fcodeserialnum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_foutsideqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_fcodeidlist` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FId` bigint NOT NULL DEFAULT '0',
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_funit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fnotpushqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_fentryremark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_freturnqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_fplanoutsidedate` datetime DEFAULT NULL,
  `fk_jrx_fplanreturndate` datetime DEFAULT NULL,
  `fk_jrx_frowstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fprocess` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fprice` decimal(23,4) DEFAULT NULL,
  `fk_jrx_famount` decimal(23,4) DEFAULT NULL,
  `fk_jrx_textfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ccentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_gpoutsideentrys_r3 definition

CREATE TABLE `tk_jrx_gpoutsideentrys_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_gpsubentryentitys definition

CREATE TABLE `tk_jrx_gpsubentryentitys` (
  `FEntryId` bigint NOT NULL,
  `FDetailId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_fprocessno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fprocessname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fproductbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_frpstarttrackid` bigint DEFAULT NULL,
  `fk_jrx_frpendtrackid` bigint DEFAULT NULL,
  `fk_jrx_fprocessqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_falreadydispatchqt` decimal(23,4) DEFAULT NULL,
  `fk_jrx_ffactoryqty` decimal(23,4) DEFAULT NULL,
  `fk_jrx_fcostobject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcostobjectname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fprocessnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_islast` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_flowid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textfield7` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FDetailId`),
  KEY `idx__jrx_gpsubentryentitys_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_htfj definition

CREATE TABLE `tk_jrx_htfj` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_url` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_filename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_filesize` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_instoc definition

CREATE TABLE `tk_jrx_instoc` (
  `FId` bigint NOT NULL,
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` datetime DEFAULT NULL COMMENT '审核日期',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FK_JRX_BUSINESSTYPE` bigint DEFAULT NULL COMMENT '业务类型',
  `FK_JRX_BILLDATE` datetime DEFAULT NULL COMMENT '业务日期',
  `FK_JRX_SUPPLIER` bigint DEFAULT NULL COMMENT '供应商',
  `FK_JRX_ORG` bigint DEFAULT NULL COMMENT '收货方',
  `FK_JRX_PERSON` bigint DEFAULT NULL COMMENT '联系人',
  `FK_JRX_PURORG` bigint DEFAULT NULL COMMENT '采购方',
  `FK_JRX_SETTLEORG` bigint DEFAULT NULL COMMENT '核算方',
  `FK_JRX_CONTACTER` bigint DEFAULT NULL COMMENT '销售员',
  `FK_JRX_REMARK` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '备注',
  `FK_JRX_CFMSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '确认状态',
  `FK_JRX_ISCHECK` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '已对账',
  `FK_JRX_CHKBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '对账单号',
  `FK_JRX_SERIALNUM` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '直流件流水号',
  `FK_JRX_WRITEOFFFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '已被冲销',
  `FK_JRX_TRANSACTIONNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '事务类型编码',
  `FK_JRX_TRANSACTIONNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '事务类型名称',
  `FK_JRX_MFRSUPPLIER` bigint DEFAULT NULL COMMENT '制造供应商',
  `FK_JRX_BIZTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '业务类型(作废)',
  `FK_JRX_PAYCOND` bigint DEFAULT NULL COMMENT '付款条件',
  `FK_JRX_BASEDATAFIELD` bigint DEFAULT NULL COMMENT '结算方式',
  `FK_JRX_CURR` bigint DEFAULT NULL COMMENT '结算币别',
  `FK_JRX_TAXTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '计税类型',
  `FK_JRX_LOCCURR` bigint DEFAULT NULL COMMENT '本位币',
  `FK_JRX_FROMCURR` bigint DEFAULT NULL COMMENT '原币',
  `FK_JRX_TOCURR` bigint DEFAULT NULL COMMENT '目标币',
  `FK_JRX_EXCHTYPE` bigint DEFAULT NULL COMMENT '汇率表',
  `FK_JRX_EXRATEDATE` datetime DEFAULT NULL COMMENT '汇率日期',
  `FK_JRX_EXCHRATE` decimal(23,10) DEFAULT NULL COMMENT '汇率',
  `FK_JRX_QUOTATION` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '换算方式',
  `FK_JRX_SUMTAXAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '价税合计',
  `FK_JRX_SUMTAX` decimal(23,10) DEFAULT NULL COMMENT '合计税额',
  `FK_JRX_SUMQTY` decimal(19,2) DEFAULT NULL COMMENT '合计数量',
  `FK_JRX_SUMAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '合计金额',
  `FK_JRX_DELISUP` bigint DEFAULT NULL COMMENT '送货方',
  `FK_JRX_INVOICESUP` bigint DEFAULT NULL COMMENT '开票方',
  `FK_JRX_PAYEESUP` bigint DEFAULT NULL COMMENT '收款方',
  `FK_JRX_REQORG` bigint DEFAULT NULL COMMENT '需求方',
  `FK_JRX_PAYORG` bigint DEFAULT NULL COMMENT '付款方',
  `FK_JRX_LASTUPDATEUSER` bigint DEFAULT NULL COMMENT '修改人',
  `FK_JRX_LASTUPDATETIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FK_JRX_CFM` bigint DEFAULT NULL COMMENT '处理人',
  `FK_JRX_CFMDATE` datetime DEFAULT NULL COMMENT '处理时间',
  `FK_JRX_ORIGIN` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '发起方',
  `FK_JRX_BIZPARTNER` bigint DEFAULT NULL COMMENT '商务伙伴',
  `FK_JRX_ISCENTERSETTLE` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '集中结算',
  `FK_JRX_ISAFTER17` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '是否17年之后的数据',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_PUR_INSTOCK_FBILLNO` (`FBILLNO`) USING BTREE,
  KEY `IDX_PUR_INSTOCK_BILLDATE` (`FK_JRX_BILLDATE`) USING BTREE,
  KEY `IDX_PUR_INSTOCK_FBIZPARTNERID` (`FK_JRX_BIZPARTNER`) USING BTREE,
  KEY `IDX_PUR_INSTOCK_SUP` (`FK_JRX_SUPPLIER`) USING BTREE,
  KEY `IDX_PUR_INSTOCK_ORG` (`FK_JRX_ORG`) USING BTREE,
  KEY `IDX_PUR_INSTOCK_ISAFTER17` (`FK_JRX_ISAFTER17`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_instoc0421 definition

CREATE TABLE `tk_jrx_instoc0421` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_businesstype` bigint DEFAULT NULL,
  `fk_jrx_billdate` datetime DEFAULT NULL,
  `fk_jrx_supplier` bigint DEFAULT NULL,
  `fk_jrx_org` bigint DEFAULT NULL,
  `fk_jrx_person` bigint DEFAULT NULL,
  `fk_jrx_purorg` bigint DEFAULT NULL,
  `fk_jrx_settleorg` bigint DEFAULT NULL,
  `fk_jrx_contacter` bigint DEFAULT NULL,
  `fk_jrx_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_cfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ischeck` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fk_jrx_chkbillno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_serialnum` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_writeoffflag` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_transactionnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_transactionname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_mfrsupplier` bigint DEFAULT NULL,
  `fk_jrx_biztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_paycond` bigint DEFAULT NULL,
  `fk_jrx_basedatafield` bigint DEFAULT NULL,
  `fk_jrx_curr` bigint DEFAULT NULL,
  `fk_jrx_taxtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_loccurr` bigint DEFAULT NULL,
  `fk_jrx_fromcurr` bigint DEFAULT NULL,
  `fk_jrx_tocurr` bigint DEFAULT NULL,
  `fk_jrx_exchtype` bigint DEFAULT NULL,
  `fk_jrx_exratedate` datetime DEFAULT NULL,
  `fk_jrx_exchrate` decimal(23,10) DEFAULT NULL,
  `fk_jrx_quotation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_sumtaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_sumtax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_sumqty` decimal(19,2) DEFAULT NULL,
  `fk_jrx_sumamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_delisup` bigint DEFAULT NULL,
  `fk_jrx_invoicesup` bigint DEFAULT NULL,
  `fk_jrx_payeesup` bigint DEFAULT NULL,
  `fk_jrx_reqorg` bigint DEFAULT NULL,
  `fk_jrx_payorg` bigint DEFAULT NULL,
  `fk_jrx_lastupdateuser` bigint DEFAULT NULL,
  `fk_jrx_lastupdatetime` datetime DEFAULT NULL,
  `fk_jrx_cfm` bigint DEFAULT NULL,
  `fk_jrx_cfmdate` datetime DEFAULT NULL,
  `fk_jrx_origin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_bizpartner` bigint DEFAULT NULL,
  `fk_jrx_iscentersettle` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fk_jrx_isafter17` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_instoc_l definition

CREATE TABLE `tk_jrx_instoc_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_remark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_instoc_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_instoc_r3 definition

CREATE TABLE `tk_jrx_instoc_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_inventoryview definition

CREATE TABLE `tk_jrx_inventoryview` (
  `FId` bigint NOT NULL,
  `fk_jrx_suppliernumber` bigint DEFAULT NULL,
  `fk_jrx_materialnumber` bigint DEFAULT NULL,
  `fk_jrx_basedatafield` bigint DEFAULT NULL,
  `fk_jrx_tracknumber` bigint DEFAULT NULL,
  `fk_jrx_wherehouse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_quantity` decimal(23,10) DEFAULT NULL,
  `fk_jrx_unit` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_invocefilecheck_r3 definition

CREATE TABLE `tk_jrx_invocefilecheck_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_invocefilecheckur definition

CREATE TABLE `tk_jrx_invocefilecheckur` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_FILEURL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '地址',
  `FK_JRX_TEXTFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '作用',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_invocefilecheckur_l definition

CREATE TABLE `tk_jrx_invocefilecheckur_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_invocefilecheckur_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_knowledge_zj definition

CREATE TABLE `tk_jrx_knowledge_zj` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_combofield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_combofield1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_combofield2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textareafield` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textareafield1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textareafield2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_loadeliverydetail definition

CREATE TABLE `tk_jrx_loadeliverydetail` (
  `FEntryId` bigint NOT NULL,
  `FDetailId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fdetailordernum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdetailmaterialid` bigint DEFAULT NULL,
  `fdetailwarehouseid` bigint DEFAULT NULL,
  `fdetailprojectid` bigint DEFAULT NULL,
  `fdetailtraceid` bigint DEFAULT NULL,
  `fdetailorderdate` datetime DEFAULT NULL,
  `fdetaildeliverydate` datetime DEFAULT NULL,
  `fdetaildemandqty` decimal(23,4) DEFAULT NULL,
  `fdeliveredqty` decimal(23,4) DEFAULT NULL,
  `fcandeliveryqty` decimal(23,4) DEFAULT NULL,
  `fthisdeliveryqty` decimal(23,4) DEFAULT NULL,
  `fdetailorderentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdetaileasid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FDetailId`),
  KEY `idx__jrx_loadeliverydetail_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialentry definition

CREATE TABLE `tk_jrx_materialentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int DEFAULT '0',
  `FMODIFIERFIELD` bigint DEFAULT NULL COMMENT '修改人',
  `FMODIFYDATEFIELD` datetime DEFAULT NULL COMMENT '修改日期',
  `FK_JRX_POBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '订单号',
  `FK_JRX_LINETYPE` bigint DEFAULT NULL COMMENT '行类型',
  `FK_JRX_MATERIAL` bigint DEFAULT NULL COMMENT '物料编码',
  `FK_JRX_MATERIALNAMETEXT` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '品类物料名称',
  `FK_JRX_MATERIALDESC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '物料描述',
  `FK_JRX_ISPRESENT` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '赠品',
  `FK_JRX_UNIT` bigint DEFAULT NULL COMMENT '计量单位',
  `FK_JRX_QTY` decimal(23,10) DEFAULT NULL COMMENT '入库数量',
  `FK_JRX_PRICE` decimal(23,10) DEFAULT NULL COMMENT '单价',
  `FK_JRX_TAXPRICE` decimal(23,10) DEFAULT NULL COMMENT '含税单价',
  `FK_JRX_DCTRATE` decimal(19,2) DEFAULT NULL COMMENT '折扣率(%)',
  `FK_JRX_TAXRATEID` bigint DEFAULT NULL COMMENT '税率',
  `FK_JRX_DCTAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '折扣额',
  `FK_JRX_AMOUNT` decimal(23,10) DEFAULT NULL COMMENT '金额',
  `FK_JRX_TAXRATE` decimal(19,2) DEFAULT NULL COMMENT '税率(%)',
  `FK_JRX_TAX` decimal(23,10) DEFAULT NULL COMMENT '税额',
  `FK_JRX_LOTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '批号',
  `FK_JRX_TAXAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '价税合计',
  `FK_JRX_LOT` bigint DEFAULT NULL COMMENT '批号（废弃）',
  `FK_JRX_SUPLOT` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '供应商批号',
  `FK_JRX_PRODDATE` datetime DEFAULT NULL COMMENT '生产日期',
  `FK_JRX_DUEDATE` datetime DEFAULT NULL COMMENT '到期日期',
  `FK_JRX_WAREHOUSE` bigint DEFAULT NULL COMMENT '仓库',
  `FK_JRX_LOCATION` bigint DEFAULT NULL COMMENT '库位',
  `FK_JRX_NOTE` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '备注',
  `FK_JRX_REMARKS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '备注',
  `FK_JRX_PURTYPE` bigint DEFAULT NULL COMMENT '采购类型',
  `FK_JRX_ENTRYSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '行状态',
  `FK_JRX_ENTRYREQORG` bigint DEFAULT NULL COMMENT '需求方',
  `FK_JRX_ENTRYPURORG` bigint DEFAULT NULL COMMENT '采购方',
  `FK_JRX_ENTRYRCVORG` bigint DEFAULT NULL COMMENT '收货方',
  `FK_JRX_ENTRYSETTLEORG` bigint DEFAULT NULL COMMENT '核算方',
  `FK_JRX_ENTRYPAYORG` bigint DEFAULT NULL COMMENT '付款方',
  `FK_JRX_SETTLESUP` bigint DEFAULT NULL COMMENT '结算供应商',
  `FK_JRX_GOODS` bigint DEFAULT NULL COMMENT '商品编码',
  `FK_JRX_INVOICEQTY` decimal(23,10) DEFAULT NULL COMMENT '累计开票数量',
  `FK_JRX_TEXTFIELD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '商品描述',
  `FK_JRX_INVOICEAMT` decimal(23,10) DEFAULT NULL COMMENT '累计开票金额',
  `FK_JRX_SUMCHECKQTY` decimal(23,10) DEFAULT NULL COMMENT '关联对账数量',
  `FK_JRX_UNMATCHQTY` decimal(23,10) DEFAULT NULL COMMENT '未核销数量',
  `FK_JRX_UNMATCHBASEQTY` decimal(23,10) DEFAULT NULL COMMENT '未核销基本数量',
  `FK_JRX_SUMINVOICEQTY` decimal(23,10) DEFAULT NULL COMMENT '关联数量',
  `FK_JRX_SUMCHECKAMT` decimal(23,10) DEFAULT NULL COMMENT '关联对账金额',
  `FK_JRX_CHECKBOXFIELD` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '对账/开票',
  `FK_JRX_LOCAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '本位币金额',
  `FK_JRX_LOCTAX` decimal(23,10) DEFAULT NULL COMMENT '本位币税额',
  `FK_JRX_LOCTAXAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '本位币价税合计',
  `FK_JRX_ACTPRICE` decimal(23,10) DEFAULT NULL COMMENT '实际单价',
  `FK_JRX_ACTTAXPRICE` decimal(23,10) DEFAULT NULL COMMENT '实际含税单价',
  `FK_JRX_BASICUNIT` bigint DEFAULT NULL COMMENT '基本单位',
  `FK_JRX_BASICQTY` decimal(23,10) DEFAULT NULL COMMENT '基本数量',
  `FK_JRX_ASSTUNIT` bigint DEFAULT NULL COMMENT '辅助单位',
  `FK_JRX_ASSTQTY` decimal(23,10) DEFAULT NULL COMMENT '辅助数量',
  `FK_JRX_PROJECT` bigint DEFAULT NULL COMMENT '项目号',
  `FK_JRX_TRACE` bigint DEFAULT NULL COMMENT '跟踪号',
  `FK_JRX_FLOW` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '流程',
  `FK_JRX_POBILLID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '订单ID',
  `FK_JRX_POENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '订单分录ID',
  `FK_JRX_PCBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '合同号',
  `FK_JRX_PCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '合同ID',
  `FK_JRX_PCENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '合同分录ID',
  `FK_JRX_SRCBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '源单类型',
  `FK_JRX_SRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '源单ID',
  `FK_JRX_SRCENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '源单分录ID',
  `FK_JRX_SRCINSBILLID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '源单入库ID',
  `FK_JRX_SRCINSENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '源单入库分录ID',
  `FK_JRX_PCNUM` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '采购合同号',
  `FK_JRX_PCPRICE` decimal(23,10) DEFAULT NULL COMMENT '合同含税单价',
  `FK_JRX_NOTPCPRICE` decimal(23,6) DEFAULT NULL COMMENT '合同不含税单价',
  `FK_JRX_PCCARDNO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '合同卡片号',
  `FK_JRX_PCTAXPRICE` decimal(23,10) DEFAULT NULL COMMENT '合同卡片含税价',
  `FK_JRX_BILLINGQTY` decimal(23,10) DEFAULT NULL COMMENT '已开票数量',
  `FK_JRX_NOBILLQTY` decimal(23,10) DEFAULT NULL COMMENT '未开票数量',
  `FK_JRX_UNLOCKQTY` decimal(23,10) DEFAULT NULL COMMENT '未锁定数量',
  `FK_JRX_UNWRITEOFFQTY` decimal(23,10) DEFAULT NULL COMMENT '未核销数量',
  `FK_JRX_ORDERCFM` bigint DEFAULT NULL COMMENT '订单确认人',
  `FK_JRX_ORDERHISCFM` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '订单历史确认人',
  `FK_JRX_CGPCPRICE` decimal(23,10) DEFAULT NULL COMMENT '采购合同价',
  `FK_JRX_FSRCENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT 'EAS采购入库分录ID',
  `FK_JRX_THAWQTY` decimal(23,10) DEFAULT NULL COMMENT '可解冻数量',
  `FK_JRX_FBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '入库单号',
  `FK_JRX_FBILLDATE` datetime DEFAULT NULL COMMENT '入库日期',
  `FK_JRX_BUHANPCTAXPRICE` decimal(23,6) DEFAULT NULL COMMENT '合同卡片不含税单价',
  `FK_JRX_MATERIALNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '物料编码',
  `FCREATEORGID` bigint DEFAULT NULL COMMENT '创建组织',
  `FORGID` bigint DEFAULT NULL COMMENT '组织',
  `FK_JRX_A` bigint DEFAULT NULL COMMENT '业务组织',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '控制策略',
  `FSOURCEDATAID` bigint DEFAULT NULL COMMENT '上级主键',
  `FBITINDEX` bigint DEFAULT NULL COMMENT '位图',
  `FSOURCEBITINDEX` bigint DEFAULT NULL COMMENT '原资料位图',
  `FK_JRX_FMATERIALNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '物料名称',
  `FK_JRX_FID` bigint DEFAULT NULL COMMENT '上级主键',
  `FK_JRX_FSERIALNUM` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '直流件流水号',
  `FK_JRX_THAWAMT` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '可解冻金额',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FK_JRX_CHECKBOXFIELD1` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否红冲',
  PRIMARY KEY (`FEntryId`),
  KEY `IDX_TK_JRX_MATERIALENTRY_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_TK_JRX_MATERIALENTRY_MASTER` (`FMASTERID`),
  KEY `IDX_TK_JRX_MATERIALENTRY_pobillno` (`FK_JRX_POBILLNO`),
  KEY `IDX_TK_JRX_MATERIALENTRY_material` (`FK_JRX_MATERIAL`),
  KEY `INSTOCE_INDEX` (`FId`,`FK_JRX_NOBILLQTY`,`FK_JRX_UNLOCKQTY`,`FK_JRX_BILLINGQTY`,`FK_JRX_THAWQTY`,`FK_JRX_POBILLNO`),
  KEY `srcentryid` (`FK_JRX_SRCENTRYID`),
  KEY `fsrcentryid` (`FK_JRX_FSRCENTRYID`) USING BTREE,
  KEY `pocontrctno` (`FK_JRX_PCNUM`) USING BTREE,
  KEY `pccardno` (`FK_JRX_PCCARDNO`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialentry0331 definition

CREATE TABLE `tk_jrx_materialentry0331` (
  `FEntryId` bigint NOT NULL,
  `fk_jrx_thawqty` decimal(23,10) DEFAULT NULL,
  KEY `FEntryId` (`FEntryId`),
  KEY `fk_jrx_thawqty` (`fk_jrx_thawqty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialentry0421 definition

CREATE TABLE `tk_jrx_materialentry0421` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_pobillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_linetype` bigint DEFAULT NULL,
  `fk_jrx_material` bigint DEFAULT NULL,
  `fk_jrx_materialnametext` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_materialdesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_ispresent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fk_jrx_unit` bigint DEFAULT NULL,
  `fk_jrx_qty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_price` decimal(23,10) DEFAULT NULL,
  `fk_jrx_taxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_dctrate` decimal(19,2) DEFAULT NULL,
  `fk_jrx_taxrateid` bigint DEFAULT NULL,
  `fk_jrx_dctamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_amount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_taxrate` decimal(19,2) DEFAULT NULL,
  `fk_jrx_tax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_lotnumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_taxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_lot` bigint DEFAULT NULL,
  `fk_jrx_suplot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_proddate` datetime DEFAULT NULL,
  `fk_jrx_duedate` datetime DEFAULT NULL,
  `fk_jrx_warehouse` bigint DEFAULT NULL,
  `fk_jrx_location` bigint DEFAULT NULL,
  `fk_jrx_note` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_remarks` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_purtype` bigint DEFAULT NULL,
  `fk_jrx_entrystatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_entryreqorg` bigint DEFAULT NULL,
  `fk_jrx_entrypurorg` bigint DEFAULT NULL,
  `fk_jrx_entryrcvorg` bigint DEFAULT NULL,
  `fk_jrx_entrysettleorg` bigint DEFAULT NULL,
  `fk_jrx_entrypayorg` bigint DEFAULT NULL,
  `fk_jrx_settlesup` bigint DEFAULT NULL,
  `fk_jrx_goods` bigint DEFAULT NULL,
  `fk_jrx_invoiceqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_textfield` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_invoiceamt` decimal(23,10) DEFAULT NULL,
  `fk_jrx_sumcheckqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_unmatchqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_unmatchbaseqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_suminvoiceqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_sumcheckamt` decimal(23,10) DEFAULT NULL,
  `fk_jrx_checkboxfield` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fk_jrx_locamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_loctax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_loctaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_actprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_acttaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_basicunit` bigint DEFAULT NULL,
  `fk_jrx_basicqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_asstunit` bigint DEFAULT NULL,
  `fk_jrx_asstqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_trace` bigint DEFAULT NULL,
  `fk_jrx_flow` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pobillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_poentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pcbillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pcbillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pcentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_srcbilltype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_srcbillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_srcentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_srcinsbillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_srcinsentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pcnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pcprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_notpcprice` decimal(23,6) DEFAULT NULL,
  `fk_jrx_pccardno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pctaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_billingqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_nobillqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_unlockqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_unwriteoffqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ordercfm` bigint DEFAULT NULL,
  `fk_jrx_orderhiscfm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_cgpcprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsrcentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_thawqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fbillno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_fbilldate` datetime DEFAULT NULL,
  `fk_jrx_buhanpctaxprice` decimal(23,6) DEFAULT NULL,
  `fk_jrx_materialnumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fcreateorgid` bigint DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_a` bigint DEFAULT NULL,
  `fctrlstrategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fsourcedataid` bigint DEFAULT NULL,
  `fbitindex` bigint DEFAULT NULL,
  `fsourcebitindex` bigint DEFAULT NULL,
  `fk_jrx_fmaterialname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_fid` bigint DEFAULT NULL,
  `fk_jrx_fserialnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_thawamt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fenable` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fcreatetime` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fmasterid` bigint DEFAULT NULL,
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_checkboxfield1` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialentry_bit definition

CREATE TABLE `tk_jrx_materialentry_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialentry_copy1 definition

CREATE TABLE `tk_jrx_materialentry_copy1` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_pobillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_linetype` bigint DEFAULT NULL,
  `fk_jrx_material` bigint DEFAULT NULL,
  `fk_jrx_materialnametext` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_materialdesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_ispresent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fk_jrx_unit` bigint DEFAULT NULL,
  `fk_jrx_qty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_price` decimal(23,10) DEFAULT NULL,
  `fk_jrx_taxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_dctrate` decimal(19,2) DEFAULT NULL,
  `fk_jrx_taxrateid` bigint DEFAULT NULL,
  `fk_jrx_dctamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_amount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_taxrate` decimal(19,2) DEFAULT NULL,
  `fk_jrx_tax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_lotnumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_taxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_lot` bigint DEFAULT NULL,
  `fk_jrx_suplot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_proddate` datetime DEFAULT NULL,
  `fk_jrx_duedate` datetime DEFAULT NULL,
  `fk_jrx_warehouse` bigint DEFAULT NULL,
  `fk_jrx_location` bigint DEFAULT NULL,
  `fk_jrx_note` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_remarks` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_purtype` bigint DEFAULT NULL,
  `fk_jrx_entrystatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_entryreqorg` bigint DEFAULT NULL,
  `fk_jrx_entrypurorg` bigint DEFAULT NULL,
  `fk_jrx_entryrcvorg` bigint DEFAULT NULL,
  `fk_jrx_entrysettleorg` bigint DEFAULT NULL,
  `fk_jrx_entrypayorg` bigint DEFAULT NULL,
  `fk_jrx_settlesup` bigint DEFAULT NULL,
  `fk_jrx_goods` bigint DEFAULT NULL,
  `fk_jrx_invoiceqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_textfield` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_invoiceamt` decimal(23,10) DEFAULT NULL,
  `fk_jrx_sumcheckqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_unmatchqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_unmatchbaseqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_suminvoiceqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_sumcheckamt` decimal(23,10) DEFAULT NULL,
  `fk_jrx_checkboxfield` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fk_jrx_locamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_loctax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_loctaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_actprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_acttaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_basicunit` bigint DEFAULT NULL,
  `fk_jrx_basicqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_asstunit` bigint DEFAULT NULL,
  `fk_jrx_asstqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_trace` bigint DEFAULT NULL,
  `fk_jrx_flow` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pobillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_poentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pcbillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pcbillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pcentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_srcbilltype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_srcbillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_srcentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_srcinsbillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_srcinsentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pcnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pcprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_notpcprice` decimal(23,6) DEFAULT NULL,
  `fk_jrx_pccardno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_pctaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_billingqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_nobillqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_unlockqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_unwriteoffqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ordercfm` bigint DEFAULT NULL,
  `fk_jrx_orderhiscfm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_cgpcprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsrcentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_thawqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fbillno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_fbilldate` datetime DEFAULT NULL,
  `fk_jrx_buhanpctaxprice` decimal(23,6) DEFAULT NULL,
  `fk_jrx_materialnumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fcreateorgid` bigint DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_a` bigint DEFAULT NULL,
  `fctrlstrategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fsourcedataid` bigint DEFAULT NULL,
  `fbitindex` bigint DEFAULT NULL,
  `fsourcebitindex` bigint DEFAULT NULL,
  `fk_jrx_fmaterialname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_fid` bigint DEFAULT NULL,
  `fk_jrx_fserialnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_thawamt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fenable` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fcreatetime` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fmasterid` bigint DEFAULT NULL,
  `isold` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `IDX_TK_JRX_MATERIALENTRY_CREATEORG` (`fcreateorgid`),
  KEY `IDX_TK_JRX_MATERIALENTRY_MASTER` (`fmasterid`),
  KEY `IDX_TK_JRX_MATERIALENTRY_pobillno` (`fk_jrx_pobillno`),
  KEY `IDX_TK_JRX_MATERIALENTRY_material` (`fk_jrx_material`),
  KEY `INSTOCE_INDEX` (`FId`,`fk_jrx_nobillqty`,`fk_jrx_unlockqty`,`fk_jrx_billingqty`,`fk_jrx_thawqty`,`fk_jrx_pobillno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialentry_l definition

CREATE TABLE `tk_jrx_materialentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_materialentry_L_0` (`fentryid`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialentry_m definition

CREATE TABLE `tk_jrx_materialentry_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialentry_r3 definition

CREATE TABLE `tk_jrx_materialentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialentry_u definition

CREATE TABLE `tk_jrx_materialentry_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_TK_JRX_MATERIALENTRY_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialentryexc definition

CREATE TABLE `tk_jrx_materialentryexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_TK_JRX_MATERIALENTRYEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialentryusereg definition

CREATE TABLE `tk_jrx_materialentryusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_TK_JRX_MATERIALENTRYUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialreqentry definition

CREATE TABLE `tk_jrx_materialreqentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmaterialreqno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialreqpoid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialreqpoentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialid` bigint DEFAULT NULL,
  `fmaterialnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_unit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_unitname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fshouldqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_qtyfield` decimal(23,10) DEFAULT NULL,
  `fproject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprojectname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftrack` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprojectjch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprojectjchid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `foperationname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fteam` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftextfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_traytype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_traynumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_istray` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_trayway` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_lceasentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_materialreqentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialsync_da_r3 definition

CREATE TABLE `tk_jrx_materialsync_da_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialsync_data definition

CREATE TABLE `tk_jrx_materialsync_data` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_materialsync_data_l definition

CREATE TABLE `tk_jrx_materialsync_data_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_materialsync_data_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_messuser definition

CREATE TABLE `tk_jrx_messuser` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_BASEDATAFIELD` bigint DEFAULT NULL COMMENT '手机号',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_messuser_l definition

CREATE TABLE `tk_jrx_messuser_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_messuser_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_messuser_r3 definition

CREATE TABLE `tk_jrx_messuser_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mfsrelationentry definition

CREATE TABLE `tk_jrx_mfsrelationentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_mfrsupplier` bigint DEFAULT NULL,
  `fk_jrx_decimalfield` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_mfsrelationentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mfsrelationmentry definition

CREATE TABLE `tk_jrx_mfsrelationmentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_materiel` bigint DEFAULT NULL,
  `fk_jrx_moreqty` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_mfsrelationmentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mppm_directmate_r3 definition

CREATE TABLE `tk_jrx_mppm_directmate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mppm_directmater definition

CREATE TABLE `tk_jrx_mppm_directmater` (
  `FID` bigint NOT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_ftrackid` bigint DEFAULT NULL,
  `fk_jrx_fendtrackid` bigint DEFAULT NULL,
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fisdoor` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `fk_jrx_fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fmceasid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_createcreatetime` datetime DEFAULT NULL,
  `fk_jrx_fiszj` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_crrc_creator` bigint DEFAULT NULL,
  KEY `fk_jrx_fprojectid` (`fk_jrx_fprojectid`),
  KEY `fk_jrx_ftrackid` (`fk_jrx_ftrackid`),
  KEY `fk_jrx_fmaterialid` (`fk_jrx_fmaterialid`),
  KEY `fk_jrx_fsupplierid` (`fk_jrx_fsupplierid`),
  KEY `fk_jrx_fisdoor` (`fk_jrx_fisdoor`),
  KEY `fk_jrx_fid` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mscp_basedatasy_r3 definition

CREATE TABLE `tk_jrx_mscp_basedatasy_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mscp_basedatasync definition

CREATE TABLE `tk_jrx_mscp_basedatasync` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_BASETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '基础资料类型',
  `FK_JRX_NEXTDATETIME` datetime DEFAULT NULL COMMENT '下次执行时间',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mscp_basedatasync_l definition

CREATE TABLE `tk_jrx_mscp_basedatasync_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_mscp_basedatasync_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mscp_invoicebill definition

CREATE TABLE `tk_jrx_mscp_invoicebill` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fsupply` bigint DEFAULT NULL,
  `fsubmission` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcouriernum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsubmittime` datetime DEFAULT NULL,
  `freceiver` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsigntime` datetime DEFAULT NULL,
  `fcallbackreason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fisportal` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `finvoiceqty` decimal(12,0) DEFAULT NULL,
  `fpursttlementsign` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurchasername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurtaxnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpuraddress` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurbank` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpuraccount` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsupplierinfo` bigint DEFAULT NULL,
  `fsuptaxnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsupaddress` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsupphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsupbank` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsupaccount` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fchecktime` datetime DEFAULT NULL,
  `fcheckbackreason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurinvoicenum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcontractno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsubmitter` bigint DEFAULT NULL,
  `fpurchaserinfo` bigint DEFAULT NULL,
  `fsupname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsumamount` decimal(23,10) DEFAULT NULL,
  `fcheckstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurgroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_lybiino` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_hpwc` bigint DEFAULT NULL,
  `fk_jrx_datefield` datetime DEFAULT NULL,
  `fk_jrx_receiptcheck` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fptype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_filenum` bigint DEFAULT NULL,
  `fk_jrx_invoiceid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_handeditflag` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_obsoname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_xyisfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_validatelog` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_xybillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_easinvoicetype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_shfht` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_isfullinvoice` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mscp_purinvoices definition

CREATE TABLE `tk_jrx_mscp_purinvoices` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_fcombofield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsupplyid` bigint DEFAULT NULL,
  `fk_jrx_fsupplyinvoiceno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_fsupplyinvoicedate` datetime DEFAULT NULL,
  `fk_jrx_fcontractno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_finvoicedate` datetime DEFAULT NULL,
  `fk_jrx_fetaxamountsum` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxamountsum` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxsum` decimal(23,10) DEFAULT NULL,
  `fk_jrx_famountsum` decimal(12,4) DEFAULT NULL,
  `fk_jrx_feasbillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_fsysnstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsubaccounttime` datetime DEFAULT NULL,
  `fk_jrx_fsubaccountbz` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_fsubaccountbillno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_fcurrencyid` bigint DEFAULT NULL,
  `fk_jrx_fpricecurrencyid` bigint DEFAULT NULL,
  `fk_jrx_fcredentials` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fk_jrx_invoiceid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_handeditflag` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_obsoname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_xyisfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_xybillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_easinvoicetype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_validatelog` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_isfullinvoice` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mscpeasllckdata definition

CREATE TABLE `tk_jrx_mscpeasllckdata` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_LLBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '领料单号',
  `FK_JRX_LLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '领料单状态',
  `FK_JRX_WORKTYPENO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '事务类型编码',
  `FK_JRX_WORKTYPENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '事务类型名称',
  `FK_JRX_MATERIELFIELD` bigint DEFAULT NULL COMMENT '物料编码',
  `FK_JRX_UNIT` bigint DEFAULT NULL COMMENT '计量单位',
  `FK_JRX_ISSL` decimal(23,10) DEFAULT NULL COMMENT '应收数量',
  `FK_JRX_QTY` decimal(23,10) DEFAULT NULL COMMENT '数量',
  `FK_JRX_SPROJECTNO` bigint DEFAULT NULL COMMENT '项目号',
  `FK_JRX_STRACENO` bigint DEFAULT NULL COMMENT '跟踪号',
  `FK_JRX_ISWMS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '是否WMS',
  `FK_JRX_WMSSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'WMS状态',
  `FK_JRX_ISUSE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '是否被引用',
  `FK_JRX_EASID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'EASID',
  `FK_JRX_EASENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'eas分录ID',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mscpeasllckdata_l definition

CREATE TABLE `tk_jrx_mscpeasllckdata_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_mscpeasllckdata_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mscpeasllckdata_r3 definition

CREATE TABLE `tk_jrx_mscpeasllckdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mtcbpf7 definition

CREATE TABLE `tk_jrx_mtcbpf7` (
  `FID` bigint NOT NULL,
  `fk_jrx_attname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_attnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mtcbpf7_r3 definition

CREATE TABLE `tk_jrx_mtcbpf7_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mtcbprint definition

CREATE TABLE `tk_jrx_mtcbprint` (
  `FId` bigint NOT NULL,
  `fk_jrx_material` bigint DEFAULT NULL,
  `fk_jrx_supplier` bigint DEFAULT NULL,
  `fk_jrx_serialnum` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qrcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_loadeliveryqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_qty` bigint DEFAULT NULL,
  `fk_jrx_deliveryqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_serialnumall` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_qrcodemsg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_sourceid` bigint DEFAULT NULL,
  `fk_jrx_sourcekey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbcpxlh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qrcodeimg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_MSCP_MTCBPRINT_FMATER` (`fk_jrx_material`),
  KEY `IDX_MSCP_MTCBPRINT_FSUP` (`fk_jrx_supplier`),
  KEY `IDX_MSCP_MTCBPRINT_FPRO` (`fk_jrx_project`),
  KEY `IDX_mtcbprint_fqrcode` (`fk_jrx_qrcode`),
  KEY `IDX_mtcbprint_serialnum` (`fk_jrx_serialnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_mtcbprintentry definition

CREATE TABLE `tk_jrx_mtcbprintentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_attname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_attvalue` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_attnum` bigint DEFAULT NULL,
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_mtcbprintentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_orderentry definition

CREATE TABLE `tk_jrx_orderentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FLINETYPEID` bigint DEFAULT NULL COMMENT '行类型',
  `FK_JRX_QTYFIELD` decimal(23,10) DEFAULT NULL COMMENT '数量',
  `FUNITID` bigint DEFAULT NULL COMMENT '计量单位',
  `FMATERIALID` bigint DEFAULT NULL COMMENT '物料编码',
  `FMATERIALNAMETEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '品类物料名称',
  `FMATERIALDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '物料描述',
  `FGOODSID` bigint DEFAULT NULL COMMENT '商品编码',
  `FGOODSDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '供方商品描述',
  `FISPRESENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '赠品',
  `FDELIDATE` datetime DEFAULT NULL COMMENT '交货日期',
  `FPRICE` decimal(23,10) DEFAULT NULL COMMENT '单价',
  `FTAXPRICE` decimal(23,10) DEFAULT NULL COMMENT '含税单价',
  `FDCTRATE` decimal(19,2) DEFAULT NULL COMMENT '折扣率(%)',
  `FDCTAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '折扣额',
  `FAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '金额',
  `FTAXRATEID` bigint DEFAULT NULL COMMENT '税率',
  `FTAXRATE` decimal(19,2) DEFAULT NULL COMMENT '税率(%)',
  `FTAX` decimal(23,10) DEFAULT NULL COMMENT '税额',
  `FTAXAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '价税合计',
  `FPURORGID` bigint DEFAULT NULL COMMENT '采购方',
  `FREQORGID` bigint DEFAULT NULL COMMENT '需求方',
  `FWAREHOUSEID` bigint DEFAULT NULL COMMENT '收货仓库',
  `FSETTLEORGID` bigint DEFAULT NULL COMMENT '核算方',
  `FPAYORGID` bigint DEFAULT NULL COMMENT '付款方',
  `FCOSTITEMID` bigint DEFAULT NULL COMMENT '费用类型',
  `FPURTYPEID` bigint DEFAULT NULL COMMENT '采购类型',
  `FENTRYSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '行状态',
  `FROWLOGSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '行物流状态',
  `FROWCLOSEID` bigint DEFAULT NULL COMMENT '关闭人',
  `FROWCLOSEREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '关闭原因',
  `FROWCLOSEDATE` datetime DEFAULT NULL COMMENT '关闭日期',
  `FNOTE` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '备注',
  `FISCONTROLQTY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '控制发货数量',
  `FSALOUTRATEDOWN` decimal(23,10) DEFAULT NULL COMMENT '发货欠发比率(%)',
  `FSALOUTRATEUP` decimal(23,10) DEFAULT NULL COMMENT '发货超发比率(%)',
  `FSALOUTBASEQTYUP` decimal(23,10) DEFAULT NULL COMMENT '发货上限基本数量',
  `FSALOUTBASEQTYDOWN` decimal(23,10) DEFAULT NULL COMMENT '发货下限基本数量',
  `FSALOUTQTYDOWN` decimal(23,10) DEFAULT NULL COMMENT '发货下限数量',
  `FSALOUTQTYUP` decimal(23,10) DEFAULT NULL COMMENT '发货上限数量',
  `FRCVPERSONTEL` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '联系电话',
  `FRCVPERSONID` bigint DEFAULT NULL COMMENT '收货人',
  `FVMISTOCKQTY` decimal(23,10) DEFAULT NULL COMMENT 'VMI在库数量',
  `FSUMREJQTY` decimal(23,10) DEFAULT NULL COMMENT '累计不合格数量',
  `FPAYABLEQTY` decimal(23,10) DEFAULT NULL COMMENT '累计对账数量',
  `FINVOICEQTY` decimal(23,10) DEFAULT NULL COMMENT '累计开票数量',
  `FSUMINSTOCKBASEQTY` decimal(23,10) DEFAULT NULL COMMENT '累计入库基本数量',
  `FSUMINSTOCKQTY` decimal(23,10) DEFAULT NULL COMMENT '累计入库数量',
  `FSUMRECEIPTQTY` decimal(23,10) DEFAULT NULL COMMENT '累计收货数量',
  `FSUMRECEIPTBASEQTY` decimal(23,10) DEFAULT NULL COMMENT '累计收货基本数量',
  `FSUMREFUNDBASEQTY` decimal(23,10) DEFAULT NULL COMMENT '累计退补基本数量',
  `FSUMREFUNDQTY` decimal(23,10) DEFAULT NULL COMMENT '累计退补数量',
  `FSUMINSTOCKRETBASEQTY` decimal(23,10) DEFAULT NULL COMMENT '累计退库基本数量',
  `FSUMINSTOCKRETQTY` decimal(23,10) DEFAULT NULL COMMENT '累计退库数量',
  `FSUMRECRETBASEQTY` decimal(23,10) DEFAULT NULL COMMENT '累计退货基本数量',
  `FSUMRECRETQTY` decimal(23,10) DEFAULT NULL COMMENT '累计退货数量',
  `FSUMRETURNREQQTY` decimal(23,10) DEFAULT NULL COMMENT '累计退货申请数量',
  `FSUMOUTSTOCKBASEQTY` decimal(23,10) DEFAULT NULL COMMENT '累计发货基本数量',
  `FSUMOUTSTOCKQTY` decimal(23,10) DEFAULT NULL COMMENT '累计发货数量',
  `FRELATEOUTSTOCKBASEQTY` decimal(23,10) DEFAULT NULL COMMENT '关联发货基本数量',
  `FRELATEOUTSTOCKQTY` decimal(23,10) DEFAULT NULL COMMENT '关联发货数量',
  `FSUMRECEIVEQTY` decimal(23,10) DEFAULT NULL COMMENT '累计通知数量',
  `FPAYABLEAMT` decimal(23,10) DEFAULT NULL COMMENT '累计对账金额',
  `FINVOICEAMT` decimal(23,10) DEFAULT NULL COMMENT '累计开票金额',
  `FPREPAYAMT` decimal(23,10) DEFAULT NULL COMMENT '预付金额',
  `FPAYPREPAYAMT` decimal(23,10) DEFAULT NULL COMMENT '已付预付金额',
  `FPAYAMT` decimal(23,10) DEFAULT NULL COMMENT '已付款金额',
  `FLOCKPREPAYAMT` decimal(23,10) DEFAULT NULL COMMENT '已锁定付款金额',
  `FLOCAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '本位币金额',
  `FLOCTAX` decimal(23,10) DEFAULT NULL COMMENT '本位币税额',
  `FLOCTAXAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '本位币价税合计',
  `FACTTAXPRICE` decimal(23,10) DEFAULT NULL COMMENT '实际含税单价',
  `FACTPRICE` decimal(23,10) DEFAULT NULL COMMENT '实际单价',
  `FPROJECTID` bigint DEFAULT NULL COMMENT '项目号',
  `FASSTUNITID` bigint DEFAULT NULL COMMENT '辅助单位',
  `FTRACEID` bigint DEFAULT NULL COMMENT '开始跟踪号',
  `FASSTQTY` decimal(23,10) DEFAULT NULL COMMENT '辅助数量',
  `FBASICUNITID` bigint DEFAULT NULL COMMENT '基本单位',
  `FBASICQTY` decimal(23,10) DEFAULT NULL COMMENT '基本数量',
  `FSRCENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '源单分录ID',
  `FPCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '合同ID',
  `FPCENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '合同分录ID',
  `FPOBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单号',
  `FPOBILLID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单ID',
  `FPOENTRYID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单分录ID',
  `FSRCBILLTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '源单类型',
  `FSRCBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '源单ID',
  `FRCVORGID` bigint DEFAULT NULL COMMENT '收货方',
  `FDELIADDR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '详细地址',
  `FPCBILLPRICE` decimal(23,10) DEFAULT NULL COMMENT '合同含税单价',
  `FASEQINT` bigint DEFAULT NULL COMMENT 'a表seqint',
  `FPCBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '采购合同号',
  `FK_JRX_BRAND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '品牌',
  `FK_JRX_PCBILLNOTPRICE` decimal(23,6) DEFAULT NULL COMMENT '合同不含税单价',
  `FK_JRX_ENTRYMFRSUPID` bigint DEFAULT NULL COMMENT '制造商',
  `FK_IRRC_FOREIGNNAME` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT ' ' COMMENT '物料名称（外文）',
  `FK_JRX_MATERIALLISTNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '物料清单序号',
  `FK_JRX_MATERIALVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '物料版本号',
  `FCUQTY` decimal(23,10) DEFAULT NULL COMMENT '累计未下推数量',
  `FK_JRX_RECEIVEOVERRATE` decimal(19,2) DEFAULT NULL COMMENT '收货超收比率(%)',
  `FFLOW` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '流程',
  `FPCCARDNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '合同卡片号',
  `FPCTAXPRICE` decimal(23,10) DEFAULT NULL COMMENT '合同卡片含税价',
  `FREALDELIVERDATE` datetime DEFAULT NULL COMMENT '实际交货日期',
  `FPZWH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '批准文号',
  `FENDTRACKNOID` bigint DEFAULT NULL COMMENT '结束跟踪号',
  `FK_JRX_BRANDS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '品牌',
  `FSUPPLIERID` bigint DEFAULT NULL COMMENT '销售公司',
  `FQTY` decimal(23,10) DEFAULT NULL COMMENT '数量',
  `FK_JRX_PRICENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '定价单号',
  `FK_JRX_BASEDATAPROPFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '开始跟踪号名称',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fsuppliername` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FK_CRRC_ISOWNERMATERIAL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否业主物料',
  `FK_CRRC_ISBYOITEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否自带件',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_orderentry_fk` (`FId`),
  KEY `FEntryId` (`FEntryId`),
  KEY `fmaterialid` (`FMATERIALID`),
  KEY `INDEX_PURO_E` (`FPCBILLNO`,`FPCCARDNO`),
  KEY `select` (`FId`,`FPOENTRYID`,`FENTRYSTATUS`,`FCUQTY`,`FK_JRX_ENTRYMFRSUPID`,`FRCVORGID`),
  KEY `fpoentryid` (`FPOENTRYID`),
  KEY `fk_jrx_pricenumber` (`FK_JRX_PRICENUMBER`),
  KEY `frcvorgid` (`FRCVORGID`),
  KEY `select2` (`FRCVORGID`,`FPOBILLNO`),
  KEY `fpobillno` (`FPOBILLNO`),
  KEY `fprojectid` (`FPROJECTID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_orderentry0321 definition

CREATE TABLE `tk_jrx_orderentry0321` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `flinetypeid` bigint DEFAULT NULL,
  `fk_jrx_qtyfield` decimal(23,10) DEFAULT NULL,
  `funitid` bigint DEFAULT NULL,
  `fmaterialid` bigint DEFAULT NULL,
  `fmaterialnametext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialdesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fgoodsid` bigint DEFAULT NULL,
  `fgoodsdesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fispresent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fdelidate` datetime DEFAULT NULL,
  `fprice` decimal(23,10) DEFAULT NULL,
  `ftaxprice` decimal(23,10) DEFAULT NULL,
  `fdctrate` decimal(19,2) DEFAULT NULL,
  `fdctamount` decimal(23,10) DEFAULT NULL,
  `famount` decimal(23,10) DEFAULT NULL,
  `ftaxrateid` bigint DEFAULT NULL,
  `ftaxrate` decimal(19,2) DEFAULT NULL,
  `ftax` decimal(23,10) DEFAULT NULL,
  `ftaxamount` decimal(23,10) DEFAULT NULL,
  `fpurorgid` bigint DEFAULT NULL,
  `freqorgid` bigint DEFAULT NULL,
  `fwarehouseid` bigint DEFAULT NULL,
  `fsettleorgid` bigint DEFAULT NULL,
  `fpayorgid` bigint DEFAULT NULL,
  `fcostitemid` bigint DEFAULT NULL,
  `fpurtypeid` bigint DEFAULT NULL,
  `fentrystatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frowlogstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frowcloseid` bigint DEFAULT NULL,
  `frowclosereason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frowclosedate` datetime DEFAULT NULL,
  `fnote` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fiscontrolqty` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fsaloutratedown` decimal(23,10) DEFAULT NULL,
  `fsaloutrateup` decimal(23,10) DEFAULT NULL,
  `fsaloutbaseqtyup` decimal(23,10) DEFAULT NULL,
  `fsaloutbaseqtydown` decimal(23,10) DEFAULT NULL,
  `fsaloutqtydown` decimal(23,10) DEFAULT NULL,
  `fsaloutqtyup` decimal(23,10) DEFAULT NULL,
  `frcvpersontel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frcvpersonid` bigint DEFAULT NULL,
  `fvmistockqty` decimal(23,10) DEFAULT NULL,
  `fsumrejqty` decimal(23,10) DEFAULT NULL,
  `fpayableqty` decimal(23,10) DEFAULT NULL,
  `finvoiceqty` decimal(23,10) DEFAULT NULL,
  `fsuminstockbaseqty` decimal(23,10) DEFAULT NULL,
  `fsuminstockqty` decimal(23,10) DEFAULT NULL,
  `fsumreceiptqty` decimal(23,10) DEFAULT NULL,
  `fsumreceiptbaseqty` decimal(23,10) DEFAULT NULL,
  `fsumrefundbaseqty` decimal(23,10) DEFAULT NULL,
  `fsumrefundqty` decimal(23,10) DEFAULT NULL,
  `fsuminstockretbaseqty` decimal(23,10) DEFAULT NULL,
  `fsuminstockretqty` decimal(23,10) DEFAULT NULL,
  `fsumrecretbaseqty` decimal(23,10) DEFAULT NULL,
  `fsumrecretqty` decimal(23,10) DEFAULT NULL,
  `fsumreturnreqqty` decimal(23,10) DEFAULT NULL,
  `fsumoutstockbaseqty` decimal(23,10) DEFAULT NULL,
  `fsumoutstockqty` decimal(23,10) DEFAULT NULL,
  `frelateoutstockbaseqty` decimal(23,10) DEFAULT NULL,
  `frelateoutstockqty` decimal(23,10) DEFAULT NULL,
  `fsumreceiveqty` decimal(23,10) DEFAULT NULL,
  `fpayableamt` decimal(23,10) DEFAULT NULL,
  `finvoiceamt` decimal(23,10) DEFAULT NULL,
  `fprepayamt` decimal(23,10) DEFAULT NULL,
  `fpayprepayamt` decimal(23,10) DEFAULT NULL,
  `fpayamt` decimal(23,10) DEFAULT NULL,
  `flockprepayamt` decimal(23,10) DEFAULT NULL,
  `flocamount` decimal(23,10) DEFAULT NULL,
  `floctax` decimal(23,10) DEFAULT NULL,
  `floctaxamount` decimal(23,10) DEFAULT NULL,
  `facttaxprice` decimal(23,10) DEFAULT NULL,
  `factprice` decimal(23,10) DEFAULT NULL,
  `fprojectid` bigint DEFAULT NULL,
  `fasstunitid` bigint DEFAULT NULL,
  `ftraceid` bigint DEFAULT NULL,
  `fasstqty` decimal(23,10) DEFAULT NULL,
  `fbasicunitid` bigint DEFAULT NULL,
  `fbasicqty` decimal(23,10) DEFAULT NULL,
  `fsrcentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpcbillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fpcentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fpobillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fpobillid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fpoentryid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fsrcbilltype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsrcbillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frcvorgid` bigint DEFAULT NULL,
  `fdeliaddr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpcbillprice` decimal(23,10) DEFAULT NULL,
  `faseqint` bigint DEFAULT NULL,
  `fpcbillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pcbillnotprice` decimal(23,6) DEFAULT NULL,
  `fk_jrx_entrymfrsupid` bigint DEFAULT NULL,
  `fk_irrc_foreignname` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_materiallistno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_materialversion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcuqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_receiveoverrate` decimal(19,2) DEFAULT NULL,
  `fflow` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpccardno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpctaxprice` decimal(23,10) DEFAULT NULL,
  `frealdeliverdate` datetime DEFAULT NULL,
  `fpzwh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fendtracknoid` bigint DEFAULT NULL,
  `fk_jrx_brands` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsupplierid` bigint DEFAULT NULL,
  `fqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_pricenumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_basedatapropfield` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fsuppliername` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_orderentry0324 definition

CREATE TABLE `tk_jrx_orderentry0324` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `flinetypeid` bigint DEFAULT NULL,
  `fk_jrx_qtyfield` decimal(23,10) DEFAULT NULL,
  `funitid` bigint DEFAULT NULL,
  `fmaterialid` bigint DEFAULT NULL,
  `fmaterialnametext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialdesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fgoodsid` bigint DEFAULT NULL,
  `fgoodsdesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fispresent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fdelidate` datetime DEFAULT NULL,
  `fprice` decimal(23,10) DEFAULT NULL,
  `ftaxprice` decimal(23,10) DEFAULT NULL,
  `fdctrate` decimal(19,2) DEFAULT NULL,
  `fdctamount` decimal(23,10) DEFAULT NULL,
  `famount` decimal(23,10) DEFAULT NULL,
  `ftaxrateid` bigint DEFAULT NULL,
  `ftaxrate` decimal(19,2) DEFAULT NULL,
  `ftax` decimal(23,10) DEFAULT NULL,
  `ftaxamount` decimal(23,10) DEFAULT NULL,
  `fpurorgid` bigint DEFAULT NULL,
  `freqorgid` bigint DEFAULT NULL,
  `fwarehouseid` bigint DEFAULT NULL,
  `fsettleorgid` bigint DEFAULT NULL,
  `fpayorgid` bigint DEFAULT NULL,
  `fcostitemid` bigint DEFAULT NULL,
  `fpurtypeid` bigint DEFAULT NULL,
  `fentrystatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frowlogstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frowcloseid` bigint DEFAULT NULL,
  `frowclosereason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frowclosedate` datetime DEFAULT NULL,
  `fnote` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fiscontrolqty` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fsaloutratedown` decimal(23,10) DEFAULT NULL,
  `fsaloutrateup` decimal(23,10) DEFAULT NULL,
  `fsaloutbaseqtyup` decimal(23,10) DEFAULT NULL,
  `fsaloutbaseqtydown` decimal(23,10) DEFAULT NULL,
  `fsaloutqtydown` decimal(23,10) DEFAULT NULL,
  `fsaloutqtyup` decimal(23,10) DEFAULT NULL,
  `frcvpersontel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frcvpersonid` bigint DEFAULT NULL,
  `fvmistockqty` decimal(23,10) DEFAULT NULL,
  `fsumrejqty` decimal(23,10) DEFAULT NULL,
  `fpayableqty` decimal(23,10) DEFAULT NULL,
  `finvoiceqty` decimal(23,10) DEFAULT NULL,
  `fsuminstockbaseqty` decimal(23,10) DEFAULT NULL,
  `fsuminstockqty` decimal(23,10) DEFAULT NULL,
  `fsumreceiptqty` decimal(23,10) DEFAULT NULL,
  `fsumreceiptbaseqty` decimal(23,10) DEFAULT NULL,
  `fsumrefundbaseqty` decimal(23,10) DEFAULT NULL,
  `fsumrefundqty` decimal(23,10) DEFAULT NULL,
  `fsuminstockretbaseqty` decimal(23,10) DEFAULT NULL,
  `fsuminstockretqty` decimal(23,10) DEFAULT NULL,
  `fsumrecretbaseqty` decimal(23,10) DEFAULT NULL,
  `fsumrecretqty` decimal(23,10) DEFAULT NULL,
  `fsumreturnreqqty` decimal(23,10) DEFAULT NULL,
  `fsumoutstockbaseqty` decimal(23,10) DEFAULT NULL,
  `fsumoutstockqty` decimal(23,10) DEFAULT NULL,
  `frelateoutstockbaseqty` decimal(23,10) DEFAULT NULL,
  `frelateoutstockqty` decimal(23,10) DEFAULT NULL,
  `fsumreceiveqty` decimal(23,10) DEFAULT NULL,
  `fpayableamt` decimal(23,10) DEFAULT NULL,
  `finvoiceamt` decimal(23,10) DEFAULT NULL,
  `fprepayamt` decimal(23,10) DEFAULT NULL,
  `fpayprepayamt` decimal(23,10) DEFAULT NULL,
  `fpayamt` decimal(23,10) DEFAULT NULL,
  `flockprepayamt` decimal(23,10) DEFAULT NULL,
  `flocamount` decimal(23,10) DEFAULT NULL,
  `floctax` decimal(23,10) DEFAULT NULL,
  `floctaxamount` decimal(23,10) DEFAULT NULL,
  `facttaxprice` decimal(23,10) DEFAULT NULL,
  `factprice` decimal(23,10) DEFAULT NULL,
  `fprojectid` bigint DEFAULT NULL,
  `fasstunitid` bigint DEFAULT NULL,
  `ftraceid` bigint DEFAULT NULL,
  `fasstqty` decimal(23,10) DEFAULT NULL,
  `fbasicunitid` bigint DEFAULT NULL,
  `fbasicqty` decimal(23,10) DEFAULT NULL,
  `fsrcentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpcbillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fpcentryid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fpobillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fpobillid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fpoentryid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fsrcbilltype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsrcbillid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frcvorgid` bigint DEFAULT NULL,
  `fdeliaddr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpcbillprice` decimal(23,10) DEFAULT NULL,
  `faseqint` bigint DEFAULT NULL,
  `fpcbillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pcbillnotprice` decimal(23,6) DEFAULT NULL,
  `fk_jrx_entrymfrsupid` bigint DEFAULT NULL,
  `fk_irrc_foreignname` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_materiallistno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_materialversion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcuqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_receiveoverrate` decimal(19,2) DEFAULT NULL,
  `fflow` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpccardno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpctaxprice` decimal(23,10) DEFAULT NULL,
  `frealdeliverdate` datetime DEFAULT NULL,
  `fpzwh` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fendtracknoid` bigint DEFAULT NULL,
  `fk_jrx_brands` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsupplierid` bigint DEFAULT NULL,
  `fqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_pricenumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_basedatapropfield` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fsuppliername` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_orderentry_r3 definition

CREATE TABLE `tk_jrx_orderentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_packageentry definition

CREATE TABLE `tk_jrx_packageentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fpackgeno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpackagetype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpnetweight` decimal(23,4) DEFAULT NULL,
  `fproughweight` decimal(23,4) DEFAULT NULL,
  `fpackagesize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fqgp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpackageremark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_packageentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pcqueryentry definition

CREATE TABLE `tk_jrx_pcqueryentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_fproductnoid` bigint DEFAULT NULL,
  `fk_jrx_funitid` bigint DEFAULT NULL,
  `fk_jrx_fqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fprojectnoid` bigint DEFAULT NULL,
  `fk_jrx_ftracknoid` bigint DEFAULT NULL,
  `fk_jrx_fpobillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxrate` decimal(23,2) DEFAULT NULL,
  `fk_jrx_ftaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_famount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fpriceamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_feaspcentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_feaspoentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_feaspoid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fentrybillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_setpricebillno` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_verifyinvoiceqty` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_pcqueryentry_fk` (`FId`,`FSeq`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_precheckbill definition

CREATE TABLE `tk_jrx_precheckbill` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_createdate` datetime DEFAULT NULL,
  `fk_jrx_handin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_proname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_protype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qualityment` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_processment` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_otherment` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_testprocess` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_makeprocess` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_applyscene` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_contractno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_writtenwarning` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_econassess` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_scoremarks` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_pausesupply` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_pausesum` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_reducepursum` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_assesssum` decimal(23,10) DEFAULT NULL,
  `fk_jrx_reducepurcount` decimal(15,2) DEFAULT NULL,
  `fk_jrx_appealer` bigint DEFAULT NULL,
  `fk_jrx_confirmer` bigint DEFAULT NULL,
  `fk_jrx_appealdate` datetime DEFAULT NULL,
  `fk_jrx_confirmdate` datetime DEFAULT NULL,
  `fk_jrx_appealmarks` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_appealstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_constatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_isbotpas` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_assessscore1` decimal(15,2) DEFAULT NULL,
  `fk_jrx_contractsumtxt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_mentremarks2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_suppliername` bigint DEFAULT NULL,
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_ordchange definition

CREATE TABLE `tk_jrx_pur_ordchange` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fpaycondid` bigint DEFAULT NULL,
  `fsettletypeid` bigint DEFAULT NULL,
  `fcurrid` bigint DEFAULT NULL,
  `ftaxtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `floccurrid` bigint DEFAULT NULL,
  `fexchtypeid` bigint DEFAULT NULL,
  `fbiztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fexchrate` decimal(23,10) DEFAULT NULL,
  `fsumqty` decimal(19,2) DEFAULT NULL,
  `fcfmid` bigint DEFAULT NULL,
  `fsuggestion` varchar(251) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbizpartnerid` bigint DEFAULT NULL,
  `fcfmdate` datetime DEFAULT NULL,
  `forigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpobillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_userfield` bigint DEFAULT NULL,
  `fdelisupid` bigint DEFAULT NULL,
  `finvoicesupid` bigint DEFAULT NULL,
  `fpayeesupid` bigint DEFAULT NULL,
  `freqorgid` bigint DEFAULT NULL,
  `frcvorgid` bigint DEFAULT NULL,
  `fsettleorgid` bigint DEFAULT NULL,
  `fpayorgid` bigint DEFAULT NULL,
  `fbusinesstypeid` bigint DEFAULT NULL,
  `fbilldate` datetime DEFAULT NULL,
  `fchangereason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpobillno` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_mfrsupplier` bigint DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fpersonid` bigint DEFAULT NULL,
  `fremark` varchar(521) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsumamount` decimal(23,10) DEFAULT NULL,
  `fsumtax` decimal(23,10) DEFAULT NULL,
  `fchgreasonid` bigint DEFAULT NULL,
  `fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_dockingstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_manualconfirmatio` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fcentersettle` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `freason` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `feasordchid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fissysaffirm` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fisemm` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_dockingmodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdelidate` datetime DEFAULT NULL,
  `fdeliaddr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcontacterid` bigint DEFAULT NULL,
  `fsumtaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_cfmcfm` bigint DEFAULT NULL,
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_lastupdateuser` bigint DEFAULT NULL,
  `fk_jrx_lastupdatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `fbillno` (`fbillno`),
  KEY `fbillstatus` (`fbillstatus`),
  KEY `select` (`fbilldate`,`fisemm`) USING BTREE,
  KEY `FISSYSAFFIRM` (`fissysaffirm`),
  KEY `FCREATETIME` (`fcreatetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_ordchange_l definition

CREATE TABLE `tk_jrx_pur_ordchange_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fremark` varchar(521) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_pur_ordchange_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_ordchangentry definition

CREATE TABLE `tk_jrx_pur_ordchangentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fchgtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `flinetypeid` bigint DEFAULT NULL,
  `fmaterialid` bigint DEFAULT NULL,
  `fmaterialnametext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_jrx_materialname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_materialmodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `funitid` bigint DEFAULT NULL,
  `fqtyold` decimal(23,10) DEFAULT NULL,
  `foldchangeqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_qtyfield` decimal(23,10) DEFAULT NULL,
  `fprice` decimal(23,10) DEFAULT NULL,
  `fpriceold` decimal(23,10) DEFAULT NULL,
  `ftaxpriceold` decimal(23,10) DEFAULT NULL,
  `ftaxprice` decimal(23,10) DEFAULT NULL,
  `fdctrateold` decimal(19,2) DEFAULT NULL,
  `fdctrate` decimal(19,2) DEFAULT NULL,
  `ftaxrateold` decimal(19,2) DEFAULT NULL,
  `fdelidateold` datetime DEFAULT NULL,
  `ftaxrateidold` bigint DEFAULT NULL,
  `ftaxrateid` bigint DEFAULT NULL,
  `ftaxrate` decimal(19,2) DEFAULT NULL,
  `fdeliaddrold` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdeliaddr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdelidate` datetime DEFAULT NULL,
  `fispresent` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fwarehouseid` bigint DEFAULT NULL,
  `fsettleorgid` bigint DEFAULT NULL,
  `frcvorgid` bigint DEFAULT NULL,
  `fnote` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpayorgid` bigint DEFAULT NULL,
  `famount` decimal(23,10) DEFAULT NULL,
  `fdctamount` decimal(23,10) DEFAULT NULL,
  `ftax` decimal(23,10) DEFAULT NULL,
  `ftaxamount` decimal(23,10) DEFAULT NULL,
  `fentrystatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fgoodsid` bigint DEFAULT NULL,
  `fk_jrx_goodsname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_goodsmodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpoentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprojectid` bigint DEFAULT NULL,
  `fgoodsdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftraceid` bigint DEFAULT NULL,
  `fk_jrx_changemidid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_easentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_pur_ordchangentry_fk` (`FId`,`FSeq`) USING BTREE,
  KEY `fmaterialid` (`fmaterialid`),
  KEY `FPOENTRYID` (`fpoentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_order definition

CREATE TABLE `tk_jrx_pur_order` (
  `FId` bigint NOT NULL,
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单据编号',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '单据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FAUDITORID` bigint DEFAULT NULL COMMENT '审核人',
  `FAUDITDATE` datetime DEFAULT NULL COMMENT '审核时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FORGID` bigint DEFAULT NULL COMMENT '订货客户',
  `FBUSINESSTYPEID` bigint DEFAULT NULL COMMENT '业务类型',
  `FBILLDATE` datetime DEFAULT NULL COMMENT '业务日期',
  `FSUPPLIERID` bigint DEFAULT NULL COMMENT '销售公司',
  `FPERSONID` bigint DEFAULT NULL COMMENT '联系人',
  `FCONTACTERID` bigint DEFAULT NULL COMMENT '业务员',
  `FCFMSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '确认状态',
  `FLOGSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '物流状态',
  `FCENTERSETTLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '集中结算',
  `FDELIDATE` datetime DEFAULT NULL COMMENT '最早交货日期',
  `FDELIADDR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '交货地址',
  `FPAYSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '收款状态',
  `FREJECTREASON` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '打回原因',
  `FSUMTAXAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '应收金额',
  `FCURRID` bigint DEFAULT NULL COMMENT '结算币别',
  `FPAYCONDID` bigint DEFAULT NULL COMMENT '付款条件',
  `FSETTLETYPEID` bigint DEFAULT NULL COMMENT '结算方式',
  `FTAXTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '计税类型',
  `FLOCCURRID` bigint DEFAULT NULL COMMENT '本位币',
  `FEXCHTYPEID` bigint DEFAULT NULL COMMENT '汇率表',
  `FEXCHRATE` bigint DEFAULT NULL COMMENT '汇率',
  `FBIZTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '业务类型(作废)',
  `FSUMQTY` decimal(19,2) DEFAULT NULL COMMENT '合计数量',
  `FSUMTAX` decimal(23,10) DEFAULT NULL COMMENT '合计税额',
  `FSUMAMOUNT` decimal(23,10) DEFAULT NULL COMMENT '合计金额',
  `FPREPAYRATE` decimal(19,2) DEFAULT NULL COMMENT '预付比例(%)',
  `FSUMPAYAMT` decimal(23,10) DEFAULT NULL COMMENT '已付款金额',
  `FSUMPREPAYAMT` decimal(23,10) DEFAULT NULL COMMENT '预付金额',
  `FSUMPAYABLEAMT` decimal(23,10) DEFAULT NULL COMMENT '累计应付金额',
  `FSUMINVOICEAMT` decimal(23,10) DEFAULT NULL COMMENT '已开票金额',
  `FPAYEESUPID` bigint DEFAULT NULL COMMENT '收款方',
  `FDELISUPID` bigint DEFAULT NULL COMMENT '发货方',
  `FINVOICESUPID` bigint DEFAULT NULL COMMENT '开票方',
  `FPAYORGID` bigint DEFAULT NULL COMMENT '付款组织',
  `FREQORGID` bigint DEFAULT NULL COMMENT '需求组织',
  `FRCVORGID` bigint DEFAULT NULL COMMENT '收货组织',
  `FSETTLEORGID` bigint DEFAULT NULL COMMENT '核算组织',
  `FENTRUSTORGID` bigint DEFAULT NULL COMMENT '委托单位',
  `FBIZPARTNERID` bigint DEFAULT NULL COMMENT '商务伙伴',
  `FLASTUPDATEUSERID` bigint DEFAULT NULL COMMENT '修改人',
  `FLASTUPDATETIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FCLOSEID` bigint DEFAULT NULL COMMENT '关闭人',
  `FREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '关闭原因',
  `FCLOSEDATE` datetime DEFAULT NULL COMMENT '关闭日期',
  `FCFMID` bigint DEFAULT NULL COMMENT '确认人',
  `FCFMDATE` datetime DEFAULT NULL COMMENT '确认日期',
  `FSUGGESTION` varchar(251) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '处理意见',
  `FBILLVERSION` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '版本号',
  `FORIGIN` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '发起方',
  `FSRCBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '源单类型',
  `FK_JRX_MFRSUPPLIER` bigint DEFAULT NULL COMMENT '制造供应商',
  `FK_JRX_ENTRUSTORG1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '委托单位',
  `FPURTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '采购分类',
  `FISSEND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否已发',
  `FPURCHASEPERSONID` bigint DEFAULT NULL COMMENT '采购员',
  `FREMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '主单备注',
  `FK_JRX_BUSINESSTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '业务类型',
  `FK_JRX_OVERSEASORDER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否海外订单',
  `FK_JRX_CONFIMMODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '确认方式',
  `FK_JRX_DOCKINGSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '对接状态',
  `FK_JRX_MULTIPLEMERGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '合并对接',
  `FHISCFM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '历史确认人',
  `FSYNDATE` datetime DEFAULT NULL COMMENT '同步时间',
  `FK_JRX_ISSRM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '是否协同',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `fentrustorgid` (`FENTRUSTORGID`),
  KEY `isold` (`isold`),
  KEY `fpurchasepersonid` (`FPURCHASEPERSONID`),
  KEY `select` (`FBILLDATE`,`FSUPPLIERID`,`FK_JRX_MFRSUPPLIER`,`FORGID`,`FBIZPARTNERID`),
  KEY `INDEX_PUR_BILLSTATUS` (`FBILLSTATUS`),
  KEY `fk_jrx_entrustorg1` (`FK_JRX_ENTRUSTORG1`),
  KEY `INDEX_PUR_SYNDATE` (`FSYNDATE`),
  KEY `PURORDERNO_INDEX` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_order0321 definition

CREATE TABLE `tk_jrx_pur_order0321` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fbusinesstypeid` bigint DEFAULT NULL,
  `fbilldate` datetime DEFAULT NULL,
  `fsupplierid` bigint DEFAULT NULL,
  `fpersonid` bigint DEFAULT NULL,
  `fcontacterid` bigint DEFAULT NULL,
  `fcfmstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `flogstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcentersettle` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fdelidate` datetime DEFAULT NULL,
  `fdeliaddr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpaystatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `frejectreason` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsumtaxamount` decimal(23,10) DEFAULT NULL,
  `fcurrid` bigint DEFAULT NULL,
  `fpaycondid` bigint DEFAULT NULL,
  `fsettletypeid` bigint DEFAULT NULL,
  `ftaxtype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `floccurrid` bigint DEFAULT NULL,
  `fexchtypeid` bigint DEFAULT NULL,
  `fexchrate` bigint DEFAULT NULL,
  `fbiztype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsumqty` decimal(19,2) DEFAULT NULL,
  `fsumtax` decimal(23,10) DEFAULT NULL,
  `fsumamount` decimal(23,10) DEFAULT NULL,
  `fprepayrate` decimal(19,2) DEFAULT NULL,
  `fsumpayamt` decimal(23,10) DEFAULT NULL,
  `fsumprepayamt` decimal(23,10) DEFAULT NULL,
  `fsumpayableamt` decimal(23,10) DEFAULT NULL,
  `fsuminvoiceamt` decimal(23,10) DEFAULT NULL,
  `fpayeesupid` bigint DEFAULT NULL,
  `fdelisupid` bigint DEFAULT NULL,
  `finvoicesupid` bigint DEFAULT NULL,
  `fpayorgid` bigint DEFAULT NULL,
  `freqorgid` bigint DEFAULT NULL,
  `frcvorgid` bigint DEFAULT NULL,
  `fsettleorgid` bigint DEFAULT NULL,
  `fentrustorgid` bigint DEFAULT NULL,
  `fbizpartnerid` bigint DEFAULT NULL,
  `flastupdateuserid` bigint DEFAULT NULL,
  `flastupdatetime` datetime DEFAULT NULL,
  `fcloseid` bigint DEFAULT NULL,
  `freason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fclosedate` datetime DEFAULT NULL,
  `fcfmid` bigint DEFAULT NULL,
  `fcfmdate` datetime DEFAULT NULL,
  `fsuggestion` varchar(251) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillversion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `forigin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsrcbilltype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_mfrsupplier` bigint DEFAULT NULL,
  `fk_jrx_entrustorg1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fpurtype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fissend` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fpurchasepersonid` bigint DEFAULT NULL,
  `fremarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_businesstype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_overseasorder` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_confimmode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_dockingstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_multiplemerge` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fhiscfm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsyndate` datetime DEFAULT NULL,
  `fk_jrx_issrm` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_order_l definition

CREATE TABLE `tk_jrx_pur_order_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_remark` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_pur_order_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_order_log definition

CREATE TABLE `tk_jrx_pur_order_log` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint DEFAULT NULL COMMENT '物流公司',
  `FLOGBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '物流单号',
  `FDELIDATE` datetime DEFAULT NULL COMMENT '预计到货日期',
  `FLOGDATE` datetime DEFAULT NULL COMMENT '发货日期',
  `FNOTE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '备注',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_pur_order_log_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_salreturn definition

CREATE TABLE `tk_jrx_pur_salreturn` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_businesstype` bigint DEFAULT NULL,
  `fk_jrx_fbilldate` datetime DEFAULT NULL,
  `fk_jrx_forgid` bigint DEFAULT NULL,
  `fk_jrx_fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_fsettleorgid` bigint DEFAULT NULL,
  `fk_jrx_fpayorgid` bigint DEFAULT NULL,
  `fk_jrx_fpersonid` bigint DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fcontacterid` bigint DEFAULT NULL,
  `fk_jrx_fsumamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsumtax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsumtaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_freplenishtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpaycondid` bigint DEFAULT NULL,
  `fk_jrx_fsettletypeid` bigint DEFAULT NULL,
  `fk_jrx_fcurrid` bigint DEFAULT NULL,
  `fk_jrx_ftaxtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_floccurrid` bigint DEFAULT NULL,
  `fk_jrx_exratetable` bigint DEFAULT NULL,
  `fk_jrx_fexchrate` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsumqty` decimal(19,2) DEFAULT NULL,
  `fk_jrx_fbiztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fdelisupid` bigint DEFAULT NULL,
  `fk_jrx_finvoicesupid` bigint DEFAULT NULL,
  `fk_jrx_fpayeesupid` bigint DEFAULT NULL,
  `fk_jrx_freqorgid` bigint DEFAULT NULL,
  `fk_jrx_fbizpartnerid` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_salreturn_a definition

CREATE TABLE `tk_jrx_pur_salreturn_a` (
  `FId` bigint NOT NULL,
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_fsupaddr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcfmid` bigint DEFAULT NULL,
  `fk_jrx_fcfmdate` datetime DEFAULT NULL,
  `fk_jrx_forigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_salreturn_l definition

CREATE TABLE `tk_jrx_pur_salreturn_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_fremark` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_pur_salreturn_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_salreturnentry definition

CREATE TABLE `tk_jrx_pur_salreturnentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_fpobillno` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_fmaterialdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_funitid` bigint DEFAULT NULL,
  `fk_jrx_fqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fdctrate` decimal(19,2) DEFAULT NULL,
  `fk_jrx_fdctamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_famount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxrateid` bigint DEFAULT NULL,
  `fk_jrx_ftaxrate` decimal(19,2) DEFAULT NULL,
  `fk_jrx_ftax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fispresent` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_fretreason` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_flotid` bigint DEFAULT NULL,
  `fk_jrx_fsuplot` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fproddate` datetime DEFAULT NULL,
  `fk_jrx_fduedate` datetime DEFAULT NULL,
  `fk_jrx_fsettleorgid` bigint DEFAULT NULL,
  `fk_jrx_fnote` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fentrystatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcheckstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_freqorgid` bigint DEFAULT NULL,
  `fk_jrx_fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_frcvorgid` bigint DEFAULT NULL,
  `fk_jrx_fpayorgid` bigint DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_ftraceid` bigint DEFAULT NULL,
  `fk_jrx_fpcbillno` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_pur_salreturnentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_salreturnentry_a definition

CREATE TABLE `tk_jrx_pur_salreturnentry_a` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `fk_jrx_fsumcheckqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsumcheckamt` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fgoodsid` bigint DEFAULT NULL,
  `fk_jrx_fgoodsdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_flocamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_floctax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_floctaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_factprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_facttaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fbasicunitid` bigint DEFAULT NULL,
  `fk_jrx_fbasicqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fasstunitid` bigint DEFAULT NULL,
  `fk_jrx_fasstqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fpobillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpoentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpcbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsrcbilltype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsrcbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsrcentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_pur_salreturnentry_A_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_salreturnentry_lk definition

CREATE TABLE `tk_jrx_pur_salreturnentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx__jrx_pur_salreturnentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_pur_salreturnentry_z definition

CREATE TABLE `tk_jrx_pur_salreturnentry_z` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `fk_jrx_fpcprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fpcnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fwarehouseid` bigint DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_pur_salreturnentry_Z_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_purbilldtlretur_r3 definition

CREATE TABLE `tk_jrx_purbilldtlretur_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_purbilldtlreturnda definition

CREATE TABLE `tk_jrx_purbilldtlreturnda` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '发票编码',
  `FK_JRX_DTLID` bigint DEFAULT NULL COMMENT '明细ID',
  `FK_JRX_EASENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'EAS入库分录ID',
  `FK_JRX_BILLNUM` decimal(23,10) DEFAULT NULL COMMENT '发票数量',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_purbilldtlreturnda_l definition

CREATE TABLE `tk_jrx_purbilldtlreturnda_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_purbilldtlreturnda_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_purchasedetail definition

CREATE TABLE `tk_jrx_purchasedetail` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_SUPPLIER` bigint DEFAULT NULL COMMENT '供应商',
  `FK_JRX_MATERIAL` bigint DEFAULT NULL COMMENT '物料编码',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_purchasedetail_l definition

CREATE TABLE `tk_jrx_purchasedetail_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_purchasedetail_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_purchasedetail_r3 definition

CREATE TABLE `tk_jrx_purchasedetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_purcompactquery definition

CREATE TABLE `tk_jrx_purcompactquery` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_fcptdate` datetime DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_feaspcid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpricecurrencyid` bigint DEFAULT NULL,
  `fk_jrx_fcurrencyid` bigint DEFAULT NULL,
  `fk_jrx_htbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_mainnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`),
  KEY `FBILLNO` (`fbillno`),
  KEY `FSUPPLIERID` (`fk_jrx_fsupplierid`),
  KEY `fk_jrx_fpurorgid` (`fk_jrx_fpurorgid`),
  KEY `fbillstatus` (`fbillstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_purinvoicedetail definition

CREATE TABLE `tk_jrx_purinvoicedetail` (
  `FEntryId` bigint NOT NULL,
  `FDetailId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_fcmaterialid` bigint DEFAULT NULL,
  `fk_jrx_cmaterialnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_cmaterialname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_cmodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_cbaseunit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_finvociceqty` decimal(12,4) DEFAULT NULL,
  `fk_jrx_caninvociceqty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_unlockqty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_projectname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pobillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fserialnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_purcontractno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pccardno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fctaxrate` decimal(10,2) DEFAULT NULL,
  `fk_jrx_taxrate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcextaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fctaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fcamountax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fcextaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fctaxprice` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FDetailId`),
  KEY `idx__jrx_purinvoicedetail_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_purinvoiceentry definition

CREATE TABLE `tk_jrx_purinvoiceentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_materialname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_mversion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_baseunit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ftaxprecent` decimal(10,2) DEFAULT NULL,
  `fk_jrx_fistax` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `fk_jrx_fqty` decimal(12,4) DEFAULT NULL,
  `fk_jrx_fextaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_famountax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_feglbamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsupertax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fextaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxprice` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_purinvoiceentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_purmfsrelation definition

CREATE TABLE `tk_jrx_purmfsrelation` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_orgfield` bigint DEFAULT NULL,
  `fk_jrx_bizdate` datetime DEFAULT NULL,
  `fk_jrx_supplierfield` bigint DEFAULT NULL,
  `fk_jrx_description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_receipt definition

CREATE TABLE `tk_jrx_receipt` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_businesstype` bigint DEFAULT NULL,
  `fk_jrx_billdate` datetime DEFAULT NULL,
  `fk_jrx_org` bigint DEFAULT NULL,
  `fk_jrx_person` bigint DEFAULT NULL,
  `fk_jrx_purorg` bigint DEFAULT NULL,
  `fk_jrx_supplier` bigint DEFAULT NULL,
  `fk_jrx_contacter` bigint DEFAULT NULL,
  `fk_jrx_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_replenishtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_cfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_scheck` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_chkbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_serialnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_isreturn` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_writeoffflag` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_delisup` bigint DEFAULT NULL,
  `fk_jrx_invoicesup` bigint DEFAULT NULL,
  `fk_jrx_payeesup` bigint DEFAULT NULL,
  `fk_jrx_reqorg` bigint DEFAULT NULL,
  `fk_jrx_settleorg` bigint DEFAULT NULL,
  `fk_jrx_payorg` bigint DEFAULT NULL,
  `fk_jrx_paycond` bigint DEFAULT NULL,
  `fk_jrx_settletype` bigint DEFAULT NULL,
  `fk_jrx_curr` bigint DEFAULT NULL,
  `fk_jrx_taxtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_loccurr` bigint DEFAULT NULL,
  `fk_jrx_exchtype` bigint DEFAULT NULL,
  `fk_jrx_biztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_sumtax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_sumamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_sumqty` decimal(19,2) DEFAULT NULL,
  `fk_jrx_sumtaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fromcurr` bigint DEFAULT NULL,
  `fk_jrx_tocurr` bigint DEFAULT NULL,
  `fk_jrx_exratedate` datetime DEFAULT NULL,
  `fk_jrx_exrate` decimal(23,10) DEFAULT NULL,
  `fk_jrx_quotation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_createtime` datetime DEFAULT NULL,
  `fk_jrx_lastupdateuser` bigint DEFAULT NULL,
  `fk_jrx_lastupdatetime` datetime DEFAULT NULL,
  `fk_jrx_userfield` bigint DEFAULT NULL,
  `fk_jrx_cfmdate` datetime DEFAULT NULL,
  `fk_jrx_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_bizpartner` bigint DEFAULT NULL,
  `fk_jrx_mfrsupplier` bigint DEFAULT NULL,
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `billdate` (`fk_jrx_billdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_receipt_l definition

CREATE TABLE `tk_jrx_receipt_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_remark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_receipt_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_receivalentry definition

CREATE TABLE `tk_jrx_receivalentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_ferrortypeld` bigint DEFAULT NULL,
  `fk_jrx_projectld` bigint DEFAULT NULL,
  `fk_jrx_echoqty` bigint DEFAULT NULL,
  `fk_jrx_qty` bigint DEFAULT NULL,
  `fk_jrx_errorcontext` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_excutedtime` datetime DEFAULT NULL,
  `fk_jrx_textfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_excutestatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_receivalentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_receivalerror definition

CREATE TABLE `tk_jrx_receivalerror` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_supplierld` bigint DEFAULT NULL,
  `fk_jrx_farrivalnoticeno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ffeedbackerid` bigint DEFAULT NULL,
  `fk_jrx_fhandlerid` bigint DEFAULT NULL,
  `fk_jrx_arrivalnoticetime` datetime DEFAULT NULL,
  `fk_jrx_ferrortime` datetime DEFAULT NULL,
  `fk_jrx_fclosetime` datetime DEFAULT NULL,
  `fk_jrx_ftreatment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fhandovertime` datetime DEFAULT NULL,
  `fk_jrx_feffectday` bigint DEFAULT NULL,
  `fk_jrx_ywz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_redinvoice definition

CREATE TABLE `tk_jrx_redinvoice` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_invoicestatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_applysuppliers` bigint DEFAULT NULL,
  `fk_jrx_checkbillnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_redinvoice_lk definition

CREATE TABLE `tk_jrx_redinvoice_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx__jrx_redinvoice_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_redinvoice_tc definition

CREATE TABLE `tk_jrx_redinvoice_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_TK_JRX_REDINVOICE_TC_TBILL` (`FTBillId`),
  KEY `IDX_TK_JRX_REDINVOICE_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_redinvoice_wb definition

CREATE TABLE `tk_jrx_redinvoice_wb` (
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
  KEY `idx__jrx_redinvoice_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_request definition

CREATE TABLE `tk_jrx_request` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_fbusinesstypeid` bigint DEFAULT NULL,
  `fk_jrx_fbilldate` datetime DEFAULT NULL,
  `fk_jrx_fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_fsettleorgid` bigint DEFAULT NULL,
  `fk_jrx_fpersonid` bigint DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fcontacterid` bigint DEFAULT NULL,
  `fk_jrx_fremark` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsumamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsumtax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsumtaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_freplenishtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_billstatusfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fplatform` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurorderno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpickwaretype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_flinkman` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_femail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_faddress` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fjdserviceid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_frettype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpaycondid` bigint DEFAULT NULL,
  `fk_jrx_fsettletypeid` bigint DEFAULT NULL,
  `fk_jrx_fcurrid` bigint DEFAULT NULL,
  `fk_jrx_floccurrid` bigint DEFAULT NULL,
  `fk_jrx_ftaxtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fbiztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fexchtypeid` bigint DEFAULT NULL,
  `fk_jrx_fsumqty` decimal(19,2) DEFAULT NULL,
  `fk_jrx_fsupaddr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fdelisupid` bigint DEFAULT NULL,
  `fk_jrx_finvoicesupid` bigint DEFAULT NULL,
  `fk_jrx_fpayeesupid` bigint DEFAULT NULL,
  `fk_jrx_freqorgid` bigint DEFAULT NULL,
  `fk_jrx_fpayorgid` bigint DEFAULT NULL,
  `fk_jrx_fcfmid` bigint DEFAULT NULL,
  `fk_jrx_fcfmdate` datetime DEFAULT NULL,
  `fk_jrx_forigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fbizpartnerid` bigint DEFAULT NULL,
  `fk_jrx_flastupdateuserid` bigint DEFAULT NULL,
  `fk_jrx_flastupdatetime` datetime DEFAULT NULL,
  `fk_jrx_fexchrate` decimal(23,10) DEFAULT NULL,
  `fk_jrx_mfrsupplier` bigint DEFAULT NULL,
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_request_l definition

CREATE TABLE `tk_jrx_request_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_fremark` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_request_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_requestentry definition

CREATE TABLE `tk_jrx_requestentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_fpobillno` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_flinetypeid` bigint DEFAULT NULL,
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_fmaterialnametext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fgoodsid` bigint DEFAULT NULL,
  `fk_jrx_textfield2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_funitid` bigint DEFAULT NULL,
  `fk_jrx_fqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_freplenishqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fmaterialnewid` bigint DEFAULT NULL,
  `fk_jrx_fretdate` datetime DEFAULT NULL,
  `fk_jrx_fretreason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fispresent` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_fwarehouseid` bigint DEFAULT NULL,
  `fk_jrx_flotid` bigint DEFAULT NULL,
  `fk_jrx_fsuplot` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fproddate` datetime DEFAULT NULL,
  `fk_jrx_fduedate` datetime DEFAULT NULL,
  `fk_jrx_fsettleorgid` bigint DEFAULT NULL,
  `fk_jrx_fprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fdctrate` decimal(19,2) DEFAULT NULL,
  `fk_jrx_fdctamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_famount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxrate` decimal(19,2) DEFAULT NULL,
  `fk_jrx_ftaxrateid` bigint DEFAULT NULL,
  `ftax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fnote` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_freqorgid` bigint DEFAULT NULL,
  `fk_jrx_fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_finvorgid` bigint DEFAULT NULL,
  `fk_jrx_fpayorgid` bigint DEFAULT NULL,
  `fk_jrx_fentrystatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qtyfield` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fgoodsdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_amountfield1` decimal(23,10) DEFAULT NULL,
  `fk_jrx_amountfield2` decimal(23,10) DEFAULT NULL,
  `fk_jrx_floctaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_factprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_facttaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_fbasicunitid` bigint DEFAULT NULL,
  `fk_jrx_ftraceid` bigint DEFAULT NULL,
  `fk_jrx_fbasicqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fasstunitid` bigint DEFAULT NULL,
  `fk_jrx_fasstqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fpobillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpoentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpcbillno` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpcbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpcentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsrcbilltype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsrcbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsrcentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_requestentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_samaterial definition

CREATE TABLE `tk_jrx_samaterial` (
  `FID` bigint NOT NULL,
  `fk_jrx_said` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_easid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_projectcode` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_projectname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_nanitemcode` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_nanitemname` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_unit` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_itemno` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_class1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_weight` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_code_projectcode` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_nanstation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fentryid` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_samaterial_r3 definition

CREATE TABLE `tk_jrx_samaterial_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_scm_claimnote definition

CREATE TABLE `tk_jrx_scm_claimnote` (
  `FId` bigint NOT NULL,
  `fk_jrx_billno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_billstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_createtifcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_supplier` bigint DEFAULT NULL,
  `fk_jrx_forgid` bigint DEFAULT NULL,
  `fk_jrx_material` bigint DEFAULT NULL,
  `fk_jrx_unit` bigint DEFAULT NULL,
  `fk_jrx_rejectqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_claimqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_claimamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_supstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supappealper` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supappealdate` datetime DEFAULT NULL,
  `fk_jrx_supapplyqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_amountfield` decimal(23,10) DEFAULT NULL,
  `fk_jrx_createtime` datetime DEFAULT NULL,
  `fk_jrx_easbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_scm_dcdeliverybill definition

CREATE TABLE `tk_jrx_scm_dcdeliverybill` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid1` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fk_jrx_auditor` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fbizdate` datetime DEFAULT NULL,
  `freqorgid` bigint DEFAULT NULL,
  `fdeliveryorgid` bigint DEFAULT NULL,
  `fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_mfrsupplier` bigint DEFAULT NULL,
  `fflow` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdcdtypeid` bigint DEFAULT NULL,
  `ftypenumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftypename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftrantype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fremark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fremark_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fdcdtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fworkcent` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `feasbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsyncstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fiscatbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ferrormsg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ferrormsg_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fcreatorid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_MSCP_DCDELIVERYBILL_FBN` (`fbillno`),
  KEY `IDX_MSCP_DCDELI_SUPPLIER` (`fsupplierid`),
  KEY `IDX_MSCP_DCDELI_EASID` (`feasbillid`),
  KEY `ind_t_mscp_dcdeliverybill111` (`FId`,`fsupplierid`,`fbizdate`),
  KEY `IDX_dcdbill_Fbizdate` (`fbizdate`),
  KEY ```FId``` (`FId`),
  KEY ```freqorgid``` (`freqorgid`),
  KEY ```fk_jrx_mfrsupplier``` (`fk_jrx_mfrsupplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_scm_loa definition

CREATE TABLE `tk_jrx_scm_loa` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid11` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid11` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fpaycondid` bigint DEFAULT NULL,
  `fsettletypeid` bigint DEFAULT NULL,
  `fcurrid` bigint DEFAULT NULL,
  `ftaxtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `floccurrid` bigint DEFAULT NULL,
  `fexchtypeid` bigint DEFAULT NULL,
  `fsumqty` decimal(23,10) DEFAULT NULL,
  `fbiztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsumtaxamount` decimal(23,10) DEFAULT NULL,
  `fsumamount` decimal(23,10) DEFAULT NULL,
  `fsumtax` decimal(23,10) DEFAULT NULL,
  `fcreatorid` bigint DEFAULT NULL,
  `fqcodeurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `flastupdateuserid` bigint DEFAULT NULL,
  `flastupdatetime` datetime DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fcfmid` bigint DEFAULT NULL,
  `fcfmdate` datetime DEFAULT NULL,
  `fbizpartnerid` bigint DEFAULT NULL,
  `fsrcbilltype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `forigin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fisinitial` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `fdelisupid` bigint DEFAULT NULL,
  `finvoicesupid` bigint DEFAULT NULL,
  `fpayeesupid` bigint DEFAULT NULL,
  `fpayorgid` bigint DEFAULT NULL,
  `freqorgid` bigint DEFAULT NULL,
  `fpurorgid` bigint DEFAULT NULL,
  `fsettleorgid` bigint DEFAULT NULL,
  `fexchrate` decimal(23,10) DEFAULT NULL,
  `fbusinesstypeid` bigint DEFAULT NULL,
  `fbilldate` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fdelidate` datetime DEFAULT NULL,
  `fpersonid` bigint DEFAULT NULL,
  `fdeliaddr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_mfrsupplier` bigint DEFAULT NULL,
  `fcontacterid` bigint DEFAULT NULL,
  `fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `flogstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdeliverybasis` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdemandcust` bigint DEFAULT NULL,
  `fbuyerphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcontractno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsalerphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftrafficphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `farrivaldress` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftrafficcust` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdeliveryaddr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ftranmode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdeliverybatch` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmaterialowner` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fcomptechnique` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fcodenumid` bigint DEFAULT NULL,
  `fordernumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmakerinfo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ffybatchid` bigint DEFAULT NULL,
  `ffybatchnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_easentryids` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fk_jrx_remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_crrc_ispresent` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FId`),
  KEY ```FId``` (`FId`),
  KEY ```fbilldate``` (`fbilldate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_scm_loa_a definition

CREATE TABLE `tk_jrx_scm_loa_a` (
  `FId` bigint NOT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_scm_loa_l definition

CREATE TABLE `tk_jrx_scm_loa_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_remark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_scm_loa_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_scm_ncrreport definition

CREATE TABLE `tk_jrx_scm_ncrreport` (
  `FId` bigint NOT NULL,
  `fk_jrx_billno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_billstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_creator` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fk_jrx_auditor` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_storageorgunit` bigint DEFAULT NULL,
  `fk_jrx_transtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_versionno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_materielfield` bigint DEFAULT NULL,
  `fk_jrx_occurdept` bigint DEFAULT NULL,
  `fk_jrx_bizdate` datetime DEFAULT NULL,
  `fk_jrx_description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_description_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fk_jrx_auditresult` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_serial` bigint DEFAULT NULL,
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_track` bigint DEFAULT NULL,
  `fk_jrx_qty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_outresdept` bigint DEFAULT NULL,
  `fk_jrx_auditlevel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qmer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_createtime` datetime DEFAULT NULL,
  `fk_jrx_auditdate` datetime DEFAULT NULL,
  `fk_jrx_affirmer` bigint DEFAULT NULL,
  `fk_jrx_affirmdate` datetime DEFAULT NULL,
  `fk_jrx_closedloop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_closedloop_tag` longtext COLLATE utf8mb4_unicode_ci,
  `fk_jrx_recorddate` datetime DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_scm_pureiabackbill definition

CREATE TABLE `tk_jrx_scm_pureiabackbill` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_supplierid` bigint DEFAULT NULL,
  `fk_jrx_pobillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_contactno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_contactentry` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_purgroupid` bigint DEFAULT NULL,
  `fk_jrx_purchaserid` bigint DEFAULT NULL,
  `fk_jrx_materielid` bigint DEFAULT NULL,
  `fk_jrx_belongpartnoid` bigint DEFAULT NULL,
  `fk_jrx_prearrivaldated` datetime DEFAULT NULL,
  `fk_jrx_process` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_orprocess` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_suremanid` bigint DEFAULT NULL,
  `fk_jrx_suretime` datetime DEFAULT NULL,
  `fk_jrx_receivetime` datetime DEFAULT NULL,
  `fk_jrx_closerid` bigint DEFAULT NULL,
  `fk_jrx_closetime` datetime DEFAULT NULL,
  `fk_jrx_chgdesc` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_starttracknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_endtracknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_starttrackname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_endtrackname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_confirmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_enclosureornot` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_eletopic` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_protitle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_changetype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_parttype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_parversionnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_sonversionnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_remarks` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fmovedata` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_attachmentcountfield` bigint DEFAULT NULL,
  `fk_crrc_advice` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_isexecute` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_supfeedback` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_isreasonable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_executetime` datetime DEFAULT NULL,
  `fk_crrc_produceunit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_itemname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_itemnumber` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_scm_pureiabackfile definition

CREATE TABLE `tk_jrx_scm_pureiabackfile` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_filename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_filetype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fileurl` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_filefbackstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fbackresult` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_filefbacktime` datetime DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_scm_pureiabackfile_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sddpfbentry definition

CREATE TABLE `tk_jrx_sddpfbentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_fentryrcvorg` bigint DEFAULT NULL,
  `fk_jrx_fentrysupplierid` bigint DEFAULT NULL,
  `fk_jrx_fentrymaterialid` bigint DEFAULT NULL,
  `fk_jrx_fentryunit` bigint DEFAULT NULL,
  `fk_jrx_fentrydemandqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fentrycommitqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fentrydemanddate` datetime DEFAULT NULL,
  `fk_jrx_ffbentrydate` datetime DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_sddpfbentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sddppurentry definition

CREATE TABLE `tk_jrx_sddppurentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_fpurid` bigint DEFAULT NULL,
  `fk_jrx_fordernumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurorderid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_forderseq` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_fmaterialunitid` bigint DEFAULT NULL,
  `fk_jrx_fqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fdcdqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_ftrackid` bigint DEFAULT NULL,
  `fk_jrx_fplanqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_feaspurid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_feaspurentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ftotalreceiptqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftotalundownqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fentrystatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_sddppurentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sddpspurentry definition

CREATE TABLE `tk_jrx_sddpspurentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_fpurid` bigint DEFAULT NULL,
  `fk_jrx_fpurnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurorderid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurorderentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurseq` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_fmaterialunitid` bigint DEFAULT NULL,
  `fk_jrx_fpurqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fdcdqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_ftrackid` bigint DEFAULT NULL,
  `fk_jrx_fplanqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftotalreceiptqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ftotalundownqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_feaspurid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fesapurentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_sddpspurentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sddpstockentry definition

CREATE TABLE `tk_jrx_sddpstockentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_freqnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fstockseq` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fmanufid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fstockid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_stock_material` bigint DEFAULT NULL,
  `fk_jrx_funitid` bigint DEFAULT NULL,
  `fk_jrx_fplanqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_funbillqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_freceivedqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_stock_project` bigint DEFAULT NULL,
  `fk_jrx_stock_track` bigint DEFAULT NULL,
  `fk_jrx_fprocess` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_sddpstockentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_shentryentity definition

CREATE TABLE `tk_jrx_shentryentity` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fmodifierfield` bigint DEFAULT NULL,
  `fmodifydatefield` datetime DEFAULT NULL,
  `fk_jrx_pobillno` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linetype` bigint DEFAULT NULL,
  `fk_jrx_material` bigint DEFAULT NULL,
  `fk_jrx_materialnametext` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_materialdesc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ispresent` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_unit` bigint DEFAULT NULL,
  `fk_jrx_qtyf` decimal(23,10) DEFAULT NULL,
  `fk_jrx_lot` bigint DEFAULT NULL,
  `fk_jrx_lotnumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_suplot` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_proddate` datetime DEFAULT NULL,
  `fk_jrx_duedate` datetime DEFAULT NULL,
  `fk_jrx_warehouse` bigint DEFAULT NULL,
  `fk_jrx_price` decimal(23,10) DEFAULT NULL,
  `fk_jrx_taxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_dctrate` decimal(19,2) DEFAULT NULL,
  `fk_jrx_dctamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_amount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_taxrateid` bigint DEFAULT NULL,
  `fk_jrx_taxrate` decimal(19,2) DEFAULT NULL,
  `fk_jrx_tax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_settlesup` bigint DEFAULT NULL,
  `fk_jrx_taxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_entryreqorg` bigint DEFAULT NULL,
  `fk_jrx_note` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_entrypurorg` bigint DEFAULT NULL,
  `fk_jrx_purtype` bigint DEFAULT NULL,
  `fk_jrx_entryrcvorg` bigint DEFAULT NULL,
  `fk_jrx_sumcheckqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_entrysettleorg` bigint DEFAULT NULL,
  `fk_jrx_sumcheckamt` decimal(23,10) DEFAULT NULL,
  `fk_jrx_entrypayorg` bigint DEFAULT NULL,
  `fk_jrx_invoiceqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_entrystatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_goods` bigint DEFAULT NULL,
  `fk_jrx_invoiceamt` decimal(23,10) DEFAULT NULL,
  `fk_jrx_sumrecretqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_sumrecretbaseqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_goodsdesc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_unmatchqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_unmatchbaseqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_locamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ischeckorinvoice` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_loctax` decimal(23,10) DEFAULT NULL,
  `fk_jrx_suminvoiceqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_loctaxamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_actprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_acttaxprice` decimal(23,10) DEFAULT NULL,
  `fk_jrx_basicunit` bigint DEFAULT NULL,
  `fk_jrx_asstunit` bigint DEFAULT NULL,
  `fk_jrx_asstqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_pobillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_basedatafield` bigint DEFAULT NULL,
  `fk_jrx_poentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pcbillno` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pcbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_pcentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_srcbilltype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_srcbillid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_srcentryid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_passqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_nopassqty` decimal(23,10) DEFAULT NULL,
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_shentryentity_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sonddp definition

CREATE TABLE `tk_jrx_sonddp` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_fbilldate` datetime DEFAULT NULL,
  `fk_jrx_businesstype` bigint DEFAULT NULL,
  `fk_jrx_fbiztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fdcdtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_lastupdateuser` bigint DEFAULT NULL,
  `fk_jrx_datetimefield` datetime DEFAULT NULL,
  `fk_jrx_fbizpartnerid` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sonddp_a definition

CREATE TABLE `tk_jrx_sonddp_a` (
  `FId` bigint NOT NULL,
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_fcfmid` bigint DEFAULT NULL,
  `fk_jrx_fcfmdate` datetime DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sonddp_l definition

CREATE TABLE `tk_jrx_sonddp_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_fremark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_sonddp_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sonddpfb definition

CREATE TABLE `tk_jrx_sonddpfb` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_fbiztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fremark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fdcdtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_frcvorgid` bigint DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_ftraceid` bigint DEFAULT NULL,
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_funitid` bigint DEFAULT NULL,
  `fk_jrx_fdemandqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fdemanddate` datetime DEFAULT NULL,
  `fk_jrx_fcommitqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fcommitdate` datetime DEFAULT NULL,
  `fk_jrx_freason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ffbdate` datetime DEFAULT NULL,
  `fk_jrx_ffbstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ffbuser` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fwarehouseid` bigint DEFAULT NULL,
  `fk_jrx_fextsourceid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fdeliveredqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fnocloseqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_freqorgid` bigint DEFAULT NULL,
  `fk_jrx_fcreatorid` bigint DEFAULT NULL,
  `fk_jrx_fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_fmodifierid` bigint DEFAULT NULL,
  `fk_jrx_fmodifytime` datetime DEFAULT NULL,
  `fk_jrx_fauditorid` bigint DEFAULT NULL,
  `fk_jrx_fauditdate` datetime DEFAULT NULL,
  `fk_jrx_fcfmid` bigint DEFAULT NULL,
  `fk_jrx_fcfmdate` datetime DEFAULT NULL,
  `fk_jrx_fbizpartnerid` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sonddpfb_l definition

CREATE TABLE `tk_jrx_sonddpfb_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_fremark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_sonddpfb_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sonddptofb definition

CREATE TABLE `tk_jrx_sonddptofb` (
  `FId` bigint NOT NULL,
  `fk_jrx_fsddpid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsddpfbid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fdelfbqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fusefbqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fdemanddate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsupplydate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_forigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcommitdate` datetime DEFAULT NULL,
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_stockfbentry definition

CREATE TABLE `tk_jrx_stockfbentry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_fentrysupplier` bigint DEFAULT NULL,
  `fk_jrx_fentrymaterial` bigint DEFAULT NULL,
  `fk_jrx_fentryproject` bigint DEFAULT NULL,
  `fk_jrx_fentrytraceno` bigint DEFAULT NULL,
  `fk_jrx_fentryunit` bigint DEFAULT NULL,
  `fk_jrx_fentrystockupdate` datetime DEFAULT NULL,
  `fk_jrx_fentryorg` bigint DEFAULT NULL,
  `fk_jrx_fentryinstockorg` bigint DEFAULT NULL,
  `fk_jrx_fentryproductorg` bigint DEFAULT NULL,
  `fk_jrx_fentryfeedbackqty` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_stockfbentry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_stockmergeid definition

CREATE TABLE `tk_jrx_stockmergeid` (
  `FID` bigint NOT NULL,
  `fk_jrx_easid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_stockmergeid_r3 definition

CREATE TABLE `tk_jrx_stockmergeid_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_stockrightentity definition

CREATE TABLE `tk_jrx_stockrightentity` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_gqdate` datetime DEFAULT NULL,
  `fk_jrx_controlperson` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_gqjgfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_equitystructure2` decimal(23,10) DEFAULT NULL,
  `fk_jrx_memos` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_memosold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_stockrightentity_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_stockrightentityn definition

CREATE TABLE `tk_jrx_stockrightentityn` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_gqdatenew` datetime DEFAULT NULL,
  `fk_jrx_controlpersonnew` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_gqjgfilenew` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_equitystructuren2` decimal(23,10) DEFAULT NULL,
  `fk_jrx_memosnew` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_stockrightentityn_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_stocktfb definition

CREATE TABLE `tk_jrx_stocktfb` (
  `FId` bigint NOT NULL,
  `fk_jrx_fstockingplanid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_fstockingplanfbdet` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fmceasplanid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_fmceasplanfbid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_fmceasid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_fusefbqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fdemanddate` datetime DEFAULT NULL,
  `fk_jrx_fsupplydate` datetime DEFAULT NULL,
  `fk_jrx_fbillno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_forigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`),
  KEY `fk_jrx_fmceasplanid` (`fk_jrx_fmceasplanid`),
  KEY `fk_jrx_fmceasplanfbid` (`fk_jrx_fmceasplanfbid`),
  KEY `fk_jrx_fmceasid` (`fk_jrx_fmceasid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_stockupplan definition

CREATE TABLE `tk_jrx_stockupplan` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_fbilldate` datetime DEFAULT NULL,
  `fk_jrx_businesstype` bigint DEFAULT NULL,
  `fk_jrx_fbiztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fremark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_ftracknumberid` bigint DEFAULT NULL,
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_fmeasureunitid` bigint DEFAULT NULL,
  `fk_jrx_fflow` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_frequirementdate` datetime DEFAULT NULL,
  `fk_jrx_fordernumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_forigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurpersonid` bigint DEFAULT NULL,
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fsupplierinv` decimal(23,10) DEFAULT NULL,
  `fk_jrx_finstorageqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fwayqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsupplierfeedback` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_fstockingplantype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fissolaterule` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fpurorderqty` bigint DEFAULT NULL,
  `fk_jrx_finventoryqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fusedinvqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fsupplydescribe` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fmergedimension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ffbstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsupplierreason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsuppliersituation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsupplierdate` datetime DEFAULT NULL,
  `fk_jrx_fmceasid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_fplanstarttime` datetime DEFAULT NULL,
  `fk_jrx_fpurorgid` bigint DEFAULT NULL,
  `fk_jrx_fsupporgid` bigint DEFAULT NULL,
  `fk_jrx_freqorgid` bigint DEFAULT NULL,
  `fk_jrx_fpurgroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_lastupdateuser` bigint DEFAULT NULL,
  `fk_jrx_lastupdatetime` datetime DEFAULT NULL,
  `fk_jrx_fcfmid` bigint DEFAULT NULL,
  `fk_jrx_fcfmdate` datetime DEFAULT NULL,
  `fk_jrx_fbizpartnerid` bigint DEFAULT NULL,
  `fk_jrx_directsuporgid` bigint DEFAULT NULL,
  `fk_jrx_isdirect` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_directsuporg_new` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`),
  KEY `fk_jrx_fsupplierid` (`fk_jrx_fsupplierid`),
  KEY `fk_jrx_fpurorgid` (`fk_jrx_fpurorgid`),
  KEY `fk_jrx_fmceasid` (`fk_jrx_fmceasid`),
  KEY `fcreatorid` (`fcreatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_stockupplan_l definition

CREATE TABLE `tk_jrx_stockupplan_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_fremark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_stockupplan_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sufeedback definition

CREATE TABLE `tk_jrx_sufeedback` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `forgid` bigint DEFAULT NULL,
  `fk_jrx_businesstype` bigint DEFAULT NULL,
  `fk_jrx_fbiztype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fsupplierid` bigint DEFAULT NULL,
  `fk_jrx_fsupplystorageorgi` bigint DEFAULT NULL,
  `fk_jrx_fmaterialid` bigint DEFAULT NULL,
  `fk_jrx_funitid` bigint DEFAULT NULL,
  `fk_jrx_fprojectid` bigint DEFAULT NULL,
  `fk_jrx_ftracenoid` bigint DEFAULT NULL,
  `fk_jrx_fstockupqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fbilldate` datetime DEFAULT NULL,
  `fk_jrx_fstockupdate` datetime DEFAULT NULL,
  `fk_jrx_fcfmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ffeedbackqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_ffeedbacktime` datetime DEFAULT NULL,
  `fk_jrx_fdeliveredqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_funcloseqty` decimal(23,10) DEFAULT NULL,
  `fk_jrx_fexceptionreason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fadjustcontent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_forigin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ffeedbackuser` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ffeedbackstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fbasestatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fimportantremark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fproductorg` bigint DEFAULT NULL,
  `fk_jrx_fmceasid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fk_jrx_lastupdateuser` bigint DEFAULT NULL,
  `fk_jrx_lastupdatetime` datetime DEFAULT NULL,
  `fk_jrx_fcfmid` bigint DEFAULT NULL,
  `fk_jrx_fcfmdate` datetime DEFAULT NULL,
  `fk_jrx_fbizpartnerid` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `fcreatorid` (`fcreatorid`),
  KEY `fk_jrx_fmceasid` (`fk_jrx_fmceasid`),
  KEY `fk_jrx_fstockupdate` (`fk_jrx_fstockupdate`),
  KEY `fk_jrx_fsupplierid` (`fk_jrx_fsupplierid`),
  KEY `fbillno` (`fbillno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_sufeedback_l definition

CREATE TABLE `tk_jrx_sufeedback_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_fremark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_sufeedback_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_supassess definition

CREATE TABLE `tk_jrx_supassess` (
  `FId` bigint NOT NULL,
  `fk_jrx_sub` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_productname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_producttype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_quality` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_process` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_other` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_fai` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_makeprocess` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_clientscene` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_contractnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_contractamount` decimal(23,10) DEFAULT NULL,
  `fk_jrx_warning` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_economic` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_assessrmb` decimal(23,10) DEFAULT NULL,
  `fk_jrx_score` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_descore` decimal(23,10) DEFAULT NULL,
  `fk_jrx_stopsupply` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_reduce` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_reducepercent` decimal(23,10) DEFAULT NULL,
  `fk_jrx_maker` bigint DEFAULT NULL,
  `fk_jrx_makedate` datetime DEFAULT NULL,
  `fk_jrx_warningaudit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_economicaudit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_assessrmbaudit` decimal(23,10) DEFAULT NULL,
  `fk_jrx_scoreaudit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_descoreaudit` decimal(23,10) DEFAULT NULL,
  `fk_jrx_stopsupplyaudit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_reduceaudit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_reducepercentaudi` decimal(23,10) DEFAULT NULL,
  `fk_jrx_billstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_confirmstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_auditor` bigint DEFAULT NULL,
  `fk_jrx_confirmdate` datetime DEFAULT NULL,
  `fk_jrx_billno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_easid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_overview` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_assessstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_complaints` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_createrfield` bigint DEFAULT NULL,
  `fk_jrx_createdatefield` datetime DEFAULT NULL,
  `fk_jrx_confirmerid` bigint DEFAULT NULL,
  `fk_jrx_auditdate` datetime DEFAULT NULL,
  `fk_jrx_agree` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_disagree` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_flexpanelapname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_explainname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_supnameld` bigint DEFAULT NULL,
  `fk_jrx_textfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textfield1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_supassess_entry definition

CREATE TABLE `tk_jrx_supassess_entry` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `fk_jrx_materiel` bigint DEFAULT NULL,
  `fk_jrx_unpronum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_unproquantity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_unprodes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_ncrnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FEntryId`),
  KEY `idx__jrx_supassess_entry_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_supplier definition

CREATE TABLE `tk_jrx_supplier` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_supnum` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supnamee` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qualification` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supfirm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_legalperson` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_fax` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_createdate` datetime DEFAULT NULL,
  `fk_jrx_agent` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_14001finishdate` datetime DEFAULT NULL,
  `fk_jrx_45001finishdate` datetime DEFAULT NULL,
  `fk_jrx_9001finishdate` datetime DEFAULT NULL,
  `fk_jrx_22163finishdate` datetime DEFAULT NULL,
  `fk_jrx_linkmans` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanphones` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_emails` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanphonep` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_emailp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanw` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanphonew` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_emailw` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_blisnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_blisfinishdate` datetime DEFAULT NULL,
  `fk_jrx_results` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_score` decimal(23,2) DEFAULT NULL,
  `fk_jrx_registermoney` decimal(15,2) DEFAULT NULL,
  `fk_jrx_registerdate` datetime DEFAULT NULL,
  `fk_jrx_registeraddress` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qualityno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_secrecyno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_environment` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qualitynos` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_packaging` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_security` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_project` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_easid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_sqdlfile` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_yyzzfile` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_14001file` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_45001file` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_9001file` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_22163file` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_agreement` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_bguser` bigint DEFAULT NULL,
  `fk_jrx_bgstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_org` bigint DEFAULT NULL,
  `fk_jrx_supplierid` bigint DEFAULT NULL,
  `fk_jrx_suppler_nature` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supplier_grade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_chairman` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_chairmanphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_manager` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_managerphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_realmanager` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_remanagertel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_alltreatyno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_alltreatyfileaddre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_directfurnish` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_jrx_proxy` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fk_jrx_authorizationdate` datetime DEFAULT NULL,
  `fk_jrx_taxno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supabbreviation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supproperty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_equitystructure` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_equitychange` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_irisfinishdate` datetime DEFAULT NULL,
  `fk_jrx_crccfinishdate` datetime DEFAULT NULL,
  `fk_jrx_purfinishdate` datetime DEFAULT NULL,
  `fk_jrx_other` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_suppliermodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supplierstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_supplier_l definition

CREATE TABLE `tk_jrx_supplier_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_supname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_officelocation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_agencysupname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_supplier_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_supplier_r3 definition

CREATE TABLE `tk_jrx_supplier_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_supplierprocess definition

CREATE TABLE `tk_jrx_supplierprocess` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_supnum` bigint DEFAULT NULL,
  `fk_jrx_project` bigint DEFAULT NULL,
  `fk_jrx_starttracknum` bigint DEFAULT NULL,
  `fk_jrx_endtracknum` bigint DEFAULT NULL,
  `fk_jrx_productname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_supplierupdate definition

CREATE TABLE `tk_jrx_supplierupdate` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_jrx_supnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supnamee` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supfirm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_legalperson` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_agent` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_14001finishdate` datetime DEFAULT NULL,
  `fk_jrx_45001finishdate` datetime DEFAULT NULL,
  `fk_jrx_9001finishdate` datetime DEFAULT NULL,
  `fk_jrx_22163finishdate` datetime DEFAULT NULL,
  `fk_jrx_linkmans` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanphones` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_emails` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanphonep` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_emailp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanw` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanphonew` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_emailw` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_blisnum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_blisfinishdate` datetime DEFAULT NULL,
  `fk_jrx_project` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_14001finishdatene` datetime DEFAULT NULL,
  `fk_jrx_45001finishdaten` datetime DEFAULT NULL,
  `fk_jrx_9001finishdaten` datetime DEFAULT NULL,
  `fk_jrx_22163finishdaten` datetime DEFAULT NULL,
  `fk_jrx_legalpersonn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supfirmn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_agentn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_blisfinishdaten` datetime DEFAULT NULL,
  `fk_jrx_linkmansn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanphonesn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_emailsn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanpn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanphonepn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_emailpn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanwn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_linkmanphonewn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_emailwn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_blisnumn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_projectn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supplierid` bigint DEFAULT NULL,
  `fk_jrx_easid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_tax` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_taxn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_yyzzfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_9001file` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_22163file` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_14001file` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_sqdlfile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_45001file` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_yyzzfilenew` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_9001filenew` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_22163filenew` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_14001filenew` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_45001filenew` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qualification` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_qualificationnew` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_sqdlfilenew` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_supplierid1` bigint DEFAULT NULL,
  `fk_jrx_chairman` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_chairmanphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_manager` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_managerphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_realmanager` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_remanagertel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_chairmanold` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_chairmanphoneold` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_managerold` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_managerphoneold` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_realmanagerold` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_remanagertelold` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `isold` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_jrx_suppliermodel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_suppliermodelold` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_supplierupdate_l definition

CREATE TABLE `tk_jrx_supplierupdate_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FId` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fk_jrx_supname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_officelocation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_officelocationn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_irrc_agencysupname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_supplierupdate_L_0` (`FId`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_supplierupdate_lk definition

CREATE TABLE `tk_jrx_supplierupdate_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx__jrx_supplierupdate_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_supplierupdate_tc definition

CREATE TABLE `tk_jrx_supplierupdate_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_TK_JRX_SUPPLIERUPDATE_TC_TBILL` (`FTBillId`),
  KEY `IDX_TK_JRX_SUPPLIERUPDATE_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_supplierupdate_wb definition

CREATE TABLE `tk_jrx_supplierupdate_wb` (
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
  KEY `idx__jrx_supplierupdate_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_synceasinstockt_r3 definition

CREATE TABLE `tk_jrx_synceasinstockt_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_synceasinstocktha definition

CREATE TABLE `tk_jrx_synceasinstocktha` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_EASENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'EAS分录ID',
  `FK_JRX_INENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '入库单分录ID',
  `FK_JRX_THAWAMT` decimal(23,10) DEFAULT NULL COMMENT '可解冻金额',
  `FK_JRX_THAWQTY` decimal(23,10) DEFAULT NULL COMMENT '可解冻数量',
  `FK_JRX_NOHXSL` decimal(23,10) DEFAULT NULL COMMENT '未核销数量',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_synceasinstocktha_l definition

CREATE TABLE `tk_jrx_synceasinstocktha_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_synceasinstocktha_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_wtcgpurbilldata definition

CREATE TABLE `tk_jrx_wtcgpurbilldata` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_BILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '采购订单状态',
  `FK_JRX_PBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '采购订单号',
  `FK_JRX_SUPPLIERID` bigint DEFAULT NULL COMMENT '供应商',
  `FK_JRX_EASENTRYID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'EAS分录ID',
  `FK_JRX_QTY` decimal(23,10) DEFAULT NULL COMMENT '数量',
  `FK_JRX_NOPUSHQTY` decimal(23,10) DEFAULT NULL COMMENT '累计未下推数量',
  `FK_JRX_SHOUQTY` decimal(23,10) DEFAULT NULL COMMENT '收货数量',
  `FK_JRX_PHASONQTY` decimal(23,10) DEFAULT NULL COMMENT '入库数量',
  `FK_JRX_ENTRUSTORG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '采购组',
  `FK_JRX_PURCHASEPERSON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '采购员',
  `FK_JRX_EASID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'EASID',
  `FK_JRX_FMATERIAL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '物料',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_wtcgpurbilldata_l definition

CREATE TABLE `tk_jrx_wtcgpurbilldata_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_wtcgpurbilldata_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_wtcgpurbilldata_r3 definition

CREATE TABLE `tk_jrx_wtcgpurbilldata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_wtcgsealbilldat_r3 definition

CREATE TABLE `tk_jrx_wtcgsealbilldat_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_wtcgsealbilldata definition

CREATE TABLE `tk_jrx_wtcgsealbilldata` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FK_JRX_SEALBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '销售单号',
  `FK_JRX_SEALBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '销售单状态',
  `FK_JRX_ORDERCUSTOMER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '客户',
  `FK_JRX_PURORDERNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '客户方采购号',
  `FK_JRX_FSQTY` decimal(23,10) DEFAULT NULL COMMENT '数量',
  `FK_JRX_SADDQTY` decimal(23,10) DEFAULT NULL COMMENT '累计出库数量',
  `FK_JRX_PRICE` decimal(23,10) DEFAULT NULL COMMENT '单价',
  `FK_JRX_AMOUNT` decimal(23,10) DEFAULT NULL COMMENT '金额',
  `FK_JRX_EASID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'EAS单据id',
  `FK_JRX_TEXTFIELD1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'eas分录ID',
  `FK_JRX_MATERIALID` bigint DEFAULT NULL COMMENT '物料',
  `FK_JRX_EASSEALID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT 'EAS销售单ID',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '名称',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_wtcgsealbilldata_l definition

CREATE TABLE `tk_jrx_wtcgsealbilldata_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FLocaleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `idx__jrx_wtcgsealbilldata_L_0` (`FID`,`FLocaleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_wtcgst definition

CREATE TABLE `tk_jrx_wtcgst` (
  `FID` bigint NOT NULL,
  `fk_jrx_textfield` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textfield1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_jrx_textfield2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tk_jrx_wtcgst_r3 definition

CREATE TABLE `tk_jrx_wtcgst_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tr_jrx_pur_salreturn_lk definition

CREATE TABLE `tr_jrx_pur_salreturn_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FPKId`),
  KEY `idx__jrx_pur_salreturn_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tr_jrx_pur_salreturn_tc definition

CREATE TABLE `tr_jrx_pur_salreturn_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint DEFAULT NULL,
  `FTTableId` bigint DEFAULT NULL,
  `FTId` bigint DEFAULT NULL,
  `FSBillId` bigint DEFAULT NULL,
  `FSTableId` bigint DEFAULT NULL,
  `FSId` bigint DEFAULT NULL,
  PRIMARY KEY (`FId`),
  KEY `IDX_TR_JRX_PUR_SALRETURN_TC_TBILL` (`FTBillId`),
  KEY `IDX_TR_JRX_PUR_SALRETURN_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cpc.tr_jrx_pur_salreturn_wb definition

CREATE TABLE `tr_jrx_pur_salreturn_wb` (
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
  KEY `idx__jrx_pur_salreturn_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
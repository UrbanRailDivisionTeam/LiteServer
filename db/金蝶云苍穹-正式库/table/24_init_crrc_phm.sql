USE crrc_phm;

-- crrc_phm.`_u` definition

CREATE TABLE `_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX__U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.ct_bcp_barcodefile definition

CREATE TABLE `ct_bcp_barcodefile` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.et_test definition

CREATE TABLE `et_test` (
  `fid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.exc definition

CREATE TABLE `exc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_Exc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_0818 definition

CREATE TABLE `t_0818` (
  `FID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNIT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_aogchilda2_cde definition

CREATE TABLE `t_aogchilda2_cde` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPECOUNTDE` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_aogchilda2_cnu definition

CREATE TABLE `t_aogchilda2_cnu` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPECOUNTNU` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_aogchilda3_cde definition

CREATE TABLE `t_aogchilda3_cde` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPECOUNTDE` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FMATERIALNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_aogchilda3_cnu definition

CREATE TABLE `t_aogchilda3_cnu` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPECOUNTNU` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FMATERIALNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_aogchildd2_cit definition

CREATE TABLE `t_aogchildd2_cit` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINDATE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_aogchildd2_cto definition

CREATE TABLE `t_aogchildd2_cto` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINDATE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_aogchildd2cal definition

CREATE TABLE `t_aogchildd2cal` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTIT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FCOUNTTOTAL` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_aogchildd3_cit definition

CREATE TABLE `t_aogchildd3_cit` (
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINDATE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FMATERIALNUMBER`,`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_aogchildd3_cto definition

CREATE TABLE `t_aogchildd3_cto` (
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINDATE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FMATERIALNUMBER`,`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_aogchildd3cal definition

CREATE TABLE `t_aogchildd3cal` (
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTTOTAL` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FCOUNTIT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FMATERIALNUMBER`,`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_atest001 definition

CREATE TABLE `t_atest001` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_bas_supplier definition

CREATE TABLE `t_bas_supplier` (
  `FID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`,`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_bd_material_final definition

CREATE TABLE `t_bd_material_final` (
  `FID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME_L2` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNIT` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_bd_material_llll definition

CREATE TABLE `t_bd_material_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINCUID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRICEPRECISION` bigint NOT NULL DEFAULT '0',
  `FBASEUNIT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALGROUPID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` bigint NOT NULL DEFAULT '0',
  `FSTATUS` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPPROPERTY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`,`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_bd_material_test definition

CREATE TABLE `t_bd_material_test` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNIT` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_bd_material_test1 definition

CREATE TABLE `t_bd_material_test1` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNIT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_billtemp_conf definition

CREATE TABLE `t_billtemp_conf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDATATEMPID` bigint NOT NULL DEFAULT '0',
  `FBASETABLE` bigint NOT NULL DEFAULT '0',
  `fbaseset` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELECTLINE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSQLSET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSQLSET_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSELECTLINETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAREASTART` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAREAEND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_BILLTEMP_CONF_ID` (`FDATATEMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_billtemp_conf_l definition

CREATE TABLE `t_billtemp_conf_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BILLTEMP_CONF_L_ID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_billtemp_conf_r3 definition

CREATE TABLE `t_billtemp_conf_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_billtemp_fieldconf definition

CREATE TABLE `t_billtemp_fieldconf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDCELLPO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDCELLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATARESOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFID` bigint NOT NULL DEFAULT '0',
  `FFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDLOGIC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNUBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcalculateconf` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCELLCOL` int NOT NULL DEFAULT '0',
  `FSTARTROW` int NOT NULL DEFAULT '0',
  `FFIELDFORMULA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDFORMULA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATED` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATABLEID` bigint NOT NULL DEFAULT '0',
  `FDATATEMPID` bigint NOT NULL DEFAULT '0',
  `FFORMAT` int NOT NULL DEFAULT '2',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_BILLTEMP_FIELDCONF_ID` (`FID`,`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_billtemp_headconf definition

CREATE TABLE `t_billtemp_headconf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FHEADCELLPO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEADCELLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fheadcelllogic` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEADCOL` int NOT NULL DEFAULT '0',
  `FHEADROW` int NOT NULL DEFAULT '0',
  `FHEADFORMULA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEADFORMULA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_BILLTEMP_HEADCONF_ID` (`FID`,`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_biz_model definition

CREATE TABLE `t_biz_model` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_cj_test definition

CREATE TABLE `t_cj_test` (
  `FCREATETIME` datetime DEFAULT NULL,
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_contractentry definition

CREATE TABLE `t_contractentry` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTPROPERTYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FBASESTATUS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FASSISTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTCONDITION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISCOUNTTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISCOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCLOSEDATE` datetime DEFAULT NULL,
  `FMATERIALGROUPID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVETYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONSIGNDATE` datetime DEFAULT NULL,
  `FDELIVERYDATE` datetime DEFAULT NULL,
  `FROWTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQCSTANDARDID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURREQUESTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURREQUESTENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_assignment definition

CREATE TABLE `t_crrc_phm_assignment` (
  `FID` bigint NOT NULL,
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '编码',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '数据状态',
  `FCREATORID` bigint DEFAULT NULL COMMENT '创建人',
  `FMODIFIERID` bigint DEFAULT NULL COMMENT '修改人',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '使用状态',
  `FCREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `FMODIFYTIME` datetime DEFAULT NULL COMMENT '修改时间',
  `FMASTERID` bigint DEFAULT NULL COMMENT '主数据内码',
  `FCREATEORGID` bigint DEFAULT NULL COMMENT '创建组织',
  `FORGID` bigint DEFAULT NULL COMMENT '组织',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '控制策略',
  `FSOURCETABLEID` bigint DEFAULT NULL COMMENT '原始表',
  `FMAPPINGTABLEID` bigint DEFAULT NULL COMMENT '映射表',
  `FSOURCEDATAID` bigint DEFAULT NULL COMMENT '原资料id',
  `FBITINDEX` bigint DEFAULT NULL COMMENT '位图',
  `FSOURCEBITINDEX` bigint DEFAULT NULL COMMENT '原资料位图',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_T_CRRC_PHM_ASSIGNMENT_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_CRRC_PHM_ASSIGNMENT_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_assignment_bit definition

CREATE TABLE `t_crrc_phm_assignment_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_crrc_phm_assignment_l definition

CREATE TABLE `t_crrc_phm_assignment_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLocaleID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `idx_crrc_phm_assignment_L_0` (`FID`,`FLocaleID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_assignment_m definition

CREATE TABLE `t_crrc_phm_assignment_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_assignment_r3 definition

CREATE TABLE `t_crrc_phm_assignment_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_assignment_u definition

CREATE TABLE `t_crrc_phm_assignment_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_crrc_phm_assignment_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_assignmentexc definition

CREATE TABLE `t_crrc_phm_assignmentexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_crrc_phm_assignmentExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_assignmentusereg definition

CREATE TABLE `t_crrc_phm_assignmentusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_CRRC_PHM_ASSIGNMENTUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_calcsetup definition

CREATE TABLE `t_crrc_phm_calcsetup` (
  `FID` bigint NOT NULL,
  `fk_crrc_eigenvalueid` bigint DEFAULT NULL,
  `fk_crrc_setup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_setup_tag` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_calcsetup_r3 definition

CREATE TABLE `t_crrc_phm_calcsetup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_condentry definition

CREATE TABLE `t_crrc_phm_condentry` (
  `FID` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSOURCEFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '字段',
  `FCONDITION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '判断条件',
  `FLINKTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '连接类型',
  `FIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '字段类型',
  `FLEFTBRACKET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '左括号',
  `FRIGHTBRACKET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '右括号',
  PRIMARY KEY (`FEntryId`) USING BTREE,
  KEY `idx_crrc_phm_condentry_fk` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_mapentry definition

CREATE TABLE `t_crrc_phm_mapentry` (
  `FID` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSOURCEFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '被赋值字段',
  `FMAPPINGFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '映射表字段',
  PRIMARY KEY (`FEntryId`) USING BTREE,
  KEY `idx_crrc_phm_mapentry_fk` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_crrc_phm_relaentry definition

CREATE TABLE `t_crrc_phm_relaentry` (
  `FID` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSOURCEFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '原始表字段',
  `FCONDITION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '条件',
  `FLINKTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '连接类型',
  `FMAPPINGFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '映射表字段',
  `FLEFTBRACKET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '左括号',
  `FRIGHTBRACKET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '右括号',
  PRIMARY KEY (`FEntryId`) USING BTREE,
  KEY `idx_crrc_phm_relaentry_fk` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ct_pur_purretype_test definition

CREATE TABLE `t_ct_pur_purretype_test` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME_L2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEORGID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOSTTYPE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_ebillentry definition

CREATE TABLE `t_ew_ebillentry` (
  `FCHANGETYPE` bigint NOT NULL DEFAULT '0',
  `FMNO` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FPMNO` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `index_FMNO` (`FMNO`) USING BTREE,
  KEY `index_FMNO_ftype` (`FMNO`,`FCHANGETYPE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_inventory definition

CREATE TABLE `t_ew_inventory` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `index_fmid_fpid_fqty` (`FMATERIALID`,`FPROJECTID`,`FQTY`) USING BTREE,
  KEY `index_fproject` (`FPROJECTID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_inventorybal definition

CREATE TABLE `t_ew_inventorybal` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FPERIODBEGINQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODENDQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODRECEIPTQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODISSUEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODBEGINBALANCE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODENDBALANCE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODBEGINACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODENDACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `i_fid` (`FMATERIALID`,`FPROJECTID`) USING BTREE,
  KEY `i_fall` (`FYEAR`,`FPERIOD`,`FMATERIALID`,`FPROJECTID`) USING BTREE,
  KEY `i_fyear_fp` (`FYEAR`,`FPERIOD`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_inventorylog definition

CREATE TABLE `t_ew_inventorylog` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FBILLNUMBER` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FBILLID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FENTRYID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FINVQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE,
  KEY `i_fm_fb` (`FMATERIALID`,`FBIZDATE`) USING BTREE,
  KEY `i_fm_fp` (`FMATERIALID`,`FPROJECTID`) USING BTREE,
  KEY `i_fy_fp` (`FYEAR`,`FPERIOD`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_inventorylog1 definition

CREATE TABLE `t_ew_inventorylog1` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FBILLNUMBER` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FBILLID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FENTRYID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FINVQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `i_fid` (`FID`) USING BTREE,
  KEY `i_fm_fbiz` (`FMATERIALID`,`FBIZDATE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_inventorywarn definition

CREATE TABLE `t_ew_inventorywarn` (
  `FID` bigint NOT NULL,
  `FMATERIALNUM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUP` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FGROUP2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FGROUP3` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FPROJECTNUM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `F1` bigint NOT NULL DEFAULT '0',
  `F2` bigint NOT NULL DEFAULT '0',
  `F3` bigint NOT NULL DEFAULT '0',
  `F4` bigint NOT NULL DEFAULT '0',
  `F5` bigint NOT NULL DEFAULT '0',
  `F6` bigint NOT NULL DEFAULT '0',
  `F7` bigint NOT NULL DEFAULT '0',
  `F8` bigint NOT NULL DEFAULT '0',
  `F9` bigint NOT NULL DEFAULT '0',
  `F10` bigint NOT NULL DEFAULT '0',
  `F11` bigint NOT NULL DEFAULT '0',
  `FMODEL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FLVL` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FREASON` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT ' ',
  `FINVENTORY` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `finvage` decimal(23,10) DEFAULT NULL,
  `fcreatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `i_fm_fp` (`FMATERIALID`,`FPROJECTID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_inventorywarn_r3 definition

CREATE TABLE `t_ew_inventorywarn_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_material definition

CREATE TABLE `t_ew_material` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FNUMBER` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fmodel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMATERIALGROUPID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FGROUPID2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FGROUPID3` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fgroup1` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fgroup2` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fgroupid1` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `i_fgroup` (`FMATERIALGROUPID`,`FGROUPID2`,`FGROUPID3`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_material_r3 definition

CREATE TABLE `t_ew_material_r3` (
  `FID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_materialchangelog definition

CREATE TABLE `t_ew_materialchangelog` (
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FMATERIALNUM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` int NOT NULL DEFAULT '0',
  `FPERIOD` int NOT NULL DEFAULT '0',
  `FBEGINQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FENDQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_materialchangelog1 definition

CREATE TABLE `t_ew_materialchangelog1` (
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FMATERIALNUM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` int NOT NULL DEFAULT '0',
  `FPERIOD` int NOT NULL DEFAULT '0',
  `FBEGINQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FENDQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_materialgrp definition

CREATE TABLE `t_ew_materialgrp` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE,
  KEY `i_fid` (`fid`) USING BTREE,
  KEY `i_fpid` (`fid`,`FPARENTID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_materialgrp_l definition

CREATE TABLE `t_ew_materialgrp_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLocaleID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ffullname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreateid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `idx_ew_materialgrp_L_0` (`FID`,`FLocaleID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_materialgrp_r3 definition

CREATE TABLE `t_ew_materialgrp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_materialout definition

CREATE TABLE `t_ew_materialout` (
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `i_fid_biztype` (`FID`,`FBIZTYPEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_materialoutentry definition

CREATE TABLE `t_ew_materialoutentry` (
  `FPROJECTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fmaterialid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fparentid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FBIZDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE,
  KEY `i_fm_fpid` (`fmaterialid`,`fparentid`) USING BTREE,
  KEY `i_fbizdate` (`FBIZDATE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_mfcin definition

CREATE TABLE `t_ew_mfcin` (
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_mfcinentry definition

CREATE TABLE `t_ew_mfcinentry` (
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FPARENTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_modelset definition

CREATE TABLE `t_ew_modelset` (
  `FID` bigint NOT NULL,
  `fk_crrc_modifierfield` bigint NOT NULL DEFAULT '0',
  `fk_crrc_modifydatefield` datetime DEFAULT NULL,
  `fk_crrc_limitage` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `fk_crrc_limitamount` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `fk_crrc_age` bigint NOT NULL DEFAULT '0',
  `fk_crrc_designchange` bigint NOT NULL DEFAULT '0',
  `fk_crrc_biztype` bigint NOT NULL DEFAULT '0',
  `fk_crrc_entrustpur` bigint NOT NULL DEFAULT '0',
  `fk_crrc_unqualified` bigint NOT NULL DEFAULT '0',
  `fk_crrc_researchproject` bigint NOT NULL DEFAULT '0',
  `fk_crrc_highriskproject` bigint NOT NULL DEFAULT '0',
  `fk_crrc_completedproject` bigint NOT NULL DEFAULT '0',
  `fk_crrc_nooperation` bigint NOT NULL DEFAULT '0',
  `fk_crrc_period` bigint NOT NULL DEFAULT '0',
  `fk_crrc_abnormalwarehouse` bigint NOT NULL DEFAULT '0',
  `fk_crrc_pub` bigint NOT NULL DEFAULT '0',
  `fk_crrc_safestock` bigint NOT NULL DEFAULT '0',
  `fk_crrc_inventoryamount` bigint NOT NULL DEFAULT '0',
  `fk_crrc_lowrisk` bigint NOT NULL DEFAULT '0',
  `fk_crrc_midrisk` bigint NOT NULL DEFAULT '0',
  `fk_crrc_highrisk` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_modelset_l definition

CREATE TABLE `t_ew_modelset_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLocaleID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `idx_ew_modelset_L_0` (`FID`,`FLocaleID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_modelset_r3 definition

CREATE TABLE `t_ew_modelset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_movein definition

CREATE TABLE `t_ew_movein` (
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `i_fid` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_moveinentry definition

CREATE TABLE `t_ew_moveinentry` (
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FPARENTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `i_fpid` (`FPARENTID`,`FMATERIALID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_moveout definition

CREATE TABLE `t_ew_moveout` (
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_moveoutentry definition

CREATE TABLE `t_ew_moveoutentry` (
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FPARENTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_otherin definition

CREATE TABLE `t_ew_otherin` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_otherinentry definition

CREATE TABLE `t_ew_otherinentry` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_otherout definition

CREATE TABLE `t_ew_otherout` (
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_otheroutentry definition

CREATE TABLE `t_ew_otheroutentry` (
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FPARENTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_project definition

CREATE TABLE `t_ew_project` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FGROUPID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRIORITY` bigint NOT NULL DEFAULT '0',
  `FPROTEGORYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTAGESTATE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `flvl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `index_fid` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_project_r3 definition

CREATE TABLE `t_ew_project_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_projectgrp definition

CREATE TABLE `t_ew_projectgrp` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_projectgrp_r3 definition

CREATE TABLE `t_ew_projectgrp_r3` (
  `FID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_projectmaterialin_r3 definition

CREATE TABLE `t_ew_projectmaterialin_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_projectmaterialinfo definition

CREATE TABLE `t_ew_projectmaterialinfo` (
  `FID` bigint NOT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FGROUPID1` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FGROUPID2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FGROUPID3` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FNOBACKLOG` int NOT NULL DEFAULT '0',
  `FBACKLOG` int NOT NULL DEFAULT '0',
  `FRATIO` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT ' ',
  `FPGRPID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FPRIORITY` bigint NOT NULL,
  `FPROTEGORYID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSTAGESTATE` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FBASESTATUS` bigint NOT NULL,
  `FWARNID` bigint NOT NULL,
  `fk_crrc_basedatafield` bigint NOT NULL DEFAULT '0',
  `fk_crrc_finvage` decimal(23,10) DEFAULT NULL,
  `fk_crrc_famount` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `i_fp_fm` (`FPROJECTID`,`FMATERIALID`) USING BTREE,
  KEY `i_fgroup` (`FGROUPID1`,`FGROUPID2`,`FGROUPID3`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_projectmaterialinfo_r3 definition

CREATE TABLE `t_ew_projectmaterialinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_purin definition

CREATE TABLE `t_ew_purin` (
  `FBIZDATE` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `i_fid` (`FID`) USING BTREE,
  KEY `i_fid_biztype` (`FID`,`FBIZTYPEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_purinentry definition

CREATE TABLE `t_ew_purinentry` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `i_fpid` (`FMATERIALID`,`FPARENTID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_saleout definition

CREATE TABLE `t_ew_saleout` (
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_saleoutentry definition

CREATE TABLE `t_ew_saleoutentry` (
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FPARENTID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ew_warehouse definition

CREATE TABLE `t_ew_warehouse` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_inventory_llll definition

CREATE TABLE `t_im_inventory_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FCOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQNUM` bigint NOT NULL DEFAULT '0',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODBEGINQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODENDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODBEGINBALANCE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODENDBALANCE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTORESTATUSID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXP` datetime DEFAULT NULL,
  `FPERIODBEGINACTUALCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODENDACTUALCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPPLIERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTADJUSTBILL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORETYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURSTOREQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSTOREASSISTQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCKQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_manufacturerecbill_llll definition

CREATE TABLE `t_im_manufacturerecbill_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEFUNCTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUCHERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRANSACTIONTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMONTH` bigint NOT NULL DEFAULT '0',
  `FDAY` bigint NOT NULL DEFAULT '0',
  `FCOSTCENTERORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_manurecbillentry_llll definition

CREATE TABLE `t_im_manurecbillentry_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMFG` datetime DEFAULT NULL,
  `FEXP` datetime DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVUPDATETYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMANUBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTOBJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBASERECQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMANUBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMANUBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FMANUBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSALEORDERBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALEORDERNUM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALEORDERENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FTRACENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBIZDATE` datetime DEFAULT NULL,
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTCENTERORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_materialreqbill_llll definition

CREATE TABLE `t_im_materialreqbill_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEFUNCTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUCHERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSTANDARDCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALACTUALCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMONTH` bigint NOT NULL DEFAULT '0',
  `FDAY` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCONSFRAMER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITMANAGEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTWORKNUMID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDWORKNUMID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTCENTERORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTOBJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSACTIONTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_materialreqbillentry_llll definition

CREATE TABLE `t_im_materialreqbillentry_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXP` datetime DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCTDID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPICKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBETIMESSTOCK` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMFG` datetime DEFAULT NULL,
  `FPRODUCTIDID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTOBJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORDERNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTITEMID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALEORDERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALEORDERNUM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORDERBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOREBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOREBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOREBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOREBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOREBILLENTRYSE` bigint NOT NULL DEFAULT '0',
  `FOPERATIONNO` bigint NOT NULL DEFAULT '0',
  `FOPERATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKCENTERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTLEPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FHOUSEKNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_otherinwarebillentry_llll definition

CREATE TABLE `t_im_otherinwarebillentry_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVATIONBILLOBJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FASSISTQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMFG` datetime DEFAULT NULL,
  `FEXP` datetime DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTOBJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTITEMID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTOBJECTSUITEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBIZDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_otherinwarehsbill_llll definition

CREATE TABLE `t_im_otherinwarehsbill_llll` (
  `FID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEFUNCTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUCHERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRANSACTIONTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMONTH` bigint NOT NULL DEFAULT '0',
  `FDAY` bigint NOT NULL DEFAULT '0',
  `FCOSTCENTERORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_otherissuebil_llll definition

CREATE TABLE `t_im_otherissuebil_llll` (
  `FID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FAUDITORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUCHERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRANSACTIONTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMONTH` bigint NOT NULL DEFAULT '0',
  `FDAY` bigint NOT NULL DEFAULT '0',
  `FCOSTCENTERORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_otherissuebill_llll definition

CREATE TABLE `t_im_otherissuebill_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FAUDITORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUCHERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRANSACTIONTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMONTH` bigint NOT NULL DEFAULT '0',
  `FDAY` bigint NOT NULL DEFAULT '0',
  `FCOSTCENTERORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_otherissuebillentry_llll definition

CREATE TABLE `t_im_otherissuebillentry_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FEXP` datetime DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTOBJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBETIMESSTOCK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTORETYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORESTATUSID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_purinwarehsbill_llll definition

CREATE TABLE `t_im_purinwarehsbill_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEFUNCTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUCHERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRANSACTIONTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMONTH` bigint NOT NULL DEFAULT '0',
  `FDAY` bigint NOT NULL DEFAULT '0',
  `FCOSTCENTERORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPTAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FEXCHANGERATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALLOCALAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTARTWORKNUMID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDWORKNUMID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBARGAINNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITMANAGEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_purinwarehsentry_llll definition

CREATE TABLE `t_im_purinwarehsentry_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVATIONBILLOBJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FASSISTQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMFG` datetime DEFAULT NULL,
  `FEXP` datetime DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVEAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPURORDERNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORDERENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FPURORDERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORDERENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOREBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORDERPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPURCHASEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVESTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASECOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPURCHASEFEE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITMATERIALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPRODUCTTASKNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERLOTNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHOUSEKNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIVABLEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_purreceivalbill_llll definition

CREATE TABLE `t_im_purreceivalbill_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEFUNCTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUCHERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRANSACTIONTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMONTH` bigint NOT NULL DEFAULT '0',
  `FDAY` bigint NOT NULL DEFAULT '0',
  `FCOSTCENTERORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASETYPE` bigint NOT NULL DEFAULT '0',
  `FCUSTOMERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_purreceivalentry_llll definition

CREATE TABLE `t_im_purreceivalentry_llll` (
  `FID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVATIONBILLOBJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMFG` datetime DEFAULT NULL,
  `FEXP` datetime DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORDERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORDERENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPTQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPURORDERNUM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORDERENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FRECEIPTBASEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FORDERPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFIEDQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUNQUALIFIEDQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBILLROWTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNONUMMATERIALNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRODUCTTASKNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOREBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOREBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATIONNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERLOTNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNONUMMATERIALMODEL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALITYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCONTRACTNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCONTRACTSEQ` bigint NOT NULL DEFAULT '0',
  `FQISTANDARDID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_saleissuebill definition

CREATE TABLE `t_im_saleissuebill` (
  `FID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUCHERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMONTH` bigint NOT NULL DEFAULT '0',
  `FDAY` bigint NOT NULL DEFAULT '0',
  `FACTBIZDATE` datetime DEFAULT NULL,
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_saleissuebill_llll definition

CREATE TABLE `t_im_saleissuebill_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVOUCHERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSTANDARDCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALACTUALCOST` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMONTH` bigint NOT NULL DEFAULT '0',
  `FDAY` bigint NOT NULL DEFAULT '0',
  `FACTBIZDATE` datetime DEFAULT NULL,
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_saleissueentry_llll definition

CREATE TABLE `t_im_saleissueentry_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBASEUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOCKERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXP` datetime DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORDERNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBIZDATE` datetime DEFAULT NULL,
  `FCUSTOMERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBETIMESSTOCK` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FSALEPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_stocktransbillentry_llll definition

CREATE TABLE `t_im_stocktransbillentry_llll` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVATIONBILLOBJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESERVATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSUEWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSUELOCATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPTWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPTLOCATIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FASSISTQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIPTPLANDATE` datetime DEFAULT NULL,
  `FPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIPTQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMFG` datetime DEFAULT NULL,
  `FEXP` datetime DEFAULT NULL,
  `FTAXPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSALEINVOICEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPURINVOICEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALTAXPRICE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALTAXAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALPLANDQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUEPLANDATE` datetime DEFAULT NULL,
  `FPROJECTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORETYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FCUSTOMERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORESTATEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOUSEKNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFERNUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FELAPSEDNUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FQUOTANUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBETIMESSTOCK` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDCOS` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FENDWORKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATWORKNUMBERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_im_stocktransferbill_llll definition

CREATE TABLE `t_im_stocktransferbill_llll` (
  `FID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEFUNCTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FISSUECOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPTCOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSUESTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPTSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSUEADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIPTADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSHIPMENT` bigint NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FISINITBILL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_invtoratio definition

CREATE TABLE `t_invtoratio` (
  `FID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETVALUE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALVALUE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FWEIGHT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSCORE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_invturnoverratio definition

CREATE TABLE `t_invturnoverratio` (
  `FID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETVALUE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALVALUE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FWEIGHT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSCORE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_isv_xxx_r3 definition

CREATE TABLE `t_isv_xxx_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_manubillc3_cto definition

CREATE TABLE `t_manubillc3_cto` (
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPROJECTNUMBER`,`FSTORAGENUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_material0818 definition

CREATE TABLE `t_material0818` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASEUNIT` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_materialmkb2_cto definition

CREATE TABLE `t_materialmkb2_cto` (
  `FMATERIALNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISONSCHEDULEKITTING` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FMATERIALNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_materialmkb2_cye definition

CREATE TABLE `t_materialmkb2_cye` (
  `FMATERIALNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISONSCHEDULEKITTING` bigint NOT NULL DEFAULT '0',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FMATERIALNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_materialmkb2cal definition

CREATE TABLE `t_materialmkb2cal` (
  `FMATERIALNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTYE` bigint NOT NULL DEFAULT '0',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTTOTAL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FMATERIALNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_materialmkb3_cto definition

CREATE TABLE `t_materialmkb3_cto` (
  `FISONSCHEDULEKITTING` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_materialmkb3_cye definition

CREATE TABLE `t_materialmkb3_cye` (
  `FISONSCHEDULEKITTING` bigint NOT NULL DEFAULT '0',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ncrreportf2_ccl definition

CREATE TABLE `t_ncrreportf2_ccl` (
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNCRNUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FSTORAGENUMBER`,`FPROJECTNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ncrreportf2_cto definition

CREATE TABLE `t_ncrreportf2_cto` (
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNCRNUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FSTORAGENUMBER`,`FPROJECTNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ncrreportf2cal definition

CREATE TABLE `t_ncrreportf2cal` (
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTCLNCR` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTTOTAL` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FSTORAGENUMBER`,`FPROJECTNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ncrreportf3_cgl definition

CREATE TABLE `t_ncrreportf3_cgl` (
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNCRNUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FSTORAGENUMBER`,`FPROJECTNUMBER`,`FMATERIALNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ncrreportf3_cto definition

CREATE TABLE `t_ncrreportf3_cto` (
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNCRNUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FSTORAGENUMBER`,`FPROJECTNUMBER`,`FMATERIALNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_ncrreportf3cal definition

CREATE TABLE `t_ncrreportf3cal` (
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTGLNCR` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTTOTAL` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FSTORAGENUMBER`,`FPROJECTNUMBER`,`FMATERIALNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_payinvoice definition

CREATE TABLE `t_payinvoice` (
  `FID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEFUNCTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIVOUCHERED` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLDATE` datetime DEFAULT NULL,
  `FAUTHENTICDATE` datetime DEFAULT NULL,
  `FSUPPLIERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXREGISTERNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALVALOREM` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNO` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYMENTTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISHT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHTHID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEBH` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FISCERTIFIED` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRZRQ` datetime DEFAULT NULL,
  `FFXJL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHTJE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISBZ` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPBILLNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `index_fid` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_billtemp definition

CREATE TABLE `t_phm_billtemp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FBUSINESSTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEATID` bigint NOT NULL DEFAULT '0',
  `FRELATTIONDATATABLEID` bigint NOT NULL DEFAULT '0',
  `FBILLTEMPTYPEID` bigint NOT NULL DEFAULT '0',
  `FTEMPCLASSIFY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPREADJSON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPREADJSON_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FPUBLISH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUP` bigint NOT NULL DEFAULT '0',
  `FREALROW` int NOT NULL DEFAULT '0',
  `FREALCOL` int NOT NULL DEFAULT '0',
  `FTEMPCONFID` bigint NOT NULL DEFAULT '0',
  `FCELLCONFID` bigint NOT NULL DEFAULT '0',
  `FISENABLEVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVERSIONRULE` bigint NOT NULL DEFAULT '0',
  `FAREA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_BILLTEMP_FNUM` (`FNUMBER`),
  KEY `IDX_T_PHM_BILLTEMP_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PHM_BILLTEMP_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_bit definition

CREATE TABLE `t_phm_billtemp_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_l definition

CREATE TABLE `t_phm_billtemp_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_BILLTEMP_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_m definition

CREATE TABLE `t_phm_billtemp_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_r3 definition

CREATE TABLE `t_phm_billtemp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_type definition

CREATE TABLE `t_phm_billtemp_type` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_BILLTEMPT_FNUM` (`FNUMBER`),
  KEY `IDX_T_PHM_BILLTEMP_TYPE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PHM_BILLTEMP_TYPE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_type_bit definition

CREATE TABLE `t_phm_billtemp_type_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_type_l definition

CREATE TABLE `t_phm_billtemp_type_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_BILLTEMPT_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_type_m definition

CREATE TABLE `t_phm_billtemp_type_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_type_r3 definition

CREATE TABLE `t_phm_billtemp_type_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_type_u definition

CREATE TABLE `t_phm_billtemp_type_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_BILLTEMP_TYPE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_typeexc definition

CREATE TABLE `t_phm_billtemp_typeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_BILLTEMP_TYPEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_typeusereg definition

CREATE TABLE `t_phm_billtemp_typeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_BILLTEMP_TYPEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtemp_u definition

CREATE TABLE `t_phm_billtemp_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_BILLTEMP_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtempexc definition

CREATE TABLE `t_phm_billtempexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_BILLTEMPEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_billtempusereg definition

CREATE TABLE `t_phm_billtempusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_BILLTEMPUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_bizmodel definition

CREATE TABLE `t_phm_bizmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROFESSIONFIELDID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELEASESTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FXML` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FXML_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FISUPGRADE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FINTVERSION` bigint NOT NULL DEFAULT '0',
  `FBACKGROUND` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_BIZMODEL_FNUM` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_BIZMODEL_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_BIZMODEL_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bizmodel_bit definition

CREATE TABLE `t_phm_bizmodel_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_bizmodel_calclog definition

CREATE TABLE `t_phm_bizmodel_calclog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FCALCID` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FCOUNTTIME` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCOMBOFIELD` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPROGRESS` bigint NOT NULL DEFAULT '0',
  `FINITDETAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINITDETAIL_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FMODELTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSTANCEIP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSTANCEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` bigint NOT NULL DEFAULT '0',
  `FISDELETED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_BM_CALCLOGBMID` (`FBIZMODELID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bizmodel_entrylog definition

CREATE TABLE `t_phm_bizmodel_entrylog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FNODENAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FCOUNTTIME` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FSTATUS` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDETAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDETAIL_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSTEPSEQ` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FNODETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FSTEPORDER` int NOT NULL DEFAULT '0',
  `FDATASIZE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_BM_ENTRYLOG_IDSEQ` (`FID`,`FSEQ`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bizmodel_i definition

CREATE TABLE `t_phm_bizmodel_i` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FSTARTRUNTIME` datetime DEFAULT NULL,
  `FENDRUNTIME` datetime DEFAULT NULL,
  `FSCHEDULEPLAN` bigint NOT NULL DEFAULT '0',
  `FALLOWEDRUNSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_BIZMODEL_I_PLAN` (`FSCHEDULEPLAN`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bizmodel_l definition

CREATE TABLE `t_phm_bizmodel_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_DATAMAP_L_FIDFLID` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bizmodel_m definition

CREATE TABLE `t_phm_bizmodel_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bizmodel_r3 definition

CREATE TABLE `t_phm_bizmodel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bizmodel_u definition

CREATE TABLE `t_phm_bizmodel_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_bizmodel_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bizmodelexc definition

CREATE TABLE `t_phm_bizmodelexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_bizmodelExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bizmodelusereg definition

CREATE TABLE `t_phm_bizmodelusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_BIZMODELUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_biztype definition

CREATE TABLE `t_phm_biztype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_BIZTYPE_FNUMBER` (`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_biztype_l definition

CREATE TABLE `t_phm_biztype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIBE` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_BIZTYPE_L_FID` (`FID`,`FLOCALEID`) USING BTREE,
  KEY `IDX_PHM_BIZTYPE_L_FNAME` (`FNAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_biztype_r3 definition

CREATE TABLE `t_phm_biztype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_adjust definition

CREATE TABLE `t_phm_bm_adjust` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FELEMENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPONENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGIONNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEIGENVALUENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTEPSIZE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUPPERLIMIT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOWERLIMIT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEIGENVALUEID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWIDTH` decimal(19,0) NOT NULL DEFAULT '0',
  `FHEIGHT` decimal(19,0) NOT NULL DEFAULT '0',
  `FBACKCOLOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_BM_ADJUST_FBM` (`FBIZMODELID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_adjust_r3 definition

CREATE TABLE `t_phm_bm_adjust_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_connect definition

CREATE TABLE `t_phm_bm_connect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FELEMENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPONENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPPERNODE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOWERNODE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEREGION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETREGION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATIONDATA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLINEWIDTH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHAPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACKCOLOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATIONDATA_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_BM_CONNECT_FBM` (`FBIZMODELID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_connect_r3 definition

CREATE TABLE `t_phm_bm_connect_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_detail definition

CREATE TABLE `t_phm_bm_detail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FELEMENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPONENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FX` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDCOUNT` decimal(19,0) NOT NULL DEFAULT '0',
  `FEIGENVALUENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGURATION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEIGENVALUEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETDATA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWIDTH` decimal(19,0) NOT NULL DEFAULT '0',
  `FHEIGHT` decimal(19,0) NOT NULL DEFAULT '0',
  `FPAGEROW` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFONTCOLOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFONTSIZE` decimal(19,0) NOT NULL DEFAULT '0',
  `FBACKCOLOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETDATA_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FHIDEATRUNTIME` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_BM_DETAIL_FBM` (`FBIZMODELID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_detail_r3 definition

CREATE TABLE `t_phm_bm_detail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_detailsql_r3 definition

CREATE TABLE `t_phm_bm_detailsql_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_eigen definition

CREATE TABLE `t_phm_bm_eigen` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEIGENEDIT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSET` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FISADD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTOREVALUE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOREVALUE_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FELEMENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPONENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEIGENINFO` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWIDTH` bigint NOT NULL DEFAULT '0',
  `FHEIGHT` bigint NOT NULL DEFAULT '0',
  `FBACKCOLOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEIGENINFO_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FEIGENID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprecision` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprecinfo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fprecinfo_tag` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_BM_EIGEN_FNUM` (`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_eigen_r3 definition

CREATE TABLE `t_phm_bm_eigen_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_element definition

CREATE TABLE `t_phm_bm_element` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` decimal(19,0) NOT NULL DEFAULT '0',
  `FELEMENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPONENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWIDTH` decimal(19,0) NOT NULL DEFAULT '0',
  `FHEIGHT` decimal(19,0) NOT NULL DEFAULT '0',
  `FBACKCOLOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRADIUS` decimal(19,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_BM_ELEMENT_FBM` (`FBIZMODELID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_element_r3 definition

CREATE TABLE `t_phm_bm_element_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_evquery_r3 definition

CREATE TABLE `t_phm_bm_evquery_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_query definition

CREATE TABLE `t_phm_bm_query` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FELEMENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPONENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPARETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEIGENVALUENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPAREDETAILS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOMPAREFIELD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEIGENVALUEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPAREDATA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWIDTH` decimal(19,0) NOT NULL DEFAULT '0',
  `FHEIGHT` decimal(19,0) NOT NULL DEFAULT '0',
  `FBACKCOLOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFONTSIZE` decimal(19,0) NOT NULL DEFAULT '0',
  `FFONTCOLOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPAREDATA_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_BM_QUERY_FBM` (`FBIZMODELID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_query_r3 definition

CREATE TABLE `t_phm_bm_query_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_txt definition

CREATE TABLE `t_phm_bm_txt` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FELEMENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPONENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROWHEIGHT` decimal(19,0) NOT NULL DEFAULT '0',
  `FWIDTH` decimal(19,0) NOT NULL DEFAULT '0',
  `FHEIGHT` decimal(19,0) NOT NULL DEFAULT '0',
  `FFONTSIZE` decimal(19,0) NOT NULL DEFAULT '0',
  `FFONTCOLOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACKCOLOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_BBM_TXT_FBM` (`FBIZMODELID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_bm_txt_r3 definition

CREATE TABLE `t_phm_bm_txt_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calc_resregist definition

CREATE TABLE `t_phm_calc_resregist` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINSTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSTIP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSTINFO` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTACCTIME` datetime DEFAULT NULL,
  `FMQTAG` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_CALC_RES_FINSTID` (`FINSTID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calc_resregist_r3 definition

CREATE TABLE `t_phm_calc_resregist_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calclogrole definition

CREATE TABLE `t_phm_calclogrole` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_CALCLOGROLE_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_calculationmodel definition

CREATE TABLE `t_phm_calculationmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISUPGRADE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSYMBOL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREMARK` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FXML` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FXML_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCELLSDATA` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCELLSDATA_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FIMPLEMENTCLASS` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_CALCULATION_FNUMBER` (`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calculationmodel_l definition

CREATE TABLE `t_phm_calculationmodel_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_CALCULATIONMODEL_L_0` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calculationmodel_r3 definition

CREATE TABLE `t_phm_calculationmodel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calculationmodel_u definition

CREATE TABLE `t_phm_calculationmodel_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_calculationmodel_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calculationmodelexc definition

CREATE TABLE `t_phm_calculationmodelexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_calculationmodelExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calculationmodelusereg definition

CREATE TABLE `t_phm_calculationmodelusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_CALCULATIONMODELUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calcumodel definition

CREATE TABLE `t_phm_calcumodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISUPGRADE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSYMBOL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREMARK` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FXML` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FXML_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCELLSDATA` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCELLSDATA_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FIMPLEMENTCLASS` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTVERSION` int NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_CALCUMODEL_FNUM` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_CALCUMODEL_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_CALCUMODEL_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calcumodel_bit definition

CREATE TABLE `t_phm_calcumodel_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_calcumodel_l definition

CREATE TABLE `t_phm_calcumodel_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_CALCUMODEL_L_0` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calcumodel_m definition

CREATE TABLE `t_phm_calcumodel_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calcumodel_r3 definition

CREATE TABLE `t_phm_calcumodel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calcumodel_u definition

CREATE TABLE `t_phm_calcumodel_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_calcumodel_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calcumodelexc definition

CREATE TABLE `t_phm_calcumodelexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_calcumodelExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_calcumodelusereg definition

CREATE TABLE `t_phm_calcumodelusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_CALCUMODELUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_celltemps definition

CREATE TABLE `t_phm_celltemps` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_CELLTEMPS_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_characterentry definition

CREATE TABLE `t_phm_characterentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FWEEK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWEEKCOMPLETEDESCRIBE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTPLANDESCRIB` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRISKDESCRIB` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` bigint NOT NULL DEFAULT '0',
  `FPLANQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFCUMULATIVEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FWEEKCOMPLETEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNEXTWEEKQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREPORTER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_CHARACTERENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_characteristic definition

CREATE TABLE `t_phm_characteristic` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FTOPIC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRIORITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEAD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDAYS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FCOMPLETEDATE` datetime DEFAULT NULL,
  `FREMARKS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_CHARACTERISTIC_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_characteristic_l definition

CREATE TABLE `t_phm_characteristic_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_CHARACTERISTIC_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_characteristic_r3 definition

CREATE TABLE `t_phm_characteristic_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_classification definition

CREATE TABLE `t_phm_classification` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_CLASSIFI_FNUMBER` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_CLASSIFICATION_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_CLASSIFICATION_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_classification_bit definition

CREATE TABLE `t_phm_classification_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_classification_l definition

CREATE TABLE `t_phm_classification_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_CLASSIFI_L_FID` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_classification_m definition

CREATE TABLE `t_phm_classification_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_classification_r3 definition

CREATE TABLE `t_phm_classification_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_classification_u definition

CREATE TABLE `t_phm_classification_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_classification_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_classificationexc definition

CREATE TABLE `t_phm_classificationexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_classificationExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_classificationusereg definition

CREATE TABLE `t_phm_classificationusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_CLASSIFICATIONUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_command definition

CREATE TABLE `t_phm_command` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORGID` bigint NOT NULL DEFAULT '0',
  `FCLASSIFICATION` bigint NOT NULL DEFAULT '0',
  `FPROFESSIONID` bigint NOT NULL DEFAULT '0',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAUDITOR` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_COMMAND_NUM` (`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_command_l definition

CREATE TABLE `t_phm_command_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_COMMAND_FID` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_command_r3 definition

CREATE TABLE `t_phm_command_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_component definition

CREATE TABLE `t_phm_component` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPONENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATA` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATA_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_COMPONENT` (`FBIZMODELID`,`FCOMPONENTID`,`FTYPE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_componentdefine definition

CREATE TABLE `t_phm_componentdefine` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` bigint NOT NULL DEFAULT '0',
  `FPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_COMPONENTDEFINE_FNUM` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_COMPONENTDEFINE_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_COMPONENTDEFINE_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_componentdefine_bit definition

CREATE TABLE `t_phm_componentdefine_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_componentdefine_l definition

CREATE TABLE `t_phm_componentdefine_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPLAIN` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_COMPONENTDEFINE_L_0` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_componentdefine_m definition

CREATE TABLE `t_phm_componentdefine_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_componentdefine_r3 definition

CREATE TABLE `t_phm_componentdefine_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_componentdefine_u definition

CREATE TABLE `t_phm_componentdefine_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_componentdefine_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_componentdefineexc definition

CREATE TABLE `t_phm_componentdefineexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_componentdefineExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_componentdefineusereg definition

CREATE TABLE `t_phm_componentdefineusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_COMPONENTDEFINEUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_componentlibrary definition

CREATE TABLE `t_phm_componentlibrary` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTRUCTURE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTRUCTURE_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FPICTURE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_COMPONENTLIB_NUM` (`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_componentlibrary_l definition

CREATE TABLE `t_phm_componentlibrary_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_COMPONENTLIB_L_ID` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_componentlibrary_r3 definition

CREATE TABLE `t_phm_componentlibrary_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_dataconnection definition

CREATE TABLE `t_phm_dataconnection` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIP` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPNO` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPPASSWORD` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTID` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTENANTID` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGINUSER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGINWORD` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDBNAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORACLESERVICE` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNICODE` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATACENTER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEASSERVICE` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWEBAPPNAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENTUSER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHTTP` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLANGUAGE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLURL` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLURL_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FFIXTOKEN` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIXTOKEN_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDYNAMICTOKEN` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDYNAMICTOKEN_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FLINKTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOST` bigint NOT NULL DEFAULT '0',
  `FPROXYUSER` bigint NOT NULL DEFAULT '0',
  `FIERPURL` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPASSWORD` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERMISSIONMODE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLINKID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_DATACONNECTION_FNUMBER` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_DATACONNECTION_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_DATACONNECTION_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_dataconnection_bit definition

CREATE TABLE `t_phm_dataconnection_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_dataconnection_l definition

CREATE TABLE `t_phm_dataconnection_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_DATACONNECTION_L_FID` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_dataconnection_m definition

CREATE TABLE `t_phm_dataconnection_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_dataconnection_r3 definition

CREATE TABLE `t_phm_dataconnection_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_dataconnection_u definition

CREATE TABLE `t_phm_dataconnection_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_dataconnection_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_dataconnectionexc definition

CREATE TABLE `t_phm_dataconnectionexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_dataconnectionExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_dataconnectionusereg definition

CREATE TABLE `t_phm_dataconnectionusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_DATACONNECTIONUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_dataconsub definition

CREATE TABLE `t_phm_dataconsub` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FKEY` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`) USING BTREE,
  KEY `IDX_PHM_DATACONSUB_FENTRYID` (`FENTRYID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datacontent definition

CREATE TABLE `t_phm_datacontent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FFIELD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_DATACONTENT_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_dataconurl definition

CREATE TABLE `t_phm_dataconurl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FINTMARK` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FURL` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FURL_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_DATACONURL_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datagetrule definition

CREATE TABLE `t_phm_datagetrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FRULE_LEFT_BRACKET` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULE_FIELDDESC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULE_COMPARE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULE_VALUE_VAR` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULE_VALUE_FIXED` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULE_RIGHT_BRACKET` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULE_LINK` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULE_CONDITIONFIELD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRULE_SRCTABLE` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_DATAGETRULE_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datamap definition

CREATE TABLE `t_phm_datamap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETA` bigint NOT NULL DEFAULT '0',
  `FMODE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKCONFLICT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARKS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTDATE` datetime DEFAULT NULL,
  `FDTGETRULE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_DATAMAP_FNUMBER` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_DATAMAP_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_DATAMAP_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datamap_bit definition

CREATE TABLE `t_phm_datamap_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_datamap_l definition

CREATE TABLE `t_phm_datamap_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_DATAMAP_L` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datamap_m definition

CREATE TABLE `t_phm_datamap_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datamap_r3 definition

CREATE TABLE `t_phm_datamap_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datamap_u definition

CREATE TABLE `t_phm_datamap_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_datamap_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datamapexc definition

CREATE TABLE `t_phm_datamapexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_datamapExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datamapusereg definition

CREATE TABLE `t_phm_datamapusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_DATAMAPUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datapump definition

CREATE TABLE `t_phm_datapump` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FEXPIREDTIME` datetime DEFAULT NULL,
  `FSTARTTIME` datetime DEFAULT NULL,
  `FLASTRUNTIME` datetime DEFAULT NULL,
  `FRUNTIMES` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FDESC` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPEATMODE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCYCLENUM` bigint NOT NULL DEFAULT '0',
  `FBYDAYORWEEK` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBYWEEK` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOWEEK` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLAN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMON` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTUES` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHUR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFRI` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_DATAPUMP_FNUMBER` (`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datapump_a definition

CREATE TABLE `t_phm_datapump_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FONE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWO` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHREE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOUR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIVE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIX` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEVEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEIGHT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNINE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FELEVEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWELVE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHIRTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOURTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIFTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIXTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEVENTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEIGHTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNINETEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYONE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYTWO` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYTHREE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYFOUR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYFIVE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYSIX` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYSEVEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYEIGHT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYNINE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHIRTY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHIRTYONE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJAN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFEB` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAPR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJUN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJUL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAUG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOCT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNOV` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDEC` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_DATAPUMP_A_DAY` (`FONE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datapump_l definition

CREATE TABLE `t_phm_datapump_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_DATAPUMP_L_0` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datapump_r3 definition

CREATE TABLE `t_phm_datapump_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datapumpentry definition

CREATE TABLE `t_phm_datapumpentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMAPPINGID` bigint NOT NULL DEFAULT '0',
  `FMETADATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_DATAPUMPENTRY_FENTRYID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datapumpsubentry definition

CREATE TABLE `t_phm_datapumpsubentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDATACONNAPIMARK` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATACONNAPIURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATACONNAPIURL_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDATACONNAPIDESC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELECT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FDETAILID`) USING BTREE,
  KEY `IDX_PHM_DATAPUMPSUB_FENTRYID` (`FENTRYID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datarelation definition

CREATE TABLE `t_phm_datarelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDESTFIELD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESTFIELDDESC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPK` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRULE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRC_TABLE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRC_FIELD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRC_FIELDDESC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISGETDATA` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_DATARELATION_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datatable definition

CREATE TABLE `t_phm_datatable` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABLEDESCRIPTION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fsourcedataid` bigint DEFAULT NULL,
  `fbitindex` bigint DEFAULT NULL,
  `fsourcebitindex` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_DATATABLE_FNUMBER` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_DATATABLE_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_DATATABLE_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datatable_bit definition

CREATE TABLE `t_phm_datatable_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_datatable_l definition

CREATE TABLE `t_phm_datatable_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_DATATABLE_L_0` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datatable_m definition

CREATE TABLE `t_phm_datatable_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datatable_r3 definition

CREATE TABLE `t_phm_datatable_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datatable_u definition

CREATE TABLE `t_phm_datatable_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_datatable_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datatableentry definition

CREATE TABLE `t_phm_datatableentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FFIELDDESCRIPTION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDLENGTH` bigint NOT NULL DEFAULT '0',
  `FPRIMARYKEY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIELDNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEFVALUE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_DATATABLEENTRY_FK` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datatableexc definition

CREATE TABLE `t_phm_datatableexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_datatableExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_datatableusereg definition

CREATE TABLE `t_phm_datatableusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_DATATABLEUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_deliableorg definition

CREATE TABLE `t_phm_deliableorg` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_DELIABLEORG` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_deliverablesgrou_r3 definition

CREATE TABLE `t_phm_deliverablesgrou_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_deliverablesgroup definition

CREATE TABLE `t_phm_deliverablesgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIBE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_DELIVERABLESGROUP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_deliverablesgroup_l definition

CREATE TABLE `t_phm_deliverablesgroup_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_DELIVERABLESGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_deliverrule definition

CREATE TABLE `t_phm_deliverrule` (
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
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMAKES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIGINSYSTEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCEID` bigint NOT NULL DEFAULT '0',
  `FDELIVERNOTICEID` bigint NOT NULL DEFAULT '0',
  `FBEGINDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FDELIVER` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNIT` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_DELIVERRULE` (`FNUMBER`,`FCREATEORGID`),
  KEY `IDX_T_PHM_DELIVERRULE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PHM_DELIVERRULE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_deliverrule_bit definition

CREATE TABLE `t_phm_deliverrule_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_deliverrule_l definition

CREATE TABLE `t_phm_deliverrule_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_DELIVERRULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_deliverrule_r3 definition

CREATE TABLE `t_phm_deliverrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_deliverrule_u definition

CREATE TABLE `t_phm_deliverrule_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_DELIVERRULE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_deliverruleexc definition

CREATE TABLE `t_phm_deliverruleexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_DELIVERRULEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_deliverruleusereg definition

CREATE TABLE `t_phm_deliverruleusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_DELIVERRULEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_depersonliable definition

CREATE TABLE `t_phm_depersonliable` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_DEPERSONLIABLE` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_eigenvalue definition

CREATE TABLE `t_phm_eigenvalue` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fsourcedataid` bigint DEFAULT NULL,
  `fbitindex` bigint DEFAULT NULL,
  `fsourcebitindex` bigint DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_EIGENVALUE_FNUM` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_EIGENVALUE_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_EIGENVALUE_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_eigenvalue_bit definition

CREATE TABLE `t_phm_eigenvalue_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_eigenvalue_l definition

CREATE TABLE `t_phm_eigenvalue_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_DATAPUMP_L_FID` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_eigenvalue_m definition

CREATE TABLE `t_phm_eigenvalue_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_eigenvalue_r3 definition

CREATE TABLE `t_phm_eigenvalue_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_eigenvalue_u definition

CREATE TABLE `t_phm_eigenvalue_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_eigenvalue_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_eigenvalueexc definition

CREATE TABLE `t_phm_eigenvalueexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_eigenvalueExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_eigenvalueusereg definition

CREATE TABLE `t_phm_eigenvalueusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_EIGENVALUEUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_event_roles definition

CREATE TABLE `t_phm_event_roles` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_EVENT_ROLES_FK` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_eventdeal_prop definition

CREATE TABLE `t_phm_eventdeal_prop` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FPRIORITY` bigint NOT NULL DEFAULT '0',
  `FISSHOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBIZOBJECTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJECTID` bigint NOT NULL DEFAULT '0',
  `FFILTERFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_EVENTDEAL_PROP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_eventdeal_prop_l definition

CREATE TABLE `t_phm_eventdeal_prop_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_EVENTDEAL_PROP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_eventdeal_prop_r3 definition

CREATE TABLE `t_phm_eventdeal_prop_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_excutesubflow definition

CREATE TABLE `t_phm_excutesubflow` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FFLOWNUMBER` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PHM_EXCUTESUBFLOW` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_feature definition

CREATE TABLE `t_phm_feature` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FTOPIC` bigint NOT NULL DEFAULT '0',
  `FCHARACTERIZATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDAYS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FCOMPLETEDATE` datetime DEFAULT NULL,
  `FPRIORITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEAD` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_FEATURE` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_fieldrelation definition

CREATE TABLE `t_phm_fieldrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSRCTABLE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCFIELD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCFIELDNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCFIELDTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCPKFIELD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESTFIELD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESTFIELDNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESTFIELDTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESTPKFIELD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_FIELDRELATION_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_filldata_history definition

CREATE TABLE `t_phm_filldata_history` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FSPREADJSON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPREADJSON_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FVERSIONRULEID` bigint NOT NULL DEFAULT '0',
  `FSPREADSTYLE` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPREADSTYLE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FREALROW` int NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_FILLDATA_HISTORY` (`FTEMPLATEID`),
  KEY `IDX_T_PHM_FILLDATA_HISTORY_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PHM_FILLDATA_HISTORY_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_filldata_history_bit definition

CREATE TABLE `t_phm_filldata_history_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_filldata_history_l definition

CREATE TABLE `t_phm_filldata_history_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_FILLDATA_HISTORY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_filldata_history_m definition

CREATE TABLE `t_phm_filldata_history_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_filldata_history_r3 definition

CREATE TABLE `t_phm_filldata_history_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_filldata_history_u definition

CREATE TABLE `t_phm_filldata_history_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_FILLDATA_HISTORY_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_filldata_historyexc definition

CREATE TABLE `t_phm_filldata_historyexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_FILLDATA_HISTORYEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_filldata_historyusereg definition

CREATE TABLE `t_phm_filldata_historyusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_FILLDATA_HISTORYUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_fixtpl_cellset definition

CREATE TABLE `t_phm_fixtpl_cellset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_FIXTPL_CELLSET` (`FSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_fixtpl_cellset_r3 definition

CREATE TABLE `t_phm_fixtpl_cellset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowdefine definition

CREATE TABLE `t_phm_flowdefine` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSIONRULEID` bigint NOT NULL DEFAULT '0',
  `FGLOBALRULE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINDUSTRYID` bigint NOT NULL DEFAULT '0',
  `FFLOWLEADERID` bigint NOT NULL DEFAULT '0',
  `FVALIDATEDTIME` datetime DEFAULT NULL,
  `FPLAN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPEATMODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCYCLENUM` bigint NOT NULL DEFAULT '0',
  `FBYDAYORWEEK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTUES` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHUR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFRI` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBYWEEK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOWEEK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFLOWCONF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFLOWCONF_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FFLOWSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FSYSFLOWCONF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYSFLOWCONF_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FACCOUNTABILITYSCAL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTABILITYSCAL_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FPROGRESS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTABILITY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEVIEW` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMILEPOSTSTAGETYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMILEPOSTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_FLOWDEFINE_NUM` (`FNUMBER`),
  KEY `IDX_T_PHM_FLOWDEFINE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PHM_FLOWDEFINE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowdefine_a definition

CREATE TABLE `t_phm_flowdefine_a` (
  `FTHIRTYONE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHIRTY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYNINE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYEIGHT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYSEVEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYSIX` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYFIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYFOUR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYTHREE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYTWO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYONE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNINETEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEIGHTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEVENTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIXTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIFTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOURTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHIRTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWELVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FELEVEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNINE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEIGHT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEVEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIX` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOUR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHREE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FONE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FJAN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFEB` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAPR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJUN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJUL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAUG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDEC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNOV` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOCT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_FLOWDEFINE_A` (`FONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowdefine_bit definition

CREATE TABLE `t_phm_flowdefine_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowdefine_l definition

CREATE TABLE `t_phm_flowdefine_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_FLOWDEFINE_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowdefine_m definition

CREATE TABLE `t_phm_flowdefine_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowdefine_r3 definition

CREATE TABLE `t_phm_flowdefine_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowdefine_u definition

CREATE TABLE `t_phm_flowdefine_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_FLOWDEFINE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowdefineexc definition

CREATE TABLE `t_phm_flowdefineexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_FLOWDEFINEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowdefineusereg definition

CREATE TABLE `t_phm_flowdefineusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_FLOWDEFINEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowleader definition

CREATE TABLE `t_phm_flowleader` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_FLOWLEADER_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flownode definition

CREATE TABLE `t_phm_flownode` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNODENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODECYCLE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FNODEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODECOMPLETE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPERSONLIABLEID` bigint NOT NULL DEFAULT '0',
  `FLIABLEORGID` bigint NOT NULL DEFAULT '0',
  `FSTAGES` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEGINDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `fnodedataisolation` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_FLOWNODE` (`FID`,`FNODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowresource definition

CREATE TABLE `t_phm_flowresource` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRESOURCETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FCONTROL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONTROLCONF` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMULA` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELIVERABLESNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELIVERABLESNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELIVERABLES` bigint NOT NULL DEFAULT '0',
  `FSCHEDULE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWARNINGCYCLES` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOVERDUECYCLES` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSERIOUSOVERDUECYCLES` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFRONTCONDITION` longtext COLLATE utf8mb4_unicode_ci,
  `FAFTERCONDITION` longtext COLLATE utf8mb4_unicode_ci,
  `FRECUSTOMERS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMAKE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFRONTCONDITION_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FAFTERCONDITION_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FDEALTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PHM_FLOWRESOURCE` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowresource_l definition

CREATE TABLE `t_phm_flowresource_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELIVERABLESNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_FLOWRESOURCE_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowsuperior definition

CREATE TABLE `t_phm_flowsuperior` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_FLOWSUPERIOR` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowtaskwarn definition

CREATE TABLE `t_phm_flowtaskwarn` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMILEPOSTSTAGE` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMILEPOSTPERSON` bigint NOT NULL DEFAULT '0',
  `FPROCESSNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEPERSON` bigint NOT NULL DEFAULT '0',
  `FTASKNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPLAIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENDTIME` datetime DEFAULT NULL,
  `FNOWTIME` datetime DEFAULT NULL,
  `FTYPES` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTMANAGER` bigint NOT NULL DEFAULT '0',
  `FFRONTTASK` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFTERTASK` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPROCESSHISTORY` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FENTRYTASK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRY_TASK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_FLOWTASKWARN` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowtaskwarn_l definition

CREATE TABLE `t_phm_flowtaskwarn_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_FLOWTASKWARN_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_flowtaskwarn_r3 definition

CREATE TABLE `t_phm_flowtaskwarn_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_groupdisplay definition

CREATE TABLE `t_phm_groupdisplay` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMANDID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNDATE` datetime DEFAULT NULL,
  `FSETDATA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETDATA_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_GROUPDISPLAY_NUM` (`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_groupdisplay_r3 definition

CREATE TABLE `t_phm_groupdisplay_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_groupstd definition

CREATE TABLE `t_phm_groupstd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIBE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTDENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_GROUPSTD_FNUMBER` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_GROUPSTD_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_GROUPSTD_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_groupstd_bit definition

CREATE TABLE `t_phm_groupstd_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_groupstd_l definition

CREATE TABLE `t_phm_groupstd_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_GROUPSTD_L` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_groupstd_m definition

CREATE TABLE `t_phm_groupstd_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_groupstd_r3 definition

CREATE TABLE `t_phm_groupstd_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_groupstd_u definition

CREATE TABLE `t_phm_groupstd_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_groupstd_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_groupstdexc definition

CREATE TABLE `t_phm_groupstdexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_groupstdExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_groupstdusereg definition

CREATE TABLE `t_phm_groupstdusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_GROUPSTDUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_historyroles definition

CREATE TABLE `t_phm_historyroles` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_HISTORYROLES_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_lane definition

CREATE TABLE `t_phm_lane` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FLANEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLANEORG` bigint NOT NULL DEFAULT '0',
  `FLANEPROJECT` bigint NOT NULL DEFAULT '0',
  `FLANEUSER` bigint NOT NULL DEFAULT '0',
  `FLANEREMAKE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLANEMESSAGE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLANEMESSAGE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FLANEROLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLANENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGLEVEL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_LANE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_messageentry definition

CREATE TABLE `t_phm_messageentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMESSAGESHOW` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONDITIONSHOW` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMESSAGEBODY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGEBODY_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSUCCESS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONDITION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONDITION_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_MESSAGEENTRY_ID` (`FID`,`FSEQ`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_metadata definition

CREATE TABLE `t_phm_metadata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPILINK` bigint NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETDATATABLE` bigint NOT NULL DEFAULT '0',
  `FREMARKS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCSCHEMAID` bigint NOT NULL DEFAULT '0',
  `FPARAM_JST` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAM_JST_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRESULT_JST` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT_JST_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_METADATA_FNUMBER` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_METADATA_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_METADATA_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_metadata_bit definition

CREATE TABLE `t_phm_metadata_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_metadata_l definition

CREATE TABLE `t_phm_metadata_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_METADATA_L_0` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_metadata_m definition

CREATE TABLE `t_phm_metadata_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_metadata_r3 definition

CREATE TABLE `t_phm_metadata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_metadata_u definition

CREATE TABLE `t_phm_metadata_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_metadata_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_metadataexc definition

CREATE TABLE `t_phm_metadataexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_metadataExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_metadatausereg definition

CREATE TABLE `t_phm_metadatausereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_METADATAUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_metaparam definition

CREATE TABLE `t_phm_metaparam` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPARAM_NUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAM_SCHEMA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAM_TYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAM_REMARKS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_METAPARAM_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_milepost definition

CREATE TABLE `t_phm_milepost` (
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
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMAKES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCONTRACT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERLIABLEID` bigint NOT NULL DEFAULT '0',
  `FLIABLEORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_MILEPOST` (`FNUMBER`,`FCREATEORGID`),
  KEY `IDX_T_PHM_MILEPOST_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PHM_MILEPOST_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_milepost_bit definition

CREATE TABLE `t_phm_milepost_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_milepost_l definition

CREATE TABLE `t_phm_milepost_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_MILEPOST_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_milepost_r3 definition

CREATE TABLE `t_phm_milepost_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_milepost_u definition

CREATE TABLE `t_phm_milepost_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_MILEPOST_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_milepostexc definition

CREATE TABLE `t_phm_milepostexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_MILEPOSTEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_milepostgroup definition

CREATE TABLE `t_phm_milepostgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIBE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_MILEPOSTGROUP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_milepostgroup_l definition

CREATE TABLE `t_phm_milepostgroup_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_MILEPOSTGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_milepostgroup_r3 definition

CREATE TABLE `t_phm_milepostgroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_milepostusereg definition

CREATE TABLE `t_phm_milepostusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_MILEPOSTUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_node_event definition

CREATE TABLE `t_phm_node_event` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNODENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FEVENTSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FRUNVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSHISTORYID` bigint NOT NULL DEFAULT '0',
  `FSTARTNODEID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBPROCESS` bigint NOT NULL DEFAULT '0',
  `FSUBPROCESSDEAL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUSCHANGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FNODESTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTARGETNODESTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATEFINISH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTASKNOTIC` bigint NOT NULL DEFAULT '0',
  `FABNORMALSTATUS` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODETASK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PHM_NODE_EVENT_FK` (`FENTRYID`),
  KEY `IDX_PHM_NODE_EVENT_ID` (`FEVENTNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_node_event_r3 definition

CREATE TABLE `t_phm_node_event_r3` (
  `fdetailid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fdetailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_node_resource definition

CREATE TABLE `t_phm_node_resource` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FVERSIONNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FRUNVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLEID` bigint NOT NULL DEFAULT '0',
  `FDATATYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FPROCESSHISTORYID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEALTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PHM_NODE_RESOURCE_FK` (`FENTRYID`),
  KEY `IDX_PHM_NODE_RESOURCE_ID` (`FPROCESSHISTORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_node_resource_r3 definition

CREATE TABLE `t_phm_node_resource_r3` (
  `fdetailid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fdetailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_node_task definition

CREATE TABLE `t_phm_node_task` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FNODENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESOURCETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKPROGRESS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRUNVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCESSHISTORYID` bigint NOT NULL DEFAULT '0',
  `FCOMPLETEDATE` datetime DEFAULT NULL,
  `FNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELIVERABLES` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEDULE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWARNINGCYCLE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOVERDUECYCLE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSERIOUSOVERDUECYCLE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFRONTCONDITION` longtext COLLATE utf8mb4_unicode_ci,
  `FAFTERCONDITION` longtext COLLATE utf8mb4_unicode_ci,
  `FRECUSTOMERS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMAKE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCEID` bigint NOT NULL DEFAULT '0',
  `FFRONTCONDITION_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FAFTERCONDITION_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FDEALTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PHM_NODE_TASK_FK` (`FENTRYID`),
  KEY `IDX_PHM_NODE_TASK_ID` (`FPROCESSHISTORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_node_task_l definition

CREATE TABLE `t_phm_node_task_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_NODE_TASK_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_node_task_r3 definition

CREATE TABLE `t_phm_node_task_r3` (
  `fdetailid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fdetailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_nodetype definition

CREATE TABLE `t_phm_nodetype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRELEASESTATE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FICONTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rect',
  `FCUSTOMICONCODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMICONCODE_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FFILLCOLOR` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFONTCOLOR` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPFORM` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMIMGDATA` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMIMGDATA_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCUSTOMIMGJSON` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMIMGJSON_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FBILLTEMPLETE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_NODETYPE_FNUMBER` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_NODETYPE_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_NODETYPE_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_nodetype_bit definition

CREATE TABLE `t_phm_nodetype_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_nodetype_l definition

CREATE TABLE `t_phm_nodetype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_NODETYPE_L_IDLOC` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_nodetype_m definition

CREATE TABLE `t_phm_nodetype_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_nodetype_r3 definition

CREATE TABLE `t_phm_nodetype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_nodetype_u definition

CREATE TABLE `t_phm_nodetype_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_nodetype_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_nodetypeentry definition

CREATE TABLE `t_phm_nodetypeentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FISENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPLUGINTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLASSNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_NODETYPEENTRY_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_nodetypeexc definition

CREATE TABLE `t_phm_nodetypeexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_nodetypeExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_nodetypeusereg definition

CREATE TABLE `t_phm_nodetypeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_NODETYPEUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_noticeprocessperson definition

CREATE TABLE `t_phm_noticeprocessperson` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_NOTICEPROCESSPERSON` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_optextentry definition

CREATE TABLE `t_phm_optextentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEIGENVALUE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_OPTEXTENTRY_ID` (`FID`,`FSEQ`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_orglevel definition

CREATE TABLE `t_phm_orglevel` (
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
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMAKES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_ORGLEVEL` (`FCREATEORGID`,`FNUMBER`),
  KEY `IDX_T_PHM_ORGLEVEL_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PHM_ORGLEVEL_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_orglevel_bit definition

CREATE TABLE `t_phm_orglevel_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_orglevel_l definition

CREATE TABLE `t_phm_orglevel_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_ORGLEVEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_orglevel_r3 definition

CREATE TABLE `t_phm_orglevel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_orglevel_u definition

CREATE TABLE `t_phm_orglevel_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_ORGLEVEL_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_orglevelexc definition

CREATE TABLE `t_phm_orglevelexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_ORGLEVELEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_orglevelgroup definition

CREATE TABLE `t_phm_orglevelgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIBE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_ORGLEVELGROUP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_orglevelgroup_l definition

CREATE TABLE `t_phm_orglevelgroup_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_ORGLEVELGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_orglevelgroup_r3 definition

CREATE TABLE `t_phm_orglevelgroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_orglevelusereg definition

CREATE TABLE `t_phm_orglevelusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_ORGLEVELUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_outlinelistentry definition

CREATE TABLE `t_phm_outlinelistentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREQUIRENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANCOMPLETEDATE` datetime DEFAULT NULL,
  `FACTUALCOMPLETEDATE` datetime DEFAULT NULL,
  `FCUSTOMERREQUIRE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARKS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQPRIORITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQUIREMENTHEAD` bigint NOT NULL DEFAULT '0',
  `FREVIEWER` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_OUTLINELISTENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_overduecyuser definition

CREATE TABLE `t_phm_overduecyuser` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_OVERDUECYUSER` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_paramentry definition

CREATE TABLE `t_phm_paramentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPARAMTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMSOURCE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMVALUE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_PARAMENTRY_ID` (`FID`,`FSEQ`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_pkrelation definition

CREATE TABLE `t_phm_pkrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FKEY_DESTTABLE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEY_DESTTABLEFIELD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEY_SRCTABLE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEY_SRCTABLEFIELD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_PKRELATION_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_procdef definition

CREATE TABLE `t_phm_procdef` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDUSTRYID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISVERSIONUPGRADE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONTENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_PROCDEF_FNUMBER` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_PROCDEF_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_PROCDEF_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_procdef_bit definition

CREATE TABLE `t_phm_procdef_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_procdef_l definition

CREATE TABLE `t_phm_procdef_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_PROCDEF_L_FIDFLOCALEID` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_procdef_m definition

CREATE TABLE `t_phm_procdef_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_procdef_r3 definition

CREATE TABLE `t_phm_procdef_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_procdef_u definition

CREATE TABLE `t_phm_procdef_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_procdef_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_procdefentry definition

CREATE TABLE `t_phm_procdefentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FNODEID` bigint NOT NULL DEFAULT '0',
  `FNODENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODETYPEID` bigint NOT NULL DEFAULT '0',
  `FPNODEID` bigint NOT NULL DEFAULT '0',
  `FPNODENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_PROCDEFENTRY_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_procdefexc definition

CREATE TABLE `t_phm_procdefexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_procdefExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_procdefusereg definition

CREATE TABLE `t_phm_procdefusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_PROCDEFUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_procesoverduecyuser definition

CREATE TABLE `t_phm_procesoverduecyuser` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_PROCESOVERDUECYUSER` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_process_calclog definition

CREATE TABLE `t_phm_process_calclog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FHISTORYID` bigint NOT NULL DEFAULT '0',
  `FEVENTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORMSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FERRORTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEALTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEID` bigint NOT NULL DEFAULT '0',
  `FRESOURCETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESOURCE` bigint NOT NULL DEFAULT '0',
  `FHANDLER` bigint NOT NULL DEFAULT '0',
  `FNODERESOURCEID` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENDNODES` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTNODEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_PROCESS_CALCLOG` (`FHISTORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_process_entrylog definition

CREATE TABLE `t_phm_process_entrylog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEXCEPTIONMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCEPTIONMSG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_PROCESS_ENTRYLOG_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_process_history definition

CREATE TABLE `t_phm_process_history` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCESSID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENT` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FDATA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATA_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FEXCEPTIONDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSATRNEWDATE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSATRNEWDATE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FMILEPOSTID` bigint NOT NULL DEFAULT '0',
  `FSTARTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATESTATUS` int NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISDELETE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enable',
  `FCOPYSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_PROCESS_HISTORY_F` (`FCREATETIME`),
  KEY `IDX_PHM_PROCESS_HISTORY` (`FPROCESSID`,`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_process_history_r3 definition

CREATE TABLE `t_phm_process_history_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_process_node definition

CREATE TABLE `t_phm_process_node` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FFINISHTIME` datetime DEFAULT NULL,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIOD` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FISCONTROL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNEXTNODEIDS` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRENODEIDS` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODECOMPLETE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUSPENDDURATION` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FLIABLEORGS` bigint NOT NULL DEFAULT '0',
  `FPERSONLIABLES` bigint NOT NULL DEFAULT '0',
  `FPLANBEGINTIME` datetime DEFAULT NULL,
  `FPLANENDTIME` datetime DEFAULT NULL,
  `FSTAGE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABNORMALSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fdataisolation` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_PROCESS_NODE_FK` (`FID`,`FNODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_process_node_r3 definition

CREATE TABLE `t_phm_process_node_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_process_updatediff definition

CREATE TABLE `t_phm_process_updatediff` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROCESSHISTORYID` bigint NOT NULL DEFAULT '0',
  `FDATATABLEID` bigint NOT NULL DEFAULT '0',
  `FRESOURCETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FTABLEFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABLEFIELDNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FLATEST` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_PROCESS_UPDATEDIFF` (`FPROCESSHISTORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_processliableorg definition

CREATE TABLE `t_phm_processliableorg` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_PROCESSLIABLEORG` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_processpersonliable definition

CREATE TABLE `t_phm_processpersonliable` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_PROCESSPERSONLIABLE` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_processsuperior definition

CREATE TABLE `t_phm_processsuperior` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_PROCESSSUPERIOR` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_processwaringuser definition

CREATE TABLE `t_phm_processwaringuser` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_PROCESSWARINGUSER` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_professionfield definition

CREATE TABLE `t_phm_professionfield` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPFIELD` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDEXPLAIN` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_PROFESSI_FNUMBER` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_PROFESSIONFIELD_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_PROFESSIONFIELD_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_professionfield_bit definition

CREATE TABLE `t_phm_professionfield_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_professionfield_l definition

CREATE TABLE `t_phm_professionfield_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_PROFESSI_L_FID` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_professionfield_m definition

CREATE TABLE `t_phm_professionfield_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_professionfield_r3 definition

CREATE TABLE `t_phm_professionfield_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_professionfield_u definition

CREATE TABLE `t_phm_professionfield_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_professionfield_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_professionfieldexc definition

CREATE TABLE `t_phm_professionfieldexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_professionfieldExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_professionfieldusereg definition

CREATE TABLE `t_phm_professionfieldusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_PROFESSIONFIELDUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_project definition

CREATE TABLE `t_phm_project` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRIORITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEAD` bigint NOT NULL DEFAULT '0',
  `FDAYS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FCOMPLETEDATE` datetime DEFAULT NULL,
  `FREMARKS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_PROJECT_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_project_l definition

CREATE TABLE `t_phm_project_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_PROJECT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_project_r3 definition

CREATE TABLE `t_phm_project_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_pseriousoverdueuser definition

CREATE TABLE `t_phm_pseriousoverdueuser` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_PSERIOUSOVERDUEUSER` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_registmodel definition

CREATE TABLE `t_phm_registmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMODELNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_RMODEL_IDSEQ` (`FID`,`FSEQ`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_relationentry definition

CREATE TABLE `t_phm_relationentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDETAILFIELD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLFIELD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_RELATIONENTRY_ID` (`FID`,`FSEQ`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_relevanceorg definition

CREATE TABLE `t_phm_relevanceorg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_RELEVANCEORG` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_relevancerole definition

CREATE TABLE `t_phm_relevancerole` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_RELEVANCEROLE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_relevanceuser definition

CREATE TABLE `t_phm_relevanceuser` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_RELEVANCEUSER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_resourecrole definition

CREATE TABLE `t_phm_resourecrole` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_RESOURECROLE_FK` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_resultparam definition

CREATE TABLE `t_phm_resultparam` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FRESULT_NUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT_SCHEMA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT_TYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT_REMARKS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_RESULTPARAM_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_role definition

CREATE TABLE `t_phm_role` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fusertype` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_ROLE_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_PHM_ROLE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PHM_ROLE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_role_bit definition

CREATE TABLE `t_phm_role_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_role_l definition

CREATE TABLE `t_phm_role_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_ROLE_L_FID` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_role_m definition

CREATE TABLE `t_phm_role_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_role_r3 definition

CREATE TABLE `t_phm_role_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_role_u definition

CREATE TABLE `t_phm_role_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_ROLE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_rolecomentry definition

CREATE TABLE `t_phm_rolecomentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FROLENUMBER` bigint NOT NULL DEFAULT '0',
  `FISUSED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_ROLECOMENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_roleexc definition

CREATE TABLE `t_phm_roleexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_ROLEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_roleresentry definition

CREATE TABLE `t_phm_roleresentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FRESOURCES` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_ROLERESENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_roleusereg definition

CREATE TABLE `t_phm_roleusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_ROLEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_roleuserentry definition

CREATE TABLE `t_phm_roleuserentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FUSER` bigint NOT NULL DEFAULT '0',
  `FDISORG` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_ROLEUSERENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_roleuserentry_r3 definition

CREATE TABLE `t_phm_roleuserentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_runobj definition

CREATE TABLE `t_phm_runobj` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FBIZMODEL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_RUNOBJ_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_runplan definition

CREATE TABLE `t_phm_runplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARKS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDESC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPEATMODE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCYCLENUM` bigint NOT NULL DEFAULT '0',
  `FBYDAYORWEEK` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMON` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTUES` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHUR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFRI` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBYWEEK` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOWEEK` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLAN` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIREDTIME` datetime DEFAULT NULL,
  `FNEXTRUNTIME` datetime DEFAULT NULL,
  `FSTARTRUNTIME` datetime DEFAULT NULL,
  `FENDRUNTIME` datetime DEFAULT NULL,
  `FTOTALCOUNT` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_RUNPLAN_FNUMBER` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_RUNPLAN_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_RUNPLAN_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_runplan_a definition

CREATE TABLE `t_phm_runplan_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FONE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWO` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHREE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOUR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIVE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIX` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEVEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEIGHT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNINE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FELEVEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWELVE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHIRTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOURTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIFTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIXTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEVENTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEIGHTEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNINETEEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYONE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYTWO` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYTHREE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYFOUR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYFIVE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYSIX` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYSEVEN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYEIGHT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYNINE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHIRTY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHIRTYONE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJAN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFEB` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAPR` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJUN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJUL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAUG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOCT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNOV` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDEC` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_RUNPLAN_A_FONE` (`FONE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_runplan_bit definition

CREATE TABLE `t_phm_runplan_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_runplan_l definition

CREATE TABLE `t_phm_runplan_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_RUNPLAN_L_0` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_runplan_m definition

CREATE TABLE `t_phm_runplan_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_runplan_r3 definition

CREATE TABLE `t_phm_runplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_runplan_u definition

CREATE TABLE `t_phm_runplan_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_runplan_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_runplanexc definition

CREATE TABLE `t_phm_runplanexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_runplanExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_runplanusereg definition

CREATE TABLE `t_phm_runplanusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_RUNPLANUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_seat definition

CREATE TABLE `t_phm_seat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMARKETING` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESIGNPROCESS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLAN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCUREMENT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGISTICS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALITY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPMENT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENERGY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAFETY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMANDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_SEAT_FCOMMANDID` (`FCOMMANDID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_seat_config definition

CREATE TABLE `t_phm_seat_config` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVEIDOOSCENEID` bigint NOT NULL DEFAULT '0',
  `FSEATCOMBO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRADIOGROUP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJECTID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FURL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_SEAT_CONFIG_VID` (`FVEIDOOSCENEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_seat_config_r3 definition

CREATE TABLE `t_phm_seat_config_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_seat_r3 definition

CREATE TABLE `t_phm_seat_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_seatentry definition

CREATE TABLE `t_phm_seatentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSEAT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATA` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATA_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FUNIQUEKEY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEATCONFIGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_SEATENTRY_IDSEQ` (`FID`,`FSEQ`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_seriousoverdueuser definition

CREATE TABLE `t_phm_seriousoverdueuser` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_SERIOUSOVERDUEUSER` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_snapentry definition

CREATE TABLE `t_phm_snapentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCALCNODEID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSQL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSQL_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FDATAS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAS_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_SNAPENTRY_IDSEQ` (`FID`,`FSEQ`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_snapshot definition

CREATE TABLE `t_phm_snapshot` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMODELCONTENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELCONTENT_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRESID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELCNT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELCNT_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FFILTERCNT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILTERCNT_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FVERSION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSAVETIME` datetime DEFAULT NULL,
  `FSNAPSHOT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSNAPSHOT_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_SNAPSHOT_UID` (`FUSERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_srclink definition

CREATE TABLE `t_phm_srclink` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FLINK` bigint NOT NULL DEFAULT '0',
  `FSRCTABLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSRCTABLENAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETALEMETAID` bigint NOT NULL DEFAULT '0',
  `FISMAINTABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_SRCLINK_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_stagemilepost definition

CREATE TABLE `t_phm_stagemilepost` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSTAGENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKDESCRIBE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKTARGET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXEVENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSESSASK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELEVANCETARGETID` bigint NOT NULL DEFAULT '0',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FBASELENTH` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FREMAKES` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_STAGEMILEPOST` (`FID`,`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_storeeigenvalue definition

CREATE TABLE `t_phm_storeeigenvalue` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEIGENEDIT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSET` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FISADD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTOREVALUE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOREVALUE_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FBIZMODELID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELEMENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPONENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEIGENINFO` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWIDTH` bigint NOT NULL DEFAULT '0',
  `FHEIGHT` bigint NOT NULL DEFAULT '0',
  `FBACKCOLOR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_STOREEIG_FNUM` (`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_subflow definition

CREATE TABLE `t_phm_subflow` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFLOWDEFINEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PK_PHM_SUBFLOW_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_table_dfentry definition

CREATE TABLE `t_phm_table_dfentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_TABLE_DFENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_table_difference definition

CREATE TABLE `t_phm_table_difference` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTABLENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_TABLE_DIFFERENCE_FK` (`FTABLENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_tablecontent definition

CREATE TABLE `t_phm_tablecontent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FGROUPSTANDARD` bigint NOT NULL DEFAULT '0',
  `FTABLEGROUP` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_TABLECONTENT_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_tablegroup definition

CREATE TABLE `t_phm_tablegroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDARDID` bigint NOT NULL DEFAULT '0',
  `FDESCRIBE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_TABLEGROUP_FNUMBER` (`FNUMBER`) USING BTREE,
  KEY `IDX_T_PHM_TABLEGROUP_CREATEORG` (`FCREATEORGID`) USING BTREE,
  KEY `IDX_T_PHM_TABLEGROUP_MASTER` (`FMASTERID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_tablegroup_bit definition

CREATE TABLE `t_phm_tablegroup_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_tablegroup_l definition

CREATE TABLE `t_phm_tablegroup_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_TABLEGROUP_L_0` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_tablegroup_m definition

CREATE TABLE `t_phm_tablegroup_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_tablegroup_r3 definition

CREATE TABLE `t_phm_tablegroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_tablegroup_u definition

CREATE TABLE `t_phm_tablegroup_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_tablegroup_U_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_tablegroupexc definition

CREATE TABLE `t_phm_tablegroupexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`) USING BTREE,
  KEY `IDX_t_phm_tablegroupExc_UO` (`FUseOrgID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_tablegroupstandard definition

CREATE TABLE `t_phm_tablegroupstandard` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORG` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIBE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_TABLEGRPSTD_FNUMBER` (`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_tablegroupstandard_l definition

CREATE TABLE `t_phm_tablegroupstandard_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `IDX_PHM_TABLEGROUPSTANDARD_L_0` (`FID`,`FLOCALEID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_tablegroupusereg definition

CREATE TABLE `t_phm_tablegroupusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_T_PHM_TABLEGROUPUSEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_tablereleation definition

CREATE TABLE `t_phm_tablereleation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEIGENVALUEENTRYID` bigint NOT NULL DEFAULT '0',
  `FDATATABLEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_EIGENRELETION` (`FEIGENVALUEENTRYID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_task_roles definition

CREATE TABLE `t_phm_task_roles` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_TASK_ROLES_FK` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_tasknotice definition

CREATE TABLE `t_phm_tasknotice` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKPERSON` bigint NOT NULL DEFAULT '0',
  `FPROJECT` bigint NOT NULL DEFAULT '0',
  `FMILEPOSTSTAGE` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMILEPOSTPERSON` bigint NOT NULL DEFAULT '0',
  `FPROCESSNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEPERSON` bigint NOT NULL DEFAULT '0',
  `FEXPLAIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBEGINTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FACTUALTIME` datetime DEFAULT NULL,
  `FSUPERLEADER` bigint NOT NULL DEFAULT '0',
  `FPROJECTMANAGER` bigint NOT NULL DEFAULT '0',
  `FFRONTTASK` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFTERTASK` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKTIPTIME` datetime DEFAULT NULL,
  `FPROCESSHISTORY` bigint NOT NULL DEFAULT '0',
  `FDEALPERSON` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYTASK` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTYPE` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJUDGE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKSTATE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_TASKNOTICE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_tasknotice_l definition

CREATE TABLE `t_phm_tasknotice_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_TASKNOTICE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_tasknotice_r3 definition

CREATE TABLE `t_phm_tasknotice_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_taskwarn_notice definition

CREATE TABLE `t_phm_taskwarn_notice` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_TASKWARN_NOTICE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_taskwarn_super definition

CREATE TABLE `t_phm_taskwarn_super` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_TASKWARN_SUPER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_taskwarn_taskperson definition

CREATE TABLE `t_phm_taskwarn_taskperson` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_TASKWARN_TASKPERSON` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_temp_billtemps definition

CREATE TABLE `t_phm_temp_billtemps` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_TEMP_BILLTEMPS_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_temp_datatables definition

CREATE TABLE `t_phm_temp_datatables` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_TEMP_DATATABLES_ID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_tplcellconf definition

CREATE TABLE `t_phm_tplcellconf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FFIELDCELLPO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCELLCOL` int NOT NULL DEFAULT '0',
  `FDATARESOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATEMPID` bigint NOT NULL DEFAULT '0',
  `FFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcalculateconf` varchar(1100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCELLROW` int NOT NULL DEFAULT '0',
  `FFORMAT` int NOT NULL DEFAULT '2',
  `fformula` varchar(1800) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_TPLCELLCONF` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_trademap definition

CREATE TABLE `t_phm_trademap` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_TRADEMAP_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_unusualprocessperso definition

CREATE TABLE `t_phm_unusualprocessperso` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_UNUSUALPROCESSPERSO` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_userstoryentry definition

CREATE TABLE `t_phm_userstoryentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSTORYNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FITERATIONSTAGE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FITERATIONTARGET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORYSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTGROUP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORYHEAD` bigint NOT NULL DEFAULT '0',
  `FSTORYDAYS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FCOMPLETETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_USERSTORYENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_valueprop definition

CREATE TABLE `t_phm_valueprop` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FVALUENAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSET` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FSTOREVALUE` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOREVALUE_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FISADD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`) USING BTREE,
  KEY `IDX_PHM_VALUEPROP_FID` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_veidooscene definition

CREATE TABLE `t_phm_veidooscene` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCOMMANDID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIGNSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNDATE` datetime DEFAULT NULL,
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FVEIDOO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEAT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `IDX_PHM_VEIDOOSCENE_COMMAND` (`FCOMMANDID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_veidooscene_r3 definition

CREATE TABLE `t_phm_veidooscene_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_phm_versioncategory definition

CREATE TABLE `t_phm_versioncategory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_VERSIONCATEGORY` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versioncategory_l definition

CREATE TABLE `t_phm_versioncategory_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_VERSIONCATEGORY_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versioncategory_r3 definition

CREATE TABLE `t_phm_versioncategory_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versionentry definition

CREATE TABLE `t_phm_versionentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCODESEGMENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCODETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONSTANTVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATEFORMAT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLENGTH` int NOT NULL DEFAULT '0',
  `FINITIALVALUE` int NOT NULL DEFAULT '0',
  `FSTEP` int NOT NULL DEFAULT '0',
  `FISNONBREAK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEPARATOR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPERIODCONSTS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONSTSJSON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODCONSTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PHM_VERSIONENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versionrule definition

CREATE TABLE `t_phm_versionrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALIDATEDTIME` datetime DEFAULT NULL,
  `FPLAN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPEATMODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCYCLENUM` int NOT NULL DEFAULT '0',
  `FBYDAYORWEEK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTUES` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHUR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFRI` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSAT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBYWEEK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOWEEK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FSEPARATOR` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_VERSIONRULE` (`FNUMBER`),
  KEY `IDX_T_PHM_VERSIONRULE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PHM_VERSIONRULE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versionrule_a definition

CREATE TABLE `t_phm_versionrule_a` (
  `FTHIRTYONE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHIRTY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYNINE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYEIGHT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYSEVEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYSIX` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYFIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYFOUR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYTHREE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYTWO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTYONE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWENTY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNINETEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEIGHTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEVENTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIXTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIFTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOURTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHIRTEEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWELVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FELEVEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNINE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEIGHT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEVEN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIX` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOUR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTHREE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTWO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FONE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FJAN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFEB` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAPR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJUN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FJUL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAUG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEP` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDEC` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNOV` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOCT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_VERSIONRULE_A` (`FONE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versionrule_bit definition

CREATE TABLE `t_phm_versionrule_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versionrule_l definition

CREATE TABLE `t_phm_versionrule_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_VERSIONCATEGORY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versionrule_m definition

CREATE TABLE `t_phm_versionrule_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versionrule_r3 definition

CREATE TABLE `t_phm_versionrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versionrule_u definition

CREATE TABLE `t_phm_versionrule_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_VERSIONRULE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versionruleexc definition

CREATE TABLE `t_phm_versionruleexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_VERSIONRULEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_versionruleusereg definition

CREATE TABLE `t_phm_versionruleusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PHM_VERSIONRULEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_waringuser definition

CREATE TABLE `t_phm_waringuser` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_WARINGUSER` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_warn_overdueuser definition

CREATE TABLE `t_phm_warn_overdueuser` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_WARN_OVERDUEUSER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_warn_soverdueuser definition

CREATE TABLE `t_phm_warn_soverdueuser` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_WARN_SOVERDUEUSER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_warn_warninguser definition

CREATE TABLE `t_phm_warn_warninguser` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_WARN_WARNINGUSER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_workbench_prop definition

CREATE TABLE `t_phm_workbench_prop` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRIORITY` int NOT NULL DEFAULT '0',
  `FISSHOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBIZOBJECTID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATEOBJECTID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PHM_WORKBENCH_PROP` (`FISSHOW`,`FPRIORITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_workbench_prop_l definition

CREATE TABLE `t_phm_workbench_prop_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PHM_WORKBENCH_PROP_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_phm_workbench_prop_r3 definition

CREATE TABLE `t_phm_workbench_prop_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.t_purchasegrp definition

CREATE TABLE `t_purchasegrp` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORGID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELETEDSTATUS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_purcontract definition

CREATE TABLE `t_purcontract` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEFUNCTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FUNITSOURCE` bigint NOT NULL DEFAULT '0',
  `FISINTAX` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCHANGERATE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONVERTMODE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALTOTALTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALTOTALTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURGROOPID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELIVERYTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYMENTTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCASHDISCOUNTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTLEMENTTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURPERSONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTEDDATE` datetime DEFAULT NULL,
  `FDELIVERYADDRESS` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURADVANCEDAYS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYMENTCONDITIONID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_purin definition

CREATE TABLE `t_purin` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGEORGUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`,`FNUMBER`) USING BTREE,
  KEY `index_fid` (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_purinentry definition

CREATE TABLE `t_purinentry` (
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTYID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTYSEQ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FSTORAGEORGUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEQTY` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBERID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWRITTENOFFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWRITTENOFFAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNWRITEOFFQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNWRITEOFFAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIVEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPURORDERNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORDERENTRYSEQ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FORDERPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDREWQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPURCHASEORGUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEGROUPID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEBILLENTRYID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`,`FSEQ`,`FMATERIALID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_purorder definition

CREATE TABLE `t_purorder` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FPURCHASEGROUPID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBIZDATE` datetime DEFAULT NULL,
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FPURCHASEORGUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEPERSONID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREPAYMENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREPAID` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREPAYMENTDATE` datetime DEFAULT NULL,
  `FINVOICEDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAIDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`,`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_purorder_test definition

CREATE TABLE `t_purorder_test` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FPURCHASEGROUPID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBIZDATE` datetime DEFAULT NULL,
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FPURCHASEORGUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEPERSONID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREPAYMENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREPAID` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREPAYMENTDATE` datetime DEFAULT NULL,
  `FINVOICEDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAIDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`,`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_purorderentry definition

CREATE TABLE `t_purorderentry` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTPROPERTYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` bigint NOT NULL DEFAULT '0',
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FASSOCIATEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEBILLTYPEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBASEUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERMATERIALNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSETNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEMANDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTORAGEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPANYORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSISTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDELIVERYDATE` datetime DEFAULT NULL,
  `FBASEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSALEORDERNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCONTRACTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FPURCHASEORGUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURREQUESTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURREQUESTENTRYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRATIONQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNITSTANDARDCOS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICINGPOLICYENTRYIDS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_reccontract definition

CREATE TABLE `t_reccontract` (
  `FID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FLASTUPDATETIME` datetime DEFAULT NULL,
  `FCONTROLUNITID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEFUNCTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIVOUCHERED` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYKPBL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_reworkbillc2_crw definition

CREATE TABLE `t_reworkbillc2_crw` (
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNUMBER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_reworkbillc2_cto definition

CREATE TABLE `t_reworkbillc2_cto` (
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_reworkbillc2cal definition

CREATE TABLE `t_reworkbillc2cal` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRW` bigint NOT NULL DEFAULT '0',
  `FCOUNTTOTAL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_reworkbillc3 definition

CREATE TABLE `t_reworkbillc3` (
  `FCOUNTRW` bigint NOT NULL DEFAULT '0',
  `FCOUNTTOTAL` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRWRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FTRACKNUMBER`,`FSTORAGENUMBER`,`FPROJECTNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_reworkbillc3_crw definition

CREATE TABLE `t_reworkbillc3_crw` (
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FTRACKNUMBER`,`FPROJECTNUMBER`,`FSTORAGENUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_reworkbillc3_cto definition

CREATE TABLE `t_reworkbillc3_cto` (
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FTRACKNUMBER`,`FPROJECT`,`FSTORAGENUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_reworkbillc3cal definition

CREATE TABLE `t_reworkbillc3cal` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRW` bigint NOT NULL DEFAULT '0',
  `FCOUNTTOTAL` bigint NOT NULL DEFAULT '0',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPROJECTNUMBER`,`FTRACKNUMBER`,`FSTORAGENUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_sm_dhcontract_test definition

CREATE TABLE `t_sm_dhcontract_test` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROLUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHASEFFECTED` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEFUNCTION` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIVOUCHERED` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FLASTUPDATEUSERID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTUPDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_sm_pricebillentry definition

CREATE TABLE `t_sm_pricebillentry` (
  `FID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPURPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPLANQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPPLIER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`,`FSEQ`,`FMATERIALID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_sm_pricingpolicybill_test definition

CREATE TABLE `t_sm_pricingpolicybill_test` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURGROUPID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORGID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRICEINGWAY` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTRAINAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEBILLID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCHANGERATE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`,`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_sm_pricingpolicybill_test_copy1 definition

CREATE TABLE `t_sm_pricingpolicybill_test_copy1` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURGROUPID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORGID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRICEINGWAY` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTRAINAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEBILLID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`,`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_sm_pricingpolicybill_test_copy2 definition

CREATE TABLE `t_sm_pricingpolicybill_test_copy2` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURGROUPID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORGID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRICEINGWAY` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTRAINAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEBILLID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`,`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_sm_purentrytest definition

CREATE TABLE `t_sm_purentrytest` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASESTATUS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCHANGERATE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEORGUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQUIREMENTDATE` datetime DEFAULT NULL,
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEPERSONID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEGROUPID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNOID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCONTRACTID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FENDTRACKNOID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`,`FSEQ`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_sm_purquest definition

CREATE TABLE `t_sm_purquest` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FSOURCEBILLID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASESTATUS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBIZTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIOD` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPURCHASETYPE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURREQUESTBILLID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURTYPEENUM` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`,`FNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_sm_purreqentrytest definition

CREATE TABLE `t_sm_purreqentrytest` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASESTATUS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCHANGERATE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEORGUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQUIREMENTDATE` datetime DEFAULT NULL,
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEPERSONID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEGROUPID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNOID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCONTRACTID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FENDTRACKNOID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_sm_purrequest definition

CREATE TABLE `t_sm_purrequest` (
  `FCREATORID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASTYPE` bigint NOT NULL DEFAULT '0',
  `FDEMANDTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_sm_purrequest_test definition

CREATE TABLE `t_sm_purrequest_test` (
  `FCREATORID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FAUDITTIME` datetime DEFAULT NULL,
  `FBASESTATUS` bigint NOT NULL DEFAULT '0',
  `FBIZTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASTYPE` bigint NOT NULL DEFAULT '0',
  `FDEMANDTYPEID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINORGUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_sm_purrequestentry_test definition

CREATE TABLE `t_sm_purrequestentry_test` (
  `FID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLENTRYSEQ` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASESTATUS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXCHANGERATE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEORGUNITID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQUIREMENTDATE` datetime DEFAULT NULL,
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOCALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEPERSONID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASEGROUPID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNOID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCONTRACTID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FENDTRACKNOID` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_test definition

CREATE TABLE `t_test` (
  `FID` bigint NOT NULL,
  `fnumber` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fstatus` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint NOT NULL DEFAULT '0',
  `fmodifierid` bigint NOT NULL DEFAULT '0',
  `fenable` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatetime` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fmasterid` bigint NOT NULL DEFAULT '0',
  `fk_crrc_basedatafield` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_test1 definition

CREATE TABLE `t_test1` (
  `FID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISONSCHEDULEKITTING` decimal(10,0) DEFAULT NULL,
  `FMATERIALNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMKRESULT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_test_l definition

CREATE TABLE `t_test_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FID` bigint NOT NULL,
  `FLocaleID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`) USING BTREE,
  KEY `idx_test_L_0` (`FID`,`FLocaleID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_test_r3 definition

CREATE TABLE `t_test_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_tt definition

CREATE TABLE `t_tt` (
  `fid` bigint DEFAULT '0',
  `fname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_aogchild_countde definition

CREATE TABLE `t_view_aogchild_countde` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPECOUNTDE` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_aogchild_countnu definition

CREATE TABLE `t_view_aogchild_countnu` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPECOUNTNU` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_aogchilda1 definition

CREATE TABLE `t_view_aogchilda1` (
  `FACTQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIAL` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECT` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQDATE` datetime DEFAULT NULL,
  `FSUPPIER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_aogchilda2 definition

CREATE TABLE `t_view_aogchilda2` (
  `FCOUNTNU` bigint NOT NULL DEFAULT '0',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTDE` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMOTDRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_aogchilda2cal definition

CREATE TABLE `t_view_aogchilda2cal` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPECOUNTNU` bigint NOT NULL DEFAULT '0',
  `FTYPECOUNTDE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_aogchilda3 definition

CREATE TABLE `t_view_aogchilda3` (
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMCOUNTNU` bigint NOT NULL DEFAULT '0',
  `FMCOUNTDE` bigint NOT NULL DEFAULT '0',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMOTDRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FTRACKNUMBER`,`FMATERIALNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_aogchilda3cal definition

CREATE TABLE `t_view_aogchilda3cal` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPEMCOUNTNU` bigint NOT NULL DEFAULT '0',
  `FTYPEMCOUNTDE` bigint NOT NULL DEFAULT '0',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FTRACKNUMBER`,`FMATERIALNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_mactrureorg definition

CREATE TABLE `t_view_mactrureorg` (
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FTRACKNUMBER`,`FPROJECT`,`FSTORAGENUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_mactruretrack definition

CREATE TABLE `t_view_mactruretrack` (
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_manuc1 definition

CREATE TABLE `t_view_manuc1` (
  `FID` varchar(767) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_manufacture definition

CREATE TABLE `t_view_manufacture` (
  `FACTUREENDDATE` datetime DEFAULT NULL,
  `FALLCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FID` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FINDATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FOVERTIME` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FUSER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FSTORAGENAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `idx_projecct_track` (`FPROJECT`,`FTRACKNUMBER`) USING BTREE,
  KEY `idx_project_track_org` (`FPROJECT`,`FTRACKNUMBER`,`FSTORAGENAME`,`FINDATE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_manufacturec1 definition

CREATE TABLE `t_view_manufacturec1` (
  `FID` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_materialmkb1 definition

CREATE TABLE `t_view_materialmkb1` (
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISONSCHEDULEKITTING` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMKRESULT` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` varchar(700) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_materialmkb2 definition

CREATE TABLE `t_view_materialmkb2` (
  `FMATERIALNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTTOTAL` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTYE` bigint NOT NULL DEFAULT '0',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCSRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FMATERIALNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_materialmkb3 definition

CREATE TABLE `t_view_materialmkb3` (
  `FCOUNTTOTAL` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTYE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_materialmkb4 definition

CREATE TABLE `t_view_materialmkb4` (
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTYE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FCOUNTTOTAL` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FCSRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_ncrreport definition

CREATE TABLE `t_view_ncrreport` (
  `FPURORDERID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURORDERENTRYID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_ncrreportf1 definition

CREATE TABLE `t_view_ncrreportf1` (
  `FAUDITRESULT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASESTATUS` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBIZDATE` datetime DEFAULT NULL,
  `FID` varchar(767) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFIRMDATE` datetime DEFAULT NULL,
  `FCREATOR` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_ncrreportf1_1 definition

CREATE TABLE `t_view_ncrreportf1_1` (
  `FNCRNUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPROJECTNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_ncrreportf1_2 definition

CREATE TABLE `t_view_ncrreportf1_2` (
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNCRNUMBER` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FSTORAGENUMBER`,`FPROJECTNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_ncrreportf2 definition

CREATE TABLE `t_view_ncrreportf2` (
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTTOTAL` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FCOUNTCLNCR` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOTRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FSTORAGENUMBER`,`FPROJECTNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_ncrreportf3 definition

CREATE TABLE `t_view_ncrreportf3` (
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTGLNCR` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FCOUNTTOTAL` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FSTORAGENUMBER`,`FMATERIALNUMBER`,`FPROJECTNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_produ_info_test definition

CREATE TABLE `t_view_produ_info_test` (
  `FWORKCCODE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKCNAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_purreceivale1 definition

CREATE TABLE `t_view_purreceivale1` (
  `FID` varchar(767) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIAL` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUALIFIEDQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPPLIER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNQUALIFIEDQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `index_project_track` (`FPROJECT`,`FTRACKNUMBER`) USING BTREE,
  KEY `index_prject_sup_track` (`FPROJECT`,`FSUPPLIERNAME`,`FTRACKNUMBER`,`FUNQUALIFIEDQTY`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_purreceivale2 definition

CREATE TABLE `t_view_purreceivale2` (
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFIEDQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQIRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_purreceivale3 definition

CREATE TABLE `t_view_purreceivale3` (
  `FSUPPLIERNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FQUALIFIEDQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPPLIERNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQIRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FSUPPLIERNUMBER`,`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_quotadetial definition

CREATE TABLE `t_view_quotadetial` (
  `FALLCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FBOMQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FID` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FISEQUALCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMATERIALNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMRQQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FSTORAGEORGUNITNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FSTORAGEORGUNITNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FTRACKNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_quotaorg definition

CREATE TABLE `t_view_quotaorg` (
  `FORGNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACK` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FISEQUALCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FORGUNIT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FPROJECT`,`FTRACK`,`FORGUNIT`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_quotatrack definition

CREATE TABLE `t_view_quotatrack` (
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FISEQUALCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FCRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_reworkbillc1 definition

CREATE TABLE `t_view_reworkbillc1` (
  `FBILLID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` varchar(767) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATOR` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE,
  KEY `index_project` (`FPROJECT`,`FTRACKNUMBER`) USING BTREE,
  KEY `index_pro_track_org` (`FPROJECT`,`FSTORAGENAME`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_reworkbillc2 definition

CREATE TABLE `t_view_reworkbillc2` (
  `FPEOJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRW` bigint NOT NULL DEFAULT '0',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTTOTAL` bigint NOT NULL DEFAULT '0',
  `FRWRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_technicsdetial definition

CREATE TABLE `t_view_technicsdetial` (
  `FACMPTIME` datetime DEFAULT NULL,
  `FALLCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FEARLISTCMPTIME` datetime DEFAULT NULL,
  `FHANDLER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FINDATEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMERGEID` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FORGNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FORGNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FOVERTIME` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FOPERANAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FOPERANO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FMERGEID`) USING BTREE,
  KEY `idx_pt` (`FPROJECT`,`FTRACKNUMBER`) USING BTREE,
  KEY `index_project_t_o` (`FORGNAME`,`FPROJECT`,`FTRACKNUMBER`,`FINDATEQTY`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_technicsorg definition

CREATE TABLE `t_view_technicsorg` (
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDATEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FORGNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FORGNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FTRACKNUMBER`,`FPROJECT`,`FORGNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_view_technicstrack definition

CREATE TABLE `t_view_technicstrack` (
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINDATEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLCOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_z_test0923 definition

CREATE TABLE `t_z_test0923` (
  `FISPASS` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPINION_L2` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNMENTID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FBIZOBJID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNID` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_aogchild1d1 definition

CREATE TABLE `t_zj_aogchild1d1` (
  `FID` varchar(767) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURCHASE` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPIER` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINDATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FINQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_aogchildd2 definition

CREATE TABLE `t_zj_aogchildd2` (
  `FCOUNTTOTAL` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTIT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FOTDRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FPROJECTNUMBER`,`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_aogchildd3 definition

CREATE TABLE `t_zj_aogchildd3` (
  `FCOUNTTOTAL` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FCOUNTIT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOTDRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FPROJECTNUMBER`,`FTRACKNUMBER`,`FMATERIALNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_aogchilddetial definition

CREATE TABLE `t_zj_aogchilddetial` (
  `FID` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FINDATEQTY` decimal(28,10) DEFAULT NULL,
  `FINQTY` decimal(28,10) DEFAULT NULL,
  `FISINDATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPURCHASE` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FQTY` decimal(28,10) DEFAULT NULL,
  `FSUPPIER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_aogchildmaterial definition

CREATE TABLE `t_zj_aogchildmaterial` (
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDATEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FPROJECTNUMBER`,`FMATERIALNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_aogchildproject definition

CREATE TABLE `t_zj_aogchildproject` (
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDATEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FPROJECTNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_aogchildtrack definition

CREATE TABLE `t_zj_aogchildtrack` (
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDATEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FTRACKNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_invagedetial definition

CREATE TABLE `t_zj_invagedetial` (
  `FAGEAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FAGEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(21,8) DEFAULT NULL,
  `FID` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVQTY` decimal(21,8) DEFAULT NULL,
  `FISAGEINV` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FMATERIALNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPROJECTNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_invagematerial definition

CREATE TABLE `t_zj_invagematerial` (
  `FMATERIALNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FMATERIALNUMBER`,`FPROJECTNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_invageproject definition

CREATE TABLE `t_zj_invageproject` (
  `FAGEQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRATE` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FPROJECTNUMBER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_mrqqtyreportg1 definition

CREATE TABLE `t_zj_mrqqtyreportg1` (
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROWNUM` varchar(767) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FROWNUM`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.t_zj_pbomqtyreph1 definition

CREATE TABLE `t_zj_pbomqtyreph1` (
  `FTRACKNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(25,10) NOT NULL DEFAULT '0.0000000000',
  `FUPDATETIME` datetime DEFAULT NULL,
  `FMATERIALNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIALNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGENAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITNAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACKNAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERNAME` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROWNUM` varchar(767) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FROWNUM`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.temp_abmlpbsr86gao_4 definition

CREATE TABLE `temp_abmlpbsr86gao_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abmlpbthl3uv4_4 definition

CREATE TABLE `temp_abmlpbthl3uv4_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abmlpbu426znk_4 definition

CREATE TABLE `temp_abmlpbu426znk_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abmlpbupkbi0w_4 definition

CREATE TABLE `temp_abmlpbupkbi0w_4` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtaoesmfyj28_3 definition

CREATE TABLE `temp_abtaoesmfyj28_3` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtaoetafzdvk_3 definition

CREATE TABLE `temp_abtaoetafzdvk_3` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtaoeu1wv7k0_3 definition

CREATE TABLE `temp_abtaoeu1wv7k0_3` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtaoeujy4sn4_3 definition

CREATE TABLE `temp_abtaoeujy4sn4_3` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtbs8usabqbk_7 definition

CREATE TABLE `temp_abtbs8usabqbk_7` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtbs8vu0sf7k_7 definition

CREATE TABLE `temp_abtbs8vu0sf7k_7` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtbs8wjyqjnk_7 definition

CREATE TABLE `temp_abtbs8wjyqjnk_7` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtbs8xemhla8_7 definition

CREATE TABLE `temp_abtbs8xemhla8_7` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtbsc7pkdce8_a definition

CREATE TABLE `temp_abtbsc7pkdce8_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtbsc8k83zsw_a definition

CREATE TABLE `temp_abtbsc8k83zsw_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtbsc98n4qv4_a definition

CREATE TABLE `temp_abtbsc98n4qv4_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_abtbsca0izgg0_a definition

CREATE TABLE `temp_abtbsca0izgg0_a` (
  `FID` bigint DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbmlpbv53os8w_4 definition

CREATE TABLE `temp_bbmlpbv53os8w_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbmlpbvzcgi68_4 definition

CREATE TABLE `temp_bbmlpbvzcgi68_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbmlpbwolfksg_4 definition

CREATE TABLE `temp_bbmlpbwolfksg_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbmlpbx4trsw0_4 definition

CREATE TABLE `temp_bbmlpbx4trsw0_4` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtaoevmsjz0g_3 definition

CREATE TABLE `temp_bbtaoevmsjz0g_3` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtaoewrawo3k_3 definition

CREATE TABLE `temp_bbtaoewrawo3k_3` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtaoexirshs0_3 definition

CREATE TABLE `temp_bbtaoexirshs0_3` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtaoey6mtjwg_3 definition

CREATE TABLE `temp_bbtaoey6mtjwg_3` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtbs8y3ghc74_7 definition

CREATE TABLE `temp_bbtbs8y3ghc74_7` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtbs8yvccg00_7 definition

CREATE TABLE `temp_bbtbs8yvccg00_7` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtbs8zn87q4g_7 definition

CREATE TABLE `temp_bbtbs8zn87q4g_7` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtbs90gx06ww_7 definition

CREATE TABLE `temp_bbtbs90gx06ww_7` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtbscasyubk0_a definition

CREATE TABLE `temp_bbtbscasyubk0_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtbscbjvqgao_a definition

CREATE TABLE `temp_bbtbscbjvqgao_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtbsccbmmby8_a definition

CREATE TABLE `temp_bbtbsccbmmby8_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_bbtbsccvvs7i8_a definition

CREATE TABLE `temp_bbtbsccvvs7i8_a` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbmlpbxsyshz4_4 definition

CREATE TABLE `temp_cbmlpbxsyshz4_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbmlpbykuno5c_4 definition

CREATE TABLE `temp_cbmlpbykuno5c_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbmlpbz8uokjk_4 definition

CREATE TABLE `temp_cbmlpbz8uokjk_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbmlpbzo920hs_4 definition

CREATE TABLE `temp_cbmlpbzo920hs_4` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtaoez2jivpc_3 definition

CREATE TABLE `temp_cbtaoez2jivpc_3` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtaoezu0ensw_3 definition

CREATE TABLE `temp_cbtaoezu0ensw_3` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtaof094sjy8_3 definition

CREATE TABLE `temp_cbtaof094sjy8_3` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtaof0zmpr7k_3 definition

CREATE TABLE `temp_cbtaof0zmpr7k_3` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtbs91l0dlvk_7 definition

CREATE TABLE `temp_cbtbs91l0dlvk_7` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtbs92c79q80_7 definition

CREATE TABLE `temp_cbtbs92c79q80_7` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtbs934n4740_7 definition

CREATE TABLE `temp_cbtbs934n4740_7` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtbs93l0g5j4_7 definition

CREATE TABLE `temp_cbtbs93l0g5j4_7` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtbscdv9cx6o_a definition

CREATE TABLE `temp_cbtbscdv9cx6o_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtbscemq88ow_a definition

CREATE TABLE `temp_cbtbscemq88ow_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtbscfeh3myo_a definition

CREATE TABLE `temp_cbtbscfeh3myo_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.temp_cbtbscfzz8ni8_a definition

CREATE TABLE `temp_cbtbscfzz8ni8_a` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `IX_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.testname definition

CREATE TABLE `testname` (
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.testname2 definition

CREATE TABLE `testname2` (
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.testname3 definition

CREATE TABLE `testname3` (
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.testname4 definition

CREATE TABLE `testname4` (
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_barcodefile definition

CREATE TABLE `tk_crrc_barcodefile` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_cfbarcode` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_cfrulenum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_cfversion` decimal(23,2) DEFAULT NULL,
  `fk_crrc_fcontrolunitid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_cfisimport` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_cfissyn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_customerview definition

CREATE TABLE `tk_crrc_customerview` (
  `FId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_customername` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_description_l2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_updateusernum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_txregisterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_cityname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_citynum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_countryname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_countrynum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_baseunitnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_fax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_postalcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_inventoryview definition

CREATE TABLE `tk_crrc_inventoryview` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_materialnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_warehousenum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_locationnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_unitname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_baseqty` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_lot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_curstoreqty` decimal(23,10) DEFAULT NULL,
  `fk_crrc_lockqty` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_locationdefinede definition

CREATE TABLE `tk_crrc_locationdefinede` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_textfield` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_storagename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_storagenum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_updateusernum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_manufactureorderv definition

CREATE TABLE `tk_crrc_manufactureorderv` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_materialnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_routingnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_planbegindate` datetime DEFAULT NULL,
  `fk_crrc_planenddate` datetime DEFAULT NULL,
  `fk_crrc_acturebegindate` datetime DEFAULT NULL,
  `fk_crrc_actureenddate` datetime DEFAULT NULL,
  `fk_crrc_barcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_storageorgunit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_projectnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_trancknum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_materialreqlview definition

CREATE TABLE `tk_crrc_materialreqlview` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_materialnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_unitname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_supplystorenum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_storagenum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_barcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_projectnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_tracknum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_operationnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_workcenternum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_qty` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_operatione definition

CREATE TABLE `tk_crrc_operatione` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_operationname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_operationnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_workcentername` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_workcenternum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_locadefinedname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_storagename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_storagenum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_locadefinednum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_updateusernum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_pbomview definition

CREATE TABLE `tk_crrc_pbomview` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_operationnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_materialnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_unitname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_projectnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_btracknum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_etracknum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_qty` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_production definition

CREATE TABLE `tk_crrc_production` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_compdate` decimal(23,10) DEFAULT NULL,
  `fk_crrc_qualiqty` decimal(23,10) DEFAULT NULL,
  `fk_crrc_decimalfield` decimal(23,10) DEFAULT NULL,
  `fk_crrc_patchqty` decimal(23,10) DEFAULT NULL,
  `fk_crrc_textfield` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_textfield1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_produ` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_productlineview definition

CREATE TABLE `tk_crrc_productlineview` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_storagename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_storagenum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_textfield` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_prolinename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_prolinestate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_updateusernum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_purinwarehsbillvi definition

CREATE TABLE `tk_crrc_purinwarehsbillvi` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_materialnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_unitname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_suppliernum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_purordernum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_storagenum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_projectnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_qty` decimal(23,10) DEFAULT NULL,
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_supplierview definition

CREATE TABLE `tk_crrc_supplierview` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_suppliername` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_mltkdtextarea` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_countryname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_fax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_postalcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_customernum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_busilicence` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_taxregisterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.`tk_crrc_view-produ-info` definition

CREATE TABLE `tk_crrc_view-produ-info` (
  `PRO_CODE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目编码',
  `CAR_CODE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '跟踪号',
  `WORK_CENTER_CODE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产线编码',
  `WORK_CENTER_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产线名称',
  `ORDER_NUM` decimal(20,0) DEFAULT NULL COMMENT '订单数',
  `OK_NUM` decimal(20,0) DEFAULT NULL COMMENT '完工数',
  `TRACK_NUM` decimal(20,0) DEFAULT NULL COMMENT '任务数',
  `PERCENT` double(20,4) DEFAULT NULL COMMENT '准时完工率',
  `fid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '表id主键',
  PRIMARY KEY (`fid`) USING BTREE,
  KEY `index_view_info` (`PRO_CODE`,`CAR_CODE`,`WORK_CENTER_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tk_crrc_workcenterview definition

CREATE TABLE `tk_crrc_workcenterview` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_storagename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_storagenum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_workcentname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_workcentstate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_updateusernum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.tmp_agsbeo8ruaghs definition

CREATE TABLE `tmp_agsbeo8ruaghs` (
  `FID` bigint DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_AGSBEO8RUAGHS_FID` (`FID`),
  KEY `IDX_TMP_AGSBEO8RUAGHS_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_agsbeob2xwum8 definition

CREATE TABLE `tmp_agsbeob2xwum8` (
  `FID` bigint DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_AGSBEOB2XWUM8_FID` (`FID`),
  KEY `IDX_TMP_AGSBEOB2XWUM8_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_agsbeod0v2j28 definition

CREATE TABLE `tmp_agsbeod0v2j28` (
  `FID` bigint DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_AGSBEOD0V2J28_FID` (`FID`),
  KEY `IDX_TMP_AGSBEOD0V2J28_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_agsbeofffjtog definition

CREATE TABLE `tmp_agsbeofffjtog` (
  `FID` bigint DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_AGSBEOFFFJTOG_FID` (`FID`),
  KEY `IDX_TMP_AGSBEOFFFJTOG_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_agsbeohdhpbls definition

CREATE TABLE `tmp_agsbeohdhpbls` (
  `FID` bigint DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_AGSBEOHDHPBLS_FID` (`FID`),
  KEY `IDX_TMP_AGSBEOHDHPBLS_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_agsbwwkw0elfk definition

CREATE TABLE `tmp_agsbwwkw0elfk` (
  `FID` bigint DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_AGSBWWKW0ELFK_FID` (`FID`),
  KEY `IDX_TMP_AGSBWWKW0ELFK_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_agsbwwo08ucqo definition

CREATE TABLE `tmp_agsbwwo08ucqo` (
  `FID` bigint DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_AGSBWWO08UCQO_FID` (`FID`),
  KEY `IDX_TMP_AGSBWWO08UCQO_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_agsbwwqbcgqv4 definition

CREATE TABLE `tmp_agsbwwqbcgqv4` (
  `FID` bigint DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_AGSBWWQBCGQV4_FID` (`FID`),
  KEY `IDX_TMP_AGSBWWQBCGQV4_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_agsbwwsdzfi0w definition

CREATE TABLE `tmp_agsbwwsdzfi0w` (
  `FID` bigint DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_AGSBWWSDZFI0W_FID` (`FID`),
  KEY `IDX_TMP_AGSBWWSDZFI0W_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_agsbwwu4ovqio definition

CREATE TABLE `tmp_agsbwwu4ovqio` (
  `FID` bigint DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_AGSBWWU4OVQIO_FID` (`FID`),
  KEY `IDX_TMP_AGSBWWU4OVQIO_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_bgsbeob4vu0ao definition

CREATE TABLE `tmp_bgsbeob4vu0ao` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_BGSBEOB4VU0AO_FID` (`FID`),
  KEY `IDX_TMP_BGSBEOB4VU0AO_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_bgsbeod013q4g definition

CREATE TABLE `tmp_bgsbeod013q4g` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_BGSBEOD013Q4G_FID` (`FID`),
  KEY `IDX_TMP_BGSBEOD013Q4G_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_bgsbeofb9pxq8 definition

CREATE TABLE `tmp_bgsbeofb9pxq8` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_BGSBEOFB9PXQ8_FID` (`FID`),
  KEY `IDX_TMP_BGSBEOFB9PXQ8_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_bgsbeohljdiww definition

CREATE TABLE `tmp_bgsbeohljdiww` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_BGSBEOHLJDIWW_FID` (`FID`),
  KEY `IDX_TMP_BGSBEOHLJDIWW_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_bgsbeojri7fgg definition

CREATE TABLE `tmp_bgsbeojri7fgg` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_BGSBEOJRI7FGG_FID` (`FID`),
  KEY `IDX_TMP_BGSBEOJRI7FGG_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_bgsbwwnl9g9a8 definition

CREATE TABLE `tmp_bgsbwwnl9g9a8` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_BGSBWWNL9G9A8_FID` (`FID`),
  KEY `IDX_TMP_BGSBWWNL9G9A8_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_bgsbwwpz4yl8g definition

CREATE TABLE `tmp_bgsbwwpz4yl8g` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_BGSBWWPZ4YL8G_FID` (`FID`),
  KEY `IDX_TMP_BGSBWWPZ4YL8G_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_bgsbwws0syt4w definition

CREATE TABLE `tmp_bgsbwws0syt4w` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_BGSBWWS0SYT4W_FID` (`FID`),
  KEY `IDX_TMP_BGSBWWS0SYT4W_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_bgsbwwts7e134 definition

CREATE TABLE `tmp_bgsbwwts7e134` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_BGSBWWTS7E134_FID` (`FID`),
  KEY `IDX_TMP_BGSBWWTS7E134_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_bgsbwwvt1fg1s definition

CREATE TABLE `tmp_bgsbwwvt1fg1s` (
  `FID` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_BGSBWWVT1FG1S_FID` (`FID`),
  KEY `IDX_TMP_BGSBWWVT1FG1S_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_cgsbeojj1ju2o definition

CREATE TABLE `tmp_cgsbeojj1ju2o` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_CGSBEOJJ1JU2O_FID` (`FID`),
  KEY `IDX_TMP_CGSBEOJJ1JU2O_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.tmp_cgsbwww5dxcsg definition

CREATE TABLE `tmp_cgsbwww5dxcsg` (
  `FID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FVERSION` int NOT NULL,
  KEY `IDX_TMP_CGSBWWW5DXCSG_FID` (`FID`),
  KEY `IDX_TMP_CGSBWWW5DXCSG_FVERSION` (`FVERSION`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_phm.usereg definition

CREATE TABLE `usereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  PRIMARY KEY (`FUseOrgID`,`FDataID`) USING BTREE,
  KEY `IDX_USEREG_D` (`FDataID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- crrc_phm.workcenterview definition

CREATE TABLE `workcenterview` (
  `FId` bigint NOT NULL,
  `fbillno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fbillstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fcreatorid` bigint DEFAULT NULL,
  `fmodifierid` bigint DEFAULT NULL,
  `fauditorid` bigint DEFAULT NULL,
  `fauditdate` datetime DEFAULT NULL,
  `fmodifytime` datetime DEFAULT NULL,
  `fcreatetime` datetime DEFAULT NULL,
  `fk_crrc_storagename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_storagenum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_workcentname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_workcentnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_workcentstate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `fk_crrc_updateusernum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
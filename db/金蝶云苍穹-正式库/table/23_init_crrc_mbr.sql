USE crrc_mbr;

-- crrc_mbr.t_base_accountinfo definition

CREATE TABLE `t_base_accountinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_BASE_ACCOUNTINFO` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_accountinfo_l definition

CREATE TABLE `t_base_accountinfo_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BASE_ACCOUNTINFO_L` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_accountinfo_r3 definition

CREATE TABLE `t_base_accountinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_actioninfo definition

CREATE TABLE `t_base_actioninfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FOPTION` int NOT NULL DEFAULT '1',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_BASE_ACTIONINFO` (`FVIPID`,`FCARDID`,`FACCOUNTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_actioninfo_l definition

CREATE TABLE `t_base_actioninfo_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BASE_ACTIONINFO_L` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_actioninfo_r3 definition

CREATE TABLE `t_base_actioninfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_cardinfo definition

CREATE TABLE `t_base_cardinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCARDNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_BASE_CARDINFO` (`FCARDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_cardinfo_l definition

CREATE TABLE `t_base_cardinfo_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BASE_CARDINFO_L` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_cardinfo_r3 definition

CREATE TABLE `t_base_cardinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_shopinfo definition

CREATE TABLE `t_base_shopinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSIFORMATFID` bigint NOT NULL DEFAULT '0',
  `FBUSIBRANDFID` bigint NOT NULL DEFAULT '0',
  `FBUSIAREAFID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHOPTYPEFID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSITYPEID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGITUDE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLATITUDE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYAREAFID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCITYFID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONENO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHOPGRPFID` bigint NOT NULL DEFAULT '0',
  `FSHOPPICTURE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHOPLOGO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHARGEID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZUNITID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_BASE_SHOPINFO_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_shopinfo_l definition

CREATE TABLE `t_base_shopinfo_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BASE_SHOPINFO_L_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_shopinfo_r3 definition

CREATE TABLE `t_base_shopinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_shopinfogroup definition

CREATE TABLE `t_base_shopinfogroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_BASE_SHOPINFOGP_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_shopinfogroup_l definition

CREATE TABLE `t_base_shopinfogroup_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BASE_SHOPINFOGP_L_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_shopinfogroup_r3 definition

CREATE TABLE `t_base_shopinfogroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_valueinfo definition

CREATE TABLE `t_base_valueinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_BASE_VALUEINFO` (`FVIPID`,`FCARDID`,`FACCOUNTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_valueinfo_l definition

CREATE TABLE `t_base_valueinfo_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BASE_VALUEINFO_L` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_valueinfo_r3 definition

CREATE TABLE `t_base_valueinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_vipinfo definition

CREATE TABLE `t_base_vipinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FVIPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_BASE_VIPINFO` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_vipinfo_l definition

CREATE TABLE `t_base_vipinfo_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_BASE_VIPINFO_L` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_base_vipinfo_r3 definition

CREATE TABLE `t_base_vipinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponaction definition

CREATE TABLE `t_coupon_couponaction` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCOUPONID` bigint NOT NULL DEFAULT '0',
  `FCOUPONNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATE` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_COUPONACTION_VIPID` (`FVIPID`,`FCOUPONID`),
  KEY `IDX_COUPONACTION_COUPONNO` (`FCOUPONNO`),
  KEY `IDX_COUPONACTION_FDATE` (`FDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponaction_h definition

CREATE TABLE `t_coupon_couponaction_h` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCOUPONTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCOUPONMEDIA` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFACEVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUPONSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOUPONRULEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_COUPONACTION_H` (`FCOUPONTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponaction_r3 definition

CREATE TABLE `t_coupon_couponaction_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponaction_u definition

CREATE TABLE `t_coupon_couponaction_u` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FOPERTYPE` bigint NOT NULL DEFAULT '0',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_COUPON_COUPONACTION_U` (`FOPERTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponinfo definition

CREATE TABLE `t_coupon_couponinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCOUPONNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCOUPONMEDIA` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOUPONTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFACEVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUPONSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOUPONRULEID` bigint NOT NULL DEFAULT '0',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_COUPONINFO_VIPID` (`FVIPID`),
  KEY `IDX_COUPONINFO_COUPONNO` (`FCOUPONNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponinfo_l definition

CREATE TABLE `t_coupon_couponinfo_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUPONNAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_COUPON_COUPONINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponinfo_r3 definition

CREATE TABLE `t_coupon_couponinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponinfo_u definition

CREATE TABLE `t_coupon_couponinfo_u` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMAKEORGID` bigint NOT NULL DEFAULT '0',
  `FMAKETIME` datetime DEFAULT NULL,
  `FSENDORGID` bigint NOT NULL DEFAULT '0',
  `FSENDTIME` datetime DEFAULT NULL,
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FUSETIME` datetime DEFAULT NULL,
  `FRECORGID` bigint NOT NULL DEFAULT '0',
  `FRECTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_COUPON_COUPONINFO_U` (`FUSETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponrule definition

CREATE TABLE `t_coupon_couponrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUPONMEDIA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCOUPONTYPE` bigint NOT NULL DEFAULT '0',
  `FCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FFACEVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FCOUPONQTY` bigint NOT NULL DEFAULT '0',
  `FMAKEDCOUPONQTY` bigint NOT NULL DEFAULT '0',
  `FCOUPONNORULE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUPONSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_COUPON_COUPONRULE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponrule_l definition

CREATE TABLE `t_coupon_couponrule_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_COUPON_COUPONRULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponrule_r3 definition

CREATE TABLE `t_coupon_couponrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_couponrule_u definition

CREATE TABLE `t_coupon_couponrule_u` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_COUPON_COUPONRULE_U` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_issuecouponbill definition

CREATE TABLE `t_coupon_issuecouponbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_COUPON_ISSUECOUPONBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_issuecouponbill_l definition

CREATE TABLE `t_coupon_issuecouponbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_COUPON_ISSUECOUPONBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_issuecouponentry definition

CREATE TABLE `t_coupon_issuecouponentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCOUPONID` bigint NOT NULL DEFAULT '0',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_COUPON_ISSUECOUPONENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_reccouponbill definition

CREATE TABLE `t_coupon_reccouponbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_COUPON_RECCOUPONBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_reccouponbill_l definition

CREATE TABLE `t_coupon_reccouponbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_COUPON_RECCOUPONBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_reccouponentry definition

CREATE TABLE `t_coupon_reccouponentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCOUPONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_COUPON_RECCOUPONENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_usecouponbill definition

CREATE TABLE `t_coupon_usecouponbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FOPTION` bigint NOT NULL DEFAULT '1',
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_COUPON_USECOUPONBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_usecouponbill_l definition

CREATE TABLE `t_coupon_usecouponbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_COUPON_USECOUPONBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_coupon_usecouponentry definition

CREATE TABLE `t_coupon_usecouponentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCOUPONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_COUPON_USECOUPONENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points definition

CREATE TABLE `t_scheme_points` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSCHEMETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSCHEMESTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPRIORITY` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FPICTUREFILE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOUBLEPOINTS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_SCHEME_POINTS` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points_c definition

CREATE TABLE `t_scheme_points_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVIPSCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPAPPLY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTIMESCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FGOODSSCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSETTLEMENTSCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSHOPSCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCHANNELSCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_SCHEME_POINTS_C` (`FVIPSCOPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points_channel definition

CREATE TABLE `t_scheme_points_channel` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SCHEME_POINTS_CHANNEL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points_item definition

CREATE TABLE `t_scheme_points_item` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FITEMTYPE` bigint NOT NULL DEFAULT '0',
  `FITEMID` bigint NOT NULL DEFAULT '0',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SCHEME_POINTS_ITEM` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points_l definition

CREATE TABLE `t_scheme_points_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SCHEME_POINTS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points_rule definition

CREATE TABLE `t_scheme_points_rule` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUEEND` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPOINTS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SCHEME_POINTS_RULE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points_settle definition

CREATE TABLE `t_scheme_points_settle` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSETTLEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SCHEME_POINTS_SETTLE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points_shop definition

CREATE TABLE `t_scheme_points_shop` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FBIZUNITID` bigint NOT NULL DEFAULT '0',
  `FSHOPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SCHEME_POINTS_SHOP` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points_times definition

CREATE TABLE `t_scheme_points_times` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDIMEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SCHEME_POINTS_TIMES` (`FDIMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points_times_t definition

CREATE TABLE `t_scheme_points_times_t` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FVALUEID` bigint NOT NULL DEFAULT '0',
  `FBIRTHTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBIRTHAFTER` int NOT NULL DEFAULT '0',
  `FBIRTHBEFORE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_SCHEME_POINTS_TIMES_T` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points_vip definition

CREATE TABLE `t_scheme_points_vip` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDIMEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SCHEME_POINTS_VIP` (`FDIMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_points_vip_t definition

CREATE TABLE `t_scheme_points_vip_t` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FVALUEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_SCHEME_POINTS_VIP_T` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge definition

CREATE TABLE `t_scheme_recharge` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSCHEMETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSCHEMESTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPRIORITY` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FPICTUREFILE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_SCHEME_RECHARGE` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_c definition

CREATE TABLE `t_scheme_recharge_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVIPSCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPAPPLY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECHARGETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSHOPSCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCHANNELSCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FGOODSSCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTIMESTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_SCHEME_RECHARGE_C` (`FVIPSCOPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_channel definition

CREATE TABLE `t_scheme_recharge_channel` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SCHEME_RECHARGE_CHANNEL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_count definition

CREATE TABLE `t_scheme_recharge_count` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPRESENTTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_SCHEME_RECHARGE_COUNT` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_coupon definition

CREATE TABLE `t_scheme_recharge_coupon` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCOUPONRULE` bigint NOT NULL DEFAULT '0',
  `FCOUPONQTY` int NOT NULL DEFAULT '0',
  `FVALIDTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTIMETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDELAYDAYS` int NOT NULL DEFAULT '0',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_SCHEME_RECHARGE_COUPON` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_goods definition

CREATE TABLE `t_scheme_recharge_goods` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FGOODSID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_item definition

CREATE TABLE `t_scheme_recharge_item` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMQTY` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_SCHEME_RECHARGE_ITEM` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_l definition

CREATE TABLE `t_scheme_recharge_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SCHEME_RECHARGE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_r3 definition

CREATE TABLE `t_scheme_recharge_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_ret definition

CREATE TABLE `t_scheme_recharge_ret` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  `FRETVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_SCHEME_RECHARGE_RET` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_rule definition

CREATE TABLE `t_scheme_recharge_rule` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUEEND` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SCHEME_RECHARGE_RULE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_rule_t definition

CREATE TABLE `t_scheme_recharge_rule_t` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPRESENTTYPE` bigint NOT NULL DEFAULT '0',
  `FPRESENTPOLICY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPRESENTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESTCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FLEVELVALIDDAYS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_SCHEME_RECHARGE_RULE_T` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_shop definition

CREATE TABLE `t_scheme_recharge_shop` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FBIZUNITID` bigint NOT NULL DEFAULT '0',
  `FSHOPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SCHEME_RECHARGE_SHOP` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_t definition

CREATE TABLE `t_scheme_recharge_t` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPRESENTTYPE` bigint NOT NULL DEFAULT '0',
  `FPRESENTPOLICY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPRESENTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESTCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FLEVELVALIDDAYS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_SCHEME_RECHARGE_T` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_t_r definition

CREATE TABLE `t_scheme_recharge_t_r` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRETTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRETPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETDATETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRETDATE` datetime DEFAULT NULL,
  `FRETPERIODDAYS` int NOT NULL DEFAULT '0',
  `FRETTIMES` int NOT NULL DEFAULT '0',
  `FRETVALUETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRETFIRSTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETFIRSTPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETINCREASERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_SCHEME_RECHARGE_T_R` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_vip definition

CREATE TABLE `t_scheme_recharge_vip` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDIMEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SCHEME_RECHARGE_VIP` (`FDIMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_scheme_recharge_vip_t definition

CREATE TABLE `t_scheme_recharge_vip_t` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FVALUEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_SCHEME_RECHARGE_VIP_T` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_adjustbalbill definition

CREATE TABLE `t_vip_adjustbalbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_ADJUSTBALBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_adjustbalbill_l definition

CREATE TABLE `t_vip_adjustbalbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_ADJUSTBALBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_adjustbalbillentry definition

CREATE TABLE `t_vip_adjustbalbillentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMT_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUBACCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_ADJUSTBALBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_adjustbalbillentry2 definition

CREATE TABLE `t_vip_adjustbalbillentry2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMT_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_ADJUSTBALENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_batchcardbill definition

CREATE TABLE `t_vip_batchcardbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSETTLEORGID` bigint NOT NULL DEFAULT '0',
  `FBIZORID` bigint NOT NULL DEFAULT '0',
  `FSHOPID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_BATCHCARDBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_batchcardbill_c definition

CREATE TABLE `t_vip_batchcardbill_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCARDRULE` bigint NOT NULL DEFAULT '0',
  `FCARDTYPE` bigint NOT NULL DEFAULT '0',
  `FCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` int NOT NULL DEFAULT '0',
  `FCARDMEDIA` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_BATCHCARDBILL_C` (`FCARDRULE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_batchcardbill_l definition

CREATE TABLE `t_vip_batchcardbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_BATCHCARDBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_batchcardbill_p definition

CREATE TABLE `t_vip_batchcardbill_p` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLE` bigint NOT NULL DEFAULT '0',
  `FSETTLECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATEDATE` datetime DEFAULT NULL,
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIVABLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_BATCHCARDBILL_P` (`FSETTLECURRENCYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_batchcardbill_pay definition

CREATE TABLE `t_vip_batchcardbill_pay` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPAYTYPEID` bigint NOT NULL DEFAULT '0',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISMAKEBILL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBILLAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_BATCHCARDBILL_PAY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_batchcardbill_s definition

CREATE TABLE `t_vip_batchcardbill_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCARDQTY` int NOT NULL DEFAULT '0',
  `FSUMISSUINGFEE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMDEPOSIT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMSALEPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_BATCHCARDBILL_S` (`FCARDQTY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_batchcardbillentry definition

CREATE TABLE `t_vip_batchcardbillentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FISSUINGFEE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISDEPOSITCARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDEPOSIT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISQUOTACARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSALEPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_BATCHCARDBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_batchcardbillentry1 definition

CREATE TABLE `t_vip_batchcardbillentry1` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FINITVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUBACCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISRECHARGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_BATCHCARDBILLENTRY1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_batchcardbillentry2 definition

CREATE TABLE `t_vip_batchcardbillentry2` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FINITVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_BATCHCARDBILLENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_batchcardbillentry2_b definition

CREATE TABLE `t_vip_batchcardbillentry2_b` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FISPACKAGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDEDUCTTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPACKAGEID` bigint NOT NULL DEFAULT '0',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWORTH` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_BATCHCARDBILLENTRY2_B` (`FISPACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cancardbill definition

CREATE TABLE `t_vip_cancardbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CANCARDBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cancardbill_l definition

CREATE TABLE `t_vip_cancardbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CANCARDBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cancardbillentry definition

CREATE TABLE `t_vip_cancardbillentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CANCARDBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cancardbillentry2 definition

CREATE TABLE `t_vip_cancardbillentry2` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_CANCARDBILLENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaccts definition

CREATE TABLE `t_vip_cardaccts` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUBACCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISRECHARGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRETVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CARDACCTS_ACCTID` (`FACCOUNTID`),
  KEY `IDX_VIP_CARDACCTS_CARDID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaccts_preauth definition

CREATE TABLE `t_vip_cardaccts_preauth` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPREAUTHID` bigint NOT NULL DEFAULT '0',
  `FPREAUTHDATE` datetime DEFAULT NULL,
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_CARDACCTS_PREAUTH` (`FPREAUTHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaccts_r3 definition

CREATE TABLE `t_vip_cardaccts_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaccts_return definition

CREATE TABLE `t_vip_cardaccts_return` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRETURNID` bigint NOT NULL DEFAULT '0',
  `FRETURNTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTIMES` int NOT NULL DEFAULT '0',
  `FRETURNDATE` datetime DEFAULT NULL,
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_CARDACCTS_RETURN` (`FRETURNID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaccttype definition

CREATE TABLE `t_vip_cardaccttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYSSET` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_VIP_CARDACCTTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaccttype_l definition

CREATE TABLE `t_vip_cardaccttype_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CARDACCTTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaccttype_r3 definition

CREATE TABLE `t_vip_cardaccttype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaction definition

CREATE TABLE `t_vip_cardaction` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FCARDNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FDATE` datetime DEFAULT NULL,
  `FOPTION` int NOT NULL DEFAULT '1',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBALANCEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBALANCEVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBALANCEPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CARDACTION_CARDNO` (`FCARDNO`),
  KEY `IDX_VIP_CARDACTION_DATE` (`FDATE`),
  KEY `IDX_VIP_CARDACTION_VIPID` (`FVIPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaction_d definition

CREATE TABLE `t_vip_cardaction_d` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSUBISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSUBSTARTDATE` datetime DEFAULT NULL,
  `FSUBENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CARDACTION_D` (`FSUBACCOUNTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaction_h definition

CREATE TABLE `t_vip_cardaction_h` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCARDTYPE` bigint NOT NULL DEFAULT '0',
  `FCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` int NOT NULL DEFAULT '0',
  `FCARDSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFREEZESTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CARDACTION_H` (`FCARDTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaction_r3 definition

CREATE TABLE `t_vip_cardaction_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardaction_u definition

CREATE TABLE `t_vip_cardaction_u` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FOPERTYPE` bigint NOT NULL DEFAULT '0',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CARDACTION_U` (`FORGID`,`FOPERTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardlevel definition

CREATE TABLE `t_vip_cardlevel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPRIORITY` bigint NOT NULL DEFAULT '0',
  `FISPRESET` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CARDLEVEL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardlevel_l definition

CREATE TABLE `t_vip_cardlevel_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CARDLEVEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardlevel_r3 definition

CREATE TABLE `t_vip_cardlevel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardlevelright definition

CREATE TABLE `t_vip_cardlevelright` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CARDLEVELRIGHT` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardrule definition

CREATE TABLE `t_vip_cardrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCARDTYPE` bigint NOT NULL DEFAULT '0',
  `FCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` int NOT NULL DEFAULT '0',
  `FCARDMEDIA` bigint NOT NULL DEFAULT '0',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FCARDQTY` bigint NOT NULL DEFAULT '0',
  `FMAKEDCARDQTY` bigint NOT NULL DEFAULT '0',
  `FCARDNORULE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCARDSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSHOPID` bigint NOT NULL DEFAULT '0',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CARDRULE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardrule_l definition

CREATE TABLE `t_vip_cardrule_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CARDRULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardrule_m definition

CREATE TABLE `t_vip_cardrule_m` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPASSWORDTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPASSWORD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CARDRULE_M` (`FPASSWORDTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardrule_r3 definition

CREATE TABLE `t_vip_cardrule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardrule_s definition

CREATE TABLE `t_vip_cardrule_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSETTLEORGID` bigint NOT NULL DEFAULT '0',
  `FSETTLETYPE` bigint NOT NULL DEFAULT '0',
  `FISSUINGFEE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISDEPOSITCARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDEPOSIT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISQUOTACARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSALEPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CARDRULE_S` (`FSETTLEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardruleentry definition

CREATE TABLE `t_vip_cardruleentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FINITVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUBACCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISRECHARGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CARDRULEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardruleentry2 definition

CREATE TABLE `t_vip_cardruleentry2` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FINITVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_CARDRULEENTRY2` (`FENTRYID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardruleentry2_b definition

CREATE TABLE `t_vip_cardruleentry2_b` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FISPACKAGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDEDUCTTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWORTH` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_CARDRULEENTRY2_B` (`FISPACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardtype definition

CREATE TABLE `t_vip_cardtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCARDMEDIA` bigint NOT NULL DEFAULT '0',
  `FCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` bigint NOT NULL DEFAULT '0',
  `FSTRATEGY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCHANNEL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_VIP_CARDTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardtype_b definition

CREATE TABLE `t_vip_cardtype_b` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFORECOLOR` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACKCOLOR` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGOFILE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACKGROUNDFILE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CARDTYPE_B` (`FFORECOLOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardtype_l definition

CREATE TABLE `t_vip_cardtype_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENTS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CARDTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardtype_m definition

CREATE TABLE `t_vip_cardtype_m` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPASSWORDTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPASSWORD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CARDTYPE_M` (`FPASSWORDTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardtype_r3 definition

CREATE TABLE `t_vip_cardtype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardtype_s definition

CREATE TABLE `t_vip_cardtype_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSETTLEORGID` bigint NOT NULL DEFAULT '0',
  `FSETTLETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSUINGFEE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISDEPOSITCARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDEPOSIT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISQUOTACARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSALEPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CARDTYPE_S` (`FSETTLEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardtypeaccts definition

CREATE TABLE `t_vip_cardtypeaccts` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPREVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISRECHARGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CARDTYPEACCTS_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardtypesubaccts definition

CREATE TABLE `t_vip_cardtypesubaccts` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPREVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_CARDTYPESUBACCTS_FK` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardtypesubaccts_b definition

CREATE TABLE `t_vip_cardtypesubaccts_b` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FISPACKAGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDEDUCTTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWORTH` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_CARDTYPESUBACCTS_B` (`FISPACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardtypeusechannel definition

CREATE TABLE `t_vip_cardtypeusechannel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CARDTYPEUSECHANNEL` (`FCHANNELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardtypeusescope definition

CREATE TABLE `t_vip_cardtypeusescope` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBIZUNITID` bigint NOT NULL DEFAULT '0',
  `FSHOPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CARDTYPEUSESCOPE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardusechannel definition

CREATE TABLE `t_vip_cardusechannel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CARDEUSECHANNEL` (`FCHANNELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_cardusescope definition

CREATE TABLE `t_vip_cardusescope` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBIZUNITID` bigint NOT NULL DEFAULT '0',
  `FSHOPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CARDUSESCOPE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_changecardbill definition

CREATE TABLE `t_vip_changecardbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FCARDNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWCARDID` bigint NOT NULL DEFAULT '0',
  `FNEWCARDNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CHANGECARDBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_changecardbill_l definition

CREATE TABLE `t_vip_changecardbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CHANGECARDBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_channel definition

CREATE TABLE `t_vip_channel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CHANNEL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_channel_l definition

CREATE TABLE `t_vip_channel_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CHANNEL_L` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_channel_r3 definition

CREATE TABLE `t_vip_channel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_class definition

CREATE TABLE `t_vip_class` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_class_l definition

CREATE TABLE `t_vip_class_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CLASS_L` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_class_r3 definition

CREATE TABLE `t_vip_class_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_coderule definition

CREATE TABLE `t_vip_coderule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPLITSIGN` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEINCARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FUSEINCOUPON` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISUPGRADE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSPLITLEN` int NOT NULL DEFAULT '0',
  `FEXAMPLE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPLELENGTH` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CODERULE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_coderule_l definition

CREATE TABLE `t_vip_coderule_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CODERULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_coderule_r3 definition

CREATE TABLE `t_vip_coderule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_coderuleentry definition

CREATE TABLE `t_vip_coderuleentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTRIBUTETYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTINGVALUE` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMAT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLENGTH` int NOT NULL DEFAULT '0',
  `FISSPLITSIGN` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSPLITSIGN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FINITIAL` int NOT NULL DEFAULT '0',
  `FSTEP` int NOT NULL DEFAULT '0',
  `FSKIPCHAR` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERIALGENTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CODERULEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_coderulemaxseria_r3 definition

CREATE TABLE `t_vip_coderulemaxseria_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_coderulemaxserial definition

CREATE TABLE `t_vip_coderulemaxserial` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCODERULE` bigint NOT NULL DEFAULT '0',
  `FMAXSERIAL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CODERULEMAXSERIAL` (`FCODERULE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_coderulemaxserial_l definition

CREATE TABLE `t_vip_coderulemaxserial_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CODERULEMAXSERIAL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_coderulemaxserial_r3 definition

CREATE TABLE `t_vip_coderulemaxserial_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebill definition

CREATE TABLE `t_vip_consumebill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOFFSETSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FOPTION` int NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_CONSUMEBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebill_l definition

CREATE TABLE `t_vip_consumebill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_CONSUMEBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebill_lk definition

CREATE TABLE `t_vip_consumebill_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKId`),
  KEY `idx_vip_consumebill_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebill_tc definition

CREATE TABLE `t_vip_consumebill_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint NOT NULL DEFAULT '0',
  `FTTableId` bigint NOT NULL DEFAULT '0',
  `FTId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FId`),
  KEY `IDX_VIP_CONSUMEBILL_TC_TBILL` (`FTBillId`),
  KEY `IDX_VIP_CONSUMEBILL_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebill_wb definition

CREATE TABLE `t_vip_consumebill_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRuleVerId` bigint NOT NULL DEFAULT '0',
  `FRuleItemId` bigint NOT NULL DEFAULT '0',
  `FOperate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FWriteValue` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_vip_consumebill_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebillentry definition

CREATE TABLE `t_vip_consumebillentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CONSUMEBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebillentry1 definition

CREATE TABLE `t_vip_consumebillentry1` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCOUPONID` bigint NOT NULL DEFAULT '0',
  `FFACEVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CONSUMEBILLENTRY1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebillentry2 definition

CREATE TABLE `t_vip_consumebillentry2` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CONSUMEBILLENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebillentry22 definition

CREATE TABLE `t_vip_consumebillentry22` (
  `FSUBDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_CONSUMEBILLENTRY22` (`FENTRYID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebillentry3 definition

CREATE TABLE `t_vip_consumebillentry3` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CONSUMEBILLENTRY3` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebillentry33 definition

CREATE TABLE `t_vip_consumebillentry33` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_CONSUMEBILLENTRY33` (`FENTRYID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_consumebillentry4 definition

CREATE TABLE `t_vip_consumebillentry4` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCOUPONMEDIA` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUPONRULEID` bigint NOT NULL DEFAULT '0',
  `FCOUPONNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_CONSUMEBILLENTRY4` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_deductbill definition

CREATE TABLE `t_vip_deductbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FOPTION` int NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_DEDUCTBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_deductbill_l definition

CREATE TABLE `t_vip_deductbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_DEDUCTBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_deductbillentry definition

CREATE TABLE `t_vip_deductbillentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMT_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUBACCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_DEDUCTBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_deductbillentry2 definition

CREATE TABLE `t_vip_deductbillentry2` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMT_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE_ADJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_DEDUCTBILLENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_dime definition

CREATE TABLE `t_vip_dime` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FFIELDTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FFIELDKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_VIP_DIME` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_dime_l definition

CREATE TABLE `t_vip_dime_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_DIME_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_dime_r3 definition

CREATE TABLE `t_vip_dime_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_dimeentry definition

CREATE TABLE `t_vip_dimeentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FVALUE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_DIMEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_dimegroup definition

CREATE TABLE `t_vip_dimegroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_VIP_DIMEGROUP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_dimegroup_l definition

CREATE TABLE `t_vip_dimegroup_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_DIMEGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_dimegroup_r3 definition

CREATE TABLE `t_vip_dimegroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_expointsbill definition

CREATE TABLE `t_vip_expointsbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOFFSETSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FOPTION` int NOT NULL DEFAULT '1',
  `FPOINTS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONSUMEPOINTS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_EXPOINTSBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_expointsbill_l definition

CREATE TABLE `t_vip_expointsbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_VIP_EXPOINTSBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_expointsbill_lk definition

CREATE TABLE `t_vip_expointsbill_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKId`),
  KEY `idx_vip_expointsbill_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_expointsbill_tc definition

CREATE TABLE `t_vip_expointsbill_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint NOT NULL DEFAULT '0',
  `FTTableId` bigint NOT NULL DEFAULT '0',
  `FTId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FId`),
  KEY `IDX_VIP_EXPOINTSBILL_TC_TBILL` (`FTBillId`),
  KEY `IDX_VIP_EXPOINTSBILL_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_expointsbill_wb definition

CREATE TABLE `t_vip_expointsbill_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRuleVerId` bigint NOT NULL DEFAULT '0',
  `FRuleItemId` bigint NOT NULL DEFAULT '0',
  `FOperate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FWriteValue` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_vip_expointsbill_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_expointsbillentry definition

CREATE TABLE `t_vip_expointsbillentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FITEMID` bigint NOT NULL DEFAULT '0',
  `FQTY` int NOT NULL DEFAULT '0',
  `FPOINTS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_EXPOINTSBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_expointsbillentry1 definition

CREATE TABLE `t_vip_expointsbillentry1` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCOUPONMEDIA` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUPONRULEID` bigint NOT NULL DEFAULT '0',
  `FCOUPONNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` int NOT NULL DEFAULT '0',
  `FPOINTS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_EXPOINTSBILLENTRY1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_expointsbillentry2 definition

CREATE TABLE `t_vip_expointsbillentry2` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPOINTS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_EXPOINTSBILLENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_expointsbillentry3 definition

CREATE TABLE `t_vip_expointsbillentry3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPOINTS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_EXPOINTSBILLENTRY3` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_goods definition

CREATE TABLE `t_vip_goods` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBARCODE` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FITEMUNIT` bigint NOT NULL DEFAULT '0',
  `FCLASSID` bigint NOT NULL DEFAULT '0',
  `FSALEPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPURPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FUNCOUNTPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_goods_l definition

CREATE TABLE `t_vip_goods_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FITEMSPEC` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_goods_r3 definition

CREATE TABLE `t_vip_goods_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_issuecardbill definition

CREATE TABLE `t_vip_issuecardbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FCARDNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCARDTYPE` bigint NOT NULL DEFAULT '0',
  `FCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` int NOT NULL DEFAULT '0',
  `FCARDMEDIA` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBIZORID` bigint NOT NULL DEFAULT '0',
  `FSHOPID` bigint NOT NULL DEFAULT '0',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_ISSUECARDBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_issuecardbill_c definition

CREATE TABLE `t_vip_issuecardbill_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FCARDNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCARDTYPE` bigint NOT NULL DEFAULT '0',
  `FCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` int NOT NULL DEFAULT '0',
  `FCARDMEDIA` bigint NOT NULL DEFAULT '0',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FPHONENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_ISSUECARDBILL_C` (`FCARDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_issuecardbill_l definition

CREATE TABLE `t_vip_issuecardbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_ISSUECARDBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_issuecardbill_m definition

CREATE TABLE `t_vip_issuecardbill_m` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPASSWORDTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPASSWORD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_ISSUECARDBILL_M` (`FPASSWORDTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_issuecardbill_p definition

CREATE TABLE `t_vip_issuecardbill_p` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLE` bigint NOT NULL DEFAULT '0',
  `FSETTLECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATEDATE` datetime DEFAULT NULL,
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIVABLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_ISSUECARDBILL_P` (`FSETTLECURRENCYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_issuecardbill_pay definition

CREATE TABLE `t_vip_issuecardbill_pay` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPAYTYPEID` bigint NOT NULL DEFAULT '0',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISMAKEBILL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBILLAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_ISSUECARDBILL_PAY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_issuecardbill_s definition

CREATE TABLE `t_vip_issuecardbill_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSETTLETYPE` bigint NOT NULL DEFAULT '0',
  `FSETTLEORGID` bigint NOT NULL DEFAULT '0',
  `FISSUINGFEE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISDEPOSITCARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDEPOSIT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISQUOTACARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSALEPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_ISSUECARDBILL_S` (`FSETTLEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_issuecardbillentry definition

CREATE TABLE `t_vip_issuecardbillentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FINITVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUBACCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISRECHARGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_ISSUECARDBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_issuecardbillentry2 definition

CREATE TABLE `t_vip_issuecardbillentry2` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FINITVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_ISSUECARDBILLENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_issuecardbillentry2_b definition

CREATE TABLE `t_vip_issuecardbillentry2_b` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FISPACKAGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDEDUCTTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWORTH` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_ISSUECARDBILLENTRY2_B` (`FISPACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_label definition

CREATE TABLE `t_vip_label` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLABELGROUPID` bigint NOT NULL DEFAULT '0',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_VIP_LABEL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_label_l definition

CREATE TABLE `t_vip_label_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_LABEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_label_r3 definition

CREATE TABLE `t_vip_label_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_labelgroup definition

CREATE TABLE `t_vip_labelgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCOLOR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_LABELGROUP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_labelgroup_l definition

CREATE TABLE `t_vip_labelgroup_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_LABELGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_labelgroup_r3 definition

CREATE TABLE `t_vip_labelgroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_presentbill definition

CREATE TABLE `t_vip_presentbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FOPTION` int NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_PRESENTBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_presentbill_l definition

CREATE TABLE `t_vip_presentbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_PRESENTBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_presentbillentry definition

CREATE TABLE `t_vip_presentbillentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUBACCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_PRESENTBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_presentbillentry2 definition

CREATE TABLE `t_vip_presentbillentry2` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_PRESENTBILLENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_presenttype definition

CREATE TABLE `t_vip_presenttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_PRESENTTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_presenttype_l definition

CREATE TABLE `t_vip_presenttype_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_PRESENTTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_presenttype_r3 definition

CREATE TABLE `t_vip_presenttype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_presenttypegroup definition

CREATE TABLE `t_vip_presenttypegroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_PRESENTTYPEGROUP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_presenttypegroup_l definition

CREATE TABLE `t_vip_presenttypegroup_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_PRESENTTYPEGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_presenttypegroup_r3 definition

CREATE TABLE `t_vip_presenttypegroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_promotiontype definition

CREATE TABLE `t_vip_promotiontype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTATUS` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMAGEFILE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_PROMOTIONTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_promotiontype_l definition

CREATE TABLE `t_vip_promotiontype_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_PROMOTIONTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_promotiontypegroup definition

CREATE TABLE `t_vip_promotiontypegroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_PROMOTIONTYPEGROUP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_promotiontypegroup_l definition

CREATE TABLE `t_vip_promotiontypegroup_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_PROMOTIONTYPEGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbill definition

CREATE TABLE `t_vip_rechamtbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOFFSETSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOPTION` int NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_RECHAMTBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbill_d definition

CREATE TABLE `t_vip_rechamtbill_d` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSHOPID` bigint NOT NULL DEFAULT '0',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  `FTRADENO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZORID` bigint NOT NULL DEFAULT '0',
  `FSETTLEORGID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_RECHAMTBILL_D` (`FSHOPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbill_l definition

CREATE TABLE `t_vip_rechamtbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_RECHAMTBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbill_lk definition

CREATE TABLE `t_vip_rechamtbill_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKId`),
  KEY `idx_vip_rechamtbill_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbill_p definition

CREATE TABLE `t_vip_rechamtbill_p` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSETTLECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLE` bigint NOT NULL DEFAULT '0',
  `FEXRATEDATE` datetime DEFAULT NULL,
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIVABLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_RECHAMTBILL_P` (`FBASECURRENCYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbill_pay definition

CREATE TABLE `t_vip_rechamtbill_pay` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPAYTYPEID` bigint NOT NULL DEFAULT '0',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPUSHAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPUSHBASEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHAMTBILL_PAY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbill_ret definition

CREATE TABLE `t_vip_rechamtbill_ret` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  `FRETVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETDATE` datetime DEFAULT NULL,
  `FRETSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHAMTBILL_RET` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbill_t definition

CREATE TABLE `t_vip_rechamtbill_t` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRETTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRETPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETDATETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRETDATE` datetime DEFAULT NULL,
  `FRETPERIODDAYS` int NOT NULL DEFAULT '0',
  `FRETTIMES` int NOT NULL DEFAULT '0',
  `FRETVALUETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRETFIRSTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETFIRSTPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETINCREASERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRETURNSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_RECHAMTBILL_T` (`FRETTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbill_tc definition

CREATE TABLE `t_vip_rechamtbill_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint NOT NULL DEFAULT '0',
  `FTTableId` bigint NOT NULL DEFAULT '0',
  `FTId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FId`),
  KEY `IDX_VIP_RECHAMTBILL_TC_TBILL` (`FTBillId`),
  KEY `IDX_VIP_RECHAMTBILL_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbill_wb definition

CREATE TABLE `t_vip_rechamtbill_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRuleVerId` bigint NOT NULL DEFAULT '0',
  `FRuleItemId` bigint NOT NULL DEFAULT '0',
  `FOperate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FWriteValue` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_vip_rechamtbill_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbillentry definition

CREATE TABLE `t_vip_rechamtbillentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUBACCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHAMTBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbillentry2 definition

CREATE TABLE `t_vip_rechamtbillentry2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_RECHAMTBILLENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbillentry3 definition

CREATE TABLE `t_vip_rechamtbillentry3` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCOUPONMEDIA` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUPONRULEID` bigint NOT NULL DEFAULT '0',
  `FCOUPONNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` int NOT NULL DEFAULT '0',
  `FTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOUPONID` bigint NOT NULL DEFAULT '0',
  `FCOUPONPACKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHAMTBILLENTRY3` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbillentry4 definition

CREATE TABLE `t_vip_rechamtbillentry4` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMQTY` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHAMTBILLENTRY4` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechamtbillentry5 definition

CREATE TABLE `t_vip_rechamtbillentry5` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCOUPONRULE` bigint NOT NULL DEFAULT '0',
  `FCOUPONQTY` int NOT NULL DEFAULT '0',
  `FVALIDTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTIMETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDELAYDAYS` int NOT NULL DEFAULT '0',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHAMTBILLENTRY5` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbill definition

CREATE TABLE `t_vip_rechtimesbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOFFSETSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FOPTION` int NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_RECHTIMESBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbill_d definition

CREATE TABLE `t_vip_rechtimesbill_d` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSHOPID` bigint NOT NULL DEFAULT '0',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  `FTRADENO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZORID` bigint NOT NULL DEFAULT '0',
  `FSETTLEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_RECHTIMESBILL_D` (`FSHOPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbill_l definition

CREATE TABLE `t_vip_rechtimesbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_RECHTIMESBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbill_lk definition

CREATE TABLE `t_vip_rechtimesbill_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKId`),
  KEY `idx_vip_rechtimesbill_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbill_p definition

CREATE TABLE `t_vip_rechtimesbill_p` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSETTLECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLE` bigint NOT NULL DEFAULT '0',
  `FEXRATEDATE` datetime DEFAULT NULL,
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIVABLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_RECHTIMESBILL_P` (`FBASECURRENCYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbill_pay definition

CREATE TABLE `t_vip_rechtimesbill_pay` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPAYTYPEID` bigint NOT NULL DEFAULT '0',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPUSHAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPUSHBASEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHTIMESBILL_PAY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbill_tc definition

CREATE TABLE `t_vip_rechtimesbill_tc` (
  `FId` bigint NOT NULL,
  `FTBillId` bigint NOT NULL DEFAULT '0',
  `FTTableId` bigint NOT NULL DEFAULT '0',
  `FTId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FId`),
  KEY `IDX_VIP_RECHTIMESBILL_TC_TBILL` (`FTBillId`),
  KEY `IDX_VIP_RECHTIMESBILL_TC_TID` (`FTId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbill_wb definition

CREATE TABLE `t_vip_rechtimesbill_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRuleVerId` bigint NOT NULL DEFAULT '0',
  `FRuleItemId` bigint NOT NULL DEFAULT '0',
  `FOperate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTableId` bigint NOT NULL DEFAULT '0',
  `FSId` bigint NOT NULL DEFAULT '0',
  `FSBillId` bigint NOT NULL DEFAULT '0',
  `FWriteValue` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_vip_rechtimesbill_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbillentry definition

CREATE TABLE `t_vip_rechtimesbillentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHTIMESBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbillentry1 definition

CREATE TABLE `t_vip_rechtimesbillentry1` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUBACCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHTIMESBILLENTRY1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbillentry2 definition

CREATE TABLE `t_vip_rechtimesbillentry2` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_RECHTIMESBILLENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbillentry3 definition

CREATE TABLE `t_vip_rechtimesbillentry3` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCOUPONMEDIA` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUPONRULEID` bigint NOT NULL DEFAULT '0',
  `FCOUPONNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` int NOT NULL DEFAULT '0',
  `FTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOUPONID` bigint NOT NULL DEFAULT '0',
  `FCOUPONPACKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHTIMESBILLENTRY3` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbillentry4 definition

CREATE TABLE `t_vip_rechtimesbillentry4` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMQTY` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHTIMESBILLENTRY4` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rechtimesbillentry5 definition

CREATE TABLE `t_vip_rechtimesbillentry5` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCOUPONRULE` bigint NOT NULL DEFAULT '0',
  `FCOUPONQTY` int NOT NULL DEFAULT '0',
  `FVALIDTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTIMETYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDELAYDAYS` int NOT NULL DEFAULT '0',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RECHTIMESBILLENTRY5` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rightcard definition

CREATE TABLE `t_vip_rightcard` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FISORICARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RIGHTCARD` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rights definition

CREATE TABLE `t_vip_rights` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_RIGHTS` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rights_l definition

CREATE TABLE `t_vip_rights_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_RIGHTS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rights_r3 definition

CREATE TABLE `t_vip_rights_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rightsbill definition

CREATE TABLE `t_vip_rightsbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_T_VIP_RIGHTSBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rightsbill_d definition

CREATE TABLE `t_vip_rightsbill_d` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSHOPID` bigint NOT NULL DEFAULT '0',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  `FTRADENO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZORID` bigint NOT NULL DEFAULT '0',
  `FSETTLEORGID` bigint NOT NULL DEFAULT '0',
  `FSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDID` bigint NOT NULL DEFAULT '0',
  `FDESTCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_RIGHTSBILL_D` (`FSHOPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rightsbill_l definition

CREATE TABLE `t_vip_rightsbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_VIP_RIGHTSBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rightsbill_p definition

CREATE TABLE `t_vip_rightsbill_p` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSETTLECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLE` bigint NOT NULL DEFAULT '0',
  `FEXRATEDATE` datetime DEFAULT NULL,
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIVABLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDISCOUNTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_RIGHTSBILL_P` (`FBASECURRENCYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rightsbill_pay definition

CREATE TABLE `t_vip_rightsbill_pay` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPAYTYPEID` bigint NOT NULL DEFAULT '0',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBASEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPUSHAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPUSHBASEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RIGHTSBILL_PAY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rightsbillentry definition

CREATE TABLE `t_vip_rightsbillentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUBACCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RIGHTSBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rightsbillentry2 definition

CREATE TABLE `t_vip_rightsbillentry2` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_RIGHTSBILLENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rightsbillentry3 definition

CREATE TABLE `t_vip_rightsbillentry3` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCOUPONMEDIA` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUPONRULEID` bigint NOT NULL DEFAULT '0',
  `FCOUPONNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` int NOT NULL DEFAULT '0',
  `FTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOUPONID` bigint NOT NULL DEFAULT '0',
  `FCOUPONPACKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RIGHTSBILLENTRY3` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_rightsbillentry4 definition

CREATE TABLE `t_vip_rightsbillentry4` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMQTY` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_RIGHTSBILLENTRY4` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_schemepresent definition

CREATE TABLE `t_vip_schemepresent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_SCHEMEPRESENT` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_schemepresent_l definition

CREATE TABLE `t_vip_schemepresent_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_SCHEMEPRESENT_L` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_schemepresent_r3 definition

CREATE TABLE `t_vip_schemepresent_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_schemepresententry definition

CREATE TABLE `t_vip_schemepresententry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPRESENTTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_SCHEMEPRESENTENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_sourcechannel definition

CREATE TABLE `t_vip_sourcechannel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  `FISSOURCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_SOURCECHANNEL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_sourcechannel_l definition

CREATE TABLE `t_vip_sourcechannel_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_SOURCECHANNEL_L` (`FLOCALEID`,`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_subcardaccts definition

CREATE TABLE `t_vip_subcardaccts` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_SUBCARDACCTS` (`FSUBACCOUNTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_subcardaccts_b definition

CREATE TABLE `t_vip_subcardaccts_b` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FISPACKAGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDEDUCTTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWORTH` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPACKAGEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_SUBCARDACCTS_B` (`FISPACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_subcardaccts_r3 definition

CREATE TABLE `t_vip_subcardaccts_r3` (
  `fdetailid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fdetailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_transferbill definition

CREATE TABLE `t_vip_transferbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORMID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBIZTYPE` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPID_OUT` bigint NOT NULL DEFAULT '0',
  `FCARDID_OUT` bigint NOT NULL DEFAULT '0',
  `FVIPID_IN` bigint NOT NULL DEFAULT '0',
  `FCARDID_IN` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_TRANSFERBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_transferbill_l definition

CREATE TABLE `t_vip_transferbill_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_TRANSFERBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_transferbillentry definition

CREATE TABLE `t_vip_transferbillentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMT_TRANS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE_TRANS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE_TRANS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSUBACCOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_TRANSFERBILLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_transferbillentry2 definition

CREATE TABLE `t_vip_transferbillentry2` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUBACCOUNTID` bigint NOT NULL DEFAULT '0',
  `FAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMT_TRANS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVALUE_TRANS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESENTVALUE_TRANS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCTRLTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCOUNTID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_VIP_TRANSFERBILLENTRY2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vehiclebrand definition

CREATE TABLE `t_vip_vehiclebrand` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FVEHICLEID` bigint NOT NULL DEFAULT '0',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_VEHICLEBRAND` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vehiclebrand_l definition

CREATE TABLE `t_vip_vehiclebrand_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VEHICLEBRAND_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vehiclebrand_r3 definition

CREATE TABLE `t_vip_vehiclebrand_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipaddress definition

CREATE TABLE `t_vip_vipaddress` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FADDRTYPE` bigint NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLINKPHONE` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISTRICT` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_VIPADDRESS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipaddress_l definition

CREATE TABLE `t_vip_vipaddress_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLINKMAN` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VIPADDRESS_L` (`FID`,`FLOCALEID`,`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipbankinfo definition

CREATE TABLE `t_vip_vipbankinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBANKID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDEFAULT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_VIPBANKINFO` (`FBANKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipbankinfo_l definition

CREATE TABLE `t_vip_vipbankinfo_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VIPBANKINFO_L` (`FLOCALEID`,`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipcard definition

CREATE TABLE `t_vip_vipcard` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCARDNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVIPID` bigint NOT NULL DEFAULT '0',
  `FCARDTYPE` bigint NOT NULL DEFAULT '0',
  `FCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FDISTRIBUTEORGID` bigint NOT NULL DEFAULT '0',
  `FACTIVEDATE` datetime DEFAULT NULL,
  `FCURRENCYID` int NOT NULL DEFAULT '0',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALIDDAYS` smallint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCARDSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFREEZESTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCARDMEDIA` bigint NOT NULL DEFAULT '0',
  `FCARDRULEID` bigint NOT NULL DEFAULT '0',
  `FUSEDCARDNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBACKGROUNDFILE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_VIPCARD_VIPID` (`FVIPID`),
  KEY `IDX_VIP_VIPCARD_CARDNO` (`FCARDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipcard_c definition

CREATE TABLE `t_vip_vipcard_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMAKEORGID` bigint NOT NULL DEFAULT '0',
  `FMAKEDATE` datetime DEFAULT NULL,
  `FSENDORGID` bigint NOT NULL DEFAULT '0',
  `FSENDDATE` datetime DEFAULT NULL,
  `FSENDCHANNELID` bigint NOT NULL DEFAULT '0',
  `FCANCELORGID` bigint NOT NULL DEFAULT '0',
  `FCANCELDATE` datetime DEFAULT NULL,
  `FMAKESHOPID` bigint NOT NULL DEFAULT '0',
  `FSENDSHOPID` bigint NOT NULL DEFAULT '0',
  `FCANCELSHOPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_VIPCARD_C` (`FMAKEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipcard_l definition

CREATE TABLE `t_vip_vipcard_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VIPCARD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipcard_m definition

CREATE TABLE `t_vip_vipcard_m` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPASSWORDTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPASSWORD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPASSWORD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_VIPCARD_M` (`FPASSWORDTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipcard_r definition

CREATE TABLE `t_vip_vipcard_r` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCARDLEVEL` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCARDLEVEL_R` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE_R` datetime DEFAULT NULL,
  `FENDDATE_R` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_VIPCARD_R` (`FCARDLEVEL_R`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipcard_r3 definition

CREATE TABLE `t_vip_vipcard_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipcard_s definition

CREATE TABLE `t_vip_vipcard_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSETTLEORGID` bigint NOT NULL DEFAULT '0',
  `FSETTLETYPE` bigint NOT NULL DEFAULT '0',
  `FISSUINGFEE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISDEPOSITCARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDEPOSIT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISQUOTACARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSALEPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISRIGHTCARD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_VIPCARD_S` (`FSETTLEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipcertificate definition

CREATE TABLE `t_vip_vipcertificate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FCERTIFICATETYPE` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDEFAULT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FISLONGTERM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_VIPCERTIFICATE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipcertificate_l definition

CREATE TABLE `t_vip_vipcertificate_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VIPCERTIFICATE_L` (`FID`,`FLOCALEID`,`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipcommday definition

CREATE TABLE `t_vip_vipcommday` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCOMMDAYTYPE` bigint NOT NULL DEFAULT '0',
  `FCOMMDATE` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_VIPCOMMDAY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipcommday_l definition

CREATE TABLE `t_vip_vipcommday_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VIPCOMMDAY_L` (`FID`,`FLOCALEID`,`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipinfo definition

CREATE TABLE `t_vip_vipinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FPHONENUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIRTHDAY` datetime DEFAULT NULL,
  `FSEX` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNATIONAL` bigint NOT NULL DEFAULT '0',
  `FEDUCATIONAL` bigint NOT NULL DEFAULT '0',
  `FEMAIL` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEADIMAGE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRY` bigint NOT NULL DEFAULT '0',
  `FCONSTELLATION` bigint NOT NULL DEFAULT '0',
  `FZODIAC` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_VIPINFO` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipinfo_c definition

CREATE TABLE `t_vip_vipinfo_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRECOMMENDID` bigint NOT NULL DEFAULT '0',
  `FRELATIONID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_VIPINFO_C` (`FRECOMMENDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipinfo_l definition

CREATE TABLE `t_vip_vipinfo_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VIPINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipinfo_r3 definition

CREATE TABLE `t_vip_vipinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipinfo_s definition

CREATE TABLE `t_vip_vipinfo_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCHANNELID` bigint NOT NULL DEFAULT '0',
  `FSHOPID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_VIPINFO_S` (`FCHANNELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipinfo_u definition

CREATE TABLE `t_vip_vipinfo_u` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVIPTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINITIATIONTIME` datetime DEFAULT NULL,
  `FCARDSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FREGISTERTIME` datetime DEFAULT NULL,
  `FREGISTERTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBIRTHDAYTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBIRTHDAY` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_VIPINFO_U` (`FVIPTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipinfogroup definition

CREATE TABLE `t_vip_vipinfogroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FSTANDARD` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_VIP_VIPINFOGROUP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipinfogroup_l definition

CREATE TABLE `t_vip_vipinfogroup_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VIPINFOGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipinfogroup_r3 definition

CREATE TABLE `t_vip_vipinfogroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_viplabel definition

CREATE TABLE `t_vip_viplabel` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VIPLABEL` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipmanager definition

CREATE TABLE `t_vip_vipmanager` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMANAGERID` bigint NOT NULL DEFAULT '0',
  `FISPRINCIPAL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_VIPMANAGER` (`FMANAGERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipmanager_l definition

CREATE TABLE `t_vip_vipmanager_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VIPMANAGER_L` (`FLOCALEID`,`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_viprelation definition

CREATE TABLE `t_vip_viprelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRELATIONID` bigint NOT NULL DEFAULT '0',
  `FLINKPHONE` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEX` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBIRTHDAYTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBIRTHDAY` datetime DEFAULT NULL,
  `FHEADURL` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_VIPRELATION` (`FRELATIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_viprelation_l definition

CREATE TABLE `t_vip_viprelation_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VIPRELATION_L` (`FLOCALEID`,`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipvehicleinfo definition

CREATE TABLE `t_vip_vipvehicleinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVBRANDID` bigint NOT NULL DEFAULT '0',
  `FVCLASSID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_VIP_VIPVEHICLEINFO` (`FVBRANDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_mbr.t_vip_vipvehicleinfo_l definition

CREATE TABLE `t_vip_vipvehicleinfo_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_VIP_VIPVEHICLEINFO_L` (`FLOCALEID`,`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
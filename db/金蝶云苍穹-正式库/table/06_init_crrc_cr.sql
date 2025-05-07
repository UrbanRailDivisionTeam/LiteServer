USE crrc_cr;

-- crrc_cr.`_u` definition

CREATE TABLE `_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX__U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.exc definition

CREATE TABLE `exc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_Exc_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_changereason definition

CREATE TABLE `t_concs_changereason` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCOPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CHANGEREASON` (`FPARENTID`),
  KEY `IDX_T_CONCS_CHANGEREASON_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_CONCS_CHANGEREASON_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_changereason_bit definition

CREATE TABLE `t_concs_changereason_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_changereason_l definition

CREATE TABLE `t_concs_changereason_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CHANGEREASON_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_changereason_m definition

CREATE TABLE `t_concs_changereason_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_changereason_r3 definition

CREATE TABLE `t_concs_changereason_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_changereason_u definition

CREATE TABLE `t_concs_changereason_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_changereason_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_changereasonexc definition

CREATE TABLE `t_concs_changereasonexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_changereasonExc_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_changereasonusereg definition

CREATE TABLE `t_concs_changereasonusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`),
  KEY `IDX_T_CONCS_CHANGEREASONUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_chgauditbill definition

CREATE TABLE `t_concs_chgauditbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTBILLID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FAPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FURGENTDEGREE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEREASONID` bigint NOT NULL DEFAULT '0',
  `FREFBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFBILLID` bigint NOT NULL DEFAULT '0',
  `FORICURRENCY` bigint NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FTAXRATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CHGAUDITBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_chgauditbill_l definition

CREATE TABLE `t_concs_chgauditbill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CHGAUDITBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_chgauditbill_r3 definition

CREATE TABLE `t_concs_chgauditbill_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_chgcfmbill definition

CREATE TABLE `t_concs_chgcfmbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTBILLID` bigint NOT NULL DEFAULT '0',
  `FAPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FCHGTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FTAXRATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FSUCCESSAFTERFACT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMULTITAXRATEFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOREIGNCURRENCYFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FCHGAUDITID` bigint NOT NULL DEFAULT '0',
  `FCHANGEREASONID` bigint NOT NULL DEFAULT '0',
  `FURGENTDEGREE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CHGCFMBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_chgcfmbill_l definition

CREATE TABLE `t_concs_chgcfmbill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CHGCFMBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_chgcfmbill_r3 definition

CREATE TABLE `t_concs_chgcfmbill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_chgcfmtaxentry definition

CREATE TABLE `t_concs_chgcfmtaxentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_CHGCFMTAXENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_chgcfmtaxentry_l definition

CREATE TABLE `t_concs_chgcfmtaxentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CHGCFMTAXENTRY_L` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conchgbill definition

CREATE TABLE `t_concs_conchgbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULTITAXRATEFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOREIGNCURRENCYFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FAPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FURGENTDEGREE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEREASONID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTBILLID` bigint NOT NULL DEFAULT '0',
  `FREFBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONCHGBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conchgbill_l definition

CREATE TABLE `t_concs_conchgbill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONCHGBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conchgtaxentry definition

CREATE TABLE `t_concs_conchgtaxentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_CONCHGTAXENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conchgtaxentry_l definition

CREATE TABLE `t_concs_conchgtaxentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONCHGTAXENTRY_L` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conctrlstand definition

CREATE TABLE `t_concs_conctrlstand` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHGCTRLSCALE` decimal(23,2) NOT NULL DEFAULT '0.00',
  `FMARGINSCALE` decimal(23,2) NOT NULL DEFAULT '0.00',
  `FDPAYWARNSCALE` decimal(23,2) NOT NULL DEFAULT '0.00',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONCTRLSTAND` (`FCREATORID`),
  KEY `IDX_T_CONCS_CONCTRLSTAND_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_CONCS_CONCTRLSTAND_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conctrlstand_bit definition

CREATE TABLE `t_concs_conctrlstand_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conctrlstand_l definition

CREATE TABLE `t_concs_conctrlstand_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONCTRLSTAND_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conctrlstand_m definition

CREATE TABLE `t_concs_conctrlstand_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conctrlstand_r3 definition

CREATE TABLE `t_concs_conctrlstand_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conctrlstand_u definition

CREATE TABLE `t_concs_conctrlstand_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_conctrlstand_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conctrlstandexc definition

CREATE TABLE `t_concs_conctrlstandexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_conctrlstandExc_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conctrlstandusereg definition

CREATE TABLE `t_concs_conctrlstandusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`),
  KEY `IDX_T_CONCS_CONCTRLSTANDUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayitem definition

CREATE TABLE `t_concs_conpayitem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint DEFAULT NULL,
  `FMODIFIERID` bigint DEFAULT NULL,
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  `FCREATEORGID` bigint DEFAULT NULL,
  `FORGID` bigint DEFAULT NULL,
  `FUSEORGID` bigint DEFAULT NULL,
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEDUCTPROPERTY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALCITEM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCANMODIFYAMT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSYSPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FACCOUNTVIEWID` bigint DEFAULT NULL,
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONPAYITEM_NUMBER_0` (`FNUMBER`),
  KEY `IDX_T_CONCS_CONPAYITEM_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_CONCS_CONPAYITEM_MASTER` (`FMASTERID`),
  KEY `IDX_CONCS_CONPAYITEM` (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayitem_bit definition

CREATE TABLE `t_concs_conpayitem_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayitem_l definition

CREATE TABLE `t_concs_conpayitem_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONPAYITEM_L_0` (`FLOCALEID`,`FID`),
  KEY `IDX_CONCS_CONPAYITEM_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayitem_m definition

CREATE TABLE `t_concs_conpayitem_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayitem_r3 definition

CREATE TABLE `t_concs_conpayitem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONPAYITEM_R3_0` (`FREFSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayitem_u definition

CREATE TABLE `t_concs_conpayitem_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_conpayitem_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayitementry definition

CREATE TABLE `t_concs_conpayitementry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FOPERATION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERCENT` decimal(10,2) NOT NULL DEFAULT '0.00',
  `FPAYITEMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_CONPAYITEMENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayitemexc definition

CREATE TABLE `t_concs_conpayitemexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_conpayitemExc_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayitemusereg definition

CREATE TABLE `t_concs_conpayitemusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`),
  KEY `IDX_T_CONCS_CONPAYITEMUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayplan definition

CREATE TABLE `t_concs_conpayplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FCONTRACTBILLID` bigint NOT NULL DEFAULT '0',
  `FCONREVISEBILLID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONPAYPLAN` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayplan_l definition

CREATE TABLE `t_concs_conpayplan_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONPAYPLAN_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayplanactdata definition

CREATE TABLE `t_concs_conpayplanactdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPAYMONTH` bigint NOT NULL DEFAULT '0',
  `FPAYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_CONPAYPLANACTDATA` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayplandata definition

CREATE TABLE `t_concs_conpayplandata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPAYMONTH` bigint NOT NULL DEFAULT '0',
  `FPAYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_CONPAYPLANDATA` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conpayplansch definition

CREATE TABLE `t_concs_conpayplansch` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPAYMENTTYPEID` bigint NOT NULL DEFAULT '0',
  `FPAYWAY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEGINDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FPAYSCALE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYDATE` datetime DEFAULT NULL,
  `FPAYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPREFLUSHORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPREFLUSHAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_CONPAYPLANSCH` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conrevisebill definition

CREATE TABLE `t_concs_conrevisebill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULTITAXRATEFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOREIGNCURRENCYFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FAPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FPARTYAID` bigint NOT NULL DEFAULT '0',
  `FPARTYBID` bigint NOT NULL DEFAULT '0',
  `FFIACCOUNTORGID` bigint NOT NULL DEFAULT '0',
  `FVALUATIONMODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDEPARTID` bigint NOT NULL DEFAULT '0',
  `FESTCHGTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FLATESTORIPRICE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FLATESTPRICE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FLATESTTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FHASSETTLED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVERSION` decimal(19,1) NOT NULL DEFAULT '0.0',
  `FCONTRACTBILLID` bigint NOT NULL DEFAULT '0',
  `FREVISEDATE` datetime DEFAULT NULL,
  `FREVISEBYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONREVISEBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conrevisebill_c definition

CREATE TABLE `t_concs_conrevisebill_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FESTCHGSCALE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTCHGORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FMARGINSCALE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FMARGINORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTSETTLEORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYWARNSCALE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTCHGAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FMARGINAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTSETTLEAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTCHGNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONREVISEBILL_C` (`FESTCHGSCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conrevisebill_d definition

CREATE TABLE `t_concs_conrevisebill_d` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FCONDOCFILEID` bigint NOT NULL DEFAULT '0',
  `FCONDOCURL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONDOCNAME` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONREVISEBILL_D` (`FCONTEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conrevisebill_l definition

CREATE TABLE `t_concs_conrevisebill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTYBNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTYCNAMES` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVISEREASON` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONREVISEBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conrevisecontent definition

CREATE TABLE `t_concs_conrevisecontent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_CONREVISECONTENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conrevisecontent_l definition

CREATE TABLE `t_concs_conrevisecontent_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDALIAS` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDVALUE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWVALUE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONREVISECONTENT_L` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conrevisepartycs definition

CREATE TABLE `t_concs_conrevisepartycs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONREVISEPARTYCS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conrevisetaxentry definition

CREATE TABLE `t_concs_conrevisetaxentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_CONREVISETAXENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_conrevisetaxentry_l definition

CREATE TABLE `t_concs_conrevisetaxentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONREVISETAXENTRY_L` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_consettlebill definition

CREATE TABLE `t_concs_consettlebill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULTITAXRATEFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOREIGNCURRENCYFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FAPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FSETTLETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTBILLID` bigint NOT NULL DEFAULT '0',
  `FTOTALREQUESTORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALACTUALPAYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYABLEORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYSCALE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FTOTALDEDUCTORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALGUERDORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FBAILORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FBAILSCALE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FTOTALREQUESTAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALACTUALPAYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYABLEAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALDEDUCTAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FBAILAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALGUERDAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPARTYBID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONSETTLEBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_consettlebill_l definition

CREATE TABLE `t_concs_consettlebill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTYBNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONSETTLEBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_consettlebill_r3 definition

CREATE TABLE `t_concs_consettlebill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contemplate definition

CREATE TABLE `t_concs_contemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FCONTEMPDOCFILEID` bigint NOT NULL DEFAULT '0',
  `FCURRENTDOCNAME` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENTDOCURL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONTEMPLATE` (`FSTATUS`),
  KEY `IDX_T_CONCS_CONTEMPLATE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_CONCS_CONTEMPLATE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contemplate_bit definition

CREATE TABLE `t_concs_contemplate_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contemplate_l definition

CREATE TABLE `t_concs_contemplate_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONTEMPLATE_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contemplate_m definition

CREATE TABLE `t_concs_contemplate_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contemplate_r3 definition

CREATE TABLE `t_concs_contemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contemplate_u definition

CREATE TABLE `t_concs_contemplate_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_contemplate_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contemplateexc definition

CREATE TABLE `t_concs_contemplateexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_contemplateExc_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contemplateusereg definition

CREATE TABLE `t_concs_contemplateusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`),
  KEY `IDX_T_CONCS_CONTEMPLATEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contractbill definition

CREATE TABLE `t_concs_contractbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULTITAXRATEFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOREIGNCURRENCYFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FAPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FPARTYAID` bigint NOT NULL DEFAULT '0',
  `FPARTYBID` bigint NOT NULL DEFAULT '0',
  `FFIACCOUNTORGID` bigint NOT NULL DEFAULT '0',
  `FVALUATIONMODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDEPARTID` bigint NOT NULL DEFAULT '0',
  `FESTCHGTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FLATESTORIPRICE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FLATESTPRICE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FLATESTTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FHASSETTLED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONTRACTBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contractbill_c definition

CREATE TABLE `t_concs_contractbill_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FESTCHGSCALE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTCHGORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FMARGINSCALE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FMARGINORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTSETTLEORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYWARNSCALE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTCHGAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FMARGINAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTSETTLEAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTCHGNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONTRACTBILL_C` (`FESTCHGSCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contractbill_d definition

CREATE TABLE `t_concs_contractbill_d` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FCONDOCFILEID` bigint NOT NULL DEFAULT '0',
  `FCONDOCURL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONDOCNAME` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONTRACTBILL_D` (`FCONTEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contractbill_l definition

CREATE TABLE `t_concs_contractbill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTYBNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTYCNAMES` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONTRACTBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contractbill_r3 definition

CREATE TABLE `t_concs_contractbill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contractcenter definition

CREATE TABLE `t_concs_contractcenter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTYBID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FLATESTORIPRICE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FLATESTPRICE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYEDORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYEDAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTCHGORIBALANCE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTCHGBALANCE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTSETTLEORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTSETTLEAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FSETTLEORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FSETTLEAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FBIZDEPARTID` bigint NOT NULL DEFAULT '0',
  `FPAYEDCONAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FINVOICEAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYEDCONORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONTRACTCENTER` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contractcenter_l definition

CREATE TABLE `t_concs_contractcenter_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTYBNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTYCNAMES` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONTRACTCENTER_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contractcenter_p definition

CREATE TABLE `t_concs_contractcenter_p` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCHGSCALE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FPAYSCALE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FESTCHGSCALE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FMARGINSCALE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FPAYWARNSCALE` decimal(19,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONTRACTCENTER_P` (`FCHGSCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contractcenter_s definition

CREATE TABLE `t_concs_contractcenter_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FALLCHGORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FALLCHGAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FALLSUPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FALLSUPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FALLREWARDDEDUCTAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FALLREWARDDEDUCTORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONTRACTCENTER_S` (`FALLCHGORIAMT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contractpartycs definition

CREATE TABLE `t_concs_contractpartycs` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONTRACTPARTYCS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contracttaxentry definition

CREATE TABLE `t_concs_contracttaxentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_CONTRACTTAXENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contracttaxentry_l definition

CREATE TABLE `t_concs_contracttaxentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONTRACTTAXENTRY_L` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contracttype definition

CREATE TABLE `t_concs_contracttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_CONTRACTTYPE` (`FSTATUS`),
  KEY `IDX_T_CONCS_CONTRACTTYPE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_CONCS_CONTRACTTYPE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contracttype_bit definition

CREATE TABLE `t_concs_contracttype_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contracttype_l definition

CREATE TABLE `t_concs_contracttype_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_CONTRACTTYPE_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contracttype_m definition

CREATE TABLE `t_concs_contracttype_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contracttype_r3 definition

CREATE TABLE `t_concs_contracttype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contracttype_u definition

CREATE TABLE `t_concs_contracttype_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_contracttype_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contracttypeexc definition

CREATE TABLE `t_concs_contracttypeexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_contracttypeExc_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_contracttypeusereg definition

CREATE TABLE `t_concs_contracttypeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`),
  KEY `IDX_T_CONCS_CONTRACTTYPEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_datastandard definition

CREATE TABLE `t_concs_datastandard` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISREQUIRED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_DATASTANDARD` (`FORGID`),
  KEY `IDX_T_CONCS_DATASTANDARD_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_CONCS_DATASTANDARD_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_datastandard_bit definition

CREATE TABLE `t_concs_datastandard_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_datastandard_l definition

CREATE TABLE `t_concs_datastandard_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_DATASTANDARD_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_datastandard_m definition

CREATE TABLE `t_concs_datastandard_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_datastandard_r3 definition

CREATE TABLE `t_concs_datastandard_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_datastandard_u definition

CREATE TABLE `t_concs_datastandard_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_datastandard_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_datastandardexc definition

CREATE TABLE `t_concs_datastandardexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_concs_datastandardExc_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_datastandardusereg definition

CREATE TABLE `t_concs_datastandardusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`),
  KEY `IDX_T_CONCS_DATASTANDARDUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_entryvariable definition

CREATE TABLE `t_concs_entryvariable` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FVARIABLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLEKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLEVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVARIABLEMAP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_ENTRYVARIABLE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_estchgadjustbill definition

CREATE TABLE `t_concs_estchgadjustbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMULTICURRENCY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FCONTRACTBILLLD` bigint NOT NULL DEFAULT '0',
  `FADJUSTORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FSRCORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FSRCAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FADJUSTAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTSETTLEORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FESTSETTLEAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_ESTCHGADJUSTBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_estchgadjustbill_l definition

CREATE TABLE `t_concs_estchgadjustbill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_ESTCHGADJUSTBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_invoicebill definition

CREATE TABLE `t_concs_invoicebill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTBILL` bigint NOT NULL DEFAULT '0',
  `FHASRECEIPT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINVOICECODE` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURBANKACCOUNT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FINVOICETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVOICENO` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FSALEORG` bigint NOT NULL DEFAULT '0',
  `FPURORG` bigint NOT NULL DEFAULT '0',
  `FPURDEPOSITBANK` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURTELDECIMAL` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALEBANKACCOUNT` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALEDEPOSITBANK` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALETELDECIMAL` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYREQBILL` bigint NOT NULL DEFAULT '0',
  `FREFBILLID` bigint NOT NULL DEFAULT '0',
  `FREFBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTANCYORGID` bigint NOT NULL DEFAULT '0',
  `FPURTAXPAYER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALETAXPAYER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALAMTTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FSALETELNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FPURTELNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_INVOICEBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_invoicebill_l definition

CREATE TABLE `t_concs_invoicebill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCAPITALAMOUNT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURADDRESS` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALEADDRESS` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSALEORGNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_INVOICEBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_invoicebill_r3 definition

CREATE TABLE `t_concs_invoicebill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_invoiceentry definition

CREATE TABLE `t_concs_invoiceentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRY_CONTENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRY_MODEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRY_PRICE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FENTRY_NOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FENTRY_TAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FENTRY_TAXRATE` bigint NOT NULL DEFAULT '0',
  `FENTRY_UNIT` bigint NOT NULL DEFAULT '0',
  `FENTRY_QTY` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_INVOICEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_param definition

CREATE TABLE `t_concs_param` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATER` bigint NOT NULL DEFAULT '0',
  `FCREATEDATE` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  `FMODIFYDATE` datetime DEFAULT NULL,
  `FPROJECTLD` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPARAMESTCHGCTRL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMSUPPLYCTRLMODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_PARAM` (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_param_r3 definition

CREATE TABLE `t_concs_param_r3` (
  `fid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_payreqbill definition

CREATE TABLE `t_concs_payreqbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFOREIGNCURRENCYFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FCONTRACTBILLID` bigint NOT NULL DEFAULT '0',
  `FPAYMENTTYPEID` bigint NOT NULL DEFAULT '0',
  `FPREPAYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPREPAYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FRECEIVEUNITID` bigint NOT NULL DEFAULT '0',
  `FRECEIVEBANKID` bigint NOT NULL DEFAULT '0',
  `FRECEIVENO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEDEPARTID` bigint NOT NULL DEFAULT '0',
  `FNOCONTRACTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPAYDATE` datetime DEFAULT NULL,
  `FHASCLOSED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_PAYREQBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_payreqbill_c definition

CREATE TABLE `t_concs_payreqbill_c` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREWARDDEDUCTORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FSETTLEORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALPAYEDCONORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALINVOICEAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FSETTLEAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPREUNPAYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FREWARDDEDUCTAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALPAYEDCONAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALINVOICETAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FINVOICEAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FINVOICETAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FINVOICENOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYEDORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYEDAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYEDCONORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYEDCONAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPREUNPAYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_PAYREQBILL_C` (`FREWARDDEDUCTORIAMT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_payreqbill_l definition

CREATE TABLE `t_concs_payreqbill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYEDDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECEIVEUNITNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_PAYREQBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_payreqbill_r3 definition

CREATE TABLE `t_concs_payreqbill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_payreqdataentry definition

CREATE TABLE `t_concs_payreqdataentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDATASTDID` bigint NOT NULL DEFAULT '0',
  `FREPORTFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVERIFYQTY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_PAYREQENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_payreqdetailentry definition

CREATE TABLE `t_concs_payreqdetailentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYEDORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FPAYEDAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FENTRYSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_PAYREQDETAIL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_payreqinventry definition

CREATE TABLE `t_concs_payreqinventry` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_PAYREQINVENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_payreqredeentry definition

CREATE TABLE `t_concs_payreqredeentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREWARDDEDUCTID` bigint NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_PAYREQREDEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_payreqredeentry_l definition

CREATE TABLE `t_concs_payreqredeentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_PAYREQREDEENTRY_L` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_rewarddeduct_f7 definition

CREATE TABLE `t_concs_rewarddeduct_f7` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTBILLID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FPAYITEMID` bigint NOT NULL DEFAULT '0',
  `FREFBILLID` bigint NOT NULL DEFAULT '0',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPAYTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FORICURRENCY` bigint NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_REWARDDEDUCT_F7` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_rewarddeduct_f7_l definition

CREATE TABLE `t_concs_rewarddeduct_f7_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_REWARDDEDUCT_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_rewarddeduct_f7_r3 definition

CREATE TABLE `t_concs_rewarddeduct_f7_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_rewarddeduct_f_r3 definition

CREATE TABLE `t_concs_rewarddeduct_f_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_rewarddeductbill definition

CREATE TABLE `t_concs_rewarddeductbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDEPT` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_REWARDBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_rewarddeductbill_l definition

CREATE TABLE `t_concs_rewarddeductbill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_REWARDDEDUCTBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_rewarddeductentry definition

CREATE TABLE `t_concs_rewarddeductentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONTRACTBILLID` bigint NOT NULL DEFAULT '0',
  `FPAYITEMID` bigint NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_REWARDENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_rewarddeductentry_l definition

CREATE TABLE `t_concs_rewarddeductentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_REWARDENTRY_L` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_settledataentry definition

CREATE TABLE `t_concs_settledataentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FVERIFYQTY` bigint NOT NULL DEFAULT '0',
  `FREPORTFLG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTANDARDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_SETTLEDATAENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_settlesumentry definition

CREATE TABLE `t_concs_settlesumentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMTSCALE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FQTY` decimal(23,0) NOT NULL DEFAULT '0',
  `FCONPAYITEMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_SETTLESUMENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_settletaxentry definition

CREATE TABLE `t_concs_settletaxentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_SETTLETAXENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_settletaxentry_l definition

CREATE TABLE `t_concs_settletaxentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_SETTLETAXENTRY_L` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_stagesettlebill definition

CREATE TABLE `t_concs_stagesettlebill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFOREIGNCURRENCYFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FCONTRACTBILLID` bigint NOT NULL DEFAULT '0',
  `FTOTALSETTLEORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTOTALSETTLEAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_STAGESETTLEBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_stagesettlebill_l definition

CREATE TABLE `t_concs_stagesettlebill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_STAGESETTLEBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_stagesettleentry definition

CREATE TABLE `t_concs_stagesettleentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSVERIFYREPORT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVERIFYQTY` bigint NOT NULL DEFAULT '0',
  `FDATASTANDARDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_STAGESETTLEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_supplyconbill definition

CREATE TABLE `t_concs_supplyconbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMULTITAXRATEFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFOREIGNCURRENCYFLAG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FORICURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FAPPLYORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAPPLYAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATE` decimal(19,2) NOT NULL DEFAULT '0.00',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FFORMWAY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTBILL` bigint NOT NULL DEFAULT '0',
  `FPARTYB` bigint NOT NULL DEFAULT '0',
  `FCTRLMODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_CONCS_SUPPLYCONBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_supplyconbill_l definition

CREATE TABLE `t_concs_supplyconbill_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTYBNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_SUPPLYCONBILL_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_supplyconchgentry definition

CREATE TABLE `t_concs_supplyconchgentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHGENTRY_CHANGEBILL` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_SUPPLYCONCHGENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_supplycontaxentry definition

CREATE TABLE `t_concs_supplycontaxentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAX` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FNOTAXAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FORIAMT` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONCS_SUPPLYCONTAXENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_concs_supplycontaxentry_l definition

CREATE TABLE `t_concs_supplycontaxentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_CONCS_SUPPLYCONTAXENTRY_L` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_controllevel_r3 definition

CREATE TABLE `t_placs_controllevel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_majortype definition

CREATE TABLE `t_placs_majortype` (
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
  `FPLANTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PLACS_T_MAJORTYPEL_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_majortype_l definition

CREATE TABLE `t_placs_majortype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANTYPENAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PLACS_MAJORTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_majortype_r3 definition

CREATE TABLE `t_placs_majortype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_plantemplate_r3 definition

CREATE TABLE `t_placs_plantemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_plantpltaskent_r3 definition

CREATE TABLE `t_placs_plantpltaskent_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_plantype definition

CREATE TABLE `t_placs_plantype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPLANTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PLACS_PLANTYPE_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_plantype_l definition

CREATE TABLE `t_placs_plantype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PLACS_PLANTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_plantype_r3 definition

CREATE TABLE `t_placs_plantype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_projectplan_r3 definition

CREATE TABLE `t_placs_projectplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_projworkcalend_r3 definition

CREATE TABLE `t_placs_projworkcalend_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_projworkcalendar_r3 definition

CREATE TABLE `t_placs_projworkcalendar_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_riskwarningset_r3 definition

CREATE TABLE `t_placs_riskwarningset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_task_r3 definition

CREATE TABLE `t_placs_task_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_task_workhours_lk definition

CREATE TABLE `t_placs_task_workhours_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_placs_task_workhours_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_tasksource definition

CREATE TABLE `t_placs_tasksource` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PLACS_TASKSOURCE_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_tasksource_l definition

CREATE TABLE `t_placs_tasksource_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PLACS_TASKSOURCE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_tasksource_r3 definition

CREATE TABLE `t_placs_tasksource_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_tasktype definition

CREATE TABLE `t_placs_tasktype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPROJECTTASK` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PLACS_T_TASKTYPE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_tasktype_l definition

CREATE TABLE `t_placs_tasktype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PLACS_TASKTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_tasktype_r3 definition

CREATE TABLE `t_placs_tasktype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_transactiontyp_r3 definition

CREATE TABLE `t_placs_transactiontyp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_workhours_bill_r3 definition

CREATE TABLE `t_placs_workhours_bill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_workhours_billmap_r3 definition

CREATE TABLE `t_placs_workhours_billmap_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_workhours_r3 definition

CREATE TABLE `t_placs_workhours_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_workhoursbill_tc definition

CREATE TABLE `t_placs_workhoursbill_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_PLACS_WORKHOURSBILL_TC_TBILL` (`FTBILLID`),
  KEY `IDX_PLACS_WORKHOURSBILL_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_placs_workhoursbill_wb definition

CREATE TABLE `t_placs_workhoursbill_wb` (
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
  KEY `idx_placs_workhoursbill_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_addtmember definition

CREATE TABLE `t_pmas_addtmember` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FAPPLICANT` bigint NOT NULL DEFAULT '0',
  `FAUDITSTATUS` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROLEADERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FISAPPLYBILL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_ADDTMEMBER_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_addtmember_l definition

CREATE TABLE `t_pmas_addtmember_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPINION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_ADDTMEMBER_L_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_addtmemberentry definition

CREATE TABLE `t_pmas_addtmemberentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FROLEID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTELNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISORIGINAL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINSIDEORGID` bigint NOT NULL DEFAULT '0',
  `FINSIDECOMPANYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_ADDTMEMBERENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_addtmemberentry_l definition

CREATE TABLE `t_pmas_addtmemberentry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_ADDTMEMBERENTRY_L_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_approval_apply definition

CREATE TABLE `t_pmas_approval_apply` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANBEGINDATE` datetime DEFAULT NULL,
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FPARENTPROID` bigint NOT NULL DEFAULT '0',
  `FPROPROPOSALID` bigint NOT NULL DEFAULT '0',
  `FPROJECTAPPLYDATE` datetime DEFAULT NULL,
  `FINVESTDIRECTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDUSTRYKINDID` bigint NOT NULL DEFAULT '0',
  `FINVESTKIND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROLEADERID` bigint NOT NULL DEFAULT '0',
  `FLEADERCONTTYPE` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPLANPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPROVINCIALPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISCOPYPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSPECIALPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOPYTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTORGID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FIMPLEMENTORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FANNUALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINDUSTRYID` bigint NOT NULL DEFAULT '0',
  `FINVESTPERIOD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROADMINDIVISION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROREGION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISAPPROVAL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FPURPOSE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTRODUCTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTRISK` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACKGROUND` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FYEARBUGAPPROVALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROINVESTBUDAPPAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_AP_APPLY_BILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_approval_apply_l definition

CREATE TABLE `t_pmas_approval_apply_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURPOSE` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINTRODUCTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTRISK` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACKGROUND` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PRO_APPLY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_approval_apply_lk definition

CREATE TABLE `t_pmas_approval_apply_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmas_approval_apply_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_approval_apply_r3 definition

CREATE TABLE `t_pmas_approval_apply_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_approval_apply_tc definition

CREATE TABLE `t_pmas_approval_apply_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_PMAS_APPROVAL_APPLY_TC_TBILL` (`FTBILLID`),
  KEY `IDX_PMAS_APPROVAL_APPLY_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_approval_apply_wb definition

CREATE TABLE `t_pmas_approval_apply_wb` (
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
  KEY `idx_pmas_approval_apply_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_approvaldoc definition

CREATE TABLE `t_pmas_approvaldoc` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_APPDOC_0` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_auditdoc definition

CREATE TABLE `t_pmas_auditdoc` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_AUDDOC_0` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_budget definition

CREATE TABLE `t_pmas_budget` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FBUDGETSTAGE` bigint NOT NULL DEFAULT '0',
  `FPREVAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSCHANGEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRESAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVCHANGEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBUDGETCTRL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBUDGETPERIOD` datetime DEFAULT NULL,
  `FBUDGETPRONUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETPRONAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETPROID` bigint NOT NULL DEFAULT '0',
  `FBUDGETCONTROLMODE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTCOSTCONTROL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSPLITTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTAPPLYDATE` datetime DEFAULT NULL,
  `FYEAR` datetime DEFAULT NULL,
  `FTOTALYEARAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROAPPROVALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_BUDGET_NUMBER` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_budgetctrlentry definition

CREATE TABLE `t_pmas_budgetctrlentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNDERTAKEORGLD` bigint NOT NULL DEFAULT '0',
  `FUNDERTAKEPERIOD` datetime DEFAULT NULL,
  `FBEFORERATIO` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBEFOREAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENTRATIO` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDIFFERENCEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYPRONAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYPRONUMBER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYPROID` bigint NOT NULL DEFAULT '0',
  `FCONTROLINFOCOMMON` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISNEW` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCTRLBUDGETITEMNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FCTRLPROBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_BUDGETCTRLENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_budgetentry definition

CREATE TABLE `t_pmas_budgetentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTIONENTRY` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETITEMNAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FPROJECTBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FSIAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVIAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVICHANGEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSICHANGEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISPRES` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPREV` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMAS_BUDGETENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_bugetperforment_r3 definition

CREATE TABLE `t_pmas_bugetperforment_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_bugetperformentry definition

CREATE TABLE `t_pmas_bugetperformentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPERFORMTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLCREATORID` bigint NOT NULL DEFAULT '0',
  `FBILLCREATEDATE` datetime DEFAULT NULL,
  `FBILLAUDITORID` bigint NOT NULL DEFAULT '0',
  `FBILLAUDITDATE` datetime DEFAULT NULL,
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FBILLAMTONCONT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERFORMAMTTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCONTCURRENCYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_BPENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_bugetperformentry_r3 definition

CREATE TABLE `t_pmas_bugetperformentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_fund_entry definition

CREATE TABLE `t_pmas_fund_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTYPEID` bigint NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOLDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDIFFAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFORMOFINVEST` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSCALE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENTENTRYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_fund_entry_l definition

CREATE TABLE `t_pmas_fund_entry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_FUNDENTRYL` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_fundsource definition

CREATE TABLE `t_pmas_fundsource` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISVALID` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPROJKINDID` bigint NOT NULL DEFAULT '0',
  `FBUDGETPERIOD` datetime DEFAULT NULL,
  `FBUDGETPRONUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETPRONAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALOLDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALDIFFAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEAR` datetime DEFAULT NULL,
  `FAPPROVEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCURINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_FUNDSOURCE_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_fundsource_l definition

CREATE TABLE `t_pmas_fundsource_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_FUNDSOURCE_L` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_fundsourcetype definition

CREATE TABLE `t_pmas_fundsourcetype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCAPITALTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_FUNDSOURCETYPE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_fundsourcetype_l definition

CREATE TABLE `t_pmas_fundsourcetype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_FUNDSOURCETYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_fundsourcetype_r3 definition

CREATE TABLE `t_pmas_fundsourcetype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_investplantype definition

CREATE TABLE `t_pmas_investplantype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_INVESTPLANTYPE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_investplantype_l definition

CREATE TABLE `t_pmas_investplantype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_INVESTPLANTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_investplantype_r3 definition

CREATE TABLE `t_pmas_investplantype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_nowteam definition

CREATE TABLE `t_pmas_nowteam` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FSEQNO` int NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FROLEID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTELNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCHARGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_NOWTEAM_0` (`FPROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_nowteam_l definition

CREATE TABLE `t_pmas_nowteam_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_NOWTEAM_L_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_outaddtmemberentry definition

CREATE TABLE `t_pmas_outaddtmemberentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTELNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISORIGINAL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FOUTPARTNERID` bigint NOT NULL DEFAULT '0',
  `FOUTROLEOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTBIZPARTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_OUTTMEMBERENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_outaddtmemberentry_l definition

CREATE TABLE `t_pmas_outaddtmemberentry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_OUTADDTMAMENTRY_L_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_outbudrealentry definition

CREATE TABLE `t_pmas_outbudrealentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREALPROBUDGETNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FREALUNDERTAKEORGID` bigint NOT NULL DEFAULT '0',
  `FREALUNDERTAKEPERIOD` datetime DEFAULT NULL,
  `FREALPRONAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALPRONUMBER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALPROID` bigint NOT NULL DEFAULT '0',
  `FREALUNDERTAKEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALBEFOREAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALDIFFERENCEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUSEDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_OUTBUDREALENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_outnowteam definition

CREATE TABLE `t_pmas_outnowteam` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FSEQNO` int NOT NULL DEFAULT '0',
  `FMEMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTELNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTPARTNERID` bigint NOT NULL DEFAULT '0',
  `FROLEOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTBIZPARTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_OUTNOWTEAM_0` (`FPROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_outnowteam_l definition

CREATE TABLE `t_pmas_outnowteam_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_OUTNOWTEAM_L_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_outteam_entry definition

CREATE TABLE `t_pmas_outteam_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTELNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTPARTNERID` bigint NOT NULL DEFAULT '0',
  `FOUTROLEOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTBIZPARTNERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_OUTTEAMENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_outteam_entry_l definition

CREATE TABLE `t_pmas_outteam_entry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_OUTTEAMENTRY_L_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_outteamch_entry definition

CREATE TABLE `t_pmas_outteamch_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHMEMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHROLE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTCHPREROLE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHTELNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTCHPARTNERID` bigint NOT NULL DEFAULT '0',
  `FOUTCHROLEOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTCHPREROLEOBJ` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTCHBIZPARTNERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_OUTTEAMCHENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_outteamch_entry_l definition

CREATE TABLE `t_pmas_outteamch_entry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_OUTTEAMCHENTRY_L_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_outteamchd_entry definition

CREATE TABLE `t_pmas_outteamchd_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHDMEMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHDROLE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHDTELNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTCHDPARTNERID` bigint NOT NULL DEFAULT '0',
  `FOUTCHDROLEOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTCHDBIZPARTNERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_OUTTEAMCHDENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_outteamchd_entry_l definition

CREATE TABLE `t_pmas_outteamchd_entry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHDNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_OUTTEAMCHDENTRY_L_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_adjfieldentry definition

CREATE TABLE `t_pmas_pro_adjfieldentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDVALUE` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMUSTINPUT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PRO_ADJFIELD_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_budgetentry definition

CREATE TABLE `t_pmas_pro_ap_budgetentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUDGETSTAGEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PROAP_BUDGETENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_fieldentry definition

CREATE TABLE `t_pmas_pro_ap_fieldentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDVALUE` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMUSTINPUT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PRO_AP_FIELD_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_fundentry definition

CREATE TABLE `t_pmas_pro_ap_fundentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSOURCETYPE` bigint NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFORMOFINVEST` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSCALE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PRO_AP_FS_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_fundentry_l definition

CREATE TABLE `t_pmas_pro_ap_fundentry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PRO_AP_FS_L_0` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_inentry definition

CREATE TABLE `t_pmas_pro_ap_inentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FBUDGETITEMNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FINBUDSUMAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PRO_AP_IN_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_inentry_l definition

CREATE TABLE `t_pmas_pro_ap_inentry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PRO_AP_IN_L_0` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_outeamentry definition

CREATE TABLE `t_pmas_pro_ap_outeamentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FOUTERTEAMUSER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTTEAMROLE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTERTEAMTELNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTTEAMPARTNERID` bigint NOT NULL DEFAULT '0',
  `FOUTROLEOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTBIZPARTNERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PRO_AP_OUTTEAM_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_outeamentry_l definition

CREATE TABLE `t_pmas_pro_ap_outeamentry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTERTEAMDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PRO_AP_OUTTEAM_L_0` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_outentry definition

CREATE TABLE `t_pmas_pro_ap_outentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FBUDGETITEMNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FOUTBUDSUMAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PRO_AP_OUT_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_outentry_l definition

CREATE TABLE `t_pmas_pro_ap_outentry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PRO_AP_OUT_L_0` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_teamentry definition

CREATE TABLE `t_pmas_pro_ap_teamentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTEAMUSERID` bigint NOT NULL DEFAULT '0',
  `FTEAMROLEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEAMTELNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCHARGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTEAMORGID` bigint NOT NULL DEFAULT '0',
  `FTEAMCOMPANYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PRO_AP_TEAM_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_ap_teamentry_l definition

CREATE TABLE `t_pmas_pro_ap_teamentry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PRO_AP_TEAM_L_0` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_app_audit definition

CREATE TABLE `t_pmas_pro_app_audit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FISREPORT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FREPORTSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTAUDITID` bigint NOT NULL DEFAULT '0',
  `FPROAPPID` bigint NOT NULL DEFAULT '0',
  `FWFAPPCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PRO_APP_AUDIT_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_appadjust definition

CREATE TABLE `t_pmas_pro_appadjust` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FKINDID` bigint NOT NULL DEFAULT '0',
  `FPROID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANBEGINDATE` datetime DEFAULT NULL,
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FPROSTATUS` bigint NOT NULL DEFAULT '0',
  `FPARENTPROID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTORGID` bigint NOT NULL DEFAULT '0',
  `FSYSCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FPROADMINDIVISION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` decimal(23,1) NOT NULL DEFAULT '0.0',
  `FPRONAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PRO_APPADJ_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_appadjust_l definition

CREATE TABLE `t_pmas_pro_appadjust_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRONAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PRO_ADJ_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_approval definition

CREATE TABLE `t_pmas_pro_approval` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FKINDID` bigint NOT NULL DEFAULT '0',
  `FPROID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANBEGINDATE` datetime DEFAULT NULL,
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FPROSTATUS` bigint NOT NULL DEFAULT '0',
  `FCURRENCYFIELD` bigint NOT NULL DEFAULT '0',
  `FPARENTPROID` bigint NOT NULL DEFAULT '0',
  `FEXPINCOMEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOUTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSYSCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FBUDGETPERIOD` datetime DEFAULT NULL,
  `FBUDGETPRONUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETPRONAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETSTAGEID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTORGID` bigint NOT NULL DEFAULT '0',
  `FCHANGEREASON` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETPROID` bigint NOT NULL DEFAULT '0',
  `FBUDGETCTRL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPROADMINDIVISION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETCONTROLMODE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTCOSTCONTROL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBUGPRONAMEID` bigint NOT NULL DEFAULT '0',
  `FPROCTRLTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUGAREA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSETRATIO` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROLEADERID` bigint NOT NULL DEFAULT '0',
  `FLEADERCONTTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISREPORT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FREPAUDSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPROPOSALID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCONDITION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FPROJCETBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSPLITTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PRO_AP_0` (`FBILLNO`),
  KEY `IDX_PMAS_PRO_PROID` (`FPROID`),
  KEY `IDX_PMAS_PRO_FKINDID` (`FKINDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_approval_a definition

CREATE TABLE `t_pmas_pro_approval_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROJECTAPPLYDATE` datetime DEFAULT NULL,
  `FBUILDNATURE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTDIRECTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTKIND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOVERSEAPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINDUSTRYKINDID` bigint NOT NULL DEFAULT '0',
  `FPRONEGATIVELISTID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FINDUSTRYID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FNEEDAPPROVAL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAPPROVALSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVALINFO` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCESUMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROOUTBUDGETSUMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROINBUDGETSUMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROINCOME` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTYIELD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROYEARBUDGETAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARPROYIELD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROBUDGETCTRL` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOVERALLCTRLYEAR` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTCTRLBUDGET` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVALAPPLYID` bigint NOT NULL DEFAULT '0',
  `FPROJECTAREA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPLANPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISCOPYPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOPYTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSPECIALPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPROVINCIALPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FAPPLYYEARAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLYSUMAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PRO_APPROVAL_A_0` (`FPROJECTAPPLYDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_approval_l definition

CREATE TABLE `t_pmas_pro_approval_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURPOSE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PRO_AP_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_approval_r3 definition

CREATE TABLE `t_pmas_pro_approval_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_audit definition

CREATE TABLE `t_pmas_pro_audit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRONAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUGPRONAMEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROCTRLTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUGAREA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSETRATIO` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLEADERCONTTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILLORGID` bigint NOT NULL DEFAULT '0',
  `FPROCONDITION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKINDID` bigint NOT NULL DEFAULT '0',
  `FPROPROPOSALID` bigint NOT NULL DEFAULT '0',
  `FPROLEADERID` bigint NOT NULL DEFAULT '0',
  `FREPLYSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPAUDSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCETBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PRO_AD_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_pro_mat_entry definition

CREATE TABLE `t_pmas_pro_mat_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTACHTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PRO_AP_PM_0` (`FATTACHTYPEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_proapply_entry definition

CREATE TABLE `t_pmas_proapply_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYFUNDRESOURCE` bigint NOT NULL DEFAULT '0',
  `FENTRYCAPTIALFORM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYSCALE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYANNUALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYCURRENCYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_APPLY_ENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_proapply_entry_lk definition

CREATE TABLE `t_pmas_proapply_entry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmas_proapply_entry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_proaud_mat_entry definition

CREATE TABLE `t_pmas_proaud_mat_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTACHTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PROAUD_MAT_0` (`FATTACHTYPEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_probudgetbyyear definition

CREATE TABLE `t_pmas_probudgetbyyear` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FYEAR` datetime DEFAULT NULL,
  `FLASTYEARSURPLUSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURYEARAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMBUDGETAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMAS_PROBUDGETBYYEAR` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_proctrlinfoentry definition

CREATE TABLE `t_pmas_proctrlinfoentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FUNDERTAKEORGLD` bigint NOT NULL DEFAULT '0',
  `FUNDERTAKEPERIOD` datetime DEFAULT NULL,
  `FUNDERTAKERATIO` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNDERTAKEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYPRONAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYPRONUMBER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYPROID` bigint NOT NULL DEFAULT '0',
  `FCONTROLINFOCOMMON` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLOUTITEMNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLOUTITEMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PROCTRLINFOENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_proindexentry definition

CREATE TABLE `t_pmas_proindexentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINDEXNAMEID` bigint NOT NULL DEFAULT '0',
  `FDECLAREVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINDEXWARNLIGHT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDARDINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXCELLENTINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PROINDEXENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_proj_audit definition

CREATE TABLE `t_pmas_proj_audit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRONO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRONAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKIND` bigint NOT NULL DEFAULT '0',
  `FREPORTORG` bigint NOT NULL DEFAULT '0',
  `FPROORGID` bigint NOT NULL DEFAULT '0',
  `FCANREPORT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREPORTINGORG` bigint NOT NULL DEFAULT '0',
  `FREPORTSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTPROAUDITID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWFAPPCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROAPPID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PROJ_AUD_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_proj_audit_l definition

CREATE TABLE `t_pmas_proj_audit_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURPOSE` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PROJ_AUD_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectattachtem definition

CREATE TABLE `t_pmas_projectattachtem` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PMAS_PROATTACHTEM` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectbudget definition

CREATE TABLE `t_pmas_projectbudget` (
  `FSEQUENCE` int NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FVICHANGEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBUDGETAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVIAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSIAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FPARENT` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FSOURCETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '1',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PROJECTBUDGET_NAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectbudget_r3 definition

CREATE TABLE `t_pmas_projectbudget_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectbudget_s definition

CREATE TABLE `t_pmas_projectbudget_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREMINDRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTROLRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMAINRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMINDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTROLAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREOCCUPYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOCCUPYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERFORMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMAINAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROCOSTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PB_S_CAMT` (`FCONTROLAMT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectobjectiv_r3 definition

CREATE TABLE `t_pmas_projectobjectiv_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectobjective definition

CREATE TABLE `t_pmas_projectobjective` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FOPERATOR` bigint NOT NULL DEFAULT '0',
  `FOPERATIONDATE` datetime DEFAULT NULL,
  `FOBJSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJKINDID` bigint NOT NULL DEFAULT '0',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FVERSION` decimal(23,1) NOT NULL DEFAULT '0.0',
  `FRELATIONOBJ` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PROJECTOBJECTIVE` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectobjective_l definition

CREATE TABLE `t_pmas_projectobjective_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOBJECTIVE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPINION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PROJECTOBJECTIVE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectobjective_r3 definition

CREATE TABLE `t_pmas_projectobjective_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectprogramm_r3 definition

CREATE TABLE `t_pmas_projectprogramm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectprogramme definition

CREATE TABLE `t_pmas_projectprogramme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FPROGRAMMETYPE` bigint NOT NULL DEFAULT '0',
  `FOPERATOR` bigint NOT NULL DEFAULT '0',
  `FOPERATIONDATE` datetime DEFAULT NULL,
  `FPROGSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJKINDID` bigint NOT NULL DEFAULT '0',
  `FVERSION` decimal(23,1) NOT NULL DEFAULT '0.0',
  `FRELATIONPROG` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PROJECTPROGRAMME` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectprogramme_l definition

CREATE TABLE `t_pmas_projectprogramme_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPINION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROGRAMME` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PROJECTPROGRAMME_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectprogramme_r3 definition

CREATE TABLE `t_pmas_projectprogramme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectschemety_r3 definition

CREATE TABLE `t_pmas_projectschemety_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectschemetype definition

CREATE TABLE `t_pmas_projectschemetype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PROJECTSCHEMETYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectschemetype_l definition

CREATE TABLE `t_pmas_projectschemetype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PROJECTSCHEMETYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projectschemetype_r3 definition

CREATE TABLE `t_pmas_projectschemetype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projteam definition

CREATE TABLE `t_pmas_projteam` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPROJKINDID` bigint NOT NULL DEFAULT '0',
  `FPROLEADERID` bigint NOT NULL DEFAULT '0',
  `FLEADERCONTTYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_TEAM_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projteam_l definition

CREATE TABLE `t_pmas_projteam_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PROJTEAM_L_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projteam_tc definition

CREATE TABLE `t_pmas_projteam_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint NOT NULL DEFAULT '0' COMMENT '目标单单据内码',
  `FTTABLEID` bigint NOT NULL DEFAULT '0' COMMENT '目标单主实体表格编码',
  `FTID` bigint NOT NULL DEFAULT '0' COMMENT '目标单主实体内码',
  `FSBILLID` bigint NOT NULL DEFAULT '0' COMMENT '源单单据内码',
  `FSTABLEID` bigint NOT NULL DEFAULT '0' COMMENT '源单主实体表格编码',
  `FSID` bigint NOT NULL DEFAULT '0' COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_PMAS_PROJTEAM_TC_TBILL` (`FTBILLID`),
  KEY `IDX_PMAS_PROJTEAM_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_projteam_wb definition

CREATE TABLE `t_pmas_projteam_wb` (
  `FId` bigint NOT NULL,
  `FEntryId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FRULEVERID` bigint NOT NULL DEFAULT '0' COMMENT '反写规则历史版本标识',
  `FRULEITEMID` bigint NOT NULL DEFAULT '0' COMMENT '反写条目编码',
  `FOPERATE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ' COMMENT '反写操作',
  `FSTABLEID` bigint NOT NULL DEFAULT '0' COMMENT '反写源单主实体表格编码',
  `FSID` bigint NOT NULL DEFAULT '0' COMMENT '反写源单主实体内码',
  `FSBILLID` bigint NOT NULL DEFAULT '0' COMMENT '反写源单内码',
  `FWRITEVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000' COMMENT '反写量',
  PRIMARY KEY (`FEntryId`),
  KEY `idx_pmas_projteam_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_promanager definition

CREATE TABLE `t_pmas_promanager` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PROMANAGER_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_prorealentry definition

CREATE TABLE `t_pmas_prorealentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREALPROBUDGETNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FREALUNDERTAKEORGID` bigint NOT NULL DEFAULT '0',
  `FREALUNDERTAKEPERIOD` datetime DEFAULT NULL,
  `FREALPRONAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALPRONUMBER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALPROID` bigint NOT NULL DEFAULT '0',
  `FREALUNDERTAKEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUSEDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PROREALENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_prostatusentry definition

CREATE TABLE `t_pmas_prostatusentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPROJECTSTAGEID` bigint NOT NULL DEFAULT '0',
  `FPROJECTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FREMARKS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTAGENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROAPPROVALID` bigint NOT NULL DEFAULT '0',
  `FSTATUSPERCENT` decimal(23,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_PROSTATUSENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_prostatusentry_r3 definition

CREATE TABLE `t_pmas_prostatusentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_prosupervision definition

CREATE TABLE `t_pmas_prosupervision` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FADJUSTEXPLAIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLATESTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVERSION` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FSYSCREATION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_PRO_SUP_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_prosupervision_l definition

CREATE TABLE `t_pmas_prosupervision_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADJUSTEXPLAIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_PRO_SUP_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_prosupervision_lk definition

CREATE TABLE `t_pmas_prosupervision_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmas_prosupervision_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_prosupervision_tc definition

CREATE TABLE `t_pmas_prosupervision_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_PMAS_PROSUPERVISION_TC_TBILL` (`FTBILLID`),
  KEY `IDX_PMAS_PROSUPERVISION_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_prosupervision_wb definition

CREATE TABLE `t_pmas_prosupervision_wb` (
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
  KEY `idx_pmas_prosupervision_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_sourceentry definition

CREATE TABLE `t_pmas_sourceentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFUNDRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FFORMOFINVEST` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSCALE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARK` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_SOUR_0` (`FFUNDRESOURCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_specialapprtype definition

CREATE TABLE `t_pmas_specialapprtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMAS_SPECIALAPPRTYPE_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_specialapprtype_l definition

CREATE TABLE `t_pmas_specialapprtype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_SPECIALAPPRTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_specialapprtype_r3 definition

CREATE TABLE `t_pmas_specialapprtype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_supervise definition

CREATE TABLE `t_pmas_supervise` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJECTSTAGEID` bigint NOT NULL DEFAULT '0',
  `FWORKITEM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEYITEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSYSBILLID` bigint NOT NULL DEFAULT '0',
  `FSUPERVISIONID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEYPROPERTYID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FESTIMATEENDTIME` datetime DEFAULT NULL,
  `FHIDDENDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_SUPERVISE_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_supervise_l definition

CREATE TABLE `t_pmas_supervise_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKITEM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_SUPERVISE_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_supervision definition

CREATE TABLE `t_pmas_supervision` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJECTSTAGEID` bigint NOT NULL DEFAULT '0',
  `FWORKITEM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEYITEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSYSBILLID` bigint NOT NULL DEFAULT '0',
  `FSUPERVISIONID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEYPROPERTYID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FESTIMATEENDTIME` datetime DEFAULT NULL,
  `FHIDDENDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_SUP_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_supervision_l definition

CREATE TABLE `t_pmas_supervision_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKITEM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_SUP_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_supervision_lk definition

CREATE TABLE `t_pmas_supervision_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmas_supervision_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_team_entry definition

CREATE TABLE `t_pmas_team_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMEMBERID` bigint NOT NULL DEFAULT '0',
  `FROLEID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTELNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCHARGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENTRYORGID` bigint NOT NULL DEFAULT '0',
  `FENTRYCOMPANYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_TEAMENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_team_entry_l definition

CREATE TABLE `t_pmas_team_entry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_TEAMENTRY_L_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_team_entry_lk definition

CREATE TABLE `t_pmas_team_entry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint NOT NULL DEFAULT '0' COMMENT '源单主实体编码',
  `FSBILLID` bigint NOT NULL DEFAULT '0' COMMENT '源单内码',
  `FSID` bigint NOT NULL DEFAULT '0' COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmas_team_entry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_teamchange_entry definition

CREATE TABLE `t_pmas_teamchange_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHMEMBERID` bigint NOT NULL DEFAULT '0',
  `FCHROLEID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREROLEID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHTELNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCHARGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHORGID` bigint NOT NULL DEFAULT '0',
  `FCHCOMPANYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_TEAMCHENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_teamchange_entry_l definition

CREATE TABLE `t_pmas_teamchange_entry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_TEAMCHENTRY_L_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_teamchanged_entry definition

CREATE TABLE `t_pmas_teamchanged_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHDMEMBERID` bigint NOT NULL DEFAULT '0',
  `FCHDROLEID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHDTELNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCHARGE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHDORGID` bigint NOT NULL DEFAULT '0',
  `FCHDCOMPANYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMAS_TEAMCHDENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmas_teamchanged_entry_l definition

CREATE TABLE `t_pmas_teamchanged_entry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHDNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMAS_TEAMCHDENTRY_L_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_attachmentfield definition

CREATE TABLE `t_pmbs_attachmentfield` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PMBS_ATTACHMENTFIELD_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_attachtype definition

CREATE TABLE `t_pmbs_attachtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_ATTTYPE_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_attachtype_l definition

CREATE TABLE `t_pmbs_attachtype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_ATT_TY_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_attachtype_r3 definition

CREATE TABLE `t_pmbs_attachtype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_attachtypeentry definition

CREATE TABLE `t_pmbs_attachtypeentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATTACHTYPE` bigint NOT NULL DEFAULT '0',
  `FNECESSARY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_ATT_TY_EN_0` (`FATTACHTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_bbd_projectentry definition

CREATE TABLE `t_pmbs_bbd_projectentry` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_bgcontrolbizreg definition

CREATE TABLE `t_pmbs_bgcontrolbizreg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDALIAS` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZSYSTEMID` bigint NOT NULL DEFAULT '0',
  `FBIZSYSTEMALIAS` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZUNITID` bigint NOT NULL DEFAULT '0',
  `FBIZUNITALIAS` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISPREFAB` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FFIELDTABLE` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISENTRYFIELD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISFLEX` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FVALUESOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFLEXDATATABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFEREDSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBUDGETMAPPINGID` bigint NOT NULL DEFAULT '0',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_BGCONTROLBIZREG_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_bgcontrolbizreg_l definition

CREATE TABLE `t_pmbs_bgcontrolbizreg_l` (
  `FPKID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_bgcontrolbizreg_r3 definition

CREATE TABLE `t_pmbs_bgcontrolbizreg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budget_costitem definition

CREATE TABLE `t_pmbs_budget_costitem` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_BUDGET_COSTITEM` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgetitem definition

CREATE TABLE `t_pmbs_budgetitem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_BUDGETITEM_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgetitem_l definition

CREATE TABLE `t_pmbs_budgetitem_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_BUDGETITEM_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgetitem_r3 definition

CREATE TABLE `t_pmbs_budgetitem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgetmapentry definition

CREATE TABLE `t_pmbs_budgetmapentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMAPPINGVALUEID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FPROBUDGETID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_BUDGETMAPENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgetmapping definition

CREATE TABLE `t_pmbs_budgetmapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAPPINGDIMID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAPPINGDIMTYPEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_BUDGETMAPPING_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgetmapping_l definition

CREATE TABLE `t_pmbs_budgetmapping_l` (
  `FPKID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_BUDGETMAPPING_L_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgetmapping_r3 definition

CREATE TABLE `t_pmbs_budgetmapping_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgetstage definition

CREATE TABLE `t_pmbs_budgetstage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISDEFAULT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSEQNO` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_BUDGETSTAGE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgetstage_l definition

CREATE TABLE `t_pmbs_budgetstage_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_BUDGETSTAGE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgetstage_r3 definition

CREATE TABLE `t_pmbs_budgetstage_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgetstageentry definition

CREATE TABLE `t_pmbs_budgetstageentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FBUDGETSTAGEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_BUDGETSTAGEENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgettpl definition

CREATE TABLE `t_pmbs_budgettpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_BUDGETTPL_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgettpl_l definition

CREATE TABLE `t_pmbs_budgettpl_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_BUDGETTPL_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgettpl_r3 definition

CREATE TABLE `t_pmbs_budgettpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_budgettplentry definition

CREATE TABLE `t_pmbs_budgettplentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTIONENTRY` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETITEMNAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMBS_BUDGETTPLENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_conbizregdata definition

CREATE TABLE `t_pmbs_conbizregdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FFIELDDIMENSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FFIELDTABLE` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQUENCE` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_CONBIZREGDATA_0` (`FBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_conbizregdata_r3 definition

CREATE TABLE `t_pmbs_conbizregdata_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_conbizregentity definition

CREATE TABLE `t_pmbs_conbizregentity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPREFAB` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_CONBIZREGENTITY_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_contractbudget definition

CREATE TABLE `t_pmbs_contractbudget` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FOCCUPYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERFORMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTSUBMITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTAUDITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLESUBMITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEAUDITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYAPPLYSUBMITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYAPPLYAUDITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOCCUPYAMTEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERFORMAMTEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTSUBMITAMTEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTAUDITAMTEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLESUBMITAMTEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEAUDITAMTEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYAPPLYSUBMITAMTEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYAPPLYAUDITAMTEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCONTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FACTUALSUBMITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALAUDITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALSUBMITAMTEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALAUDITAMTEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_CONTRACTBUDGET_1` (`FBUDGETITEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_contractbudget_r3 definition

CREATE TABLE `t_pmbs_contractbudget_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_contractpayitem definition

CREATE TABLE `t_pmbs_contractpayitem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FPAYTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYFEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYWAYID` bigint NOT NULL DEFAULT '0',
  `FPAYPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPLANPAYTIME` datetime DEFAULT NULL,
  `FREMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREIMBURSEDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREIMBURSEDCOMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREIMBURSABLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAIDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAIDCOMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNPAIDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYPLANENTRYID` bigint NOT NULL DEFAULT '0',
  `FPAYPLANSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FPERFORMENTRYID` bigint NOT NULL DEFAULT '0',
  `FAUTOGENERATED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYDIRECTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'out',
  `FCUSTOMERID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODESETTINGSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODESETTINGID` bigint NOT NULL DEFAULT '0',
  `FAPPLIEDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLIEDCOMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLIABLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTASKCOMPLETESTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_CONTRACTPAYITEM_1` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_contractpayitem_l definition

CREATE TABLE `t_pmbs_contractpayitem_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_CONTRACTPAYITEM_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_contractpayitem_lk definition

CREATE TABLE `t_pmbs_contractpayitem_lk` (
  `FID` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmbs_contractpayitem_lk_fk` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_contractpayitem_r3 definition

CREATE TABLE `t_pmbs_contractpayitem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_contractpayitem_tc definition

CREATE TABLE `t_pmbs_contractpayitem_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_PMBS_CONTRACTPAYITEM_TC_TBILL` (`FTBILLID`),
  KEY `IDX_PMBS_CONTRACTPAYITEM_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_contractpayitem_wb definition

CREATE TABLE `t_pmbs_contractpayitem_wb` (
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
  KEY `idx_pmbs_contractpayitem_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_cost_dimension definition

CREATE TABLE `t_pmbs_cost_dimension` (
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
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_COST_DIMENSION` (`FNUMBER`),
  KEY `IDX_T_PMBS_COST_DIMENSION_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PMBS_COST_DIMENSION_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_cost_dimension_bit definition

CREATE TABLE `t_pmbs_cost_dimension_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_cost_dimension_l definition

CREATE TABLE `t_pmbs_cost_dimension_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_COST_DIMENSION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_cost_dimension_r3 definition

CREATE TABLE `t_pmbs_cost_dimension_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_cost_dimension_u definition

CREATE TABLE `t_pmbs_cost_dimension_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMBS_COST_DIMENSION_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_cost_dimensionexc definition

CREATE TABLE `t_pmbs_cost_dimensionexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMBS_COST_DIMENSIONEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_cost_dimensionusereg definition

CREATE TABLE `t_pmbs_cost_dimensionusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMBS_COST_DIMENSIONUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_costcontrolpara_r3 definition

CREATE TABLE `t_pmbs_costcontrolpara_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_costcontrolparams definition

CREATE TABLE `t_pmbs_costcontrolparams` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMVALUE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIBE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_PKCONTROLPARAMS_1` (`FPARAMNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_costcontrolparams_r3 definition

CREATE TABLE `t_pmbs_costcontrolparams_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_costitem definition

CREATE TABLE `t_pmbs_costitem` (
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
  `FLONGNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '1',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FCOSTDIMENSIONID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_COSTITEM_NUMBER` (`FNUMBER`),
  KEY `IDX_T_PMBS_COSTITEM_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PMBS_COSTITEM_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_costitem_bit definition

CREATE TABLE `t_pmbs_costitem_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_costitem_l definition

CREATE TABLE `t_pmbs_costitem_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_COSTITEM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_costitem_r3 definition

CREATE TABLE `t_pmbs_costitem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_costitem_u definition

CREATE TABLE `t_pmbs_costitem_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMBS_COSTITEM_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_costitemexc definition

CREATE TABLE `t_pmbs_costitemexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMBS_COSTITEMEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_costitemusereg definition

CREATE TABLE `t_pmbs_costitemusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMBS_COSTITEMUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_ctrlinbudgetentry definition

CREATE TABLE `t_pmbs_ctrlinbudgetentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FINBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FINBUDGETNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_CTRLINBUDGETENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_ctrlindexentry definition

CREATE TABLE `t_pmbs_ctrlindexentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINDEXNAMEID` bigint NOT NULL DEFAULT '0',
  `FSTANDARDINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXCELLENTINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_CTRLINDEXENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_ctrloutbudgetentry definition

CREATE TABLE `t_pmbs_ctrloutbudgetentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FOUTBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FOUTBUDGETNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_CTRLOUTBUDGETENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_ctrlsettingentry definition

CREATE TABLE `t_pmbs_ctrlsettingentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FFIELDKEY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMUSTINPUT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FASSISTGROUPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_CTRLSETTINGENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_ctrlsettingentry_l definition

CREATE TABLE `t_pmbs_ctrlsettingentry_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHOWNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_CTRLSETTINGENTRY_L_1` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_decorgconfentry definition

CREATE TABLE `t_pmbs_decorgconfentry` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_DE_CO_EN_0` (`FBASEDATAID`,`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_depotfield definition

CREATE TABLE `t_pmbs_depotfield` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FFIELDTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FASSISTGROUPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_DEPOTFIELD_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_depotfield_l definition

CREATE TABLE `t_pmbs_depotfield_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_DEPOTFIELD_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_depotfield_r3 definition

CREATE TABLE `t_pmbs_depotfield_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_exclusionproj definition

CREATE TABLE `t_pmbs_exclusionproj` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_EXLUPROJ` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_fieldkind definition

CREATE TABLE `t_pmbs_fieldkind` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_FIELDKIND_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_fieldkind_l definition

CREATE TABLE `t_pmbs_fieldkind_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_FIELDKIND_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_fieldkind_r3 definition

CREATE TABLE `t_pmbs_fieldkind_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_filetypeentry definition

CREATE TABLE `t_pmbs_filetypeentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFILETYPEID` bigint NOT NULL DEFAULT '0',
  `FMUSTRECORD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMOREUPLOADS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_FILE_TY_EN_0` (`FFILETYPEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_indexlibrary definition

CREATE TABLE `t_pmbs_indexlibrary` (
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
  `FLONGNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_INDEXLIBRARY_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_indexlibrary_l definition

CREATE TABLE `t_pmbs_indexlibrary_l` (
  `FPKID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_INDEXLIBRARY_L_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_indexlibrary_r3 definition

CREATE TABLE `t_pmbs_indexlibrary_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_industrykind definition

CREATE TABLE `t_pmbs_industrykind` (
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
  `FLONGNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FDESCRIBE` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_INDUSTRYKIND_0` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_industrykind_l definition

CREATE TABLE `t_pmbs_industrykind_l` (
  `FPKID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_INDUSTRYKIND_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_management_system definition

CREATE TABLE `t_pmbs_management_system` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPUBLISHSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FATTACHMENTNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTACHMENTCOUNT` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUBLISHUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMBS_MGTS_NUM` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_mgr_sys_entry definition

CREATE TABLE `t_pmbs_mgr_sys_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFILENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILEURL` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_MGR_SYS_ENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectkind definition

CREATE TABLE `t_pmbs_projectkind` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_PROKIND_0` (`FNUMBER`),
  KEY `IDX_T_PMBS_PROJECTKIND_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PMBS_PROJECTKIND_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectkind_bit definition

CREATE TABLE `t_pmbs_projectkind_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectkind_l definition

CREATE TABLE `t_pmbs_projectkind_l` (
  `FPKID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_PROKIND_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectkind_m definition

CREATE TABLE `t_pmbs_projectkind_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectkind_r3 definition

CREATE TABLE `t_pmbs_projectkind_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectkind_u definition

CREATE TABLE `t_pmbs_projectkind_u` (
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDATAID`,`FUSEORGID`),
  KEY `IDX_PMBS_PROKIND_U_0` (`FUSEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectkindexc definition

CREATE TABLE `t_pmbs_projectkindexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_pmbs_projectkindExc_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectkindusereg definition

CREATE TABLE `t_pmbs_projectkindusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`),
  KEY `IDX_T_PMBS_PROJECTKINDUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectstage definition

CREATE TABLE `t_pmbs_projectstage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSERIAL` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_PROJECTSTAGE_NUMBER` (`FNUMBER`),
  KEY `IDX_T_PMBS_PROJECTSTAGE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PMBS_PROJECTSTAGE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectstage_bit definition

CREATE TABLE `t_pmbs_projectstage_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectstage_l definition

CREATE TABLE `t_pmbs_projectstage_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_PROJECTSTAGE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectstage_r3 definition

CREATE TABLE `t_pmbs_projectstage_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectstage_u definition

CREATE TABLE `t_pmbs_projectstage_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMBS_PROJECTSTAGE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectstageentry definition

CREATE TABLE `t_pmbs_projectstageentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPROJECTSTAGEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_PROJECTSTAGEENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectstageexc definition

CREATE TABLE `t_pmbs_projectstageexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMBS_PROJECTSTAGEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projectstageusereg definition

CREATE TABLE `t_pmbs_projectstageusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMBS_PROJECTSTAGEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_projroles definition

CREATE TABLE `t_pmbs_projroles` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_PROJROLES` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_prokindctrlsett_r3 definition

CREATE TABLE `t_pmbs_prokindctrlsett_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_prokindctrlsetting definition

CREATE TABLE `t_pmbs_prokindctrlsetting` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISMAJORTYPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINBUDGETTPLID` bigint NOT NULL DEFAULT '0',
  `FOUTBUDGETTPLID` bigint NOT NULL DEFAULT '0',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FBUDGETCONTROLMODE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTCOSTCONTROL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPROBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FPROPOSALBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FINVESTBUDCONAMT` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROBUDGETCTRL` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOVERALLCTRLYEAR` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTCTRLBUDGET` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABSOLUTECTRL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPROJECTBUGAMTCTRL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROYEARBUDGETAMTCTRL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROPOSALCTRLAPPLYAMT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYCTRLAPPROVALAMT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETAUDITCTRLDRAWUPAMT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROAPPLYBILLTYPEID` bigint NOT NULL DEFAULT '1634953165206304768',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_PKCTRLSETTING_1` (`FPROJECTKINDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_prokindctrlsetting_r3 definition

CREATE TABLE `t_pmbs_prokindctrlsetting_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_prokindspv definition

CREATE TABLE `t_pmbs_prokindspv` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSPVPROJECTSTAGEID` bigint NOT NULL DEFAULT '0',
  `FWORKITEM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEYITEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSYSBILLID` bigint NOT NULL DEFAULT '0',
  `FKEYPROPCONFIGID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_PROKINDSPV_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_prokindspv_l definition

CREATE TABLE `t_pmbs_prokindspv_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKITEM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_PROKINDSPV_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_pronegativelist definition

CREATE TABLE `t_pmbs_pronegativelist` (
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
  `FINDUSTRYKINDID` bigint NOT NULL DEFAULT '0',
  `FKIND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARKS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_PRONEGATIVELIST_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_pronegativelist_l definition

CREATE TABLE `t_pmbs_pronegativelist_l` (
  `FPKID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARKS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_PRONEGATIVELIST_L_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_pronegativelist_r3 definition

CREATE TABLE `t_pmbs_pronegativelist_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_propermission definition

CREATE TABLE `t_pmbs_propermission` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FISSUBORDINATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEXCLUPROJSTR` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROLESSTR` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_PROPERM` (`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_propermission_r3 definition

CREATE TABLE `t_pmbs_propermission_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_publish_r3 definition

CREATE TABLE `t_pmbs_publish_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_reporgconf definition

CREATE TABLE `t_pmbs_reporgconf` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLCODEID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_RE_CONF_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_reporgconf_l definition

CREATE TABLE `t_pmbs_reporgconf_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_RE_CO_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_reporgconf_r3 definition

CREATE TABLE `t_pmbs_reporgconf_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_reporgconfentry definition

CREATE TABLE `t_pmbs_reporgconfentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREPORTORG` bigint NOT NULL DEFAULT '0',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_RE_CO_EN_0` (`FID`,`FREPORTORG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_spvprop definition

CREATE TABLE `t_pmbs_spvprop` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSYSBILLID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROFIELDNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROFIELDNUM` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIGURABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPROKINDVISIBLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_SPVPROP_0` (`FSYSBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_spvprop_r3 definition

CREATE TABLE `t_pmbs_spvprop_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_spvpropentry definition

CREATE TABLE `t_pmbs_spvpropentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROPNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPTYPE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDPROKINDVISIBLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_SPVPROPENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_structofbill definition

CREATE TABLE `t_pmbs_structofbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FFIELDTABLE` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISFROMOUTER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBILLTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_STRUCTOFBILL_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_structofbill_l definition

CREATE TABLE `t_pmbs_structofbill_l` (
  `FPKID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_STRUCTOFBILL_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_structofbill_r3 definition

CREATE TABLE `t_pmbs_structofbill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_supervisepropcond definition

CREATE TABLE `t_pmbs_supervisepropcond` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROPDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATA` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_SUPER_PROP_COND_0` (`FBILLNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_warnmessage definition

CREATE TABLE `t_pmbs_warnmessage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FWARNSOLUTIONID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FDATASOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWARNLEVEL` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_WARNMESSAGE_0` (`FDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_warnmonitor definition

CREATE TABLE `t_pmbs_warnmonitor` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWARNSOLUTIONID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEARLYWARNID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWARNLEVEL` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_WARNMONITOR_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_wbs definition

CREATE TABLE `t_pmbs_wbs` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMILESTONE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANSTARTTIME` datetime DEFAULT NULL,
  `FPLANENDTIME` datetime DEFAULT NULL,
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEDULE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMPLETEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTINITIALIZEID` bigint NOT NULL DEFAULT '0',
  `FRESOURCEWBSID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FORDER` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTSTATUSID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMBS_WBS_NUMBER_1` (`FNUMBER`),
  KEY `IDX_T_PMBS_WBS_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PMBS_WBS_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_wbs_bit definition

CREATE TABLE `t_pmbs_wbs_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_wbs_l definition

CREATE TABLE `t_pmbs_wbs_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_WBS_L_ID_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_wbs_m definition

CREATE TABLE `t_pmbs_wbs_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_wbs_r3 definition

CREATE TABLE `t_pmbs_wbs_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_wbs_u definition

CREATE TABLE `t_pmbs_wbs_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_pmbs_wbs_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_wbsexc definition

CREATE TABLE `t_pmbs_wbsexc` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  `FNEWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_t_pmbs_wbsExc_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_wbsusereg definition

CREATE TABLE `t_pmbs_wbsusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUseOrgID`,`FDataID`),
  KEY `IDX_T_PMBS_WBSUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_workexecution definition

CREATE TABLE `t_pmbs_workexecution` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJECTSTAGEID` bigint NOT NULL DEFAULT '0',
  `FKEYITEM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSYSBILLID` bigint NOT NULL DEFAULT '0',
  `FKEYPROPCONFIGID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FESTIMATEENDTIME` datetime DEFAULT NULL,
  `FACTUALENDTIME` datetime DEFAULT NULL,
  `FITEMWARNINGLIGHT` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FHIDDENDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSCANEND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRELATEBIZBILLIDS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDELETED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSUPERVISIONID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKITEM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMBS_WORK_EXECU_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_workexecution_l definition

CREATE TABLE `t_pmbs_workexecution_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKITEM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMBS_WORK_EXECU_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmbs_workexecution_r3 definition

CREATE TABLE `t_pmbs_workexecution_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_adjustdetailentry definition

CREATE TABLE `t_pmco_adjustdetailentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FADJUSTBUDGETITEMNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADJUSTBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FADJUSTPROBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FUNDERTAKEORGID` bigint NOT NULL DEFAULT '0',
  `FUNDERTAKEPERIOD` datetime DEFAULT NULL,
  `FBEFORERATIO` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBEFOREAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDIFFERENCERATIO` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYPRONAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYPRONUMBER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYPROID` bigint NOT NULL DEFAULT '0',
  `FCURRENTRATIO` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDIFFERENCEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FADJUSTCOMMON` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISNEW` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCO_ADJUSTDETAILENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_adjustrealentry definition

CREATE TABLE `t_pmco_adjustrealentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREALPROBUDGETNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FREALUNDERTAKEORGID` bigint NOT NULL DEFAULT '0',
  `FREALUNDERTAKEPERIOD` datetime DEFAULT NULL,
  `FREALPRONAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALPRONUMBER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALPROID` bigint NOT NULL DEFAULT '0',
  `FREALBEFOREAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALUNDERTAKEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALDIFFERENCEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCO_ADJUSTREALENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_budgetcontrol definition

CREATE TABLE `t_pmco_budgetcontrol` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCONTROLTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCO_BUDGETCONTROL_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_budgetcontrol_l definition

CREATE TABLE `t_pmco_budgetcontrol_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCO_BUDGETCONTROL_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_budgetcontrol_r3 definition

CREATE TABLE `t_pmco_budgetcontrol_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_budgetctrentry definition

CREATE TABLE `t_pmco_budgetctrentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORGBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FPROBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FREMINDRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTROLRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCO_BUDGETCTRENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_budgetrecord definition

CREATE TABLE `t_pmco_budgetrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBILLSOURCE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATEBILLID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETSTAGEID` bigint NOT NULL DEFAULT '0',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FPROJECTAPPLYDATE` datetime DEFAULT NULL,
  `FBUDGETCONTROLMODE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTCOSTCONTROL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FYEAR` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCO_BUDGETRECORD_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_conpaycostdetails definition

CREATE TABLE `t_pmco_conpaycostdetails` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONTRACT` bigint NOT NULL DEFAULT '0',
  `FCONAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMPAYAPPAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHISSPLITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSPLITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESIDUEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOSTCURRENCY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMCO_CONPAYCOSTDETAILS` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_contcostentry definition

CREATE TABLE `t_pmco_contcostentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTLEID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTLENUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTLEPERIODID` bigint NOT NULL DEFAULT '0',
  `FSETTLEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLESPLITAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSPLITAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNSPLITAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYCOMMENT` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCO_CONTCOSTENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_contcostsubentry definition

CREATE TABLE `t_pmco_contcostsubentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSUBSETTLENUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FLISTING` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUBENTRYCOMMENT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOSTITEM` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCO_CONTCOSTSUBENTRY_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_contractcost definition

CREATE TABLE `t_pmco_contractcost` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCOSTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCOSTDIMENSION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCO_CONTRACTCOST_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_costitemmapping definition

CREATE TABLE `t_pmco_costitemmapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORG` bigint NOT NULL DEFAULT '0',
  `FNOTES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEOR` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITOR` bigint NOT NULL DEFAULT '0',
  `FAUDITTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCO_COSTMAPPING` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_costsplitdetails definition

CREATE TABLE `t_pmco_costsplitdetails` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROBUDGET` bigint NOT NULL DEFAULT '0',
  `FCOSTDIMENSION` bigint NOT NULL DEFAULT '0',
  `FCOSTITEM` bigint NOT NULL DEFAULT '0',
  `FSPLITAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNOTES` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_T_PMCO_COSTSPLITDETAILS` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_costsplitsubentry definition

CREATE TABLE `t_pmco_costsplitsubentry` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSOURCENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBUDGETID` bigint NOT NULL DEFAULT '0',
  `FSOURCEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCESPLITEDCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCESPLITCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCERMDCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCO_COSTSPLITSUBENTRY_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_costsplitsubentry_l definition

CREATE TABLE `t_pmco_costsplitsubentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCO_COSTSPLITSUBENTRY_L_0` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_itemmappingdetails definition

CREATE TABLE `t_pmco_itemmappingdetails` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FBUDGET` bigint NOT NULL DEFAULT '0',
  `FCOSTDIMENSION` bigint NOT NULL DEFAULT '0',
  `FCOSTITEM` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSAVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISPROJECTADD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCO_COSTDETAIL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_outbudgetadjust definition

CREATE TABLE `t_pmco_outbudgetadjust` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTAPPLYDATE` datetime DEFAULT NULL,
  `FSPLITTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCO_OUTBUDGETADJUST_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_payapplycostsplit definition

CREATE TABLE `t_pmco_payapplycostsplit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FISPERIOD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FCREATEORG` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENEY` bigint NOT NULL DEFAULT '0',
  `FCOSTDIMENSION` bigint NOT NULL DEFAULT '0',
  `FCOSTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMCO_PAYAPPLYCOSTSPLIT` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_procostsplit definition

CREATE TABLE `t_pmco_procostsplit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALCOSTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FENABLEMULTIPRO` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCOSTDIMENSION` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCO_PROCOSTSPLIT_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_procostsplitentry definition

CREATE TABLE `t_pmco_procostsplitentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFUNDITEMID` bigint NOT NULL DEFAULT '0',
  `FCOSTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMMENT` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FENTRYORGID` bigint NOT NULL DEFAULT '0',
  `FENTRYPROJECTID` bigint NOT NULL DEFAULT '0',
  `FNEEDUPDATEBUDGET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOSTITEM` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCO_PROCOSTSPLITENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmco_realbudgetentry definition

CREATE TABLE `t_pmco_realbudgetentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREALPROBUDGETNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FREALUNDERTAKEORGID` bigint NOT NULL DEFAULT '0',
  `FREALUNDERTAKEPERIOD` datetime DEFAULT NULL,
  `FREALPRONAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALPRONUMBER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALPROID` bigint NOT NULL DEFAULT '0',
  `FREALBEFOREAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALUNDERTAKEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALDIFFERENCEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUSEDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCO_REALBUDGETENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_addagreement definition

CREATE TABLE `t_pmct_addagreement` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FHANDLEDATE` datetime DEFAULT NULL,
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FAVGTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISMULTIRATE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISBASEDONLIST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMULTICURRENCY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYDIRECTION` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMAGENO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_ADDAGREEMENT_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_addagreement_r3 definition

CREATE TABLE `t_pmct_addagreement_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_addagreement_s definition

CREATE TABLE `t_pmct_addagreement_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSTDCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLEID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGEDATE` datetime DEFAULT NULL,
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FADDAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FADDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLATESTAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLATESTTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLATESTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDADDAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDADDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSRCAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSRCTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSRCAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDLATESTAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDLATESTTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDLATESTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_ADDAGREEMENT_S_0` (`FEXCHANGERATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_addlistentry definition

CREATE TABLE `t_pmct_addlistentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSUBADDTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPERLISTINGNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPERLISTINGID` bigint NOT NULL DEFAULT '0',
  `FNEWLISTINGID` bigint NOT NULL DEFAULT '0',
  `FPARENTLISTINGID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTID` bigint NOT NULL DEFAULT '0',
  `FLISTNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FMEASUREUNIT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRATEOBJID` bigint NOT NULL DEFAULT '0',
  `FSUBTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICEOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHANGEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAFFECTEDQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHANGEDPRICEOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHANGEAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALCHANGEDAMTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSOURCEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ENTRYSOURCEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYSNUM` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTINGBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FLISTCURRENCY` bigint NOT NULL DEFAULT '0',
  `FLISTEXRATETABLE` bigint NOT NULL DEFAULT '0',
  `FLISTEXDATE` datetime DEFAULT NULL,
  `FLISTEXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURBCBHSJE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURBCSE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSIGNBCJSHJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSIGNBCBHSJE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSIGNBCSE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCT_ADDLISTENTRY_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_addmodelentry definition

CREATE TABLE `t_pmct_addmodelentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMODELNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMPTYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLISTMODELID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_ADDMODELENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_addplanentry definition

CREATE TABLE `t_pmct_addplanentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FPAYTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYFEQ` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYWAYID` bigint NOT NULL DEFAULT '0',
  `FPAYPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPLANPAYTIME` datetime DEFAULT NULL,
  `FCONPLANITEMID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOMETYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOMEAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINCOMEFEQ` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANINCOMETIME` datetime DEFAULT NULL,
  `FINCOMEPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYPLANSOURCEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOMEWAYID` bigint NOT NULL DEFAULT '0',
  `FCUSTOMERID` bigint NOT NULL DEFAULT '0',
  `FNODESETTINGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODESETTINGSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_ADDPLANENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_applymentpay definition

CREATE TABLE `t_pmct_applymentpay` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FBANK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FAPPLICANTID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCURPAYTOTAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOANTOTAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLYPAYTOTAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALINVOICEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALPAYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEUNPAYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVOICEUNPAYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROLOANAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWRITEOFFLOANAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FTOTALAPPLYOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOSTORGID` bigint NOT NULL DEFAULT '0',
  `FIMAGENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODPLANAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFUNDPLANID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_APPLYMENTPAY_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_applymentpay_tc definition

CREATE TABLE `t_pmct_applymentpay_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_PMCT_APPLYMENTPAY_TC_TBILL` (`FTBILLID`),
  KEY `IDX_PMCT_APPLYMENTPAY_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_applymentpay_wb definition

CREATE TABLE `t_pmct_applymentpay_wb` (
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
  KEY `idx_pmct_applymentpay_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_attachsignfile definition

CREATE TABLE `t_pmct_attachsignfile` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `INDEX_PMCT_ATTACHMENTFILE_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_bidentry definition

CREATE TABLE `t_pmct_bidentry` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_BIDENTRY_0` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_changeplanentry definition

CREATE TABLE `t_pmct_changeplanentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FPAYTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYFEQ` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYWAYID` bigint NOT NULL DEFAULT '0',
  `FPAYPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPLANPAYTIME` datetime DEFAULT NULL,
  `FCONPLANITEMID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOMETYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOMEAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINCOMEFEQ` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANINCOMETIME` datetime DEFAULT NULL,
  `FINCOMEPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYPLANSOURCEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOMEWAYID` bigint NOT NULL DEFAULT '0',
  `FCUSTOMERID` bigint NOT NULL DEFAULT '0',
  `FNODESETTINGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODESETTINGSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_CHANGEPLANENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_claimbill definition

CREATE TABLE `t_pmct_claimbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREQDATE` datetime DEFAULT NULL,
  `FREPLYDATE` datetime DEFAULT NULL,
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FCLAIMAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCLAIMOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMULTIRATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FPAYDIRECTION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMAGENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLEID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGEDATE` datetime DEFAULT NULL,
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDCLAIMOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDCLAIMAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISMULTICURRENCY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSETTLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISNEEDSETTLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONTPAYITEMID` bigint NOT NULL DEFAULT '0',
  `FAVGTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CLAIMBILL_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_claimbill_s definition

CREATE TABLE `t_pmct_claimbill_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPRIMARYOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRIMARYTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRIMARYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAFTEROFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAFTERTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAFTERAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDPRIMARYOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDPRIMARYTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDPRIMARYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDAFTEROFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDAFTERTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDAFTERAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CLAIMBILL_S_0` (`FPRIMARYOFTAXAMOUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_claimcardentry definition

CREATE TABLE `t_pmct_claimcardentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMODELNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMPTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLISTMODELID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTINGBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_CLAIMCARDENTRY_0` (`FLISTMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_claimsubentry definition

CREATE TABLE `t_pmct_claimsubentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSUBCLAIMTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPERLISTINGNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPERLISTINGID` bigint NOT NULL DEFAULT '0',
  `FPARENTLISTINGID` bigint NOT NULL DEFAULT '0',
  `FNEWLISTINGID` bigint NOT NULL DEFAULT '0',
  `FLISTID` bigint NOT NULL DEFAULT '0',
  `FLISTNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FMEASUREUNIT` bigint NOT NULL DEFAULT '0',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRATEOBJ` bigint NOT NULL DEFAULT '0',
  `FSUBTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOFTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDCOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHANGECOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBEAFFECTEDCOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAFTERCLAIMOFTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTHISAFTEROFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUBAFTEROFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBILLSOURCEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ENTRYSOURCEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYSNUM` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTINGBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FLISTCURRENCY` bigint NOT NULL DEFAULT '0',
  `FLISTEXRATETABLE` bigint NOT NULL DEFAULT '0',
  `FLISTEXDATE` datetime DEFAULT NULL,
  `FLISTEXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSPBHSJE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSPSE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSIGNSPJSHJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSIGNSPBHSJE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSIGNSPSE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCT_CLAIMSUBENTRY_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_clarific definition

CREATE TABLE `t_pmct_clarific` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FCLARIFICPEOPLE` bigint NOT NULL DEFAULT '0',
  `FCLARIFICDATE` datetime DEFAULT NULL,
  `FCONTENT` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLARIFICTYPEID` bigint NOT NULL DEFAULT '0',
  `FPAYDIRECTION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CLARIFIC_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_clarificentry definition

CREATE TABLE `t_pmct_clarificentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREMARKS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPARTMENT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNITTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FPEOPLE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPEOPLEF7` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_CLARIFICENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_clarifictype definition

CREATE TABLE `t_pmct_clarifictype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CLARIFICTYPE_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_clarifictype_l definition

CREATE TABLE `t_pmct_clarifictype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_CLARIFICTYPE_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_clarifictype_r3 definition

CREATE TABLE `t_pmct_clarifictype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_cont_org_scope definition

CREATE TABLE `t_pmct_cont_org_scope` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMULTISETTLEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_CONT_ORG_SCOPE_0` (`FMULTISETTLEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_cont_pro_scope definition

CREATE TABLE `t_pmct_cont_pro_scope` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMULTISETTLEPROID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_CONT_PRO_SCOPE_0` (`FMULTISETTLEPROID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contattr definition

CREATE TABLE `t_pmct_contattr` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FBASICTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTATTR_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contattr_l definition

CREATE TABLE `t_pmct_contattr_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_CONTATTR_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contattr_r3 definition

CREATE TABLE `t_pmct_contattr_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contdocbill definition

CREATE TABLE `t_pmct_contdocbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FCONTTEMPID` bigint NOT NULL DEFAULT '0',
  `FBILLDOCURL` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLDOCNAME` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTDOCBILL_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contkind definition

CREATE TABLE `t_pmct_contkind` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTKIND_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contkind_l definition

CREATE TABLE `t_pmct_contkind_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_CONTKIND_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contkind_r3 definition

CREATE TABLE `t_pmct_contkind_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contplanentry definition

CREATE TABLE `t_pmct_contplanentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPAYTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYMETHOD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPLANPAYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FPAYWAYID` bigint NOT NULL DEFAULT '0',
  `FCONPLANITEMID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMERID` bigint NOT NULL DEFAULT '0',
  `FNODESETTINGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODESETTINGSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_CONTPLANENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contract definition

CREATE TABLE `t_pmct_contract` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FSIGNDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FISMULTICONTRACT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FPAYRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISMULTICURRENCY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXCHANGEDATE` datetime DEFAULT NULL,
  `FISONLIST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISMULTIRATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FAVGTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPARTAID` bigint NOT NULL DEFAULT '0',
  `FPARTBID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FPAYDIRECTION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINCOST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTDCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCONTSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FVERSIONNUMBER` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTVERSIONNUMBER` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHASCONTTEXT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FIMAGENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXRATETABLEID` bigint NOT NULL DEFAULT '0',
  `FBIZACCOUNTORGID` bigint NOT NULL DEFAULT '0',
  `FFIACCOUNTORGID` bigint NOT NULL DEFAULT '0',
  `FBUGETITEMID` bigint NOT NULL DEFAULT '0',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FSIGNADDRESSID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITIMPORT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOPENEDCONTRACT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTRATEGICAGREEMENTID` bigint NOT NULL DEFAULT '0',
  `FWBSNAMEID` bigint NOT NULL DEFAULT '0',
  `FAUDITASSIGN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTRACT_BILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contract_a definition

CREATE TABLE `t_pmct_contract_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPARTAPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTAPHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTBPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTBPHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTOTHERPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTOTHERPHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FELECTRONICSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSIGNTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCUSTOMERSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTHIRDPARTYSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMULTIPARTSETTLEMENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRMULTIPAYTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unifiedpay',
  `FPERCENTMODEL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTPAYCONTROL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'settlecontrol',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTRACT_A_1` (`FPARTAPERSON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contract_l definition

CREATE TABLE `t_pmct_contract_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNADDRESSDETAIL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_CONTRACT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contract_r3 definition

CREATE TABLE `t_pmct_contract_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contract_s definition

CREATE TABLE `t_pmct_contract_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERFORMTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDORIGINALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALNOTCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALNOTCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FORIGINALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FORIGINALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLEOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAPPLYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREVISIONAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALVISAAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALINVOICEOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALINVOICEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREVISIONOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALVISAOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAPPLYOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALCLAIMAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALCLAIMOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSIGNAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALADDITIONAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALADDITIONOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLSTTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FLSTAVGTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTRACT_S_1` (`FTOTALAMOUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contract_settle definition

CREATE TABLE `t_pmct_contract_settle` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEGINDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FISONLIST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FISVOUCHER` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FISMULTIRATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMULTICURRENCY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCONTATTRID` bigint NOT NULL DEFAULT '0',
  `FPAYDIRECTION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLEOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSETTLEBYMATIN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FIMAGENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLEID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGEDATE` datetime DEFAULT NULL,
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTSOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSETTLEOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSETTLEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBIZACCOUNTORGID` bigint NOT NULL DEFAULT '0',
  `FFIACCOUNTORGID` bigint NOT NULL DEFAULT '0',
  `FCONTPARTBID` bigint NOT NULL DEFAULT '0',
  `FISMULTICONTRACT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSETTLECURRENCY` bigint NOT NULL DEFAULT '0',
  `FSETEXRATETABLE` bigint NOT NULL DEFAULT '0',
  `FSETTLEEXDATE` datetime DEFAULT NULL,
  `FSETEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMCT_CONTRACT_SETTLE_NO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contract_settle_a definition

CREATE TABLE `t_pmct_contract_settle_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNOTCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALNOTCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALPLANPAYOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREALPAYOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDNOTCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALNOTCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALPLANPAYOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALREALPAYOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNOTCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALNOTCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLEOFAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALPLANPAYOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREALPAYOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDNOTCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALNOTCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALSETTLEOFAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALPLANPAYOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALREALPAYOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNOTCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALNOTCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLETAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALPLANPAYTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREALPAYTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDNOTCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALNOTCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALSETTLETAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALPLANPAYTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTOTALREALPAYTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTRACT_SETTLE_A` (`FTOTALSETTLEOFAMOUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contract_settle_b definition

CREATE TABLE `t_pmct_contract_settle_b` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSUMCONAMTORGITEMDI` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMNOTCALOFTAXAMTORGITEM` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMSETTLEOFTAXAMTORGITEM` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUMCONAMTORGITEM` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUMNOTCALAMTORGITEM` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUMSETTLEAMTORGITEM` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMNOTCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMSETTLEOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUMCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUMNOTCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUMSETTLEOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMNOTCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUMSETTLETAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUMCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUMNOTCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUMSETTLETAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTRACT_SETTLE_B` (`FSUMSETTLEOFAMT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contract_settle_s definition

CREATE TABLE `t_pmct_contract_settle_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSUPTOTALCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALNOTCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALSETTLEOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALPLANPAYOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALREALPAYOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTOTALCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTNOTCALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTSETTLEOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTPLANPAYOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTREALPAYOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALNOTCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALSETTLEOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALPLANPAYOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALREALPAYOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTOTALCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTOTALNOTCALOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTOTALSETTLEOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTOTALPLANPAYOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTOTALREALPAYOFAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALNOTCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALSETTLETAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALPLANPAYTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUPTOTALREALPAYTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTOTALCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTOTALNOTCALTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTOTALSETTLETAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTPLANPAYTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSUPTREALPAYTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTRACT_SETTLE_S` (`FSUPTOTALSETTLEOFTAXAMT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contractamtgrad_r3 definition

CREATE TABLE `t_pmct_contractamtgrad_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contractamtgrade definition

CREATE TABLE `t_pmct_contractamtgrade` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBIGINTFIELD` bigint NOT NULL DEFAULT '0',
  `FMAXAMOUNT` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CAG_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contractamtgrade_l definition

CREATE TABLE `t_pmct_contractamtgrade_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_CAG_L_FLOCALEID` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contractamtgrade_r3 definition

CREATE TABLE `t_pmct_contractamtgrade_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contractrevision definition

CREATE TABLE `t_pmct_contractrevision` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FPAYRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVERSIONNUMBER` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORIGINALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINPERCENTMODEL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOUTPERCENTMODEL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTRACTREVISION_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contractstatus definition

CREATE TABLE `t_pmct_contractstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPRESET` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTRACTSTATUS_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contractstatus_l definition

CREATE TABLE `t_pmct_contractstatus_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARKS` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_CONTRACTSTATUS_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contractstatus_r3 definition

CREATE TABLE `t_pmct_contractstatus_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contrichtext definition

CREATE TABLE `t_pmct_contrichtext` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRICHTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FRICHTEXT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRICHTEXT_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTRICHTEXT_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contriskentry definition

CREATE TABLE `t_pmct_contriskentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRISKTYPE` bigint NOT NULL DEFAULT '0',
  `FRISKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRISKDESC` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEASURES` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEGALRISK` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_CONTRISKENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_controlconfig definition

CREATE TABLE `t_pmct_controlconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISENTRY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPRIVATEINFO` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FBILLTYPENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTROLCONFIG_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_controlconfig_l definition

CREATE TABLE `t_pmct_controlconfig_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_CONTROLCONFIG_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_controlconfig_r3 definition

CREATE TABLE `t_pmct_controlconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contsign definition

CREATE TABLE `t_pmct_contsign` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTAPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTAPHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTBPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTBPHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTOTHERPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTOTHERPHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNDATE` datetime DEFAULT NULL,
  `FSIGNADDRESSID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FMASTERIDFIELD` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTSIGN_0` (`FSIGNDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_contsign_l definition

CREATE TABLE `t_pmct_contsign_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNADDRESSDETAIL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_CONTSIGN_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_conttemplate definition

CREATE TABLE `t_pmct_conttemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATETYPE` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTATTR` bigint NOT NULL DEFAULT '0',
  `FEFFECTIVE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRICHTEXT` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FRICHTEXT_TAG` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FTEMPDOCNAME` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPDOCURL` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTTEMPLATE_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_conttemplate_l definition

CREATE TABLE `t_pmct_conttemplate_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_CONTTEMPLATE_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_conttemplate_r3 definition

CREATE TABLE `t_pmct_conttemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_conttype definition

CREATE TABLE `t_pmct_conttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONATTRID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FISONLIST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAMMOUNTCONTROLSETTLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSETTLECONTROLAPPLY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAMMOUNTCONTROLAPPLY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOPENEDCONTRACT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCHARGEBYPLAN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FCONTRACTPAYCONTROL` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'settlecontrol',
  `FISINCOST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISLISTMODEL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_CONTTYPE_1` (`FNUMBER`),
  KEY `IDX_T_PMCT_CONTTYPE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PMCT_CONTTYPE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_conttype_bit definition

CREATE TABLE `t_pmct_conttype_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_conttype_l definition

CREATE TABLE `t_pmct_conttype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_CONTTYPE_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_conttype_r3 definition

CREATE TABLE `t_pmct_conttype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_conttype_tpl definition

CREATE TABLE `t_pmct_conttype_tpl` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONTTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FCONTPLVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_CONTTYPE_TPL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_conttype_u definition

CREATE TABLE `t_pmct_conttype_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMCT_CONTTYPE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_conttypeexc definition

CREATE TABLE `t_pmct_conttypeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMCT_CONTTYPEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_conttypeusereg definition

CREATE TABLE `t_pmct_conttypeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMCT_CONTTYPEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_finalbudgetentry definition

CREATE TABLE `t_pmct_finalbudgetentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FITEMAPPAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FITEMSUBAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FITEMSETTAOMUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FITEMPAYAOMUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FITEMACTINAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_FINALBUDGETENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_finalsettle definition

CREATE TABLE `t_pmct_finalsettle` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FISMULTIRATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISMULTICURRENCY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISONLIST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAPPTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FPAYDIRECTION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTATTR` bigint NOT NULL DEFAULT '0',
  `FTAXRATE` bigint NOT NULL DEFAULT '0',
  `FSTDCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLEID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGEDATE` datetime DEFAULT NULL,
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FAVGTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTEMPCONTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_FINALSETTLE_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_finalsettle_s definition

CREATE TABLE `t_pmct_finalsettle_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINITAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINITTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINITTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHANGEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHANGETAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLETAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLETAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVOICETAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVOICETAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMAINTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERFORMTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_FINALSETTLE_S_1` (`FINITAMOUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_fundchangeentry definition

CREATE TABLE `t_pmct_fundchangeentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FOLDPAYTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDPAYFEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDPAYWAYID` bigint NOT NULL DEFAULT '0',
  `FNEWPAYWAYID` bigint NOT NULL DEFAULT '0',
  `FOLDPAYPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNEWPAYPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOLDPAYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNEWPAYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHANGEPAYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOLDPLANPAYTIME` datetime DEFAULT NULL,
  `FNEWPLANPAYTIME` datetime DEFAULT NULL,
  `FREIMBURSEDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREIMBURSEDCOMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREIMBURSABLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAIDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAIDCOMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNPAIDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNEWPAYTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWPAYFEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDPAYPLANID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWPAYPLANID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMERID` bigint NOT NULL DEFAULT '0',
  `FCOLLECTEDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOLLECTEDCOMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNCOLLECTEDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOLDNODESETTING` bigint NOT NULL DEFAULT '0',
  `FNEWNODESETTING` bigint NOT NULL DEFAULT '0',
  `FOLDCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDNODESETTINGSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWNODESETTINGSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLIEDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLIEDCOMAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLIABLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_FUNDCHANGEENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_funditem definition

CREATE TABLE `t_pmct_funditem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPAYDIRECTION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_FUNDITEM_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_funditem_l definition

CREATE TABLE `t_pmct_funditem_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_FUNDITEM_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_funditem_r3 definition

CREATE TABLE `t_pmct_funditem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_fundplanchange definition

CREATE TABLE `t_pmct_fundplanchange` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLID` bigint NOT NULL DEFAULT '0',
  `FPAYPLANSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_FUNDPLANCHANGE_FSRC` (`FSOURCEBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_in_invoice definition

CREATE TABLE `t_pmct_in_invoice` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FISCLAIMED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSUBDEDUCTED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCANDEDUCT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISDEDUCTED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISADVANCECOST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISRECEIVED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCONNECTTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVOICECODE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVOICENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVOICEDATE` datetime DEFAULT NULL,
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FRECEIVERID` bigint NOT NULL DEFAULT '0',
  `FRECEIVEDATE` datetime DEFAULT NULL,
  `FSOURCE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVOICESTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUTHENDATE` datetime DEFAULT NULL,
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FBUYERID` bigint NOT NULL DEFAULT '0',
  `FBUYERTAXNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUYERBANK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUYERACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUYERADDRESS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUYPHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELLERID` bigint NOT NULL DEFAULT '0',
  `FSELLERTAXNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELLERBANK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELLERACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELLERADDRESS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELLERPHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVOICETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTPARTBID` bigint NOT NULL DEFAULT '0',
  `FISUSED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINVOICESOURCEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERIALNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALUSEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAVAILABLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMCT_IN_INVOICE_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_in_invoice_a definition

CREATE TABLE `t_pmct_in_invoice_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FACCOUNTORG` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_IN_INVOICE_A` (`FACCOUNTORG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_in_invoice_r3 definition

CREATE TABLE `t_pmct_in_invoice_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_inapplyentry definition

CREATE TABLE `t_pmct_inapplyentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPAYTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDRECEIPTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIVER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANKACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLEOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALUNINVOICETAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALUNRECEIPTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLYOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTARTRECEIPTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FFITOTALRECEIVEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCLOSESTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FAPPLYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLYTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALINVOICEOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFUNDPLANID` bigint NOT NULL DEFAULT '0',
  `FINCOMEITEMID` bigint NOT NULL DEFAULT '0',
  `FCONTPROID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMCT_INAPPLYENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_inapplyentry_lk definition

CREATE TABLE `t_pmct_inapplyentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmct_inapplyentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_inapplysplitentry definition

CREATE TABLE `t_pmct_inapplysplitentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLIEDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSPLITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FALLCURSPLITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSPLITDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOMECURRENCYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCT_INAPPLYSPLIT_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_inapplysubentry definition

CREATE TABLE `t_pmct_inapplysubentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVOICE` bigint NOT NULL DEFAULT '0',
  `FINVOICEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVOICETAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOFTAXINVOICEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVOICECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FISUPDATEVO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_T_PMCT_INAPPLYSUBENTRY` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_inapplysubentry_r3 definition

CREATE TABLE `t_pmct_inapplysubentry_r3` (
  `fdetailid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fdetailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_incomeapply definition

CREATE TABLE `t_pmct_incomeapply` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSON` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FCLOSESTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FSOURCETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUMAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FIMAGENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMCT_INCOMEAPPLY_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_incomeapply_tc definition

CREATE TABLE `t_pmct_incomeapply_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_PMCT_INCOMEAPPLY_TC_TBILL` (`FTBILLID`),
  KEY `IDX_PMCT_INCOMEAPPLY_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_incomeapply_wb definition

CREATE TABLE `t_pmct_incomeapply_wb` (
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
  KEY `idx_pmct_incomeapply_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_incomeregentry definition

CREATE TABLE `t_pmct_incomeregentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLEOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTROLRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALUNRECEIPTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIPTOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENDRECEIPTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINCOMENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANKACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTRECEIPTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FPREAPPLYOFTAXAMTSUM` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FRECEIPTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIPTTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINCOMEITEMID` bigint NOT NULL DEFAULT '0',
  `FCONTPROID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMCT_INCOMEREGENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_incomeregentrysub definition

CREATE TABLE `t_pmct_incomeregentrysub` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIPTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRECEIPTSHAREAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTATOLRECEIPTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCONBUDGETITEMFLAG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCT_INCOMEREGENTRYSUB_FDD` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_incomeregister definition

CREATE TABLE `t_pmct_incomeregister` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FSOURCETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMCT_INCOMEREG_NO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_incomeregister_r3 definition

CREATE TABLE `t_pmct_incomeregister_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_inconplanentry definition

CREATE TABLE `t_pmct_inconplanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FORIGINALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLEOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALINVOICEOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVOICEDNONPAY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDNONPAY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODPLANAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODPLANAMTSTD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTAID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_ICONPLANENTRY_BILLNO` (`FCONTRACTBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_induselegroup definition

CREATE TABLE `t_pmct_induselegroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_INDUSELEGROUP_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_induselegroup_l definition

CREATE TABLE `t_pmct_induselegroup_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_INDUSELEGROUP_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_ininvoiceentry definition

CREATE TABLE `t_pmct_ininvoiceentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINVOICEID` bigint NOT NULL DEFAULT '0',
  `FINVOICEDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISUPDATEVO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINVOICEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVOICETAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOFTAXINVOICEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVOICECURRENCYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMCT_ININVOICEENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_innonconplanentry definition

CREATE TABLE `t_pmct_innonconplanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FITEMNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLEID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGEDATE` datetime DEFAULT NULL,
  `FPERIODPLANAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODPLANAMTSTD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMPANYNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_INPLANENTRY_ITEM` (`FITEMNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_inoviceurl definition

CREATE TABLE `t_pmct_inoviceurl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FURL` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMCT_INOVICEURL_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_inoviceurl_r3 definition

CREATE TABLE `t_pmct_inoviceurl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_inplanentry definition

CREATE TABLE `t_pmct_inplanentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINCOMETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOMEMETHOD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOMEPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINCOMEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPLANINCOMETIME` datetime DEFAULT NULL,
  `FINCOMEDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSOURCEID` bigint NOT NULL DEFAULT '0',
  `FCUSTOMERID` bigint NOT NULL DEFAULT '0',
  `FINCOMEWAYID` bigint NOT NULL DEFAULT '0',
  `FINCOMEPLANSOURCEID` bigint NOT NULL DEFAULT '0',
  `FCONINCOMEITEMID` bigint NOT NULL DEFAULT '0',
  `FINCOMECTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOMESOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINCOMENODESETTINGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_INPLANENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_invoice_config definition

CREATE TABLE `t_pmct_invoice_config` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FAPPID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPSECRET` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENCRYPTKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMCT_INV_CONFIG_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_invoice_config_l definition

CREATE TABLE `t_pmct_invoice_config_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PMCT_INVOICE_CONFIG_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_invoice_config_r3 definition

CREATE TABLE `t_pmct_invoice_config_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_invoiceentry definition

CREATE TABLE `t_pmct_invoiceentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODEL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOFTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FTAXVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMCT_INVOICEENTRY_FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_invoicepicture definition

CREATE TABLE `t_pmct_invoicepicture` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFILENAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUPLOADDATE` datetime DEFAULT NULL,
  `FIMAGEURL` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMCT_INVOICEPICTURE_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listconfig definition

CREATE TABLE `t_pmct_listconfig` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTABNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTMODEL` bigint NOT NULL DEFAULT '0',
  `FCOMPUTERULE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTDESC` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_LISTCONFIG_1` (`FTABNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listconfig_r3 definition

CREATE TABLE `t_pmct_listconfig_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listentry definition

CREATE TABLE `t_pmct_listentry` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FISLEAF` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEASUREUNITID` bigint NOT NULL DEFAULT '0',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTINGMODELID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLSTSETTLEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLSTSETTLEOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHANGEQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHGEFFECTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHGOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLSTOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAVGTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISCHANGED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISADDNEW` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLISTPARENTID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALID` bigint NOT NULL DEFAULT '0',
  `FRATEOBJID` bigint NOT NULL DEFAULT '0',
  `FSYSNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYDIRECTION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTLISTID` bigint NOT NULL DEFAULT '0',
  `FLISTINGBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FBILLSOURCEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ENTRYSOURCEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLSTSETTLETAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLATESTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCT_LISTENTRY_1` (`FNUMBER`),
  KEY `IDX_PMCT_LISTENTRY_2` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listentry_a definition

CREATE TABLE `t_pmct_listentry_a` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLISTCURRENCY` bigint NOT NULL DEFAULT '0',
  `FLISTEXRATETABLE` bigint NOT NULL DEFAULT '0',
  `FLISTEXDATE` datetime DEFAULT NULL,
  `FLISTEXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSIGNOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSIGNTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSIGNAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_T_PMCT_LISTENTRY_A_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listentry_l definition

CREATE TABLE `t_pmct_listentry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_LISTENTRY_L_1` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listentry_r3 definition

CREATE TABLE `t_pmct_listentry_r3` (
  `fdetailid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fdetailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listinfo definition

CREATE TABLE `t_pmct_listinfo` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROPNUM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSHOWED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_LISTINFO_1` (`FPROPNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listinfo_l definition

CREATE TABLE `t_pmct_listinfo_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHOWNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_LISTINFO_L_1` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listingcomponent definition

CREATE TABLE `t_pmct_listingcomponent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_LISTINGCOMPONENT_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listingcomponent_l definition

CREATE TABLE `t_pmct_listingcomponent_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_LISTCOMPONENT_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listinggroup definition

CREATE TABLE `t_pmct_listinggroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_LISTINGGROUP_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listinggroup_l definition

CREATE TABLE `t_pmct_listinggroup_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_LISTINGGROUP_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listinggroup_r3 definition

CREATE TABLE `t_pmct_listinggroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listingmodel definition

CREATE TABLE `t_pmct_listingmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_LISTINGMODEL_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listingmodel_l definition

CREATE TABLE `t_pmct_listingmodel_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_LISTINGMODEL_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listingmodel_r3 definition

CREATE TABLE `t_pmct_listingmodel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_listmodelentry definition

CREATE TABLE `t_pmct_listmodelentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCMPTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROWTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FROWAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FROWTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FROWOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLISTMODELID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODELNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_LISTMODELENTRY_1` (`FMODELNAME`),
  KEY `IDX_PMCT_LISTMODELENTRY_2` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_loanentry definition

CREATE TABLE `t_pmct_loanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FLOANNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTPAYERNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYERACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOANBIZDATE` datetime DEFAULT NULL,
  `FLOANREASON` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOANCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FLOANBALANCE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FWRITEOFFTOTAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCBILLTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMCT_INVOICEENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_monthlyfundplan definition

CREATE TABLE `t_pmct_monthlyfundplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODPLANINCOME` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODPLANOUTCOME` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODFUNDCOST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_MONTHFUNDPLAN_BILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_orgscopeentry definition

CREATE TABLE `t_pmct_orgscopeentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSCOPEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_ORGSCOPEENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_otherparts definition

CREATE TABLE `t_pmct_otherparts` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_OTHERPARTS_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_out_invoice definition

CREATE TABLE `t_pmct_out_invoice` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINVOICENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVOICEDATE` datetime DEFAULT NULL,
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FINVOICESTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUYERTAXNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUYERBANK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUYERACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUYERADDRESS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUYERPHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELLERTAXNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELLERBANK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELLERACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELLERADDRESS` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELLERPHONE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISPREPAY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSTATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBUYERID` bigint NOT NULL DEFAULT '0',
  `FINVOICECODE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELLERID` bigint NOT NULL DEFAULT '0',
  `FINVOICETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCLAIMED` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONNECTTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FREVERSEINVOICEID` bigint NOT NULL DEFAULT '0',
  `FISUSED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMCT_OUT_INV_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_out_invoice_r3 definition

CREATE TABLE `t_pmct_out_invoice_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_out_revinvoice definition

CREATE TABLE `t_pmct_out_revinvoice` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PMGT_OUT_REVINVOICE_PK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_outclaimplanentry definition

CREATE TABLE `t_pmct_outclaimplanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPAYTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYFEQ` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYWAYID` bigint NOT NULL DEFAULT '0',
  `FPAYPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPLANPAYTIME` datetime DEFAULT NULL,
  `FREMARKS` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONPLANITEMID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FPAYPLANSOURCEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODESETTINGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODESETTINGSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_OUTCLAIMPLANENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_outconplanentry definition

CREATE TABLE `t_pmct_outconplanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FORIGINALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLEOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALINVOICEOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREALOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVOICEDNONPAY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDNONPAY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODPLANAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODPLANAMTSTD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTBID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_OCONPLANENTRY_BILLNO` (`FCONTRACTBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_outnonconplanentry definition

CREATE TABLE `t_pmct_outnonconplanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FITEMNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLEID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGEDATE` datetime DEFAULT NULL,
  `FPERIODPLANAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODPLANAMTSTD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMPANYNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_ONPLANENTRY_ITEM` (`FITEMNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_partbscopeentry definition

CREATE TABLE `t_pmct_partbscopeentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_PARTBSCOPEENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payapplyentry definition

CREATE TABLE `t_pmct_payapplyentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONTROLRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENDPAYMENTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBANKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANKACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYMENTTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLEOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALUNINVOICETAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALUNPAIDOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLYOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTARTPAYMENTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALINVOICEOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBEBANKID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FCLOSESTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFITOTALPAYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYMENTDATE` datetime DEFAULT NULL,
  `FCONTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FAPPLYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPLYTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTPARTBID` bigint NOT NULL DEFAULT '0',
  `FFUNDPLANID` bigint NOT NULL DEFAULT '0',
  `FPAYITEMID` bigint NOT NULL DEFAULT '0',
  `FCONTPROID` bigint NOT NULL DEFAULT '0',
  `FTHISPREPAYDEDUCTION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTHISPAYABLEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTHISPAYABLEEXCLTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYPAIDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYPAIDEXCLTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYOFF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FACCOUNTNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMCT_PAYAPPLYENTRY_NUM` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payapplyentry_l definition

CREATE TABLE `t_pmct_payapplyentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_PAYAPPLYENTRY_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payapplyentry_lk definition

CREATE TABLE `t_pmct_payapplyentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmct_payapplyentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payapplyentry_r3 definition

CREATE TABLE `t_pmct_payapplyentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payapplyinv definition

CREATE TABLE `t_pmct_payapplyinv` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVOICE` bigint NOT NULL DEFAULT '0',
  `FINVOICEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVOICETAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOFTAXINVOICEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVOICECURRENCYID` bigint NOT NULL DEFAULT '0',
  `FISUPDATEVO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FAPPLYOFTAXAMTVO` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_T_PMCT_PAYAPPLYINV_NUM` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payapplyinv_r3 definition

CREATE TABLE `t_pmct_payapplyinv_r3` (
  `fdetailid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fdetailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payapplysplitentry definition

CREATE TABLE `t_pmct_payapplysplitentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUGDETITEMID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYEDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSPLITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSPLITDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPLITCURRENCY` bigint NOT NULL DEFAULT '0',
  `FTOTALPAYAPPLYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREPAYSPLIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDEDUCTIBLEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCT_PAYAPPLYSPLIT_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_paydetailentry definition

CREATE TABLE `t_pmct_paydetailentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPAYTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURPAYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURPAYAMTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRATEVAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRATEID` bigint NOT NULL DEFAULT '0',
  `FPAYITEMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMCT_PAYDETAILENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_paydetailentry_lk definition

CREATE TABLE `t_pmct_paydetailentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmct_paydetailentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payitem definition

CREATE TABLE `t_pmct_payitem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTATTRID` bigint NOT NULL DEFAULT '0',
  `FPAYDIRECTION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYMENTITEMTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPUTESOURCE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISUPDATEAMOUNT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISCOMPUTE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISPREITEM` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_PAYITEM_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payitem_conttype definition

CREATE TABLE `t_pmct_payitem_conttype` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_PAYITEM_CONTTYPE` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payitem_l definition

CREATE TABLE `t_pmct_payitem_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_PAYITEM_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payitem_r3 definition

CREATE TABLE `t_pmct_payitem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payitementry definition

CREATE TABLE `t_pmct_payitementry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FOPERATION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FITEMID` bigint NOT NULL DEFAULT '0',
  `FPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_PAYITEMENTRY_1` (`FITEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_paymentregentry definition

CREATE TABLE `t_pmct_paymentregentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALSETTLEOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTROLRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALREALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALUNPAIDOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTHISPAYMENTOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENDPAYMENTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYMENTNO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBANKACCOUNT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYERACCOUNT` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTPAYMENTRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FPREAPPLYOFTAXAMTSUM` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTHISPAYMENTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTHISPAYMENTTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTPARTBID` bigint NOT NULL DEFAULT '0',
  `FPAYITEMID` bigint NOT NULL DEFAULT '0',
  `FCONTPROID` bigint NOT NULL DEFAULT '0',
  `FPAYAPPLYNOID` bigint NOT NULL DEFAULT '0',
  `FPAYMENTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMCT_PAYTREGENTRY_NUM` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_paymentregentry_lk definition

CREATE TABLE `t_pmct_paymentregentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmct_paymentregentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_paymentregister definition

CREATE TABLE `t_pmct_paymentregister` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FSOURCETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FPUSHED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMCT_PAYMENTREG_NUM` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_paymentregister_r3 definition

CREATE TABLE `t_pmct_paymentregister_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_paymentregister_tc definition

CREATE TABLE `t_pmct_paymentregister_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_PMCT_PAYMENTREGISTER_TC_TBILL` (`FTBILLID`),
  KEY `IDX_PMCT_PAYMENTREGISTER_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_paymentregister_wb definition

CREATE TABLE `t_pmct_paymentregister_wb` (
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
  KEY `idx_pmct_paymentregister_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payplanentry definition

CREATE TABLE `t_pmct_payplanentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPAYTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYMETHOD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPLANPAYTIME` datetime DEFAULT NULL,
  `FPAYDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYSOURCEID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FPAYWAYID` bigint NOT NULL DEFAULT '0',
  `FCONPAYITEMID` bigint NOT NULL DEFAULT '0',
  `FPAYPLANSOURCEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODESETTINGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNODESETTINGSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_PAYPLANENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_payregsplit definition

CREATE TABLE `t_pmct_payregsplit` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALPAYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURACTUALPAYSPLITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALACTUALPAYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSPLTDESCRIPTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBCURRENCYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCT_PAYREGSPLIT_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_paytapply definition

CREATE TABLE `t_pmct_paytapply` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPERSON` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FCLOSESTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FSOURCETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUMAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FIMAGENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYABLEAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FALLPAIDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBILLPAYOFF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FACCOUNTORG` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMCT_PAYTAPPLY_NUM` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_paytapply_tc definition

CREATE TABLE `t_pmct_paytapply_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_PMCT_PAYTAPPLY_TC_TBILL` (`FTBILLID`),
  KEY `IDX_PMCT_PAYTAPPLY_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_paytapply_wb definition

CREATE TABLE `t_pmct_paytapply_wb` (
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
  KEY `idx_pmct_paytapply_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_performentry definition

CREATE TABLE `t_pmct_performentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTRANSACTYPE` bigint NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISCLAIM` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECORD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLIMITSCOPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISSETTLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISNEEDSETTLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNOTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTPAYITEMID` bigint NOT NULL DEFAULT '0',
  `FTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDNOTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_PERFORMENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_performrecords definition

CREATE TABLE `t_pmct_performrecords` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FBIZDATE` datetime DEFAULT NULL,
  `FPARTY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYDIRECTION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSTDCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLEID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGEDATE` datetime DEFAULT NULL,
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISMULTICURRENCY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_PERFORMRECORDS_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_pricedetailentry definition

CREATE TABLE `t_pmct_pricedetailentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FLISTNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FMEASUREUNITID` bigint NOT NULL DEFAULT '0',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICEWITHTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICEWITHOUTTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXID` bigint NOT NULL DEFAULT '0',
  `FAMOUNTWITHTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNTWITHOUTTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREPRICEWITHTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREPRICEWITHOUTTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRETAXID` bigint NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` bigint NOT NULL DEFAULT '1',
  `FISLEVEL` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FNOTE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_PRICEDETAILENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_projectscopeentry definition

CREATE TABLE `t_pmct_projectscopeentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCT_PROJECTSCOPEENTRY_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_reviseriskentry definition

CREATE TABLE `t_pmct_reviseriskentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRISKTYPE` bigint NOT NULL DEFAULT '0',
  `FRISKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRISKDESC` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMEASURES` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEGALRISK` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRISKSOURCEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_REVISERISKENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_revision definition

CREATE TABLE `t_pmct_revision` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FPERIOD` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREVISIONAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREVISIONOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISBASEDONLIST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHANGEREASON` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISMULTIRATE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FSTDCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FPAYDIRECTION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMAGENO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FEXRATETABLEID` bigint NOT NULL DEFAULT '0',
  `FEXCHANGEDATE` datetime DEFAULT NULL,
  `FEXCHANGERATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDREOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDREVISIONAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAVGTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISMULTICURRENCY` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHANGETYPEID` bigint NOT NULL DEFAULT '0',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FCHANGEDTAXRATEID` bigint NOT NULL DEFAULT '0',
  `FCHANGEDAVGTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXRATECHANGE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_REVISION_NUMBER` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_revision_s definition

CREATE TABLE `t_pmct_revision_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSRCAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSRCAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLATESTAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLATESTTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLATESTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSRCAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSRCTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDSRCAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDLATESTAMOUNTOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDLATESTTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTDLATESTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_REVISION_S_0` (`FSRCAMOUNTOFTAX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_revisioncardentry definition

CREATE TABLE `t_pmct_revisioncardentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMODELNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMPTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROWTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLISTMODELID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_REVISIONCARDENTRY_SEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_revisionsubentry definition

CREATE TABLE `t_pmct_revisionsubentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSUBCHANGETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPERLISTINGNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPERLISTINGID` bigint NOT NULL DEFAULT '0',
  `FNEWLISTINGID` bigint NOT NULL DEFAULT '0',
  `FPARENTLISTINGID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTID` bigint NOT NULL DEFAULT '0',
  `FLISTNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FMEASUREUNIT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRATEOBJID` bigint NOT NULL DEFAULT '0',
  `FTAXRATE1` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHANSHUIDANJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOFTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDIRECTFEE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMANFEE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEQUFEE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMANEQUFEE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTMPFEE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYIJIESUANSL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYIJIESUANHSJE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBIANGENGSL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSHOUYINGXSL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBIANGENGHOUHSDJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FHSBGJE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBGHHSZJE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREAMARK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQINGDANLEIXINGID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTINGBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FBILLSOURCEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `ENTRYSOURCEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYSNUM` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLISTCURRENCY` bigint NOT NULL DEFAULT '0',
  `FLISTEXRATETABLE` bigint NOT NULL DEFAULT '0',
  `FLISTEXDATE` datetime DEFAULT NULL,
  `FLISTEXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURBGBHSJE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURBGSE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSIGNBGJSHJ` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSIGNBGBHSJE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURSIGNBGSE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCT_REVISIONSUBENTRY_SEQ` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_revisionsubentry_a definition

CREATE TABLE `t_pmct_revisionsubentry_a` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FCHANGEDRATEOBJID` bigint NOT NULL DEFAULT '0',
  `FCHANGEDTAXRATE1` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCT_REVISUBENTRY_A_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_revisiontype definition

CREATE TABLE `t_pmct_revisiontype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_RT_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_revisiontype_l definition

CREATE TABLE `t_pmct_revisiontype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_RT_L_FLOCALEID` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_revisiontype_r3 definition

CREATE TABLE `t_pmct_revisiontype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_risktype definition

CREATE TABLE `t_pmct_risktype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_RISKTYPE_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_risktype_l definition

CREATE TABLE `t_pmct_risktype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_RISKTYPE_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_risktype_r3 definition

CREATE TABLE `t_pmct_risktype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_settle_detailentry definition

CREATE TABLE `t_pmct_settle_detailentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDETAILITEM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILPAYITEMID` bigint NOT NULL DEFAULT '0',
  `FDETAILOFTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDETAILTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDETAILAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMMON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFERBILLNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFERBILLID` bigint NOT NULL DEFAULT '0',
  `FREFERENTRYID` bigint NOT NULL DEFAULT '0',
  `FREFERBILLTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILAUDITDATE` datetime DEFAULT NULL,
  `FDETAILBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_SETTLE_DETAIL_ENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_settle_itementry definition

CREATE TABLE `t_pmct_settle_itementry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPAYITEMID` bigint NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FSIGNOFTAXAT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSIGNAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSIGNTAXAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_T_SETTITEMEN_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_settle_listentry definition

CREATE TABLE `t_pmct_settle_listentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FLISTINGID` bigint NOT NULL DEFAULT '0',
  `FLISTNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATERIELID` bigint NOT NULL DEFAULT '0',
  `FMEASUREUNITID` bigint NOT NULL DEFAULT '0',
  `FTOTALQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYTAXRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURTAXPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPREAMOUT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTHISQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTHISAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTHISTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTHISOFTAXMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLSTQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLSTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESC` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTBUDGETID` bigint NOT NULL DEFAULT '0',
  `FPAYITEMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMCT_SETTLE_LISTENTRY` (`FLISTINGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_settle_modelentry definition

CREATE TABLE `t_pmct_settle_modelentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMODELNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALOFTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLISTMODELID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCMPTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_MODELENTRY_1` (`FMODELNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_settlematinentry definition

CREATE TABLE `t_pmct_settlematinentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMATINNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMATINNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATE` datetime DEFAULT NULL,
  `FMATINPERIOD` bigint NOT NULL DEFAULT '0',
  `FMATTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FMATNOTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTRANSTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTRANSNOTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISTRANSSETTLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATERIALINBILLID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_SETTLEMATINENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_splitentry definition

CREATE TABLE `t_pmct_splitentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUGDETITEMID` bigint NOT NULL DEFAULT '0',
  `FCURSPLITAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONTRACTMONEY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSETTLEDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPAYEDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSPLITDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FTOTALPAYAPPLYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMCT_SPLITENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_statchangeentry definition

CREATE TABLE `t_pmct_statchangeentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FITEMSETTAOMUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FITEMPAYAOMUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FITEMAPPAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FITEMSUBAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FITEMRECEIPTSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_STATCHANGEENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_statuschange definition

CREATE TABLE `t_pmct_statuschange` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FOLDSTATUSID` bigint NOT NULL DEFAULT '0',
  `FNEWSTATUSID` bigint NOT NULL DEFAULT '0',
  `FREASON` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPTAX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPTAXAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_STATUSCHANGE_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_strategicagreem_r3 definition

CREATE TABLE `t_pmct_strategicagreem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_strategicagreement definition

CREATE TABLE `t_pmct_strategicagreement` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGREEMENTTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTAID` bigint NOT NULL DEFAULT '0',
  `FPARTBID` bigint NOT NULL DEFAULT '0',
  `FAGREEMENTVALIDDATE` datetime DEFAULT NULL,
  `FAGREEMENTEXPIREDATE` datetime DEFAULT NULL,
  `FADAPTESCOPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTBSCOPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISAGREEMENTAMOUNT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FVERSION` decimal(3,1) NOT NULL DEFAULT '0.0',
  `FAGREEMENTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FRENEW` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRENEWPARTBSCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRENEWORGSCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRENEWPRICESCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAGREEMENTORIDATE` datetime DEFAULT NULL,
  `FAGREEMENTDELAYDATE` datetime DEFAULT NULL,
  `FRENEWSTATEMENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESETADAPTESCOPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVALIDSTATEMENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESETPARTBSCOPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERIFYVALID` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONTRACTDATE` datetime DEFAULT NULL,
  `FPARTAPERSONID` bigint NOT NULL DEFAULT '0',
  `FSIGNPARTBINFO` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADDRESS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILADRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FAGREEMENTSTATE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FAGREEMENTBILLFROM` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'D',
  `FSOURCEBILLID` bigint NOT NULL DEFAULT '0',
  `FPREVIOUSBILLID` bigint NOT NULL DEFAULT '0',
  `FISLATEST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FAGREEMENTTYPEID` bigint NOT NULL DEFAULT '0',
  `FAGREEMENTSTATEMENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARTBSTATEMENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGCHANGEDSTATEMENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILPRICESTATEMENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSIGN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_STRATEGICAGREEMENT_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_strategicagreement_r3 definition

CREATE TABLE `t_pmct_strategicagreement_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_tempbookmarkentry definition

CREATE TABLE `t_pmct_tempbookmarkentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBOOKMARKKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOOKMARKTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOOKMARKPROP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOOKMARKVALUE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANEDIT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_TEMP_BM_ENTRY_1` (`FBOOKMARKKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_temprecord definition

CREATE TABLE `t_pmct_temprecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FLASTBILLDOCURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLASTBILLDOCNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMCT_TEMPRECORD_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_transactype definition

CREATE TABLE `t_pmct_transactype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PMCT_TRANSACTYPE_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_transactype_l definition

CREATE TABLE `t_pmct_transactype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMCT_TRANSACTYPE_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmct_transactype_r3 definition

CREATE TABLE `t_pmct_transactype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_acceptparticipant definition

CREATE TABLE `t_pmfs_acceptparticipant` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_ACCPART_0` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_accepttype definition

CREATE TABLE `t_pmfs_accepttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_ACT_NUM_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_accepttype_l definition

CREATE TABLE `t_pmfs_accepttype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_ACT_ID_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_accepttype_r3 definition

CREATE TABLE `t_pmfs_accepttype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREFSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_ACT_STATUS_0` (`FREFSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_contract definition

CREATE TABLE `t_pmfs_contract` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCONTRACTNOID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTARCTLATESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMFS_CONTRACT_0` (`FCONTRACTNOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_contractentry definition

CREATE TABLE `t_pmfs_contractentry` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_CONTRACTENTRY_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_epa_participant definition

CREATE TABLE `t_pmfs_epa_participant` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_EPA_PAR_ID_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_exprojectaccept definition

CREATE TABLE `t_pmfs_exprojectaccept` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FACCEPTTYPEID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERID` bigint NOT NULL DEFAULT '0',
  `FMANAGERID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_EPA_NO_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_fundsource definition

CREATE TABLE `t_pmfs_fundsource` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFUNDSOURCETYPEID` bigint NOT NULL DEFAULT '0',
  `FCAPTIALFORM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYANNUALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FENTRYSCALE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMFS_FUNDSOURCE_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_investregister definition

CREATE TABLE `t_pmfs_investregister` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCOMPANY` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGISADDRESS` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEGALREPRESENT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGISCAPITAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FESTABLISHDATE` datetime DEFAULT NULL,
  `FLICENSENO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDUSTRY` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAINBUSINESS` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOURSHARESRATIO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOTHERSHARES` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACTS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACTNUM` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROAPPDATE` datetime DEFAULT NULL,
  `FTOTALPLANNINVEST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVESTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVESTRATIO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FALLINVEST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINISHINVESTRATIO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARKS` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_INV_REG_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_investstepsentry definition

CREATE TABLE `t_pmfs_investstepsentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FINVESTTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTMODE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTDATE` datetime DEFAULT NULL,
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARK` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMFS_INV_STEP_ENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_majorappindexentry definition

CREATE TABLE `t_pmfs_majorappindexentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINDEXNAMEID` bigint NOT NULL DEFAULT '0',
  `FDECLAREVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINDEXWARNLIGHT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDARDINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXCELLENTINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMFS_MAJORAPPINDEXENTRY_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_majorapproval definition

CREATE TABLE `t_pmfs_majorapproval` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAPPROVALDATE` datetime DEFAULT NULL,
  `FPECIALAPPRTYPEID` bigint NOT NULL DEFAULT '0',
  `FAPPROVALPERSONID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_MAJORAPPROVAL_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_majorproenrty definition

CREATE TABLE `t_pmfs_majorproenrty` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FREPORTBILLID` bigint NOT NULL DEFAULT '0',
  `FCURREPORTBILLID` bigint NOT NULL DEFAULT '0',
  `FPROLABEL` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMFS_MAJORPROENRTY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_measures definition

CREATE TABLE `t_pmfs_measures` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINDEXNAMEID` bigint NOT NULL DEFAULT '0',
  `FDECLAREVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINDEXWARNLIGHT` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMFS_MEASURES_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_newreportbill definition

CREATE TABLE `t_pmfs_newreportbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FREPORTPERSONID` bigint NOT NULL DEFAULT '0',
  `FREPORTDATE` datetime DEFAULT NULL,
  `FDECLAREORGID` bigint NOT NULL DEFAULT '0',
  `FSOURCEID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISNEW` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOUTESTIMATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINESTIMATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESULTNUMBERS` bigint NOT NULL DEFAULT '0',
  `FTASKNUMBERS` bigint NOT NULL DEFAULT '0',
  `FTECDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMARKETDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINANCEDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAWDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_NEWREPORTBILL_1` (`FPROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_newreportbill_l definition

CREATE TABLE `t_pmfs_newreportbill_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTECDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMARKETDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINANCEDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAWDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_NEWREPORT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_newreportbill_r3 definition

CREATE TABLE `t_pmfs_newreportbill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_proannexentry definition

CREATE TABLE `t_pmfs_proannexentry` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_PROANNEXENTRY_1` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_processattach definition

CREATE TABLE `t_pmfs_processattach` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PMFS_PROCESSATTACH` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_prodetailenrty definition

CREATE TABLE `t_pmfs_prodetailenrty` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROREPORTORG` bigint NOT NULL DEFAULT '0',
  `FPROREPORTPSONID` bigint NOT NULL DEFAULT '0',
  `FREPORTDATE` datetime DEFAULT NULL,
  `FOUTESTIMATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROFITESTIMATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINESTIMATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESULTNUMBERS` bigint NOT NULL DEFAULT '0',
  `FTASKNUMBERS` bigint NOT NULL DEFAULT '0',
  `FAPPROVALRESULT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRORESULT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTNAME` bigint NOT NULL DEFAULT '0',
  `FTECDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMARKETDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINANCEDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAWDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMFS_PRODETAILENRTY_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_prodetailenrty_l definition

CREATE TABLE `t_pmfs_prodetailenrty_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVALDESC` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTECDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMARKETDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINANCEDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAWDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_PRODETAILENRTY_L_0` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_progressreport definition

CREATE TABLE `t_pmfs_progressreport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FWBSID` bigint NOT NULL DEFAULT '0',
  `FPERIODTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIOD` datetime DEFAULT NULL,
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FCURRENTINVEST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODINVEST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FALLINVEST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENTPROGRESS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPERIODPROGRESS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FALLPROGRESS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXPLAIN` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODSTR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FMUTIWBS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINVESTBYPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FALLINVESTBYPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROGRESSBYPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FALLPROGRESSBYPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_PROG_REP_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_progressreport_s definition

CREATE TABLE `t_pmfs_progressreport_s` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FESTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMPLETEDINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMPLETEPCT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOLASTYINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOLASTYINVESTPCT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRYINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOLASTMINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOLASTMINVESTPCT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRMINVESTPCT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRMINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_PROG_REP_S_0` (`FESTAMOUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_projectaccept definition

CREATE TABLE `t_pmfs_projectaccept` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FWBSNAMEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FSUPPLIERNAMEID` bigint NOT NULL DEFAULT '0',
  `FACCEPTORGPERSONID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FHANDACCEPTDES` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_PROACCEPT_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_projectinitialize definition

CREATE TABLE `t_pmfs_projectinitialize` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FESTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTIMETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXECUTIVEVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRESOURCEPROJECTINITID` bigint NOT NULL DEFAULT '0',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FSPLITBYCOUNT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSPLITDIMENSION` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bymonth',
  `FSPLITMETHOD` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bypercentage',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_PJI_BILLNO_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_projectprocessdoc definition

CREATE TABLE `t_pmfs_projectprocessdoc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTACHTYPEID` bigint NOT NULL DEFAULT '0',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_PPD_NO_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_projectreport definition

CREATE TABLE `t_pmfs_projectreport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPROJECTSOURCE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FPROJECTNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FINVESTPERIOD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTDIRECTION` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDUSTRYKINDID` bigint NOT NULL DEFAULT '0',
  `FINDUSTRYID` bigint NOT NULL DEFAULT '0',
  `FPROREGION` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTORGID` bigint NOT NULL DEFAULT '0',
  `FIMPLEMENTORGID` bigint NOT NULL DEFAULT '0',
  `FPROLEADERID` bigint NOT NULL DEFAULT '0',
  `FLEADERCONTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCOPYPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPROVINCIALPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSPECIALPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISPLANPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FANNUALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINTRODUCTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACKGROUND` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURPOSE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTRISK` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELFRESERCHID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_PROJECTREPORT_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_projectreport_a definition

CREATE TABLE `t_pmfs_projectreport_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISSELF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFEASREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FRISKCONTROLORGID` bigint NOT NULL DEFAULT '0',
  `FLEGALPROPOSALORGID` bigint NOT NULL DEFAULT '0',
  `FFULFILREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FFEASREPORTDATE` datetime DEFAULT NULL,
  `FRISKCONTROLDATE` datetime DEFAULT NULL,
  `FLEGALPROPOSALDATE` datetime DEFAULT NULL,
  `FFULFILREPORTDATE` datetime DEFAULT NULL,
  `FMARKRESEARCH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTECHNICALRESEARCH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINANCIALRESEARCH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAWRESEARCH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESEARCHRESULT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESEARCHRESULT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_PROJECTREPORT_A_0` (`FISSELF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_projectreport_l definition

CREATE TABLE `t_pmfs_projectreport_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTRODUCTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBACKGROUND` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPURPOSE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTRISK` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_PROJECTREPORT_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_reportbill definition

CREATE TABLE `t_pmfs_reportbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FREPORTDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FREPORTPERSONID` bigint NOT NULL DEFAULT '0',
  `FOUTESTIMATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROFITESTIMATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINESTIMATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESULTNUMBERS` bigint NOT NULL DEFAULT '0',
  `FTASKNUMBERS` bigint NOT NULL DEFAULT '0',
  `FFSRESULT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FAPPROVALRESULT` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTECDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMARKETDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINANCEDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAWDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_REPORTBILL_1` (`FPROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_reportbill_l definition

CREATE TABLE `t_pmfs_reportbill_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESC` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVALDESC` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTECDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMARKETDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINANCEDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLAWDESC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_REPORTBILL_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_reportbill_r3 definition

CREATE TABLE `t_pmfs_reportbill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_reportbillattm definition

CREATE TABLE `t_pmfs_reportbillattm` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_REPORTBILLATTM_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_reportindexentry definition

CREATE TABLE `t_pmfs_reportindexentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINDEXNAMEID` bigint NOT NULL DEFAULT '0',
  `FDECLAREVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINDEXWARNLIGHT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTANDARDINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXCELLENTINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMFS_REPORTINDEXENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_risktrack definition

CREATE TABLE `t_pmfs_risktrack` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDISADVANTAGES` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPROJECTDECISION` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRISKDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINALDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_RISK_1` (`FBILLNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_risktrack_tc definition

CREATE TABLE `t_pmfs_risktrack_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_PMFS_RISKTRACK_TC_TBILL` (`FTBILLID`),
  KEY `IDX_PMFS_RISKTRACK_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_risktrack_wb definition

CREATE TABLE `t_pmfs_risktrack_wb` (
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
  KEY `idx_pmfs_risktrack_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_risktrackentry definition

CREATE TABLE `t_pmfs_risktrackentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRISKLEVEL` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRISKTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRISKDESCRIBE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTREATSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTREATMEASURES` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTREATRESULTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATORID` bigint NOT NULL DEFAULT '0',
  `FTREATTIME` datetime DEFAULT NULL,
  `FISPUSH` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMFS_RISKTRACK_0` (`FRISKLEVEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_risktrackentry_lk definition

CREATE TABLE `t_pmfs_risktrackentry_lk` (
  `FEntryId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmfs_risktrackentry_lk_fk` (`FEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_selfresearch definition

CREATE TABLE `t_pmfs_selfresearch` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPROJECTSOURCE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FPROJECTNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FINVESTPERIOD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTDIRECTION` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDUSTRYKINDID` bigint NOT NULL DEFAULT '0',
  `FINDUSTRYID` bigint NOT NULL DEFAULT '0',
  `FPROREGION` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTORGID` bigint NOT NULL DEFAULT '0',
  `FIMPLEMENTORGID` bigint NOT NULL DEFAULT '0',
  `FPROLEADERID` bigint NOT NULL DEFAULT '0',
  `FLEADERCONTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCOPYPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOPYTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPROVINCIALPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSPECIALPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISPLANPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRESEARCHSESSION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISREPORT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_SELFRESEARCH_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_selfresearch_r3 definition

CREATE TABLE `t_pmfs_selfresearch_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_splitentry definition

CREATE TABLE `t_pmfs_splitentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FWBSNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBSNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMILESTONE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '  ',
  `FPLANSTARTTIME` datetime DEFAULT NULL,
  `FPLANENDTIME` datetime DEFAULT NULL,
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCHEDULE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMPLETEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRESOURCEWBSID` bigint NOT NULL DEFAULT '0',
  `FPROJECTSTATUSID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMFS_SPE_ID_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_splitentry_l definition

CREATE TABLE `t_pmfs_splitentry_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWBSNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX__PMFS_SPLITENTRY_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_subsplitentry definition

CREATE TABLE `t_pmfs_subsplitentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSUBDATE` datetime DEFAULT NULL,
  `FSUBCOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUBPERCENTAGE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSUBWBSNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBWBSNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBREMARK` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMFS_SUBSPLITENTRY_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_supervisionfinish definition

CREATE TABLE `t_pmfs_supervisionfinish` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FWORKITEMID` bigint NOT NULL DEFAULT '0',
  `FACTUALENDTIME` datetime DEFAULT NULL,
  `FSYSBILLID` bigint NOT NULL DEFAULT '0',
  `FBIZBILLNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZBILLID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIDENTIFICATIONTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIDENTIFICATIONTIME` datetime DEFAULT NULL,
  `FINTERFACETIME` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_SUP_FINISH_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_supervisionfinish_l definition

CREATE TABLE `t_pmfs_supervisionfinish_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX__PMFS_SUP_FINISH_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_supervisperform definition

CREATE TABLE `t_pmfs_supervisperform` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBILLPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROWARNINGLIGHT` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSCANEND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_SUP_FORM_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_supplierident definition

CREATE TABLE `t_pmfs_supplierident` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FPROKINDID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '1',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMFS_SUPPLIER_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_tenderdoc definition

CREATE TABLE `t_pmfs_tenderdoc` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_TENDDOC_0` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_tenderinform definition

CREATE TABLE `t_pmfs_tenderinform` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJECTKIND` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIDSECTION` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIFMETHOD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGANIZATION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUCCEEDBIDDERID` bigint NOT NULL DEFAULT '0',
  `FBIDDERSORT` int NOT NULL DEFAULT '0',
  `FBIDDERAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOPENBIDDATE` datetime DEFAULT NULL,
  `FEVALUATERESULT` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMFS_TENDER_0` (`FSUCCEEDBIDDERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_tenderinform_r3 definition

CREATE TABLE `t_pmfs_tenderinform_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_wbsprogress_doc definition

CREATE TABLE `t_pmfs_wbsprogress_doc` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMFS_WBSPROGRESS_DOC_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmfs_wbsprogressreport definition

CREATE TABLE `t_pmfs_wbsprogressreport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYWBSID` bigint NOT NULL DEFAULT '0',
  `FENTRYSTARTTIME` datetime DEFAULT NULL,
  `FENTRYENDTIME` datetime DEFAULT NULL,
  `FENTRYCURRENTINVEST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYPERIODINVEST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYALLINVEST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYCURRENTPROGRESS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYPERIODPROGRESS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYALLPROGRESS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYINVESTBYPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYALLINVESTBYPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYPROGRESSBYPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYALLPROGRESSBYPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMFS_WBSPROGRESSREPORT_0` (`FENTRYWBSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_attachentry definition

CREATE TABLE `t_pmim_attachentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FATTCHTEXT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMIM_ATTACHENTRY_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_auinvestplanentry definition

CREATE TABLE `t_pmim_auinvestplanentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FAPPROVALCON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTORG` bigint NOT NULL DEFAULT '0',
  `FDECLARETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTPROPOSALID` bigint NOT NULL DEFAULT '0',
  `FPROPOSALNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FORIANNUALINCESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FORIFINANCIALEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FANLINVESDECLAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FANFINAEXBUDDEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPROVEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINANAPPROVEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVESTBUDINCREA` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINAEXBUDINCREAS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FARREARSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEORG` bigint NOT NULL DEFAULT '0',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FISACCEPTED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDATASOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTLISTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNO` bigint NOT NULL DEFAULT '0',
  `FINDUSTRYKIND` bigint NOT NULL DEFAULT '0',
  `FINVESTDIRECTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTKIND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOVERSEAPRO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTENDTIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJCETBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINISHINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTSTATUS` bigint NOT NULL DEFAULT '0',
  `FPROJCETBUGAPPAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMIM_AUINVEST_EN_0` (`FPROPOSALNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_aunualinvestplan definition

CREATE TABLE `t_pmim_aunualinvestplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FYEAR` datetime DEFAULT NULL,
  `FINVESTBUDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINANCIALEXBUDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVESTBUDADDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFINANCIALEXBUDADDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FINLCUAPPROLIST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FDOCUIMENTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FANNUALSTRATEGICPLANAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FADJUSTSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANNUALAPPROVALBUDVOL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_ANNUAL_PLAN_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_aunualinvestplan_l definition

CREATE TABLE `t_pmim_aunualinvestplan_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_ANNUAL_PLAN_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_budgetaudit definition

CREATE TABLE `t_pmim_budgetaudit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FYEAR` datetime DEFAULT NULL,
  `FBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEARBUGAPPNO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEARBUGAPPNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILLORGID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPROPOSALID` bigint NOT NULL DEFAULT '0',
  `FYEARBUGAPPNOID` bigint NOT NULL DEFAULT '0',
  `FREPLYSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPAUDSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTBUDGETPLAN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_BUD_AUD_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_budgetbase definition

CREATE TABLE `t_pmim_budgetbase` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FYEAR` datetime DEFAULT NULL,
  `FYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FARREARSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREPROTORG` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPLYORG` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAMEID` bigint NOT NULL DEFAULT '0',
  `FPROPROPOSALID` bigint NOT NULL DEFAULT '0',
  `FREPROTORGID` bigint NOT NULL DEFAULT '0',
  `FREPLYORGID` bigint NOT NULL DEFAULT '0',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FINVESTBUDGETPLAN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTKIND` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_BUG_BASE_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_budgetbase_l definition

CREATE TABLE `t_pmim_budgetbase_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_BUG_BA_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_budgetbase_r3 definition

CREATE TABLE `t_pmim_budgetbase_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_budgetsourceentry definition

CREATE TABLE `t_pmim_budgetsourceentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFUNDSOURCETYPE` bigint NOT NULL DEFAULT '0',
  `FFORMOFINVEST` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSCALE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVESTCURRENCY` bigint NOT NULL DEFAULT '0',
  `FCURRENTENTRYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `INDEX_PLANADJUST_FUNSOURCE_0` (`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_bugaud_bug_entry definition

CREATE TABLE `t_pmim_bugaud_bug_entry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUGETNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTPROPOSALID` bigint NOT NULL DEFAULT '0',
  `FPROJECTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FBUGETAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FARREARSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FOWNERSHIPSTRUCTURE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHAREHOLDING` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREGISTEREDCAPITAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTERPRISELEVEL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOHPARTSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHMATERIALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHPROCESSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHOUTSOURCAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHVEHICLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHADDRESS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPWEIGHT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHOUTPRECCAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHINPROJECTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMIM_BUG_BUG_EN_0` (`FBUGETNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_equippurchaseplan definition

CREATE TABLE `t_pmim_equippurchaseplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` datetime DEFAULT NULL,
  `FPROJECTPROPOSALID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_EQUPURPLAN_FBILLNO_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_equippurchaseplan_lk definition

CREATE TABLE `t_pmim_equippurchaseplan_lk` (
  `FId` bigint NOT NULL,
  `FPKId` bigint NOT NULL,
  `FSeq` int NOT NULL DEFAULT '0',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体编码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单内码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FPKId`),
  KEY `idx_pmim_equippurchaseplan_lk_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_equippurchaseplan_tc definition

CREATE TABLE `t_pmim_equippurchaseplan_tc` (
  `FId` bigint NOT NULL,
  `FTBILLID` bigint DEFAULT NULL COMMENT '目标单单据内码',
  `FTTABLEID` bigint DEFAULT NULL COMMENT '目标单主实体表格编码',
  `FTID` bigint DEFAULT NULL COMMENT '目标单主实体内码',
  `FSBILLID` bigint DEFAULT NULL COMMENT '源单单据内码',
  `FSTABLEID` bigint DEFAULT NULL COMMENT '源单主实体表格编码',
  `FSID` bigint DEFAULT NULL COMMENT '源单主实体内码',
  PRIMARY KEY (`FId`),
  KEY `IDX_PMIM_EQUIPPURCHASEPLAN_TC_TBILL` (`FTBILLID`),
  KEY `IDX_PMIM_EQUIPPURCHASEPLAN_TC_TID` (`FTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_equippurchaseplan_wb definition

CREATE TABLE `t_pmim_equippurchaseplan_wb` (
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
  KEY `idx_pmim_equippurchaseplan_wb_fk` (`FId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_equippurentry definition

CREATE TABLE `t_pmim_equippurentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FEQUIPNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPPRICE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUNIT` bigint NOT NULL DEFAULT '0',
  `FQTY` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARK` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMIM_EQUIPPURENTRY_FK_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_funsourceentry definition

CREATE TABLE `t_pmim_funsourceentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFUNDSOURCETYPE` bigint NOT NULL DEFAULT '0',
  `FFORMOFINVEST` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSCALE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVESTCURRENCY` bigint NOT NULL DEFAULT '0',
  `FCURRENTENTRYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMIM_FUNSOURCEENTRY` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_inventry definition

CREATE TABLE `t_pmim_inventry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBUGETNUMBER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUGETAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FARREARSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FPROJECTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPROJECTPROPOSALID` bigint NOT NULL DEFAULT '0',
  `FOWNERSHIPSTRUCTURE` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREGISTEREDCAPITAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSHAREHOLDING` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTERPRISELEVEL` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOHPARTSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHMATERIALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHPROCESSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHOUTSOURCAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHOUTPRECCAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHINPROJECTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHVEHICLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHADDRESS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPWEIGHT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMIM_INV_EN_0` (`FBUGETNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_investbugetplan definition

CREATE TABLE `t_pmim_investbugetplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FYEAR` datetime DEFAULT NULL,
  `FYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISREPORT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTSTATUS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_IN_BUG_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_investbugetplan_l definition

CREATE TABLE `t_pmim_investbugetplan_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_INV_BPL_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_investbugetplan_r3 definition

CREATE TABLE `t_pmim_investbugetplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_investentry definition

CREATE TABLE `t_pmim_investentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FFUNDSOURCETYPEID` bigint NOT NULL DEFAULT '0',
  `FENTRYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENTENTRYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMMENT` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISADD` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFORMOFINVEST` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSCALE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMIM_INVESTENTRY_FENTRYID` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_investplan definition

CREATE TABLE `t_pmim_investplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBILLNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` datetime DEFAULT NULL,
  `FEFFECTIVETIME` datetime DEFAULT NULL,
  `FISSUETIME` datetime DEFAULT NULL,
  `FSTOPTIME` datetime DEFAULT NULL,
  `FEFFECTIVESTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSUESTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTALINVESTAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYFIELD` bigint NOT NULL DEFAULT '0',
  `FEXPLAIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMONETARYUNIT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGLEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_IN_IP_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_investplanadjust definition

CREATE TABLE `t_pmim_investplanadjust` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FYEAR` datetime DEFAULT NULL,
  `FANNUALSTRATEGICPLANAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVESTBUDAMTBEADJUST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVESTBUDAMTAFADJUST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEFFECTIVESTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEFFECTIVETIME` datetime DEFAULT NULL,
  `FSTOPTIME` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCY` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `INDEX_PLANADJUST_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_investplanadjust_l definition

CREATE TABLE `t_pmim_investplanadjust_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `INDEX_PLANADJUST_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_investplanclaim definition

CREATE TABLE `t_pmim_investplanclaim` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCLIAMDATE` datetime DEFAULT NULL,
  `FINVESTPLANTYPEID` bigint NOT NULL DEFAULT '0',
  `FINVESTCYCLE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENTINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARPERIOD` datetime DEFAULT NULL,
  `FMOTHPERIOD` datetime DEFAULT NULL,
  `FCLAIMPERSONID` bigint NOT NULL DEFAULT '0',
  `FPERIODSTR` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_CLAIMBILL_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_investplanclaim_l definition

CREATE TABLE `t_pmim_investplanclaim_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_INVESTCLAIMBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_investplanentry definition

CREATE TABLE `t_pmim_investplanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FORGFIELD` bigint NOT NULL DEFAULT '0',
  `FPARENTORG` bigint NOT NULL DEFAULT '0',
  `FTOTALAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREGISTERAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBEFORELASTYEARAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBEFORELASTYEARRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENTYEARAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FNEXTYEARAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAFTERNEXTYEARAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARK` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMIM_IN_IP_EN_0` (`FORGFIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_investproentry definition

CREATE TABLE `t_pmim_investproentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSOURCEORG` bigint NOT NULL DEFAULT '0',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FPROJECTNO` bigint NOT NULL DEFAULT '0',
  `FPROJECTNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVALCON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTORG` bigint NOT NULL DEFAULT '0',
  `FDECLARETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVALSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINPLAN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FIMVESTCURRENCY` bigint NOT NULL DEFAULT '0',
  `FPROJCETBUGAPPAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FUSEBUDGETAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROBUDAPPAMTAFADJUST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROOWNEDFUNDS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROEXTERNALFUNDS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARAPPROVEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARUSEBUDGETAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARAPPAMTAFADJUST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROYEAROWNEDFUNDS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROYEAREXTERNALFUNDS` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTARTENDTIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINDUSTRYKIND` bigint NOT NULL DEFAULT '0',
  `FOVERSEAPRO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTDIRECTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTKIND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTLISTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTCOMMENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFISACCEPTED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPROJECTTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTSTATUS` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `INDEX_PLANADJUST_ENTRY_0` (`FPROJECTNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_planattch definition

CREATE TABLE `t_pmim_planattch` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_PLANATTCH_1` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_pmsgentry definition

CREATE TABLE `t_pmim_pmsgentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FYEAR` datetime DEFAULT NULL,
  `FYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FARREARSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISQUOTE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPROJECTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FOWNERSHIPSTRUCTURE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGISTEREDCAPITAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSHAREHOLDING` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTERPRISELEVEL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOHPARTSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHMATERIALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHPROCESSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHOUTSOURCAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHOUTPRECCAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHINPROJECTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHVEHICLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHADDRESS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPWEIGHT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREPORTBUDGET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FBUDGETAPPLYRESULT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORG` bigint NOT NULL DEFAULT '0',
  `FYEARBUGAPPAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARFIAPPAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '1.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMIM_PMSG_EN_0` (`FYEAR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_pp_projectentry definition

CREATE TABLE `t_pmim_pp_projectentry` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_PP_PRO_EN_0` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_pp_pronameentry definition

CREATE TABLE `t_pmim_pp_pronameentry` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_PP_PME_0` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectbdmsgdoc definition

CREATE TABLE `t_pmim_projectbdmsgdoc` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_PROJECTBDMSGDOC_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectentry definition

CREATE TABLE `t_pmim_projectentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FENTRYINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTRYCURINVESTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCONCLUSION` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPORGID` bigint NOT NULL DEFAULT '0',
  `FFINALSTATE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYINVESTTYPEID` bigint NOT NULL DEFAULT '0',
  `FENTRYINVESTCYCLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCLAIMTYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISVALID` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPREENTRYID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FENTRYINVESTPERIOD` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITDESC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPECIALORGID` bigint NOT NULL DEFAULT '0',
  `FSPECIALPERSONID` bigint NOT NULL DEFAULT '0',
  `FSHOWFINALSTATE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEENTRYID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYCLAIMDATE` datetime DEFAULT NULL,
  `FSOURCEBILLTYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLATEST` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNUM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMIM_PROJECTENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectentry_r3 definition

CREATE TABLE `t_pmim_projectentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectmsgdoc definition

CREATE TABLE `t_pmim_projectmsgdoc` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_PRO_MSG_DOC_0` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposal definition

CREATE TABLE `t_pmim_projectproposal` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FPROJCETBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJCETFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBUGREBACKDATE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANBEGINDATE` datetime DEFAULT NULL,
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FPROJECTCONTACTER` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUGREBACKSCALE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTKIND` bigint NOT NULL DEFAULT '0',
  `FPROJECTNAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEAR` datetime DEFAULT NULL,
  `FYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FARREARSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBIZSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTOWERID` bigint NOT NULL DEFAULT '0',
  `FOPERATIONDATE` datetime DEFAULT NULL,
  `FOPERATIONERID` bigint NOT NULL DEFAULT '0',
  `FCANCELDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLTYPEID` bigint NOT NULL DEFAULT '0',
  `FPROJECTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FOWNERSHIPSTRUCTURE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGISTEREDCAPITAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSHAREHOLDING` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTERPRISELEVEL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOHMATERIALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHPROCESSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHOUTSOURCAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHPARTSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHOUTPRECCAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHINPROJECTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHVEHICLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHADDRESS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPWEIGHT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_PRO_PRO_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposal_a definition

CREATE TABLE `t_pmim_projectproposal_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREPORTBUDGET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FBUILDNATURE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTDIRECTION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTKIND` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOVERSEAPRO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPRONEGATIVELISTID` bigint NOT NULL DEFAULT '0',
  `FPROINVESTBUDAPPAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROFINEXBUDAPPAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINDUSTRYID` bigint NOT NULL DEFAULT '0',
  `FYEARBUGAPPAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESERVELEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWAREHOUSTIME` datetime DEFAULT NULL,
  `FPROJECTAREA` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FAPPROVALSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPROINPLAN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAPPROVALTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_PROJECTPROPOSAL_A_0` (`FREPORTBUDGET`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposal_l definition

CREATE TABLE `t_pmim_projectproposal_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_PRO_PRO_L_0` (`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposal_r3 definition

CREATE TABLE `t_pmim_projectproposal_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposalbd definition

CREATE TABLE `t_pmim_projectproposalbd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FYEAR` datetime DEFAULT NULL,
  `FYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FARREARSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARBUGAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLASTYEARFIAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTPROPOSALID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISQUOTE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FOWNERSHIPSTRUCTURE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGISTEREDCAPITAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSHAREHOLDING` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FENTERPRISELEVEL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOHPARTSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHMATERIALAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHPROCESSAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHOUTSOURCAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHOUTPRECCAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHINPROJECTAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHVEHICLEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHADDRESS` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEQUIPWEIGHT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOHPERIOD` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '1.0000000000',
  `FREPORTBUDGET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FREPORTORGID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_PRO_PRO_BD_0` (`FNUMBER`),
  KEY `IDX_T_PMIM_PROJECTPROPOSALBD_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_PMIM_PROJECTPROPOSALBD_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposalbd_a definition

CREATE TABLE `t_pmim_projectproposalbd_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBUDGETAPPLYRESULT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORGID` bigint NOT NULL DEFAULT '0',
  `FYEARBUGAPPAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FYEARFIAPPAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAPPROVALCON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECLARETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIANNUALINCEST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FORIFINANCIALEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSOURCEORGID` bigint NOT NULL DEFAULT '0',
  `FACCEPTED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDATASOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTLISTID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECT` bigint NOT NULL DEFAULT '0',
  `FTOTALOLDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALDIFFAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_PROPROSALBD_A_0` (`FDATASOURCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposalbd_bit definition

CREATE TABLE `t_pmim_projectproposalbd_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposalbd_l definition

CREATE TABLE `t_pmim_projectproposalbd_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_PRO_PRO_BD_L_0` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposalbd_m definition

CREATE TABLE `t_pmim_projectproposalbd_m` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposalbd_r3 definition

CREATE TABLE `t_pmim_projectproposalbd_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposalbd_u definition

CREATE TABLE `t_pmim_projectproposalbd_u` (
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDATAID`,`FUSEORGID`),
  KEY `IDX_T_PMIM_PROPROPOSALBD_U` (`FUSEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposalbdexc definition

CREATE TABLE `t_pmim_projectproposalbdexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMIM_PROJECTPROPOSALBDEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectproposalbdusereg definition

CREATE TABLE `t_pmim_projectproposalbdusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_PMIM_PROJECTPROPOSALBDUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectstatus definition

CREATE TABLE `t_pmim_projectstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FLONGNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '1',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_PROSTU_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectstatus_l definition

CREATE TABLE `t_pmim_projectstatus_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_PRO_STU_L_0` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_projectstatus_r3 definition

CREATE TABLE `t_pmim_projectstatus_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_proposal_f7_source definition

CREATE TABLE `t_pmim_proposal_f7_source` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFUNDSOURCETYPE` bigint NOT NULL DEFAULT '0',
  `FFORMOFINVEST` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINVESTCURRENCY` bigint NOT NULL DEFAULT '0',
  `FSCALE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOLDAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDIFFAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENTENTRYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_BD_FUNSOURCE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_proposalindexentry definition

CREATE TABLE `t_pmim_proposalindexentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINDEXNAMEID` bigint NOT NULL DEFAULT '0',
  `FINDEXWARNLIGHT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECLAREVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXCELLENTINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMIM_PROPOSALINDEXENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_sourceentry definition

CREATE TABLE `t_pmim_sourceentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFORMOFINVEST` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSCALE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFUNDRESOURCEID` bigint NOT NULL DEFAULT '0',
  `FCURRENTENTRYAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMIM_SOU_EN_0` (`FFUNDRESOURCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_specialapproval definition

CREATE TABLE `t_pmim_specialapproval` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSPECAPPRODATE` datetime DEFAULT NULL,
  `FSPECAPPROPERSONID` bigint NOT NULL DEFAULT '0',
  `FSPECAPPROTYPEID` bigint NOT NULL DEFAULT '0',
  `FINVESTCYCLE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEARPERIOD` datetime DEFAULT NULL,
  `FMONTHPERIOD` datetime DEFAULT NULL,
  `FSHOWPERIOD` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMIM_SPECIALAPPROVAL_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmim_specialapproval_l definition

CREATE TABLE `t_pmim_specialapproval_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMIM_SPECIALAPPROVAL_L_1` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_controllevel definition

CREATE TABLE `t_pmpm_controllevel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_T_CONTROLLEVEL_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_controllevel_l definition

CREATE TABLE `t_pmpm_controllevel_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PMPM_CONTROLLEVEL_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_controllevel_r3 definition

CREATE TABLE `t_pmpm_controllevel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_deptplan definition

CREATE TABLE `t_pmpm_deptplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPLANNINGCYCLE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` decimal(23,1) NOT NULL DEFAULT '0.0',
  `FSOURCEPLANID` bigint NOT NULL DEFAULT '0',
  `FPRECHANGEPLANID` bigint NOT NULL DEFAULT '0',
  `FTIMERANGE` datetime DEFAULT NULL,
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FPLANSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_DEPTPLAN_1` (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_deptplanentry definition

CREATE TABLE `t_pmpm_deptplanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FTASKNAMEID` bigint NOT NULL DEFAULT '0',
  `FTASKNAMETX` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKCONTROLLEVELTX` bigint NOT NULL DEFAULT '0',
  `FTASKSTARTTIMETX` datetime DEFAULT NULL,
  `FTASKENDTIMETX` datetime DEFAULT NULL,
  `FTASKMUBIAOTX` datetime DEFAULT NULL,
  `FTASKTIMEPCTX` decimal(23,1) NOT NULL DEFAULT '0.0',
  `FTASKJDGQTX` decimal(23,1) NOT NULL DEFAULT '0.0',
  `FRESPERSONTX` bigint NOT NULL DEFAULT '0',
  `FRESDEPTTX` bigint NOT NULL DEFAULT '0',
  `FCOOPERSONTX` bigint NOT NULL DEFAULT '0',
  `FCOODEPTTX` bigint NOT NULL DEFAULT '0',
  `FISIMPORT` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPM_DEPTPLANENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_majortype definition

CREATE TABLE `t_pmpm_majortype` (
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
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANTYPENAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_T_MAJORTYPEL_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_majortype_l definition

CREATE TABLE `t_pmpm_majortype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANTYPENAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PMPM_MAJORTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_majortype_r3 definition

CREATE TABLE `t_pmpm_majortype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_opcruxnodeentry definition

CREATE TABLE `t_pmpm_opcruxnodeentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCRUXTASKID` bigint NOT NULL DEFAULT '0',
  `FCRUXTASKSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXTASKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXMAJORNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCRUXPLANENDTIME` datetime DEFAULT NULL,
  `FCRUXREALENDTIME` datetime DEFAULT NULL,
  `FCRUXREALTIMEDEVIATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCRUXRESPONSIBLEPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXRESPONSIBLEDEPT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXCOOPERATIONPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXCOOPERATIONDEPT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPM_OPCRUXNODEENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_opdatadetailentry definition

CREATE TABLE `t_pmpm_opdatadetailentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMAJORTYPEID` bigint NOT NULL DEFAULT '0',
  `FPLANEND` bigint NOT NULL DEFAULT '0',
  `FONTIMEEND` bigint NOT NULL DEFAULT '0',
  `FOVERTIMEEND` bigint NOT NULL DEFAULT '0',
  `FCOMPLETIONRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOVERTIMENOTEND` bigint NOT NULL DEFAULT '0',
  `FTOTALPLANEND` bigint NOT NULL DEFAULT '0',
  `FTOTALONTIMEEND` bigint NOT NULL DEFAULT '0',
  `FTOTALOVERTIMEEND` bigint NOT NULL DEFAULT '0',
  `FTOTALCOMPLETIONRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALOVERTIMENOTEND` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPM_OPDATADETAILENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_operationalreport definition

CREATE TABLE `t_pmpm_operationalreport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTSURVEY` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTCYCLE` datetime DEFAULT NULL,
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FLEFTPIEDATA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRIGHTPIEDATA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEFTBARDATA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRIGHTBARDATA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_OPERATIONALREPORT_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_opnextcyctaskentry definition

CREATE TABLE `t_pmpm_opnextcyctaskentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNEXTCYCLETASKID` bigint NOT NULL DEFAULT '0',
  `FNEXTCYCLETASKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTTASKTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTMAJORNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTPLANSTARTTIME` datetime DEFAULT NULL,
  `FNEXTPLANENDTIME` datetime DEFAULT NULL,
  `FNEXTRESPONSIBLEPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTCOOPERATIONPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPM_OPNEXTCYCTASKENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_opprogressentry definition

CREATE TABLE `t_pmpm_opprogressentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROGRESSDESC` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAJORTYPENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPM_OPPROGRESSENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_opreportcl definition

CREATE TABLE `t_pmpm_opreportcl` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPM_OPREPORTCL_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_opthiscyctaskentry definition

CREATE TABLE `t_pmpm_opthiscyctaskentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTHISCYCLETASKID` bigint NOT NULL DEFAULT '0',
  `FREASON` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINFLUENCE` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCORRECTIVEMEASURES` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISTASKSTATUS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISCYCLETASKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISTASKTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISMAJORNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISRESPONSIBLEPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISPLANENDTIME` datetime DEFAULT NULL,
  `FTHISREALENDTIME` datetime DEFAULT NULL,
  `FTHISREALTIMEDEVIATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTHISVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPM_OPTHISCYCTASKENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_personplan definition

CREATE TABLE `t_pmpm_personplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPLANNINGCYCLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIMERANGESTARTDATE` datetime DEFAULT NULL,
  `FTIMERANGEENDDATE` datetime DEFAULT NULL,
  `FTIMERANGE` datetime DEFAULT NULL,
  `FPLANPERSON` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_PERSONPLAN_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_personplan_l definition

CREATE TABLE `t_pmpm_personplan_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPM_PERSONPLAN_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_personplanentry definition

CREATE TABLE `t_pmpm_personplanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FRESPERSONTX` bigint NOT NULL DEFAULT '0',
  `FRESDEPTTX` bigint NOT NULL DEFAULT '0',
  `FCOOPERSONTX` bigint NOT NULL DEFAULT '0',
  `FCOODEPTTX` bigint NOT NULL DEFAULT '0',
  `FTASKSOURCETX` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKPROJECTTXID` bigint NOT NULL DEFAULT '0',
  `FTASKNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKTYPETXID` bigint NOT NULL DEFAULT '0',
  `FTASKCONTROLLEVELTXID` bigint NOT NULL DEFAULT '0',
  `FTASKSTARTTIMETX` datetime DEFAULT NULL,
  `FTASKENDTIMETX` datetime DEFAULT NULL,
  `FTASKMUBIAOTX` datetime DEFAULT NULL,
  `FTASKABSTRACTDATE` decimal(23,1) NOT NULL DEFAULT '0.0',
  `FTASKTIMEPCTX` decimal(23,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPM_PERSONPLANENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_plantemplate definition

CREATE TABLE `t_pmpm_plantemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRETEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FVALIDVERSION` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_PLANTEMPLATE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_plantemplate_l definition

CREATE TABLE `t_pmpm_plantemplate_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPM_PLANTEMPLATE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_plantemplate_r3 definition

CREATE TABLE `t_pmpm_plantemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_plantplrelevant definition

CREATE TABLE `t_pmpm_plantplrelevant` (
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPM_PLANTPLRELEVANT_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_plantplresdetail definition

CREATE TABLE `t_pmpm_plantplresdetail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRESULTNAME` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFREQUENCY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMPM_PLANTPLRESDETAIL_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_plantpltaskentry definition

CREATE TABLE `t_pmpm_plantpltaskentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FABSOLUTEDURATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRELATIVEDURATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FID` bigint NOT NULL DEFAULT '0',
  `FTASKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROLLEVELID` bigint NOT NULL DEFAULT '0',
  `FSPECTYPEID` bigint NOT NULL DEFAULT '0',
  `FTASKTYPEID` bigint NOT NULL DEFAULT '0',
  `FPRETASK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACHIEVEMENTNODE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPRETASKID` bigint NOT NULL DEFAULT '0',
  `FTASKNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGICAL` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESPONSIBLEPOSTID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FASSOCIATEPOSTID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPM_PLANTPLTASKENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_projcalendarentry definition

CREATE TABLE `t_pmpm_projcalendarentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDATETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKDATE` datetime DEFAULT NULL,
  `FWEEKSEQ` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMPM_PROJCALENDARENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_projectplan definition

CREATE TABLE `t_pmpm_projectplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FNAME` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FVERSION` decimal(3,1) NOT NULL DEFAULT '0.0',
  `FSOURCEPLANID` bigint NOT NULL DEFAULT '0',
  `FPRECHANGEPLANID` bigint NOT NULL DEFAULT '0',
  `FMAJORTYPEID` bigint NOT NULL DEFAULT '0',
  `FPROJECTPLANID` bigint NOT NULL DEFAULT '0',
  `FPLANSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_PROJECTPLAN_1` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_projectplan_r3 definition

CREATE TABLE `t_pmpm_projectplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_projectplanentry definition

CREATE TABLE `t_pmpm_projectplanentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMAINTASKID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FCONTROLLEVELID` bigint NOT NULL DEFAULT '0',
  `FSPECTYPEID` bigint NOT NULL DEFAULT '0',
  `FTASKTYPEID` bigint NOT NULL DEFAULT '0',
  `FPLANBEGINDATE` datetime DEFAULT NULL,
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FAIMFINISHTIME` datetime DEFAULT NULL,
  `FDIRECTPERSONID` bigint NOT NULL DEFAULT '0',
  `FDIRECTORGID` bigint NOT NULL DEFAULT '0',
  `FTASKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTASKNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FACHIEVEMENTNODE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FABSOLUTESHEDULE` decimal(23,10) NOT NULL DEFAULT '1.0000000000',
  `FPRETASKID` bigint NOT NULL DEFAULT '0',
  `FLOGICAL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` decimal(23,10) NOT NULL DEFAULT '1.0000000000',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FRELATIVESCHEDULE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMPTIMEDEVIATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FINDIRECTPERSONID` bigint NOT NULL DEFAULT '0',
  `FINDIRECTORGID` bigint NOT NULL DEFAULT '0',
  `FREALENDTIME` datetime DEFAULT NULL,
  `FPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FMAINTASKID`),
  KEY `IDX_T_PMPM_PROJECTPLANENTRY_1` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_projworkcalende_r3 definition

CREATE TABLE `t_pmpm_projworkcalende_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_projworkcalender definition

CREATE TABLE `t_pmpm_projworkcalender` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FHOUROFBEGINTIMEAM` bigint NOT NULL DEFAULT '0',
  `FMINOFBEGINTIMEAM` bigint NOT NULL DEFAULT '0',
  `FHOUROFENDTIMEAM` bigint NOT NULL DEFAULT '0',
  `FMINOFENDTIMEAM` bigint NOT NULL DEFAULT '0',
  `FHOUROFBEGINTIMEPM` bigint NOT NULL DEFAULT '0',
  `FMINOFBEGINTIMEPM` bigint NOT NULL DEFAULT '0',
  `FHOUROFENDTIMEPM` bigint NOT NULL DEFAULT '0',
  `FMINOFENDTIMEPM` bigint NOT NULL DEFAULT '0',
  `FISSUNREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISMONREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISTUEREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISWEDREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISTHUREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISFRIREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSATREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFSUNREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFMONREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFTUEREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFWEDREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFTHUREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFFRIREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFSATREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXPIRINGYEARFROM` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIRINGMONTHFROM` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIRINGYEARTO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIRINGMONTHTO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINDIVIDUATION` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FHOUROFHALFWORKDATE` bigint NOT NULL DEFAULT '0',
  `FHOUROFWORKDATE` bigint NOT NULL DEFAULT '0',
  `FHOLIDAYCOLOR` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKDAYCOLOR` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHALFWORKDAYCOLOR` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWEEKENDCOLOR` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISFORSHARE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPROJECTORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_PROJWORKCALENDER_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_projworkcalender_l definition

CREATE TABLE `t_pmpm_projworkcalender_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPM_PROJCALENDER_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_projworkcalender_r3 definition

CREATE TABLE `t_pmpm_projworkcalender_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_task definition

CREATE TABLE `t_pmpm_task` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPRETASKID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCONTROLLEVELID` bigint NOT NULL DEFAULT '0',
  `FMAJORTYPEID` bigint NOT NULL DEFAULT '0',
  `FTASKTYPEID` bigint NOT NULL DEFAULT '0',
  `FPLANSTARTTIME` datetime DEFAULT NULL,
  `FPLANENDTIME` datetime DEFAULT NULL,
  `FABSOLUTEDURATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FLOGICAL` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATIVEDURATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESPONSIBLEPERSONID` bigint NOT NULL DEFAULT '0',
  `FRESPONSIBLEDEPTID` bigint NOT NULL DEFAULT '0',
  `FPLANS` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCETASKID` bigint NOT NULL DEFAULT '0',
  `FPRECHANGETASKID` bigint NOT NULL DEFAULT '0',
  `FSHARERID` bigint NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOMPLETIONSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKSEQ` bigint NOT NULL DEFAULT '0',
  `FACHIEVEMENTNODE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREALENDTIME` datetime DEFAULT NULL,
  `FAIMFINISHTIME` datetime DEFAULT NULL,
  `FCOMPTIMEDEVIATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESULTDOC` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FCOOPERATIONPERSONID` bigint NOT NULL DEFAULT '0',
  `FCOOPERATIONDEPTID` bigint NOT NULL DEFAULT '0',
  `FBELONGPLANTYPEID` bigint NOT NULL DEFAULT '0',
  `FREALTIMEDEVIATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_TASK_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_task_l definition

CREATE TABLE `t_pmpm_task_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPM_TASK_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_task_r3 definition

CREATE TABLE `t_pmpm_task_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_taskreferattdetail definition

CREATE TABLE `t_pmpm_taskreferattdetail` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPM_TASKREFERATTDETAIL_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_taskreferentry definition

CREATE TABLE `t_pmpm_taskreferentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFERDOCNAME` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPM_TASKREFERENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_taskreport definition

CREATE TABLE `t_pmpm_taskreport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISCOMPLETE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOMPLETETIME` datetime DEFAULT NULL,
  `FREPORTDESC` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPERCENT` bigint NOT NULL DEFAULT '0',
  `FHUIBAOPERSON` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLATEST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_TASKREPORT_1` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_taskreportdoc definition

CREATE TABLE `t_pmpm_taskreportdoc` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPM_TASKREPORTDOC_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_taskreportdocentry definition

CREATE TABLE `t_pmpm_taskreportdocentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FRESULTNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFREQUENCY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTID` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPM_TASKREPORTEN_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_taskresultentry definition

CREATE TABLE `t_pmpm_taskresultentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRESULTNAME` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFREQUENCY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPM_TASKRESULTENTRY_FK` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_tasktype definition

CREATE TABLE `t_pmpm_tasktype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPROJECTTASK` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_T_TASKTYPE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_tasktype_l definition

CREATE TABLE `t_pmpm_tasktype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PMPM_TASKTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_tasktype_r3 definition

CREATE TABLE `t_pmpm_tasktype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_workhours definition

CREATE TABLE `t_pmpm_workhours` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAFIELD` bigint NOT NULL DEFAULT '0',
  `FWORKDATE` datetime DEFAULT NULL,
  `FHOUR` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPM_T_WORKHOUR_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_workhours_l definition

CREATE TABLE `t_pmpm_workhours_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PMPM_WORKHOUR_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpm_workhours_r3 definition

CREATE TABLE `t_pmpm_workhours_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_assisttransfer definition

CREATE TABLE `t_pmpt_assisttransfer` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FATRANSFERDATE` datetime DEFAULT NULL,
  `FATRANSFERPERSONID` bigint NOT NULL DEFAULT '0',
  `FAREMARK` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FATASKID` bigint NOT NULL DEFAULT '0',
  `FATRANSFERTIME` datetime DEFAULT NULL,
  `FASTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLATESTA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_ASSISTTRANSFER_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_controllevel definition

CREATE TABLE `t_pmpt_controllevel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMPT_CONTROLLEVEL_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_controllevel_l definition

CREATE TABLE `t_pmpt_controllevel_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PMPT_CONTROLLEVEL_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_controllevel_r3 definition

CREATE TABLE `t_pmpt_controllevel_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_deptplan definition

CREATE TABLE `t_pmpt_deptplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPLANNINGCYCLE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` decimal(23,1) NOT NULL DEFAULT '0.0',
  `FSOURCEPLANID` bigint NOT NULL DEFAULT '0',
  `FPRECHANGEPLANID` bigint NOT NULL DEFAULT '0',
  `FTIMERANGE` datetime DEFAULT NULL,
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FPLANSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_DEPTPLAN_1` (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_dutytransfer definition

CREATE TABLE `t_pmpt_dutytransfer` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FTRANSFERDATE` datetime DEFAULT NULL,
  `FPRESPONSIBLEPERSONID` bigint NOT NULL DEFAULT '0',
  `FARESPONSIBLEPERSONID` bigint NOT NULL DEFAULT '0',
  `FARESPONSIBLEDEPTID` bigint NOT NULL DEFAULT '0',
  `FTRANSFERPERSONID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FTRANSFERTIME` datetime DEFAULT NULL,
  `FDSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLATESTD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_DUTYTRANSFER_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_headtfmulcodept definition

CREATE TABLE `t_pmpt_headtfmulcodept` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_HEADTFMULCODEPT_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_heatfamulcoperson definition

CREATE TABLE `t_pmpt_heatfamulcoperson` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_HEATFAMULCOPERSON_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_majortype definition

CREATE TABLE `t_pmpt_majortype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FPLANTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMPT_MAJORTYPE_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_majortype_l definition

CREATE TABLE `t_pmpt_majortype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANTYPENAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_MAJORTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_majortype_r3 definition

CREATE TABLE `t_pmpt_majortype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_multicodept definition

CREATE TABLE `t_pmpt_multicodept` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_MULTICODEPT_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_multicoperson definition

CREATE TABLE `t_pmpt_multicoperson` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_MULTICOPERSON_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_multitxtype definition

CREATE TABLE `t_pmpt_multitxtype` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_MULTITXTYPE_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_opcruxnodeentry definition

CREATE TABLE `t_pmpt_opcruxnodeentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCRUXTASKID` bigint NOT NULL DEFAULT '0',
  `FCRUXTASKSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXTASKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXMAJORNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCRUXPLANENDTIME` datetime DEFAULT NULL,
  `FCRUXREALENDTIME` datetime DEFAULT NULL,
  `FCRUXREALTIMEDEVIATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCRUXRESPONSIBLEPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXRESPONSIBLEDEPT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXCOOPERATIONPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXCOOPERATIONDEPT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCRUXVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_OPCRUXNODEENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_opdatadetailentry definition

CREATE TABLE `t_pmpt_opdatadetailentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMAJORTYPEID` bigint NOT NULL DEFAULT '0',
  `FPLANEND` bigint NOT NULL DEFAULT '0',
  `FONTIMEEND` bigint NOT NULL DEFAULT '0',
  `FOVERTIMEEND` bigint NOT NULL DEFAULT '0',
  `FCOMPLETIONRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOVERTIMENOTEND` bigint NOT NULL DEFAULT '0',
  `FTOTALPLANEND` bigint NOT NULL DEFAULT '0',
  `FTOTALONTIMEEND` bigint NOT NULL DEFAULT '0',
  `FTOTALOVERTIMEEND` bigint NOT NULL DEFAULT '0',
  `FTOTALCOMPLETIONRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTOTALOVERTIMENOTEND` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_OPDATADETAILENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_operationreport definition

CREATE TABLE `t_pmpt_operationreport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTSURVEY` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTCYCLE` datetime DEFAULT NULL,
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FLEFTPIEDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FRIGHTPIEDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FLEFTBARDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FRIGHTBARDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FDATADETAIL` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_OPERATIONREPORT_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_opnextcycentry definition

CREATE TABLE `t_pmpt_opnextcycentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FNEXTCYCLETASKID` bigint NOT NULL DEFAULT '0',
  `FNEXTCYCLETASKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTTASKTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTMAJORNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTPLANSTARTTIME` datetime DEFAULT NULL,
  `FNEXTPLANENDTIME` datetime DEFAULT NULL,
  `FNEXTRESPONSIBLEPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTCOOPERATIONPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEXTVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_OPNEXTCYCENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_opprogressentry definition

CREATE TABLE `t_pmpt_opprogressentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROGRESSDESC` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAJORTYPENAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_OPPROGRESSENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_opreportcl definition

CREATE TABLE `t_pmpt_opreportcl` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_OPREPORTCL_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_opthiscycentry definition

CREATE TABLE `t_pmpt_opthiscycentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTHISCYCLETASKID` bigint NOT NULL DEFAULT '0',
  `FREASON` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINFLUENCE` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCORRECTIVEMEASURES` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISTASKSTATUS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISCYCLETASKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISTASKTYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISMAJORNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISRESPONSIBLEPERSON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHISPLANENDTIME` datetime DEFAULT NULL,
  `FTHISREALENDTIME` datetime DEFAULT NULL,
  `FTHISREALTIMEDEVIATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTHISVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_OPTHISCYCENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_personplan definition

CREATE TABLE `t_pmpt_personplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPLANNINGCYCLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTIMERANGESTARTDATE` datetime DEFAULT NULL,
  `FTIMERANGEENDDATE` datetime DEFAULT NULL,
  `FTIMERANGE` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_PERSONPLAN_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_personplan_l definition

CREATE TABLE `t_pmpt_personplan_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_PERSONPLAN_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_plantemplate definition

CREATE TABLE `t_pmpt_plantemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRETEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FVALIDVERSION` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMPT_PLANTEMPLATE_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_plantemplate_l definition

CREATE TABLE `t_pmpt_plantemplate_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_PLANTEMPLATE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_plantemplate_r3 definition

CREATE TABLE `t_pmpt_plantemplate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_plantplrelevant definition

CREATE TABLE `t_pmpt_plantplrelevant` (
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_PLANTPLRELEVANT_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_plantplresdetail definition

CREATE TABLE `t_pmpt_plantplresdetail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRESULTNAME` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFREQUENCY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTACHTYPEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEFILE` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMPT_PLANTPLRESDETAIL_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_plantpltaskentr_r3 definition

CREATE TABLE `t_pmpt_plantpltaskentr_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_plantpltaskentry definition

CREATE TABLE `t_pmpt_plantpltaskentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FTASKNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROLLEVELID` bigint NOT NULL DEFAULT '0',
  `FSPECTYPEID` bigint NOT NULL DEFAULT '0',
  `FTASKTYPEID` bigint NOT NULL DEFAULT '0',
  `FABSOLUTEDURATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPRETASK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRETASKID` bigint NOT NULL DEFAULT '0',
  `FLOGICAL` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATIVEDURATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESPONSIBLEPOSTID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSOCIATEPOSTID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FACHIEVEMENTNODE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTRANSACTIONTYPEID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(450) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_PLANTPLTASKENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_plantpltaskentry_l definition

CREATE TABLE `t_pmpt_plantpltaskentry_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_PLANTPLTASKENTRY_L_0` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_plantype definition

CREATE TABLE `t_pmpt_plantype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPLANTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_PLANTYPE_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_plantype_l definition

CREATE TABLE `t_pmpt_plantype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_PLANTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_plantype_r3 definition

CREATE TABLE `t_pmpt_plantype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_projcalendarentry definition

CREATE TABLE `t_pmpt_projcalendarentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FDATETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMPT_PROJCALENDARENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_projectplan definition

CREATE TABLE `t_pmpt_projectplan` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FMAJORTYPEID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FPLANSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FSOURCEPLANID` bigint NOT NULL DEFAULT '0',
  `FPRECHANGEPLANID` bigint NOT NULL DEFAULT '0',
  `FMASTERPLANID` bigint NOT NULL DEFAULT '0',
  `FASSIGNERID` bigint NOT NULL DEFAULT '0',
  `FRELATEDMASTERTASKID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_PROJECTPLAN_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_projectplan_r3 definition

CREATE TABLE `t_pmpt_projectplan_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_projworkcalenda_r3 definition

CREATE TABLE `t_pmpt_projworkcalenda_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_projworkcalendar definition

CREATE TABLE `t_pmpt_projworkcalendar` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FHOUROFBEGINTIMEAM` bigint NOT NULL DEFAULT '0',
  `FMINOFBEGINTIMEAM` bigint NOT NULL DEFAULT '0',
  `FHOUROFENDTIMEAM` bigint NOT NULL DEFAULT '0',
  `FMINOFENDTIMEAM` bigint NOT NULL DEFAULT '0',
  `FHOUROFBEGINTIMEPM` bigint NOT NULL DEFAULT '0',
  `FMINOFBEGINTIMEPM` bigint NOT NULL DEFAULT '0',
  `FHOUROFENDTIMEPM` bigint NOT NULL DEFAULT '0',
  `FMINOFENDTIMEPM` bigint NOT NULL DEFAULT '0',
  `FISSUNREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISMONREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISTUEREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISWEDREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISTHUREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISFRIREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSATREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFSUNREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFMONREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFTUEREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFWEDREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFTHUREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFFRIREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISHALFSATREST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FEXPIRINGYEARFROM` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIRINGMONTHFROM` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIRINGYEARTO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPIRINGMONTHTO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINDIVIDUATION` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTORGID` bigint NOT NULL DEFAULT '0',
  `FHOUROFBEGINTIMEAM2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINOFBEGINTIMEAM2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOUROFENDTIMEAM2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINOFENDTIMEAM2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOUROFBEGINTIMEPM2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINOFBEGINTIMEPM2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOUROFENDTIMEPM2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMINOFENDTIMEPM2` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_PROJWORKCALENDAR_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_projworkcalendar_l definition

CREATE TABLE `t_pmpt_projworkcalendar_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_PROJWORKCALENDAR_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_projworkcalendar_r3 definition

CREATE TABLE `t_pmpt_projworkcalendar_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_riskwarningset definition

CREATE TABLE `t_pmpt_riskwarningset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRISKTIME` bigint NOT NULL DEFAULT '0',
  `FRISKCOLOR` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTROLLEVELID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_T_PMPT_RISKWARNINGSET_0` (`FCONTROLLEVELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_riskwarningset_r3 definition

CREATE TABLE `t_pmpt_riskwarningset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_task definition

CREATE TABLE `t_pmpt_task` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` bigint NOT NULL DEFAULT '0',
  `FISLEAF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONTROLLEVELID` bigint NOT NULL DEFAULT '0',
  `FPLANSTARTTIME` datetime DEFAULT NULL,
  `FPLANENDTIME` datetime DEFAULT NULL,
  `FAIMFINISHTIME` datetime DEFAULT NULL,
  `FCOMPTIMEDEVIATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FABSOLUTEDURATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FRESPONSIBLEPERSONID` bigint NOT NULL DEFAULT '0',
  `FRESPONSIBLEDEPTID` bigint NOT NULL DEFAULT '0',
  `FCOOPERATIONPERSONID` bigint NOT NULL DEFAULT '0',
  `FCOOPERATIONDEPTID` bigint NOT NULL DEFAULT '0',
  `FRELATIONTASKID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBELONGPLANTYPEID` bigint NOT NULL DEFAULT '0',
  `FSOURCETASKID` bigint NOT NULL DEFAULT '0',
  `FPRECHANGETASKID` bigint NOT NULL DEFAULT '0',
  `FVERSION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERCENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISLATEST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOMPLETIONSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKTYPEID` bigint NOT NULL DEFAULT '0',
  `FMAJORTYPEID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FPLANS` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKSEQ` bigint NOT NULL DEFAULT '0',
  `FACHIEVEMENTNODE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPRETASKID` bigint NOT NULL DEFAULT '0',
  `FLOGICAL` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELATIVEDURATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREALENDTIME` datetime DEFAULT NULL,
  `FLONGNUMBER` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTDOC` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREALTIMEDEVIATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSHARERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FRISKCOLOR` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_TASK_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_task_a definition

CREATE TABLE `t_pmpt_task_a` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FRESPONSIBLEPOSTID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSOCIATEPOSTID` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATETASKID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FTASKSOURCEID` bigint NOT NULL DEFAULT '0',
  `FEXPECTTIME` datetime DEFAULT NULL,
  `FCOMPLETEDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FCONTENTREQUIREMENTS` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASSIGNERID` bigint NOT NULL DEFAULT '0',
  `FTRANSACTIONTYPEID` bigint NOT NULL DEFAULT '0',
  `FMEETTASKID` bigint NOT NULL DEFAULT '0',
  `FMEETASSIGNCOUNT` bigint NOT NULL DEFAULT '0',
  `FPLANSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTUALSTARTTIME` datetime DEFAULT NULL,
  `FACTUALDURATION` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDURATIONCOMPLETIONSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORORGID` bigint NOT NULL DEFAULT '0',
  `FMAINORGOFUSERID` bigint NOT NULL DEFAULT '0',
  `FPROJECTSTATUSID` bigint NOT NULL DEFAULT '0',
  `FWBSID` bigint NOT NULL DEFAULT '0',
  `FRELATEDWBS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWORKITEMID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_TASK_A_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_task_l definition

CREATE TABLE `t_pmpt_task_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_TASK_L_0` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_task_r3 definition

CREATE TABLE `t_pmpt_task_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_task_workhours definition

CREATE TABLE `t_pmpt_task_workhours` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FCOMPLETIONSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDAY_7_EFFECTIVE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAYSUM_EFFECTIVE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAYSUM_ACTUAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_6_EFFECTIVE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_7_ACTUAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_5_EFFECTIVE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_6_ACTUAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_4_EFFECTIVE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_5_ACTUAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_3_EFFECTIVE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_4_ACTUAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_2_EFFECTIVE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_3_ACTUAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_1_EFFECTIVE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FDAY_2_ACTUAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FDAY_1_ACTUAL` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMAJORTYPE` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_TASK_WORKHOURS_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_taskastransfer definition

CREATE TABLE `t_pmpt_taskastransfer` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FREMARK1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDATE` datetime DEFAULT NULL,
  `FISLATEST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_TASKASTRANSFER_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_taskreferdoc definition

CREATE TABLE `t_pmpt_taskreferdoc` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_TASKREFERDOC_1` (`FDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_taskreferentry definition

CREATE TABLE `t_pmpt_taskreferentry` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFERDOCNAME` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMPT_TASKREFERENTRY_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_taskreport definition

CREATE TABLE `t_pmpt_taskreport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISCOMPLETE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOMPLETETIME` datetime DEFAULT NULL,
  `FREPORTDESC` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FPERCENT` bigint NOT NULL DEFAULT '0',
  `FHUIBAOPERSON` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLATEST` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FAUTOCOMPLETE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_TASKREPORT_1` (`FTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_taskreportdoc definition

CREATE TABLE `t_pmpt_taskreportdoc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FRESULTNAME` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTID` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFREQUENCY` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTACHTYPEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEFILE` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMPT_TASKREPORTDOC_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_taskresultentry definition

CREATE TABLE `t_pmpt_taskresultentry` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FRESULTNAME` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFORCE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFREQUENCY` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTACHTYPEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEFILE` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_PMPT_TASKRESULTENTRY_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_tasksource definition

CREATE TABLE `t_pmpt_tasksource` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_TASKSOURCE_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_tasksource_l definition

CREATE TABLE `t_pmpt_tasksource_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_TASKSOURCE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_tasksource_r3 definition

CREATE TABLE `t_pmpt_tasksource_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_tasktransfer definition

CREATE TABLE `t_pmpt_tasktransfer` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FAPERSONID` bigint NOT NULL DEFAULT '0',
  `FDEPTID` bigint NOT NULL DEFAULT '0',
  `FREMARK1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `FDATE` datetime DEFAULT NULL,
  `FISLATEST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_TASKTRANSFER_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_tasktype definition

CREATE TABLE `t_pmpt_tasktype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYS` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPROJECTTASK` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_TASKTYPE_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_tasktype_l definition

CREATE TABLE `t_pmpt_tasktype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_TASKTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_tasktype_r3 definition

CREATE TABLE `t_pmpt_tasktype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_tfamulcoperson definition

CREATE TABLE `t_pmpt_tfamulcoperson` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_TFAMULCOPERSON_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_tfmulcodept definition

CREATE TABLE `t_pmpt_tfmulcodept` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_TFMULCODEPT_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_tfpmulcoperson definition

CREATE TABLE `t_pmpt_tfpmulcoperson` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_TFPMULCOPERSON_0` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_transactiontype definition

CREATE TABLE `t_pmpt_transactiontype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISPROJECTTASK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_TRANSACTIONTYPE_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_transactiontype_l definition

CREATE TABLE `t_pmpt_transactiontype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(510) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_T_PMPT_TRANSACTIONTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_transactiontype_r3 definition

CREATE TABLE `t_pmpt_transactiontype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_uploaddoc definition

CREATE TABLE `t_pmpt_uploaddoc` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_UPLOADDOC_1` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_workhours definition

CREATE TABLE `t_pmpt_workhours` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  `FWORKDATE` datetime DEFAULT NULL,
  `FHOUR` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEFFECTIVEHOUR` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_WORKHOURS_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_workhours_billm_r3 definition

CREATE TABLE `t_pmpt_workhours_billm_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_workhours_billmap definition

CREATE TABLE `t_pmpt_workhours_billmap` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FWORKHOURSID` bigint NOT NULL DEFAULT '0',
  `FWORKHOURSBILLID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTASKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_WORKHOURS_BILLMAP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_workhours_billmap_l definition

CREATE TABLE `t_pmpt_workhours_billmap_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_WORKHOURS_BILLMAP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_workhours_l definition

CREATE TABLE `t_pmpt_workhours_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMPT_WORKHOURS_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_workhours_r3 definition

CREATE TABLE `t_pmpt_workhours_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_workhoursbill definition

CREATE TABLE `t_pmpt_workhoursbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FOWNERID` bigint NOT NULL DEFAULT '0',
  `FDEPARTID` bigint NOT NULL DEFAULT '0',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FDATEFIELD` datetime DEFAULT NULL,
  `FORIBILLID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_WORKHOURSBILL_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmpt_workhoursbill_num definition

CREATE TABLE `t_pmpt_workhoursbill_num` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_PMPT_WORKHOURSBILL_NUM` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_accounts_audit definition

CREATE TABLE `t_pmsc_accounts_audit` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FPROSTARTTIME` datetime DEFAULT NULL,
  `FPROENDTIME` datetime DEFAULT NULL,
  `FAUDITLEADERID` bigint NOT NULL DEFAULT '0',
  `FBASECONDITION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTOPINION` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FAUDITUNIT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEOFFUNDS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRISKMANAGEMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTINCOME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHIRDAUDIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMSC_ACC_AUD_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_budgetentry definition

CREATE TABLE `t_pmsc_budgetentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FAMOUNT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACCOUNTNUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCOUNTNAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` bigint NOT NULL DEFAULT '0',
  `FUNDERTAKEORGID` bigint NOT NULL DEFAULT '0',
  `FUNDERTAKEPERIOD` datetime DEFAULT NULL,
  `FENTRYPRONAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYPRONUMBER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYPROID` bigint NOT NULL DEFAULT '0',
  `FENTRYCOMMON` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_T_PMSC_BUDGETENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_evalindexentry definition

CREATE TABLE `t_pmsc_evalindexentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINDEXNAMEID` bigint NOT NULL DEFAULT '0',
  `FPRODECLARE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FREPORTDECLARE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSTANDARDINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXCELLENTINDEX` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACTUALVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FEXPLAIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEVIATIONRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMSC_EVALINDEXENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_pro_comp_acc definition

CREATE TABLE `t_pmsc_pro_comp_acc` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FPROSTARTTIME` datetime DEFAULT NULL,
  `FPROENDTIME` datetime DEFAULT NULL,
  `FPROTOTALINVEST` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FACCEPTLEADERID` bigint NOT NULL DEFAULT '0',
  `FCONSTRUCTUNITID` bigint NOT NULL DEFAULT '0',
  `FKINDID` bigint NOT NULL DEFAULT '0',
  `FMAINCONTENT` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCEPTCOMMENTS` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMSC_PRO_COMP_ACC_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_proexecsplitentry definition

CREATE TABLE `t_pmsc_proexecsplitentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSPLITUNDERTAKEORGID` bigint NOT NULL DEFAULT '0',
  `FSPLITUNDERTAKEPERIOD` datetime DEFAULT NULL,
  `FSPLITUSEDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSPLITUNDERTAKEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSPLITREMINDAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FSPLITPRONAME` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPLITPRONUMBER` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPLITPROID` bigint NOT NULL DEFAULT '0',
  `FSPLITCOMMON` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPLITOUTITEMNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPLITOUTITEMID` bigint NOT NULL DEFAULT '0',
  `FSPLITPROBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMSC_PROEXECSPLITENTRY_0` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_proexecuseentry definition

CREATE TABLE `t_pmsc_proexecuseentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FOUTBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FOUTPROBUDGETITEMID` bigint NOT NULL DEFAULT '0',
  `FOUTBUDGETAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOUTUSEAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOUTREMAINAMT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOUTREMAINRATE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMSC_PROEXECUSEENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_projectassessty_r3 definition

CREATE TABLE `t_pmsc_projectassessty_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_projectassesstype definition

CREATE TABLE `t_pmsc_projectassesstype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMSC_PROASSESSTYPE_0` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_projectassesstype_l definition

CREATE TABLE `t_pmsc_projectassesstype_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMSC_PROASSESSTYPE_L_0` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_projectassesstype_r3 definition

CREATE TABLE `t_pmsc_projectassesstype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_projectevaluation definition

CREATE TABLE `t_pmsc_projectevaluation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVALUATIONDES` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FEVALUATELEVEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTHIRDEVALUATE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FITEMTIME` datetime DEFAULT NULL,
  `FEVALUATEUNIT` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTDECISION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONSTRUCTIONPERIOD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTCONTROL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUGGETIMPLEMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTINCOME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTECHNICALEFFECT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGOALACHIEVEMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMSC_PROEVALUA_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_projectexecstatus definition

CREATE TABLE `t_pmsc_projectexecstatus` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRESTATUSID` bigint NOT NULL DEFAULT '0',
  `FNEWSTATUSID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBILLNAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FBUDGETBALANCE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FBUDGETPROID` bigint NOT NULL DEFAULT '0',
  `FBUDGETPRONAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUDGETPRONUMBER` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSPLITTYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTAPPLYDATE` datetime DEFAULT NULL,
  `FBUDGETQUERYTYPE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMSC_PROJECTEXECSTATUS_1` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_projectexecstatus_l definition

CREATE TABLE `t_pmsc_projectexecstatus_l` (
  `FPKID` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_PMSC_PROJECTEXECSTATUS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_projecthandover definition

CREATE TABLE `t_pmsc_projecthandover` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROJECTID` bigint NOT NULL DEFAULT '0',
  `FHANDOVERDATE` datetime DEFAULT NULL,
  `FTRANSFERORID` bigint NOT NULL DEFAULT '0',
  `FRECEIVERID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDOVERDES` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPROJECTKINDID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_PMSC_PROHAN_0` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_projecthandover_r3 definition

CREATE TABLE `t_pmsc_projecthandover_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.t_pmsc_projectstatusentry definition

CREATE TABLE `t_pmsc_projectstatusentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPROJECTSTAGEID` bigint NOT NULL DEFAULT '0',
  `FSTAGEPRESTATUSID` bigint NOT NULL DEFAULT '0',
  `FSTAGENEWSTATUSID` bigint NOT NULL DEFAULT '0',
  `FREMARKS` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREVIOUSPERCENT` decimal(23,2) NOT NULL DEFAULT '0.00',
  `FLATESTPERCENT` decimal(23,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_PMSC_PROJECTSTATUSENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_cr.usereg definition

CREATE TABLE `usereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  PRIMARY KEY (`FUseOrgID`,`FDataID`),
  KEY `IDX_USEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
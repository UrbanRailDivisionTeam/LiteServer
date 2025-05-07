USE crrc_wtc_wtpd;

-- crrc_wtc_wtpd.t_hrdi_attdatamapping_r3 definition

CREATE TABLE `t_hrdi_attdatamapping_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_baseconfig definition

CREATE TABLE `t_hrdi_baseconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_BASECONFIG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_baseconfig_l definition

CREATE TABLE `t_hrdi_baseconfig_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_BASECONFIG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_baseconfig_r3 definition

CREATE TABLE `t_hrdi_baseconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_datamapping definition

CREATE TABLE `t_hrdi_datamapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCESYSID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATAKEY` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_DATAMAPPING` (`FENTITYOBJID`,`FSOURCESYSID`,`FSOURCEDATAKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_datamapping_r3 definition

CREATE TABLE `t_hrdi_datamapping_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_datamappinglog definition

CREATE TABLE `t_hrdi_datamappinglog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDATAMAPRECORDID` bigint NOT NULL DEFAULT '0',
  `FSTARTOFFSET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDOFFSET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETRYCOUNT` int NOT NULL DEFAULT '0',
  `FHANDLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FERRORINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FERRORINFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FHANDLECOUNT` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_DATAMAPPINGLOG` (`FSTARTOFFSET`,`FENDOFFSET`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_datamappinglog_r3 definition

CREATE TABLE `t_hrdi_datamappinglog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_datamappingreco_r3 definition

CREATE TABLE `t_hrdi_datamappingreco_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_datamappingrecord definition

CREATE TABLE `t_hrdi_datamappingrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTSOURCEID` bigint NOT NULL DEFAULT '0',
  `FINITENTITYOBJECT` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMIDTABLENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTOFFSET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDOFFSET` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUCCESSCOUNT` int NOT NULL DEFAULT '0',
  `FFAILCOUNT` int NOT NULL DEFAULT '0',
  `FRELATIONINFO` longtext COLLATE utf8mb4_unicode_ci,
  `FHANDLESTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTOTALCOUNT` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FIGNORECOUNT` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_DATAMAP_BATCHNO` (`FBATCHNUMBER`),
  KEY `IDX_HRDI_DATAMAP_OFFSET` (`FSTARTOFFSET`,`FENDOFFSET`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_hrdatamapping_r3 definition

CREATE TABLE `t_hrdi_hrdatamapping_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_initentityobj definition

CREATE TABLE `t_hrdi_initentityobj` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_INITENTITYOBJ` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intlog definition

CREATE TABLE `t_hrdi_intlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FINTSOURCEID` bigint NOT NULL DEFAULT '0',
  `FBATCHNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FOPERATESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FERRORINFO_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FERRORINFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATACOUNT` int NOT NULL DEFAULT '0',
  `FSTARTNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELECTNUMBER_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSELECTNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRETRYCOUNT` int NOT NULL DEFAULT '0',
  `FLASTRETRYTIME` datetime DEFAULT NULL,
  `FTRANSTARTTIME` datetime DEFAULT NULL,
  `FTRANENDTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_INTLOG` (`FPARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intlog_r3 definition

CREATE TABLE `t_hrdi_intlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intrelation definition

CREATE TABLE `t_hrdi_intrelation` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINTDIRECTION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCESYSID` bigint NOT NULL DEFAULT '0',
  `FINTTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTSOURCEID` bigint NOT NULL DEFAULT '0',
  `FINTMODE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINTSCMID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FREALINTMODE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_INTRELATION` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intrelation_l definition

CREATE TABLE `t_hrdi_intrelation_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_INTRELATION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intrelation_r3 definition

CREATE TABLE `t_hrdi_intrelation_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intruleentry definition

CREATE TABLE `t_hrdi_intruleentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSCENETYPE` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCLASSPATH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDI_INTRULEENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intscenerule definition

CREATE TABLE `t_hrdi_intscenerule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FENTITYOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFERENCEFIELD` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_INTSCENERULE` (`FENTITYOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intscenerule_l definition

CREATE TABLE `t_hrdi_intscenerule_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_INTSCENERULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intscenerule_r3 definition

CREATE TABLE `t_hrdi_intscenerule_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intscmlog definition

CREATE TABLE `t_hrdi_intscmlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTSOURCEID` bigint NOT NULL DEFAULT '0',
  `FINTTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTSCMID` bigint NOT NULL DEFAULT '0',
  `FEXCUTETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_INTSCMLOG` (`FINTSOURCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intscmlog_r3 definition

CREATE TABLE `t_hrdi_intscmlog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intsource definition

CREATE TABLE `t_hrdi_intsource` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMIDTABLECONFIGID` bigint NOT NULL DEFAULT '0',
  `FISPUBLISHAPI` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_INTSOURCE` (`FENTITYOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intsource_l definition

CREATE TABLE `t_hrdi_intsource_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_INTSOURCE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_intsource_r3 definition

CREATE TABLE `t_hrdi_intsource_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_midtableconfig definition

CREATE TABLE `t_hrdi_midtableconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FENTITYOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMIDENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_MIDTABLECONFIG` (`FENTITYOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_midtableconfig_l definition

CREATE TABLE `t_hrdi_midtableconfig_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_MIDTABLECONFIG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_midtableconfig_r3 definition

CREATE TABLE `t_hrdi_midtableconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_midtableconftpl definition

CREATE TABLE `t_hrdi_midtableconftpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMIDENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_MIDTABLECONFTPL` (`FENTITYOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_midtableconftpl_l definition

CREATE TABLE `t_hrdi_midtableconftpl_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_MIDTABLECONFTPL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_midtableconftpl_r3 definition

CREATE TABLE `t_hrdi_midtableconftpl_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_midtableentry definition

CREATE TABLE `t_hrdi_midtableentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBERALIAS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FREFERENCEPROP` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISINTEGRATIONFIELD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMUSTINPUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISVALIDATEEXIST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FISTABLEHEAD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISFIELD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISBASEDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDI_MIDTABLEENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_midtableentry_l definition

CREATE TABLE `t_hrdi_midtableentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_MIDTABLEENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_midtabletplentry definition

CREATE TABLE `t_hrdi_midtabletplentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FPARENTENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYNUMBER` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBERALIAS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FREFERENCEPROP` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISINTEGRATIONFIELD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMUSTINPUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISVALIDATEEXIST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FISTABLEHEAD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISFIELD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISBASEDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDI_MIDTABLETPLENTRY_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_midtabletplentry_l definition

CREATE TABLE `t_hrdi_midtabletplentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_MIDTABLETPLENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_modifylog definition

CREATE TABLE `t_hrdi_modifylog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCESYSID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FBIZAPPID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTIME` datetime DEFAULT NULL,
  `FMODIFYBILLID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYBILLNO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYCONTENT` longtext COLLATE utf8mb4_unicode_ci,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_MODIFYLOG` (`FBIZOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_modifylog_r3 definition

CREATE TABLE `t_hrdi_modifylog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_msgpublisher definition

CREATE TABLE `t_hrdi_msgpublisher` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_MSGPUBLISHER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_msgsubscriber definition

CREATE TABLE `t_hrdi_msgsubscriber` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_MSGSUBSCRIBER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_orgdatamapping definition

CREATE TABLE `t_hrdi_orgdatamapping` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTITYOBJID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCESYSID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAKEY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZDATAKEY` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_ORGDATAMAPPING` (`FENTITYOBJID`,`FSOURCESYSID`,`FSOURCEDATAKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_orgdatamapping_r3 definition

CREATE TABLE `t_hrdi_orgdatamapping_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_sourcesys definition

CREATE TABLE `t_hrdi_sourcesys` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONNTYPEID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONNCONFIGID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDI_SOURCESYS` (`FCONNCONFIGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_sourcesys_l definition

CREATE TABLE `t_hrdi_sourcesys_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_SOURCESYS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_sourcesys_r3 definition

CREATE TABLE `t_hrdi_sourcesys_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdi_tplinitentityobj definition

CREATE TABLE `t_hrdi_tplinitentityobj` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDI_TPLINITENTITYOBJ` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_addfieldentry definition

CREATE TABLE `t_hrdt_addfieldentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FFIELDCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDCONFIG` longtext COLLATE utf8mb4_unicode_ci,
  `FBELONGENTITY` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMUSTINPUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDT_ADDFIELDENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_addfieldentry_l definition

CREATE TABLE `t_hrdt_addfieldentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_ADDFIELDENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_baseconfig definition

CREATE TABLE `t_hrdt_baseconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALUE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_BASECONFIG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_baseconfig_l definition

CREATE TABLE `t_hrdt_baseconfig_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_BASECONFIG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_baseconfig_r3 definition

CREATE TABLE `t_hrdt_baseconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodelability definition

CREATE TABLE `t_hrdt_bizmodelability` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZMODELTYPEID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FTOOLID` bigint NOT NULL DEFAULT '0',
  `FKNOWLEDGEID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_BIZMODELABILITY` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodelability_l definition

CREATE TABLE `t_hrdt_bizmodelability_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_BIZMODELABILITY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodelability_r3 definition

CREATE TABLE `t_hrdt_bizmodelability_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodeladdtool definition

CREATE TABLE `t_hrdt_bizmodeladdtool` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FINHERITTPLID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISV` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMETANUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZUNIT` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT` longtext COLLATE utf8mb4_unicode_ci,
  `FRESULT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FEFFECTIVESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FERRORMESSAGE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_BIZMODELADDTOOL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodeladdtool_l definition

CREATE TABLE `t_hrdt_bizmodeladdtool_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_BIZMODELADDTOOL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodeladdtool_r3 definition

CREATE TABLE `t_hrdt_bizmodeladdtool_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodelconfig definition

CREATE TABLE `t_hrdt_bizmodelconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZMODELTYPEID` bigint NOT NULL DEFAULT '0',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FLONGNUMBER` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISLEAF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISADDFIELD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISADDMODEL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMODMODEL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAINENTITYID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZAPPID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZUNIT` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKNOWLEDGEID` bigint NOT NULL DEFAULT '0',
  `FISEXTDATA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISV` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_BIZMODELCONFIG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodelconfig_l definition

CREATE TABLE `t_hrdt_bizmodelconfig_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_BIZMODELCONFIG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodelconfig_r3 definition

CREATE TABLE `t_hrdt_bizmodelconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodelmodtool definition

CREATE TABLE `t_hrdt_bizmodelmodtool` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FISSYN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FEFFECTIVESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FERRORMESSAGE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_BIZMODELMODTOOL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodelmodtool_l definition

CREATE TABLE `t_hrdt_bizmodelmodtool_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_BIZMODELMODTOOL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodelrecord definition

CREATE TABLE `t_hrdt_bizmodelrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_BIZMODELRECORD` (`FBIZMODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodelrecord_r3 definition

CREATE TABLE `t_hrdt_bizmodelrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodeltoolentry definition

CREATE TABLE `t_hrdt_bizmodeltoolentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FFIELDCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDLENGTH` int NOT NULL DEFAULT '0',
  `FBASEDATAFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDEXTATTRS` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCALE` int NOT NULL DEFAULT '0',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMUSTINPUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDCONFIG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDT_BIZMODELTOOLENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodeltoolentry_l definition

CREATE TABLE `t_hrdt_bizmodeltoolentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_BIZMODELTOOLENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodeltype definition

CREATE TABLE `t_hrdt_bizmodeltype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_BIZMODELTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodeltype_l definition

CREATE TABLE `t_hrdt_bizmodeltype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_BIZMODELTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodeltype_r3 definition

CREATE TABLE `t_hrdt_bizmodeltype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodentityentry definition

CREATE TABLE `t_hrdt_bizmodentityentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSUBENTITYID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMAINENTITY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDT_BIZMODENTITYENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodgroupentry definition

CREATE TABLE `t_hrdt_bizmodgroupentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FINHERITPATHID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FDISPLAYNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDT_BIZMODGROUPENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodgroupentry_l definition

CREATE TABLE `t_hrdt_bizmodgroupentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPLAYNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_BIZMODGROUPENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_bizmodrecentry definition

CREATE TABLE `t_hrdt_bizmodrecentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FABILITYID` bigint NOT NULL DEFAULT '0',
  `FOBJECTID` bigint NOT NULL DEFAULT '0',
  `FRESULT` longtext COLLATE utf8mb4_unicode_ci,
  `FRESULT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FOPERATORID` bigint NOT NULL DEFAULT '0',
  `FOPERATETIME` datetime DEFAULT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDT_BIZMODRECENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_comtoolrecord definition

CREATE TABLE `t_hrdt_comtoolrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FWORKBENCHROLEID` bigint NOT NULL DEFAULT '0',
  `FTOOLID` bigint NOT NULL DEFAULT '0',
  `FCOUNT` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_COMTOOLRECORD` (`FUSERID`,`FWORKBENCHROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_comtoolrecord_r3 definition

CREATE TABLE `t_hrdt_comtoolrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_fieldmodconfentry definition

CREATE TABLE `t_hrdt_fieldmodconfentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FFIELDCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCANMODNAME` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCANMODVISIBLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCANMODMUST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSOURCEID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANDISPLAY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDT_FIELDMODCONFENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_knowledgeinfo definition

CREATE TABLE `t_hrdt_knowledgeinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLINKTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKNOWLEDGELINK` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_KNOWLEDGEINFO` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_knowledgeinfo_l definition

CREATE TABLE `t_hrdt_knowledgeinfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_KNOWLEDGEINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_knowledgeinfo_r3 definition

CREATE TABLE `t_hrdt_knowledgeinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_managefileviews definition

CREATE TABLE `t_hrdt_managefileviews` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_MANAGEFILEVIEWS` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_modelabilityentry definition

CREATE TABLE `t_hrdt_modelabilityentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDT_MODELABILITYENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_modifyfieldentry definition

CREATE TABLE `t_hrdt_modifyfieldentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FFIELDCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDVISIBLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIELDMUST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDT_MODIFYFIELDENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_modifyfieldentry_l definition

CREATE TABLE `t_hrdt_modifyfieldentry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_MODIFYFIELDENTRY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_personfiletool definition

CREATE TABLE `t_hrdt_personfiletool` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FFILETYPEID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEMPLOYEEMOBILEVIEW` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEMPLOYEEPCVIEW` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPCVIEW` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FVIEWLOCATION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FRESULT` longtext COLLATE utf8mb4_unicode_ci,
  `FRESULT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FISBATCHMENU` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEFFECTIVESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FERRORMESSAGE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_PERSONFILETOOL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_personfiletool_l definition

CREATE TABLE `t_hrdt_personfiletool_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_PERSONFILETOOL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_personfiletool_r3 definition

CREATE TABLE `t_hrdt_personfiletool_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_personfileviews definition

CREATE TABLE `t_hrdt_personfileviews` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_PERSONFILEVIEWS` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_personmassmg definition

CREATE TABLE `t_hrdt_personmassmg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIZMODELID` bigint NOT NULL DEFAULT '0',
  `FRESULT` longtext COLLATE utf8mb4_unicode_ci,
  `FRESULT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FEFFECTIVESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FERRORMESSAGE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_PERSONMASSMG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_personmassmg_l definition

CREATE TABLE `t_hrdt_personmassmg_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_PERSONMASSMG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_personmassmg_r3 definition

CREATE TABLE `t_hrdt_personmassmg_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_tooldetail definition

CREATE TABLE `t_hrdt_tooldetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOOLDETAILTYPEID` bigint NOT NULL DEFAULT '0',
  `FTOOLPAGEADDR` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FICON` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FFORMTOOLPAGEADDR` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_TOOLDETAIL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_tooldetail_l definition

CREATE TABLE `t_hrdt_tooldetail_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_TOOLDETAIL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_tooldetail_r3 definition

CREATE TABLE `t_hrdt_tooldetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_tooldetailtype definition

CREATE TABLE `t_hrdt_tooldetailtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_TOOLDETAILTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_tooldetailtype_l definition

CREATE TABLE `t_hrdt_tooldetailtype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_TOOLDETAILTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_tooldetailtype_r3 definition

CREATE TABLE `t_hrdt_tooldetailtype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_wbrolerecord definition

CREATE TABLE `t_hrdt_wbrolerecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FWORKBENCHROLEID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_WBROLERECORD` (`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_wbrolerecord_r3 definition

CREATE TABLE `t_hrdt_wbrolerecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_wisentryuser definition

CREATE TABLE `t_hrdt_wisentryuser` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FUSERID` bigint NOT NULL DEFAULT '0',
  `FHANDLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_WISENTRYUSER` (`FENTRYID`,`FUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_wisentryuser_r3 definition

CREATE TABLE `t_hrdt_wisentryuser_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workbenchrole definition

CREATE TABLE `t_hrdt_workbenchrole` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FICON` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_WORKBENCHROLE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workbenchrole_l definition

CREATE TABLE `t_hrdt_workbenchrole_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_WORKBENCHROLE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workbenchrole_r3 definition

CREATE TABLE `t_hrdt_workbenchrole_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workitem definition

CREATE TABLE `t_hrdt_workitem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_WORKITEM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workitem_l definition

CREATE TABLE `t_hrdt_workitem_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_WORKITEM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workitem_r3 definition

CREATE TABLE `t_hrdt_workitem_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workitemkp definition

CREATE TABLE `t_hrdt_workitemkp` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FKNOWLEDGEID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDT_WORKITEMKP` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workitemset definition

CREATE TABLE `t_hrdt_workitemset` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FICON` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HRDT_WORKITEMSET` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workitemset_l definition

CREATE TABLE `t_hrdt_workitemset_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_WORKITEMSET_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workitemset_r3 definition

CREATE TABLE `t_hrdt_workitemset_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workitemsetentry definition

CREATE TABLE `t_hrdt_workitemsetentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FWORKITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMBELONG` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FITEMTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDT_WORKITEMSETENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workitemsetroles definition

CREATE TABLE `t_hrdt_workitemsetroles` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HRDT_WORKITEMSETROLES` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_hrdt_workitemtool definition

CREATE TABLE `t_hrdt_workitemtool` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FTOOLID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HRDT_WORKITEMTOOL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtpd.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
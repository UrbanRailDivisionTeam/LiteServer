USE crrc_sit;

-- crrc_sit.t_hcsi_busieventrel definition

CREATE TABLE `t_hcsi_busieventrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISBUSINESSEVENTBO` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  `FEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_BUSIEVENTREL` (`FEVENTID`),
  KEY `IDX_HCSI_BUSIEVENTREL_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_calperson definition

CREATE TABLE `t_hcsi_calperson` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSINSURTASKID` bigint NOT NULL DEFAULT '0',
  `FSINSURFILEVID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FSINSURPERIODID` bigint NOT NULL DEFAULT '0',
  `FWELFAREPAYERID` bigint NOT NULL DEFAULT '0',
  `FCALSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSINSURSTDVID` bigint NOT NULL DEFAULT '0',
  `FSINSURSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FSINSURPERSONID` bigint NOT NULL DEFAULT '0',
  `FPUSHSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notpush',
  `FPUSHLOGID` bigint NOT NULL DEFAULT '0',
  `FBATCHID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILENUMBERDB` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPNUMBERDB` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAMEDB` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_CALPERSON` (`FSINSURTASKID`),
  KEY `IDX_HCSI_CALPERSON_1` (`FSINSURFILEVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_calpersonentry definition

CREATE TABLE `t_hcsi_calpersonentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSURANCEITEMID` bigint NOT NULL DEFAULT '0',
  `FNUMVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FAMOUNTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FSTORAGETYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISNULL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASRC` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HCSI_CALPERSONENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_event definition

CREATE TABLE `t_hcsi_event` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEVENTTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEXECUTEWAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEVENTBATCHTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_EVENT` (`FOPERATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_eventrelhis definition

CREATE TABLE `t_hcsi_eventrelhis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FVID` bigint NOT NULL DEFAULT '0',
  `FPRESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREBSED` datetime DEFAULT NULL,
  `FPREBSLED` datetime DEFAULT NULL,
  `FBUSIEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_EVENTRELHIS` (`FBUSIEVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_insurpushlog definition

CREATE TABLE `t_hcsi_insurpushlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FPUSHTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUSHSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTAL` int NOT NULL DEFAULT '0',
  `FSUCCESS` int NOT NULL DEFAULT '0',
  `FFAIL` int NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FBATCHID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPUSHNUM` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_INSURPUSHLOG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_logcallent definition

CREATE TABLE `t_hcsi_logcallent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSINSURFILEID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FSINSURPERIODID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALPERSONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HCSI_LOGCALLENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_logcallfailent definition

CREATE TABLE `t_hcsi_logcallfailent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSINSURFILEID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FSINSURPERIODID` bigint NOT NULL DEFAULT '0',
  `FFAILREASON` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALPERSONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HCSI_LOGCALLFAILENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_logpushfailent definition

CREATE TABLE `t_hcsi_logpushfailent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSINSURFILEID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FSINSURPERIODID` bigint NOT NULL DEFAULT '0',
  `FFAILREASON` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBATCHID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALPERSONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HCSI_LOGPUSHFAILENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsuradjdetail definition

CREATE TABLE `t_hcsi_sinsuradjdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCALPERSONID` bigint NOT NULL DEFAULT '0',
  `FINSURANCEITEMID` bigint NOT NULL DEFAULT '0',
  `FOLDVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNEWVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_SINSURADJDETAIL` (`FCALPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsuradjrec definition

CREATE TABLE `t_hcsi_sinsuradjrec` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSINSURFILEID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FSINSURPERIODID` bigint NOT NULL DEFAULT '0',
  `FWELFAREPAYERID` bigint NOT NULL DEFAULT '0',
  `FSINSURTASKID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_SINSURADJREC` (`FSINSURFILEID`,`FSINSURTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsuradjrec_r3 definition

CREATE TABLE `t_hcsi_sinsuradjrec_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsuradjrecent definition

CREATE TABLE `t_hcsi_sinsuradjrecent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  `FINSURANCEITEMID` bigint NOT NULL DEFAULT '0',
  `FOPERATOR` bigint NOT NULL DEFAULT '0',
  `FOPERATETIME` datetime DEFAULT NULL,
  `FNEWVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FOLDVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FID` bigint NOT NULL DEFAULT '0',
  `FOLDVALUEISNULL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HCSI_SINSURADJRECENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurbase definition

CREATE TABLE `t_hcsi_sinsurbase` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FCHANGEDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSINSURFILESTDID` bigint NOT NULL DEFAULT '0',
  `FSINSURFILEID` bigint NOT NULL DEFAULT '0',
  `FWELFARETYPEID` bigint NOT NULL DEFAULT '0',
  `FSINSURSTDID` bigint NOT NULL DEFAULT '0',
  `FINSURED` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_SINSURBASE_FWTYPEID` (`FWELFARETYPEID`),
  KEY `IDX_HCSI_SINSURBASE_FILEID` (`FSINSURFILEID`),
  KEY `IDX_HCSI_SINSURBASE_FILESTDID` (`FSINSURFILESTDID`),
  KEY `IDX_HCSI_SINSURBASE_BOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurbase_l definition

CREATE TABLE `t_hcsi_sinsurbase_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HCSI_SINSURBASE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurbase_r3 definition

CREATE TABLE `t_hcsi_sinsurbase_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurbaseent definition

CREATE TABLE `t_hcsi_sinsurbaseent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSURANCEITEMID` bigint NOT NULL DEFAULT '0',
  `FINSURANCEPROPID` bigint NOT NULL DEFAULT '0',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  `FNUMVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HCSI_SINSURBASEENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurfile definition

CREATE TABLE `t_hcsi_sinsurfile` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMANAGEREGIONID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FWELFAREPAYERID` bigint NOT NULL DEFAULT '0',
  `FISESCROWSTAFF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSINSURSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FWELFAREPAYERTHEORYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_SINSURFILE` (`FNUMBER`),
  KEY `IDX_HCSI_SINSURFILE_EMPLOYEE` (`FEMPLOYEEID`,`FWELFAREPAYERID`,`FSTATUS`),
  KEY `IDX_HCSI_SINSURFILE_PERSON` (`FPERSONID`),
  KEY `IDX_HCSI_SINSURFILE_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurfile_l definition

CREATE TABLE `t_hcsi_sinsurfile_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HCSI_SINSURFILE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurfile_r3 definition

CREATE TABLE `t_hcsi_sinsurfile_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurfilestd definition

CREATE TABLE `t_hcsi_sinsurfilestd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FCHANGEDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSINSURFILEID` bigint NOT NULL DEFAULT '0',
  `FSINSURSTDID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_FILESTD_FILEID` (`FSINSURFILEID`),
  KEY `IDX_HCSI_FILESTD_STDID` (`FSINSURSTDID`),
  KEY `IDX_HCSI_FILESTD_BOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurfilestd_l definition

CREATE TABLE `t_hcsi_sinsurfilestd_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HCSI_SINSURFILESTD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurfilestd_r3 definition

CREATE TABLE `t_hcsi_sinsurfilestd_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurgendetail definition

CREATE TABLE `t_hcsi_sinsurgendetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSINSURGENRECORDID` bigint NOT NULL DEFAULT '0',
  `FSINSURFILEVID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FSINSURPERIODID` bigint NOT NULL DEFAULT '0',
  `FWELFAREPAYERID` bigint NOT NULL DEFAULT '0',
  `FSINSURSTDVID` bigint NOT NULL DEFAULT '0',
  `FFAILREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_SINSURGENDETAIL` (`FSINSURGENRECORDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurgendetail_l definition

CREATE TABLE `t_hcsi_sinsurgendetail_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FFAILREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HCSI_SINSURGENDETAIL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurgendetail_r3 definition

CREATE TABLE `t_hcsi_sinsurgendetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurgenrecord definition

CREATE TABLE `t_hcsi_sinsurgenrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSINSURTASKID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSINSURPERIODID` bigint NOT NULL DEFAULT '0',
  `FWELFAREPAYERID` bigint NOT NULL DEFAULT '0',
  `FFILECOUNT` int NOT NULL DEFAULT '0',
  `FSUCCESSCOUNT` int NOT NULL DEFAULT '0',
  `FFAILCOUNT` int NOT NULL DEFAULT '0',
  `FGENDURATION` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_SINSURGENRECORD` (`FSINSURTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurgenrecord_r3 definition

CREATE TABLE `t_hcsi_sinsurgenrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurperson definition

CREATE TABLE `t_hcsi_sinsurperson` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGISTERTYPEID` bigint NOT NULL DEFAULT '0',
  `FCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FSINSURACCOUNT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHOUSINGFUNDAC` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FPLACEOFWELFAREID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_SINSURPERSON_FBOID` (`FBOID`),
  KEY `IDX_HCSI_SINSURPERSON_EMP` (`FEMPLOYEEID`,`FPLACEOFWELFAREID`,`FSTATUS`),
  KEY `IDX_HCSI_SINSURPERSON_ACT` (`FSINSURACCOUNT`),
  KEY `IDX_HCSI_SINSURPERSON_HOUACT` (`FHOUSINGFUNDAC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurperson_l definition

CREATE TABLE `t_hcsi_sinsurperson_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HCSI_SINSURPERSON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurperson_r3 definition

CREATE TABLE `t_hcsi_sinsurperson_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurtask definition

CREATE TABLE `t_hcsi_sinsurtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSINSURPERIODID` bigint NOT NULL DEFAULT '0',
  `FWELFAREPAYERID` bigint NOT NULL DEFAULT '0',
  `FSINSURSTDVID` bigint NOT NULL DEFAULT '0',
  `FTASKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONCOUNT` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_SINSURTASK` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurtask_r3 definition

CREATE TABLE `t_hcsi_sinsurtask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_sinsurtaskstd definition

CREATE TABLE `t_hcsi_sinsurtaskstd` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HCSI_SINSURTASKSTD` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_hcsi_surbaseimportlog definition

CREATE TABLE `t_hcsi_surbaseimportlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTOTAL` int NOT NULL DEFAULT '0',
  `FFAILED` int NOT NULL DEFAULT '0',
  `FIMPORTSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSETIME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HCSI_SURBASEIMPORTLOG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_accdetail definition

CREATE TABLE `t_itc_accdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FACCRESULTID` bigint NOT NULL DEFAULT '0',
  `FDETAILNUM` int NOT NULL DEFAULT '0',
  `FTAXTASKID` bigint NOT NULL DEFAULT '0',
  `FTAXDATAID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FINITVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCURRENTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_ACCDETAIL` (`FACCRESULTID`,`FTAXTASKID`,`FTAXDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_accresult definition

CREATE TABLE `t_itc_accresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FACCUMULATORID` bigint NOT NULL DEFAULT '0',
  `FINSTANCENUM` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FRESULTVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FISCHANGED` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_ACCRESULT` (`FTAXFILEID`,`FACCUMULATORID`,`FINSTANCENUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_accresult_r3 definition

CREATE TABLE `t_itc_accresult_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_accresultentry definition

CREATE TABLE `t_itc_accresultentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHANGEVALUE` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCHANGEREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDATETIME` datetime DEFAULT NULL,
  `FUSERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_ACCRESULTENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_bankcard definition

CREATE TABLE `t_itc_bankcard` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEBANKID` bigint NOT NULL DEFAULT '0',
  `FPROVINCEID` bigint NOT NULL DEFAULT '0',
  `FBANKCARDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERBANKCARDID` bigint NOT NULL DEFAULT '0',
  `FPERBANKCARDBOID` bigint NOT NULL DEFAULT '0',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_BANKCARD` (`FNUMBER`),
  KEY `IDX_ITC_BANKCARDFILEID` (`FTAXFILEID`),
  KEY `IDX_ITC_BANKCARD_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_bankcard_l definition

CREATE TABLE `t_itc_bankcard_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_BANKCARD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_bankcard_r3 definition

CREATE TABLE `t_itc_bankcard_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_busieventrel definition

CREATE TABLE `t_itc_busieventrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISBUSINESSEVENTBO` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  `FEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_BUSIEVENTREL` (`FEVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_calrptformuladet definition

CREATE TABLE `t_itc_calrptformuladet` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCALFORMULAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_ITC_CALRPTFORMULADET` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_calrptruleent definition

CREATE TABLE `t_itc_calrptruleent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCALRULEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_CALRPTRULEENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_caltaxtype definition

CREATE TABLE `t_itc_caltaxtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX__ITC_CALTAXTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_caltaxtype_l definition

CREATE TABLE `t_itc_caltaxtype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_CALTAXTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_dataupgrade definition

CREATE TABLE `t_itc_dataupgrade` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBATCHKEY` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTABLENAME` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_DATAUPGRADE` (`FDATAID`,`FTABLENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_duty definition

CREATE TABLE `t_itc_duty` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_DUTY` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_duty_l definition

CREATE TABLE `t_itc_duty_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_DUTY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_employment definition

CREATE TABLE `t_itc_employment` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXPAYERTYPEID` bigint NOT NULL DEFAULT '0',
  `FPERSONSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPTYPEID` bigint NOT NULL DEFAULT '0',
  `FEMPDATE` datetime DEFAULT NULL,
  `FQUITDATE` datetime DEFAULT NULL,
  `FISDEDUCTEXPS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUTHSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FEMPSITUATION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_EMPLOYMENT` (`FNUMBER`),
  KEY `IDX_ITC_EMPLOYMENTFILEID` (`FTAXFILEID`),
  KEY `IDX_ITC_EMPLOYMENT_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_employment_l definition

CREATE TABLE `t_itc_employment_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_EMPLOYMENT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_emptype definition

CREATE TABLE `t_itc_emptype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_EMPTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_emptype_l definition

CREATE TABLE `t_itc_emptype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_EMPTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_eventrelhis definition

CREATE TABLE `t_itc_eventrelhis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FVID` bigint NOT NULL DEFAULT '0',
  `FPRESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREBSED` datetime DEFAULT NULL,
  `FPREBSLED` datetime DEFAULT NULL,
  `FBUSIEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_EVENTRELHIS` (`FBUSIEVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_eventtpl definition

CREATE TABLE `t_itc_eventtpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEVENTTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEXECUTEWAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEVENTBATCHTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_EVENTTPL` (`FOPERATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_investor definition

CREATE TABLE `t_itc_investor` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVESTTOTAL` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FDUTYID` bigint NOT NULL DEFAULT '0',
  `FINVESTRATIO` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_INVESTOR` (`FNUMBER`),
  KEY `IDX_ITC_INVESTORFILEID` (`FTAXFILEID`),
  KEY `IDX_ITC_INVESTOR_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_investor_l definition

CREATE TABLE `t_itc_investor_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_INVESTOR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_newtaxcategory definition

CREATE TABLE `t_itc_newtaxcategory` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_NEWTAXCATEGORY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_overseasperson definition

CREATE TABLE `t_itc_overseasperson` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHINESENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXREASONID` bigint NOT NULL DEFAULT '0',
  `FOTHERIDTYPEID` bigint NOT NULL DEFAULT '0',
  `FOTHERIDNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIRTHPLACEID` bigint NOT NULL DEFAULT '0',
  `FFIRSTENTRYDATE` datetime DEFAULT NULL,
  `FDEPARTDATE` datetime DEFAULT NULL,
  `FADDRESSID` bigint NOT NULL DEFAULT '0',
  `FADDRESSINFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FADDRESSCITYID` bigint NOT NULL DEFAULT '0',
  `FADDRESSCOUNTYID` bigint NOT NULL DEFAULT '0',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_OVERSEASPERSON` (`FNUMBER`),
  KEY `IDX_ITC_OVERSEASPERSON1` (`FTAXFILEID`),
  KEY `IDX_ITC_OVERSEASPERSON_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_overseasperson_l definition

CREATE TABLE `t_itc_overseasperson_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_OVERSEASPERSON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_overseasperson_r3 definition

CREATE TABLE `t_itc_overseasperson_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_perdeclrecord definition

CREATE TABLE `t_itc_perdeclrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FTAXDATABASICID` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECLAREMONTH` datetime DEFAULT NULL,
  `FDECLARESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECLAREWAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_PERREC_TAXFILEID` (`FTAXFILEID`),
  KEY `IDX_ITC_PERREC_TAXBASICID` (`FTAXDATABASICID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_perdeclrecord_l definition

CREATE TABLE `t_itc_perdeclrecord_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_PERDECLRECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_rawcaltask definition

CREATE TABLE `t_itc_rawcaltask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FRAWTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYDATE` datetime DEFAULT NULL,
  `FBELONGSTARTDATE` datetime DEFAULT NULL,
  `FBELONGENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_RAWCALTASK_1` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_specialinfo definition

CREATE TABLE `t_itc_specialinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISABILITY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMARTYRSFAMILY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FOLDANDLONEY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABILITYNUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMARTYRSFAMILYNUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_SPECIALINFO` (`FNUMBER`),
  KEY `IDX_ITC_SPECIALINFOFILEID` (`FTAXFILEID`),
  KEY `IDX_ITC_SPECIALINFO_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_specialinfo_l definition

CREATE TABLE `t_itc_specialinfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_SPECIALINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxcalrecord definition

CREATE TABLE `t_itc_taxcalrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FTAXCALREPORTID` bigint NOT NULL DEFAULT '0',
  `FTAXDATABASICID` bigint NOT NULL DEFAULT '0',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FSRCDATAKEY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSUCCESS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFAILTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTMSG` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXCALRECORD` (`FTAXCALREPORTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxcalrecord_r3 definition

CREATE TABLE `t_itc_taxcalrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxcalreport definition

CREATE TABLE `t_itc_taxcalreport` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FREPORTNUM` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXTASKID` bigint NOT NULL DEFAULT '0',
  `FRAWTASKID` bigint NOT NULL DEFAULT '0',
  `FOPERATEKEY` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FRAWCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTOTALCOUNT` int NOT NULL DEFAULT '0',
  `FSUCCESSCOUNT` int NOT NULL DEFAULT '0',
  `FFAILCOUNT` int NOT NULL DEFAULT '0',
  `FQUOTETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXCHANGERATE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAYDATE` datetime DEFAULT NULL,
  `FEXTRAINFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWARNCOUNT` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXCALREPORT_1` (`FTAXTASKID`),
  KEY `IDX_ITC_TAXCALREPORT_2` (`FOPERATEKEY`),
  KEY `IDX_ITC_TAXCALREPORT_3` (`FRAWTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxcalreport_r3 definition

CREATE TABLE `t_itc_taxcalreport_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxcalreportent definition

CREATE TABLE `t_itc_taxcalreportent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTAXUNITID` bigint NOT NULL DEFAULT '0',
  `FTAXTASKID` bigint NOT NULL DEFAULT '0',
  `FISSUCCESS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FRESULTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTMESSAGE` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_TAXCALREPORTENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxcontact definition

CREATE TABLE `t_itc_taxcontact` (
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
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTAXPAYERNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGPERMRESID` bigint NOT NULL DEFAULT '0',
  `FREGPERMRESCITYID` bigint NOT NULL DEFAULT '0',
  `FREGPERMRESCOUNTYID` bigint NOT NULL DEFAULT '0',
  `FREGPERMRESINFO` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHABITRESID` bigint NOT NULL DEFAULT '0',
  `FHABITRESCITYID` bigint NOT NULL DEFAULT '0',
  `FHABITRESCOUNTYID` bigint NOT NULL DEFAULT '0',
  `FHABITRESINFO` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXCONTACT_FTAXFILEID` (`FTAXFILEID`),
  KEY `IDX_ITC_TAXCONTACT_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxcontact_l definition

CREATE TABLE `t_itc_taxcontact_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_TAXCONTACT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxdata definition

CREATE TABLE `t_itc_taxdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTAXTASKID` bigint NOT NULL DEFAULT '0',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FTAXPERSONID` bigint NOT NULL DEFAULT '0',
  `FEXPORTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLOCKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FIMPORTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREPORTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEMPLOYMENTID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FTAXUNITID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSINFOENTID` bigint NOT NULL DEFAULT '0',
  `FTAXDATABASICID` bigint NOT NULL DEFAULT '0',
  `FEXPORTOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FLOCKOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FIMPORTOPRECORD` bigint NOT NULL DEFAULT '0',
  `FFEEDBACKOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FREPORTOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FENDOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FADMINDIVISIONID` bigint NOT NULL DEFAULT '0',
  `FSRCREFNUM` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHASDIFFERENCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONFIRMSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIRMOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FCONFIRMDATE` datetime DEFAULT NULL,
  `FEMPPOSORGRELID` bigint NOT NULL DEFAULT '0',
  `FPERCREID` bigint NOT NULL DEFAULT '0',
  `FPERNONTSPROPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXDATA_1` (`FORGID`),
  KEY `IDX_ITC_TAXDATA_2` (`FTAXFILEID`),
  KEY `IDX_ITC_TAXDATA_4` (`FTAXPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxdatabasic definition

CREATE TABLE `t_itc_taxdatabasic` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXUNITID` bigint NOT NULL DEFAULT '0',
  `FTAXTASKID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXPERSONID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FCALSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALDATE` datetime DEFAULT NULL,
  `FCALTIMES` int NOT NULL DEFAULT '0',
  `FSRCSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXCONTACTID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYMENTID` bigint NOT NULL DEFAULT '0',
  `FBANKCARDID` bigint NOT NULL DEFAULT '0',
  `FINVESTORID` bigint NOT NULL DEFAULT '0',
  `FOVERSEASPERSONID` bigint NOT NULL DEFAULT '0',
  `FSPECIALINFOID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSORGRELID` bigint NOT NULL DEFAULT '0',
  `FPERCREID` bigint NOT NULL DEFAULT '0',
  `FPERNONTSPROPID` bigint NOT NULL DEFAULT '0',
  `FPERTSPROPID` bigint NOT NULL DEFAULT '0',
  `FPEREDUEXPID` bigint NOT NULL DEFAULT '0',
  `FSRCREFNUM` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECLARESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREPARESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXFILEBOID` bigint NOT NULL DEFAULT '0',
  `FPERSONSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFOPRECORDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXDATABASIC_1` (`FTAXFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxdatabasic_r3 definition

CREATE TABLE `t_itc_taxdatabasic_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxdatabasicent definition

CREATE TABLE `t_itc_taxdatabasicent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FPROPNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROPVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_TAXDATABASICENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxdataentry definition

CREATE TABLE `t_itc_taxdataentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FTAXITEMID` bigint NOT NULL DEFAULT '0',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FENTRYSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FITEMVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALVALUE` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIFFVALUE` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIGINALVALUE` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIGINALVALUE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FITEMVALUE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCALVALUE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FDIFFVALUE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_TAXDATAENTRY_1` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxdatarecord definition

CREATE TABLE `t_itc_taxdatarecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FTAXTASKOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FTAXDATAID` bigint NOT NULL DEFAULT '0',
  `FRESULTSTATUS` int NOT NULL DEFAULT '0',
  `FRESULTMSG` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXDATARECORD_1` (`FTAXTASKOPRECORDID`),
  KEY `IDX_ITC_TAXDATARECORD_2` (`FTAXDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxdatarecordentry definition

CREATE TABLE `t_itc_taxdatarecordentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FTAXRAWDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_TAXDATARECORDENTRY_1` (`FID`),
  KEY `IDX_ITC_TAXDATARECORDENTRY_2` (`FTAXRAWDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxdeduct definition

CREATE TABLE `t_itc_taxdeduct` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FTAXTASKID` bigint NOT NULL DEFAULT '0',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXDATABASICID` bigint NOT NULL DEFAULT '0',
  `FREFOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FREFERTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXDEDUCT_1` (`FTAXDATABASICID`),
  KEY `IDX_ITC_TAXDEDUCT_2` (`FTAXFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxdeductentry definition

CREATE TABLE `t_itc_taxdeductentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FTAXITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_TAXDEDUCTENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxfile definition

CREATE TABLE `t_itc_taxfile` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FTAXREGIONID` bigint NOT NULL DEFAULT '0',
  `FDEPCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FATTACHADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FTAXUNITID` bigint NOT NULL DEFAULT '0',
  `FADMINDIVISIONID` bigint NOT NULL DEFAULT '0',
  `FSTARTTAXDATE` datetime DEFAULT NULL,
  `FISESCROWSTAFF` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTAXPERSONID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYMENTID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSINFOENTID` bigint NOT NULL DEFAULT '0',
  `FTMPID` bigint NOT NULL DEFAULT '0',
  `FDECLARESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDECLAREWAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDECLAREMONTH` datetime DEFAULT NULL,
  `FREPORTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLOCKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTAXFILEMODIFYTIME` datetime DEFAULT NULL,
  `FCHANGETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSINFOID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FTAXSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXFILE` (`FNUMBER`),
  KEY `IDX_ITC_TAXFILE_TMPID` (`FTMPID`),
  KEY `IDX_ITC_TAXFILE_PERSONID` (`FPERSONID`),
  KEY `IDX_ITC_TAXFILE_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxfile_a definition

CREATE TABLE `t_itc_taxfile_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERCREID` bigint NOT NULL DEFAULT '0',
  `FPEREDUEXPID` bigint NOT NULL DEFAULT '0',
  `FPERTSPROPID` bigint NOT NULL DEFAULT '0',
  `FPERNONTSPROPID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSORGRELID` bigint NOT NULL DEFAULT '0',
  `FPERSONVID` bigint NOT NULL DEFAULT '0',
  `FTAXCRDLTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXFILE_FSOURCEVID` (`FSOURCEVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxfile_l definition

CREATE TABLE `t_itc_taxfile_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_TAXFILE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxfile_r3 definition

CREATE TABLE `t_itc_taxfile_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxitemsnap definition

CREATE TABLE `t_itc_taxitemsnap` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_TAXITEMSNAP` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxpayertype definition

CREATE TABLE `t_itc_taxpayertype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXPAYERTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxpayertype_l definition

CREATE TABLE `t_itc_taxpayertype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_TAXPAYERTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxperson definition

CREATE TABLE `t_itc_taxperson` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPHEAD` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIDTYPEID` bigint NOT NULL DEFAULT '0',
  `FIDNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBIRTHDATE` datetime DEFAULT NULL,
  `FGENDER` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXPAYERNUM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIONALITYID` bigint NOT NULL DEFAULT '0',
  `FREGPERMRESID` bigint NOT NULL DEFAULT '0',
  `FREGPERMRESINFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHABITRESID` bigint NOT NULL DEFAULT '0',
  `FHABITRESINFO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEDUCATIONID` bigint NOT NULL DEFAULT '0',
  `FMARRIAGESTATUSID` bigint NOT NULL DEFAULT '0',
  `FPHONE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADDRESS` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FREGPERMRESCITYID` bigint NOT NULL DEFAULT '0',
  `FREGPERMRESCOUNTYID` bigint NOT NULL DEFAULT '0',
  `FHABITRESCITYID` bigint NOT NULL DEFAULT '0',
  `FHABITRESCOUNTYID` bigint NOT NULL DEFAULT '0',
  `FGENDERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXPERSON` (`FNUMBER`),
  KEY `IDX_ITC_TAXPERSONFILEID` (`FTAXFILEID`),
  KEY `IDX_ITC_TAXIDNUMBER` (`FIDNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxperson_l definition

CREATE TABLE `t_itc_taxperson_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_TAXPERSON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxrawdata definition

CREATE TABLE `t_itc_taxrawdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXRAWDATABASICID` bigint NOT NULL DEFAULT '0',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FTAXDATAID` bigint NOT NULL DEFAULT '0',
  `FBIZSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREFOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FEXPORTOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FLOCKOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FIMPORTOPRECORD` bigint NOT NULL DEFAULT '0',
  `FFEEDBACKOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FREPORTOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FENDOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FTAXPERSONID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYMENTID` bigint NOT NULL DEFAULT '0',
  `FTAXTASKID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSINFOENTID` bigint NOT NULL DEFAULT '0',
  `FADMINDIVISIONID` bigint NOT NULL DEFAULT '0',
  `FCONFIRMSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIRMOPRECORDID` bigint NOT NULL DEFAULT '0',
  `FBELONGSTARTDATE` datetime DEFAULT NULL,
  `FBELONGENDDATE` datetime DEFAULT NULL,
  `FTAXUNITID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSORGRELID` bigint NOT NULL DEFAULT '0',
  `FPERCREID` bigint NOT NULL DEFAULT '0',
  `FPERNONTSPROPID` bigint NOT NULL DEFAULT '0',
  `FREFERTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPORTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXRAWDATA_1` (`FTAXRAWDATABASICID`),
  KEY `IDX_ITC_TAXRAWDATA_2` (`FTAXDATAID`),
  KEY `IDX_ITC_TAXRAWDATA_3` (`FTAXFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxrawdatabasic definition

CREATE TABLE `t_itc_taxrawdatabasic` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FRAWTYPE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATABATCH` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRAWDATAKEY` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FPAYDATE` datetime DEFAULT NULL,
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FDATAPRECISIONID` bigint NOT NULL DEFAULT '0',
  `FDATAROUNDID` bigint NOT NULL DEFAULT '0',
  `FSRCSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALTASKGETDATETIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRAWCALTASKID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCALSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXTASKID` bigint NOT NULL DEFAULT '0',
  `FCALDATE` datetime DEFAULT NULL,
  `FCALTIMES` int NOT NULL DEFAULT '0',
  `FTAXUNITID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXRAWDATABASIC_1` (`FPAYDATE`),
  KEY `IDX_ITC_TAXRAWDATABASIC_2` (`FRAWDATAKEY`),
  KEY `IDX_ITC_TAXRAWDATABASIC_3` (`FTAXFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxrawdatabasic_r3 definition

CREATE TABLE `t_itc_taxrawdatabasic_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxrawdataentry definition

CREATE TABLE `t_itc_taxrawdataentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FTAXITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATADIRECT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALVALUE` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDIFFVALUE` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIGINALVALUE` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORIGINALVALUE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FITEMVALUE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FCALVALUE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FDIFFVALUE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_TAXRAWDATAENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxreason definition

CREATE TABLE `t_itc_taxreason` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXREASON` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxreason_l definition

CREATE TABLE `t_itc_taxreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_TAXREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtask definition

CREATE TABLE `t_itc_taxtask` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FTAXTASKTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTAXPERIODID` bigint NOT NULL DEFAULT '0',
  `FTAXSTARTDATE` datetime DEFAULT NULL,
  `FTAXENDDATE` datetime DEFAULT NULL,
  `FDECLARESTARTDATE` datetime DEFAULT NULL,
  `FDECLAREENDDATE` datetime DEFAULT NULL,
  `FGENERALENNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTTAXRECORD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTAXPERSONCOUNT` int NOT NULL DEFAULT '0',
  `FTASKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTAXPERIODPRGID` bigint NOT NULL DEFAULT '0',
  `FENDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXRATEDATE` datetime DEFAULT NULL,
  `FEXRATETABLEID` bigint NOT NULL DEFAULT '0',
  `FISEXISTFOREIGNCUR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISNEEDDECLARE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXTASK` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtask_l definition

CREATE TABLE `t_itc_taxtask_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_TAXTASK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtask_r3 definition

CREATE TABLE `t_itc_taxtask_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtaskcatgentry definition

CREATE TABLE `t_itc_taxtaskcatgentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FTAXDATANUM` int NOT NULL DEFAULT '0',
  `FCALRULEID` bigint NOT NULL DEFAULT '0',
  `FCALRULEBOID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_TAXTASKCATGENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtaskcurrency definition

CREATE TABLE `t_itc_taxtaskcurrency` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_TAXTASKCURRENCY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtaskitemdetail definition

CREATE TABLE `t_itc_taxtaskitemdetail` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTAXITEMID` bigint NOT NULL DEFAULT '0',
  `FSPLITALGOID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_ITC_TAXTASKITEMDETAIL` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtaskopdata definition

CREATE TABLE `t_itc_taxtaskopdata` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FRECORDID` bigint NOT NULL DEFAULT '0',
  `FTAXDATAID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_TAXTASKOPDATA_1` (`FRECORDID`),
  KEY `IDX_ITC_TAXTASKOPDATA_2` (`FTAXDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtaskoprecord definition

CREATE TABLE `t_itc_taxtaskoprecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FYEARMONTH` int NOT NULL DEFAULT '0',
  `FTAXTASKID` bigint NOT NULL DEFAULT '0',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FOPTYPEID` bigint NOT NULL DEFAULT '0',
  `FRESULT` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FOPTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXGROUPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXTASKOPRECORD_1` (`FTAXTASKID`,`FTAXCATEGORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtaskrecord definition

CREATE TABLE `t_itc_taxtaskrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FTAXTASKID` bigint NOT NULL DEFAULT '0',
  `FSTEP` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXGROUPID` bigint NOT NULL DEFAULT '0',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FSHOWTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXTASKRECORD_1` (`FTAXTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtaskrecord_r3 definition

CREATE TABLE `t_itc_taxtaskrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtasksnapent definition

CREATE TABLE `t_itc_taxtasksnapent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FEXPRESSION` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPRESSION_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_TAXTASKSNAPENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtasksnapshot definition

CREATE TABLE `t_itc_taxtasksnapshot` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXTASKID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_ITC_TAXTASKSNAPSHOT` (`FTAXTASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtasksnapshot_l definition

CREATE TABLE `t_itc_taxtasksnapshot_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_TAXTASKSNAPSHOT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtasksnapshot_r3 definition

CREATE TABLE `t_itc_taxtasksnapshot_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtasktracker definition

CREATE TABLE `t_itc_taxtasktracker` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_TAXTASKTRACKER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtaskunitentry definition

CREATE TABLE `t_itc_taxtaskunitentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTAXUNITID` bigint NOT NULL DEFAULT '0',
  `FISMAINTAXUNIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDECLARESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTAXFILENUM` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_ITC_TAXTASKUNITENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxtaskunitentry_r3 definition

CREATE TABLE `t_itc_taxtaskunitentry_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_itc_taxunitcol definition

CREATE TABLE `t_itc_taxunitcol` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_ITC_TAXUNITCOL` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_accumulator definition

CREATE TABLE `t_sitbs_accumulator` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOUNTRYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FTAXCATEGORIESID` bigint NOT NULL DEFAULT '0',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FSTARTDAY` int NOT NULL DEFAULT '0',
  `FBSEDSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCDIMENSION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAPRECISIONID` bigint NOT NULL DEFAULT '0',
  `FDATAROUNDID` bigint NOT NULL DEFAULT '0',
  `FUPDATESTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCUNIQUECODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTMONTHVAL` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_ACCUMULATOR` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_accumulator_l definition

CREATE TABLE `t_sitbs_accumulator_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_ACCUMULATOR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_appcountryrel definition

CREATE TABLE `t_sitbs_appcountryrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FISRELATEDSALARYFILE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOMPLEXMODE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_APPCOUNTRYREL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_appcountryrel_l definition

CREATE TABLE `t_sitbs_appcountryrel_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_APPCOUNTRYREL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_belongcountry definition

CREATE TABLE `t_sitbs_belongcountry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FBUSINESSTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_BELONGCOUNTRY` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_belongcountry_l definition

CREATE TABLE `t_sitbs_belongcountry_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_BELONGCOUNTRY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_busieventrel definition

CREATE TABLE `t_sitbs_busieventrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISBUSINESSEVENTBO` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  `FEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_BUSIEVENTREL` (`FEVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_calfrequency definition

CREATE TABLE `t_sitbs_calfrequency` (
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
  `FCOEFFICIENT` decimal(23,10) NOT NULL DEFAULT '0.0000000000',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAREATYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_CALFREQUENCY` (`FCOUNTRYID`,`FTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_calfrequency_l definition

CREATE TABLE `t_sitbs_calfrequency_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_CALFREQUENCY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_calrule definition

CREATE TABLE `t_sitbs_calrule` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FISMODIFY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FVERSIONSOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_CALRULE1` (`FNUMBER`),
  KEY `IDX_SITBS_CALRULE2` (`FTAXCATEGORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_calrule_l definition

CREATE TABLE `t_sitbs_calrule_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_CALRULE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_calruleentry definition

CREATE TABLE `t_sitbs_calruleentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFORMULAID` bigint NOT NULL DEFAULT '0',
  `FTAXITEMID` bigint NOT NULL DEFAULT '0',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_CALRULEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_calruletracker definition

CREATE TABLE `t_sitbs_calruletracker` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_CALRULETRACKER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_certdetail definition

CREATE TABLE `t_sitbs_certdetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPID` bigint NOT NULL DEFAULT '0',
  `FSHASTR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_SITBS_CERTDETAIL_PID` (`FPID`,`FGROUPID`),
  KEY `IDX_SITBS_CERTDETAIL` (`FPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_certscenedetail definition

CREATE TABLE `t_sitbs_certscenedetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCERTDETAILID` bigint NOT NULL DEFAULT '0',
  `FSCENE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_CERTSCENEDETAIL` (`FCERTDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_coanddimref definition

CREATE TABLE `t_sitbs_coanddimref` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FCHANGEDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FWELFAREPAYERID` bigint NOT NULL DEFAULT '0',
  `FSINSURSTDID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_COANDDIMREF_SSTD` (`FSINSURSTDID`),
  KEY `IDX_SITBS_COANDDIMREF_WP` (`FWELFAREPAYERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_coanddimref_l definition

CREATE TABLE `t_sitbs_coanddimref_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_COANDDIMREF_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_coandsinsurstd definition

CREATE TABLE `t_sitbs_coandsinsurstd` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_COANDSINSURSTD` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_combinepagecfg definition

CREATE TABLE `t_sitbs_combinepagecfg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAGEFRAMEREGID` bigint NOT NULL DEFAULT '0',
  `FTOPPAGEID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FBELONGCOUNTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_COMBINEPAGECFG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_combinepagecfg_l definition

CREATE TABLE `t_sitbs_combinepagecfg_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_COMBINEPAGECFG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_cumulatemember definition

CREATE TABLE `t_sitbs_cumulatemember` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTAXITEMID` bigint NOT NULL DEFAULT '0',
  `FACCMENSTARTDATE` datetime DEFAULT NULL,
  `FACCMEMENDDATE` datetime DEFAULT NULL,
  `FOPERATOR` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACCPERCENTTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERCENTFIXVAL` decimal(23,2) NOT NULL DEFAULT '0.00',
  `FUNIQUECODE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_CUMULATEMEMBER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_datagrade definition

CREATE TABLE `t_sitbs_datagrade` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FISMODIFY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMATCHINGMETHOD` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCALERULE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAGRADEPARAM` longtext COLLATE utf8mb4_unicode_ci,
  `FBUSINESSFIELD` bigint NOT NULL DEFAULT '0',
  `FUNIQUECODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSIONSOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_DATAGRADE` (`FNUMBER`),
  KEY `IDX_T_SITBS_DATAGRADE_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_SITBS_DATAGRADE_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_datagrade_bit definition

CREATE TABLE `t_sitbs_datagrade_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_datagrade_l definition

CREATE TABLE `t_sitbs_datagrade_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_DATAGRADE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_datagrade_r3 definition

CREATE TABLE `t_sitbs_datagrade_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_datagrade_u definition

CREATE TABLE `t_sitbs_datagrade_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_SITBS_DATAGRADE_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_datagradeexc definition

CREATE TABLE `t_sitbs_datagradeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_SITBS_DATAGRADEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_datagradetaxcatg definition

CREATE TABLE `t_sitbs_datagradetaxcatg` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_DATAGRADETAXCATG` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_datagradeusereg definition

CREATE TABLE `t_sitbs_datagradeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_SITBS_DATAGRADEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_dataprecision definition

CREATE TABLE `t_sitbs_dataprecision` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCALE` int NOT NULL DEFAULT '0',
  `FEXAMPLE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_DATAPRECISION` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_dataprecision_l definition

CREATE TABLE `t_sitbs_dataprecision_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_DATAPRECISION_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_dataround definition

CREATE TABLE `t_sitbs_dataround` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_DATAROUND` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_dataround_l definition

CREATE TABLE `t_sitbs_dataround_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_DATAROUND_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_datatype definition

CREATE TABLE `t_sitbs_datatype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGETYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHOWTYPE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_DATATYPE` (`FNUMBER`),
  KEY `IDX_SITBS_DATATYPE_1` (`FSTORAGETYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_datatype_l definition

CREATE TABLE `t_sitbs_datatype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_DATATYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_eventrelhis definition

CREATE TABLE `t_sitbs_eventrelhis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FVID` bigint NOT NULL DEFAULT '0',
  `FPRESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREBSED` datetime DEFAULT NULL,
  `FPREBSLED` datetime DEFAULT NULL,
  `FBUSIEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_EVENTRELHIS` (`FBUSIEVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_eventtpl definition

CREATE TABLE `t_sitbs_eventtpl` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEVENTTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEXECUTEWAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FEVENTBATCHTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_EVENTTPL` (`FOPERATEDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_insuranceitem definition

CREATE TABLE `t_sitbs_insuranceitem` (
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
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCOMENGLISHNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSURANCETYPEATTRID` bigint NOT NULL DEFAULT '0',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  `FDATAPRECISIONID` bigint NOT NULL DEFAULT '0',
  `FDATAROUNDID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_INSURITEM_FNUMBER` (`FNUMBER`),
  KEY `IDX_SITBS_INSURITEM_GROUP` (`FGROUPID`),
  KEY `IDX_SITBS_INSURITEM_ATTR` (`FINSURANCETYPEATTRID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_insuranceitem_l definition

CREATE TABLE `t_sitbs_insuranceitem_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_INSURANCEITEM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_insuranceprop definition

CREATE TABLE `t_sitbs_insuranceprop` (
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
  `FCOMENGLISHNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  `FDATAPRECISIONID` bigint NOT NULL DEFAULT '0',
  `FDATAROUNDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_INSURANCEPROP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_insuranceprop_l definition

CREATE TABLE `t_sitbs_insuranceprop_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_INSURANCEPROP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_insurfieldcfg definition

CREATE TABLE `t_sitbs_insurfieldcfg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYOBJECTID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_INSURFIELDCFG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_insurfieldcfgent definition

CREATE TABLE `t_sitbs_insurfieldcfgent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  `FCFGFIELD` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSURANCETYPEATTRID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_INSURFIELDCFGENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_mainentry definition

CREATE TABLE `t_sitbs_mainentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FMAINPAGEREGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_MAINENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_nettaxalgo definition

CREATE TABLE `t_sitbs_nettaxalgo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FEXPRESSION` longtext COLLATE utf8mb4_unicode_ci,
  `FEXPRESSION_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_NETTAXALGO` (`FTAXCATEGORYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_pageframereg definition

CREATE TABLE `t_sitbs_pageframereg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FPAGEFRAMEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_PAGEFRAMEREG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_pageframereg_l definition

CREATE TABLE `t_sitbs_pageframereg_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_PAGEFRAMEREG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_pagereg definition

CREATE TABLE `t_sitbs_pagereg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBELONGCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FPAGEID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPAGETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FAREA` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_PAGEREG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_pagereg_l definition

CREATE TABLE `t_sitbs_pagereg_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_PAGEREG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_placeofwelfare definition

CREATE TABLE `t_sitbs_placeofwelfare` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_PLACEOFWELFARE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_placeofwelfare_l definition

CREATE TABLE `t_sitbs_placeofwelfare_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_PLACEOFWELFARE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_registertype definition

CREATE TABLE `t_sitbs_registertype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_REGISTERTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_registertype_l definition

CREATE TABLE `t_sitbs_registertype_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_REGISTERTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sappcountryrel definition

CREATE TABLE `t_sitbs_sappcountryrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPID` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_SAPPCOUNTRYREL` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sappcountryrel_l definition

CREATE TABLE `t_sitbs_sappcountryrel_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_SAPPCOUNTRYREL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_siderentry definition

CREATE TABLE `t_sitbs_siderentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FSIDERPAGEREGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_SIDERENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurperiod definition

CREATE TABLE `t_sitbs_sinsurperiod` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FPERIODDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_SINSURPERIOD` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurperiod_l definition

CREATE TABLE `t_sitbs_sinsurperiod_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_SINSURPERIOD_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurperiodtype definition

CREATE TABLE `t_sitbs_sinsurperiodtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENERALENNAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCALFREQUENCYID` bigint NOT NULL DEFAULT '0',
  `FPERIODNUMBERPREFIX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODNUMBERSUBJECT` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODNUMBERSUFFIX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERIALNUMBER` int NOT NULL DEFAULT '0',
  `FSTARTDAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDDAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_SINSURPERIODTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurperiodtype_l definition

CREATE TABLE `t_sitbs_sinsurperiodtype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_SINSURPERIODTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstd definition

CREATE TABLE `t_sitbs_sinsurstd` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FCHANGEDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENERALENNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FINSURAREAID` bigint NOT NULL DEFAULT '0',
  `FVERSIONSOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_SINSURSTD_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_SITBS_SINSURSTD_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_SITBS_SINSURSTD_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstd_bit definition

CREATE TABLE `t_sitbs_sinsurstd_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstd_l definition

CREATE TABLE `t_sitbs_sinsurstd_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_SINSURSTD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstd_r3 definition

CREATE TABLE `t_sitbs_sinsurstd_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstd_u definition

CREATE TABLE `t_sitbs_sinsurstd_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_SITBS_SINSURSTD_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstdcfg definition

CREATE TABLE `t_sitbs_sinsurstdcfg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINSURTYPEID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_SINSURSTDCFG_FTYPEID` (`FINSURTYPEID`),
  KEY `IDX_SITBS_SINSURSTDCFG_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstdcfg_l definition

CREATE TABLE `t_sitbs_sinsurstdcfg_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_SINSURSTDCFG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstdcfgdent definition

CREATE TABLE `t_sitbs_sinsurstdcfgdent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FPARAMTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASETYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  `FPARAMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATAPRECISIONID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FPARAMSRC` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_SINSURSTDCFGDENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstdcfgdent_l definition

CREATE TABLE `t_sitbs_sinsurstdcfgdent_l` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_SINSURSTDCFGDENT_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstdcfgrent definition

CREATE TABLE `t_sitbs_sinsurstdcfgrent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSURITEMID` bigint NOT NULL DEFAULT '0',
  `FISUSEROUNDTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASRC` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALRULE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_SINSURSTDCFGRENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstdent definition

CREATE TABLE `t_sitbs_sinsurstdent` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSURTYPEID` bigint NOT NULL DEFAULT '0',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  `FISUSESTDDIM` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTDDIM` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSINSURSTDCFGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_INSURTYPEID` (`FINSURTYPEID`),
  KEY `IDX_SITBS_SINSURSTDENT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstdexc definition

CREATE TABLE `t_sitbs_sinsurstdexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_SITBS_SINSURSTDEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstdrent definition

CREATE TABLE `t_sitbs_sinsurstdrent` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FREGISTERTYPEID` bigint NOT NULL DEFAULT '0',
  `FCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FINSURITEMID` bigint NOT NULL DEFAULT '0',
  `FITEMVALUE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FROUNDTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_SITBS_STDDIMANDITEM` (`FREGISTERTYPEID`,`FCATEGORYID`,`FINSURITEMID`),
  KEY `IDX_SITBS_SINSURSTDRENT` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstdresul_r3 definition

CREATE TABLE `t_sitbs_sinsurstdresul_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sinsurstdusereg definition

CREATE TABLE `t_sitbs_sinsurstdusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_SITBS_SINSURSTDUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_splitalgo definition

CREATE TABLE `t_sitbs_splitalgo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMPLCLASSKEY` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_SPLITALGO` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_splitalgo_l definition

CREATE TABLE `t_sitbs_splitalgo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_SPLITALGO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sumitem definition

CREATE TABLE `t_sitbs_sumitem` (
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
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` bigint NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCHANGEDESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVERSIONSOURCE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENERALENNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAREATYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_SUMITEM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sumitem_l definition

CREATE TABLE `t_sitbs_sumitem_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_SUMITEM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_sumitementry definition

CREATE TABLE `t_sitbs_sumitementry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINSURANCEITEMID` bigint NOT NULL DEFAULT '0',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_SUMITEMENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_tabentry definition

CREATE TABLE `t_sitbs_tabentry` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTABPAGEREGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_TABENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxcalformula definition

CREATE TABLE `t_sitbs_taxcalformula` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FCHANGEDESCRIPTION` varchar(765) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTITEMID` bigint NOT NULL DEFAULT '0',
  `FISDRAFT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOUNTRYTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FISMODIFY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FVERSIONSOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `IDX_TAXCALFORMULA_FNUMBER` (`FNUMBER`),
  KEY `IDX_TAXCALFORMULA_TCATEGORYID` (`FTAXCATEGORYID`),
  KEY `IDX_TAXCALFORMULA_FSTATUS` (`FSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxcalformula_a definition

CREATE TABLE `t_sitbs_taxcalformula_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FORIGINALEXP` longtext COLLATE utf8mb4_unicode_ci,
  `FEXECUTEEXP` longtext COLLATE utf8mb4_unicode_ci,
  `FDEPENDENTFUNC` longtext COLLATE utf8mb4_unicode_ci,
  `FDEPENDENTCALITEM` longtext COLLATE utf8mb4_unicode_ci,
  `FDEPENDENTCUSTITEM` longtext COLLATE utf8mb4_unicode_ci,
  `FDEPENDENTCALITEMFORFUNC` longtext COLLATE utf8mb4_unicode_ci,
  `FUNIQUECODEEXP` longtext COLLATE utf8mb4_unicode_ci,
  `FDEPENDENTCALITEMFORDG` longtext COLLATE utf8mb4_unicode_ci,
  `FDEPENDENTDATAGRADE` longtext COLLATE utf8mb4_unicode_ci,
  `FRESULTITEMCATEGORY` varchar(54) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTITEMUNIQUECODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTITEMDATATYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRESULTITEMDATALENGTH` int NOT NULL DEFAULT '0',
  `FRESULTITEMSCALE` int NOT NULL DEFAULT '0',
  `FDEPENDENTBASEDATA` longtext COLLATE utf8mb4_unicode_ci,
  `FDEPENDENTENUM` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_FORMULA_CODE` (`FRESULTITEMUNIQUECODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxcalformula_l definition

CREATE TABLE `t_sitbs_taxcalformula_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_TAXCALFORMULA_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxcalmutex definition

CREATE TABLE `t_sitbs_taxcalmutex` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTAXFILEID` bigint NOT NULL DEFAULT '0',
  `FLOCKBATCHKEY` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_TAXCALMUTEX_1` (`FTAXFILEID`),
  KEY `IDX_SITBS_TAXCALMUTEX_2` (`FLOCKBATCHKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxcategory definition

CREATE TABLE `t_sitbs_taxcategory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTAXGROUPID` bigint NOT NULL DEFAULT '0',
  `FTAXPAYERTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FTAXPAYERTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_TAXCATEGORY` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxcategory_l definition

CREATE TABLE `t_sitbs_taxcategory_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_TAXCATEGORY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxcrdltype definition

CREATE TABLE `t_sitbs_taxcrdltype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPRELATECOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCREDENTIALSTYPEID` bigint NOT NULL DEFAULT '0',
  `FNATIONALITYID` bigint NOT NULL DEFAULT '0',
  `FNATIONALITYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_TAXCRDLTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxcrdltype_l definition

CREATE TABLE `t_sitbs_taxcrdltype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_TAXCRDLTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxcrdltype_r3 definition

CREATE TABLE `t_sitbs_taxcrdltype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxgroup definition

CREATE TABLE `t_sitbs_taxgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_TAXGROUP` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxgroup_l definition

CREATE TABLE `t_sitbs_taxgroup_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_TAXGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxitem definition

CREATE TABLE `t_sitbs_taxitem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATATYPEID` bigint NOT NULL DEFAULT '0',
  `FDATALENGTH` int NOT NULL DEFAULT '0',
  `FDATAPRECISIONID` bigint NOT NULL DEFAULT '0',
  `FDATAROUNDID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FTAXITEMTYPEID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
  `FCALTAXTYPEID` bigint NOT NULL DEFAULT '0',
  `FINCOMEITEM` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSPLITALGO` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_TAXITEM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxitem_l definition

CREATE TABLE `t_sitbs_taxitem_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_TAXITEM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxitemcategory definition

CREATE TABLE `t_sitbs_taxitemcategory` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_TAXITEMCATEGORY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxitemtype definition

CREATE TABLE `t_sitbs_taxitemtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLONGNUMBER` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEVEL` int NOT NULL DEFAULT '0',
  `FFULLNAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FISLEAF` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARENTID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_TAXITEMTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxitemtype_l definition

CREATE TABLE `t_sitbs_taxitemtype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFULLNAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_TAXITEMTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxperiod definition

CREATE TABLE `t_sitbs_taxperiod` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FPERIODDATE` datetime DEFAULT NULL,
  `FDECLARESTARTDATE` datetime DEFAULT NULL,
  `FDECLAREENDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_TAXPERIOD` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxperiod_l definition

CREATE TABLE `t_sitbs_taxperiod_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_TAXPERIOD_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxperiodprg definition

CREATE TABLE `t_sitbs_taxperiodprg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENERALENNAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCALFREQUENCYID` bigint NOT NULL DEFAULT '0',
  `FPERIODNUMBERPREFIX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODNUMBERSUBJECT` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODNUMBERSUFFIX` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERIALNUMBER` int NOT NULL DEFAULT '0',
  `FSTARTDAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENDDAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_TAXPERIODPRG` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxperiodprg_l definition

CREATE TABLE `t_sitbs_taxperiodprg_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_TAXPERIODPRG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxtemplate definition

CREATE TABLE `t_sitbs_taxtemplate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FCOUNTRYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSCENETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTAXCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FTAXGROUPID` bigint NOT NULL DEFAULT '0',
  `FSCENE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FASTERISKPOSITION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSCENESEARCH` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEADERLINENUMBER` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_TAXTEMPLATE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxtemplate_l definition

CREATE TABLE `t_sitbs_taxtemplate_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_TAXTEMPLATE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_taxtemplateentry definition

CREATE TABLE `t_sitbs_taxtemplateentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FISEXPORT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISMUSTINPUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTAXITEMID` bigint NOT NULL DEFAULT '0',
  `FFIELDKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXPORTFIELD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FIMPORTFIELD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISONLY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SITBS_TAXTEMPLATEENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_welfarepayer definition

CREATE TABLE `t_sitbs_welfarepayer` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCORPORATEORGID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FPLACEOFWELFAREID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBRED` datetime DEFAULT NULL,
  `FISREFSINSURDCLRULE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_SITBS_WELFAREPAYER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_welfarepayer_l definition

CREATE TABLE `t_sitbs_welfarepayer_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_WELFAREPAYER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_welfarepayer_r3 definition

CREATE TABLE `t_sitbs_welfarepayer_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_welfaretype definition

CREATE TABLE `t_sitbs_welfaretype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FCURRENCYID` bigint NOT NULL DEFAULT '0',
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
  KEY `IDX_SITBS_WELFARETYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_sit.t_sitbs_welfaretype_l definition

CREATE TABLE `t_sitbs_welfaretype_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_SITBS_WELFARETYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
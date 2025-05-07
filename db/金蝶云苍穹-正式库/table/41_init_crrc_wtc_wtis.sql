USE crrc_wtc_wtis;

-- crrc_wtc_wtis.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_attperiodtotal definition

CREATE TABLE `t_wtctd_attperiodtotal` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FFROZEN` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROZENTIME` datetime DEFAULT NULL,
  `FFROZENERID` bigint NOT NULL DEFAULT '0',
  `FLOCK` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCKTIME` datetime DEFAULT NULL,
  `FLOCKERID` bigint NOT NULL DEFAULT '0',
  `FCONFIRM` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIRMTIME` datetime DEFAULT NULL,
  `FCONFIRMERID` bigint NOT NULL DEFAULT '0',
  `FRELEASE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRELEASETIME` datetime DEFAULT NULL,
  `FRELEASEERID` bigint NOT NULL DEFAULT '0',
  `FSTORAGE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGETIME` datetime DEFAULT NULL,
  `FSTORAGEERID` bigint NOT NULL DEFAULT '0',
  `FPUSH` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPUSHTIME` datetime DEFAULT NULL,
  `FPUSHERID` bigint NOT NULL DEFAULT '0',
  `FPERATTPERIODID` bigint NOT NULL DEFAULT '0',
  `FATTITEMTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FVALUE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FATTPERATTPERIODID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERPERIODBEGINDATE` datetime DEFAULT NULL,
  `FPERPERIODENDDATE` datetime DEFAULT NULL,
  `FISHIS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSHIFT` bigint NOT NULL DEFAULT '0',
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTITEMVID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYVID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONVID` bigint NOT NULL DEFAULT '0',
  `FJOBVID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTCTD_ATTPERIODTOTAL_B` (`FPERATTPERIODID` DESC,`FATTPERATTPERIODID`,`FATTITEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_attperiodtotal_a definition

CREATE TABLE `t_wtctd_attperiodtotal_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FCOMPUTMANID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  `FMANAGESCOPEID` bigint NOT NULL DEFAULT '0',
  `FMANAGESCOPEVID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGVID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FAGREEDWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FWORKPLACEID` bigint NOT NULL DEFAULT '0',
  `FRECKONERID` bigint NOT NULL DEFAULT '0',
  `FMANAGINGSCOPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTCTD_ATTPERIODTOTAL_A` (`FATTFILEVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_attperiodtotal_r3 definition

CREATE TABLE `t_wtctd_attperiodtotal_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_atttotalbase definition

CREATE TABLE `t_wtctd_atttotalbase` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONVID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTVID` bigint NOT NULL DEFAULT '0',
  `FJOBVID` bigint NOT NULL DEFAULT '0',
  `FCALCULATEDATE` datetime DEFAULT NULL,
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMANAGESCOPEVID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGVID` bigint NOT NULL DEFAULT '0',
  `FRECKONERID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  `FPERATTPERIODID` bigint NOT NULL DEFAULT '0',
  `FATTPERATTPERIODID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERPERIODBEGINDATE` datetime DEFAULT NULL,
  `FPERPERIODENDDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FATTPERATTPERIODPK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTCTD_ATTTOTALBASE_1` (`FPERATTPERIODID`,`FATTPERATTPERIODID`),
  KEY `IDX_WTCTD_ATTTOTALBASE_2` (`FATTFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_atttotalbase_r3 definition

CREATE TABLE `t_wtctd_atttotalbase_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_atttotalbasehi_r3 definition

CREATE TABLE `t_wtctd_atttotalbasehi_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_atttotalbasehis definition

CREATE TABLE `t_wtctd_atttotalbasehis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONVID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTVID` bigint NOT NULL DEFAULT '0',
  `FJOBVID` bigint NOT NULL DEFAULT '0',
  `FCALCULATEDATE` datetime DEFAULT NULL,
  `FVERSION` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMANAGESCOPEVID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGVID` bigint NOT NULL DEFAULT '0',
  `FRECKONERID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  `FATTFILEVID` bigint NOT NULL DEFAULT '0',
  `FPERATTPERIODID` bigint NOT NULL DEFAULT '0',
  `FATTPERATTPERIODID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERPERIODBEGINDATE` datetime DEFAULT NULL,
  `FPERPERIODENDDATE` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FATTPERATTPERIODPK` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTCTD_ATTTOTALBASEHIS_1` (`FPERATTPERIODID`,`FATTPERATTPERIODID`),
  KEY `IDX_WTCTD_ATTTOTALBASEHIS_2` (`FATTFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_atttotaldehis definition

CREATE TABLE `t_wtctd_atttotaldehis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERATTPERIODID` bigint NOT NULL DEFAULT '0',
  `FMID` bigint NOT NULL DEFAULT '0',
  `FATTITEMTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTITEMVID` bigint NOT NULL DEFAULT '0',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FVALUELONG` decimal(19,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTCTD_ATTTOTALDEHIS` (`FPERATTPERIODID`),
  KEY `IDX_WTCTD_ATTTOTALDEHIS_MID` (`FMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_atttotaldehis_r3 definition

CREATE TABLE `t_wtctd_atttotaldehis_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_atttotaldetail definition

CREATE TABLE `t_wtctd_atttotaldetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERATTPERIODID` bigint NOT NULL DEFAULT '0',
  `FATTITEMTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTITEMVID` bigint NOT NULL DEFAULT '0',
  `FATTITEMID` bigint NOT NULL DEFAULT '0',
  `FVALUELONG` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTCTD_ATTTOTALDETAIL` (`FPERATTPERIODID`),
  KEY `IDX_WTCTD_ATTTOTALDETAIL_MID` (`FMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_atttotaldetail_r3 definition

CREATE TABLE `t_wtctd_atttotaldetail_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_dailydetails definition

CREATE TABLE `t_wtctd_dailydetails` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FOWNDATE` datetime DEFAULT NULL,
  `FVERSIONID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FSHFITID` bigint NOT NULL DEFAULT '0',
  `FPERATTPERIODID` bigint NOT NULL DEFAULT '0',
  `FFROZEN` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFROZENTIME` datetime DEFAULT NULL,
  `FFROZENERID` bigint NOT NULL DEFAULT '0',
  `FLOCK` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOCKTIME` datetime DEFAULT NULL,
  `FLOCKERID` bigint NOT NULL DEFAULT '0',
  `FCONFIRM` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONFIRMTIME` datetime DEFAULT NULL,
  `FCONFIRMERID` bigint NOT NULL DEFAULT '0',
  `FSTORAGE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTORAGETIME` datetime DEFAULT NULL,
  `FSTORAGEERID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYVID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTVID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONVID` bigint NOT NULL DEFAULT '0',
  `FJOBVID` bigint NOT NULL DEFAULT '0',
  `FSHIFTVID` bigint NOT NULL DEFAULT '0',
  `FATTFILEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_WTCTD_DAILYDETAILS` (`FPERSONID`,`FOWNDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_wtc_wtis.t_wtctd_dailydetails_r3 definition

CREATE TABLE `t_wtctd_dailydetails_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
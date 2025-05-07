USE crrc_hrb;

-- crrc_hrb.t_ham_disbackincharge definition

CREATE TABLE `t_ham_disbackincharge` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISBACKINCHARGE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disbackinchargein definition

CREATE TABLE `t_ham_disbackinchargein` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISBACKINCHARGEIN` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disbacksuperior definition

CREATE TABLE `t_ham_disbacksuperior` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISBACKSUPERIOR` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disbacksuperiorin definition

CREATE TABLE `t_ham_disbacksuperiorin` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISBACKSUPERIORIN` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatch definition

CREATE TABLE `t_ham_dispatch` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FORGOUTID` bigint NOT NULL DEFAULT '0',
  `FADMINORGOUTID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPOUTID` bigint NOT NULL DEFAULT '0',
  `FORGINID` bigint NOT NULL DEFAULT '0',
  `FADMINORGINID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPINID` bigint NOT NULL DEFAULT '0',
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOUTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISOUTINORDER` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPTYPE` bigint NOT NULL DEFAULT '0',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYINID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONINID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYINID` bigint NOT NULL DEFAULT '0',
  `FDEPTINID` bigint NOT NULL DEFAULT '0',
  `FSTANDARDPOSINID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONINID` bigint NOT NULL DEFAULT '0',
  `FREACHDATE` datetime DEFAULT NULL,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FPERSONFIELD` bigint NOT NULL DEFAULT '0',
  `FDISPATCHSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPREASONID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPOUT` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYOUTID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYOUTID` bigint NOT NULL DEFAULT '0',
  `FDEPTOUTID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONOUTID` bigint NOT NULL DEFAULT '0',
  `FSTANDARDPOSOUTID` bigint NOT NULL DEFAULT '0',
  `FLEAVEDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FDURATION` int NOT NULL DEFAULT '0',
  `FAFFRECORDID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATERSN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FPOSPATTERNOUT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBOUTID` bigint NOT NULL DEFAULT '0',
  `FJOBINID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPATCH_FORGID` (`FORGID`),
  KEY `IDX_HAM_DISPATCH_FADMOID` (`FADMINORGOUTID`),
  KEY `IDX_HAM_DISPATCH_FEMPOID` (`FEMPGROUPOUTID`),
  KEY `IDX_HAM_DISPATCH_FERMANFILEID` (`FERMANFILEID`),
  KEY `IDX_HAM_DISPATCH_CRETM` (`FCREATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatch_a definition

CREATE TABLE `t_ham_dispatch_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISSUBMIT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYINID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEINID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPINID` bigint NOT NULL DEFAULT '0',
  `FDEPTLONGNUMINVID` bigint NOT NULL DEFAULT '0',
  `FORGLONGNUMOUTVID` bigint NOT NULL DEFAULT '0',
  `FADMINORGLONGNUMOUTVID` bigint NOT NULL DEFAULT '0',
  `FORGLONGNUMINVID` bigint NOT NULL DEFAULT '0',
  `FADMINORGLONGNUMINVID` bigint NOT NULL DEFAULT '0',
  `FCHARGERGROUP` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINRADIOGROUPFIELD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANCOUNTRYINID` bigint NOT NULL DEFAULT '0',
  `FPLANCOMPANYINID` bigint NOT NULL DEFAULT '0',
  `FPLANDEPTINID` bigint NOT NULL DEFAULT '0',
  `FPLANDEPTLONGNUMINVID` bigint NOT NULL DEFAULT '0',
  `FPLANPOSITIONINID` bigint NOT NULL DEFAULT '0',
  `FPLANSTANDARDPOSINID` bigint NOT NULL DEFAULT '0',
  `FPLANREACHDATE` datetime DEFAULT NULL,
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FPLANDURATION` int NOT NULL DEFAULT '0',
  `FPLANDISPTYPEID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYPLANID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPEVENTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITNOTICSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOPNOTICSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRADIOGROUPFIELD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANCHARGERGROUP` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTTIME` datetime DEFAULT NULL,
  `FDEPTLONGNUMOUTVID` bigint NOT NULL DEFAULT '0',
  `FPLANDISPREASON` bigint NOT NULL DEFAULT '0',
  `FPLANSTARTDATE` datetime DEFAULT NULL,
  `FISMANAGED` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATETIME` datetime DEFAULT NULL,
  `FTERMINATEUSER` bigint NOT NULL DEFAULT '0',
  `FPLANCMPEMPIN` bigint NOT NULL DEFAULT '0',
  `FDATASOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCEID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPATCH_FAUDITORID` (`FAUDITORID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatch_b definition

CREATE TABLE `t_ham_dispatch_b` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINDARKPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPLANJOBID` bigint NOT NULL DEFAULT '0',
  `FWORKROLEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPATCH_FAUDITORIDB` (`FINDARKPOSITIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatch_l definition

CREATE TABLE `t_ham_dispatch_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATERSN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPATCH_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatch_r3 definition

CREATE TABLE `t_ham_dispatch_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatchaincharge definition

CREATE TABLE `t_ham_dispatchaincharge` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPATCHAINCHARGE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatchasuperior definition

CREATE TABLE `t_ham_dispatchasuperior` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPATCHASUPERIOR` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatchinincharge definition

CREATE TABLE `t_ham_dispatchinincharge` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPATCHININCHARGE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatchinsuperior definition

CREATE TABLE `t_ham_dispatchinsuperior` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPATCHINSUPERIOR` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatchplanincha definition

CREATE TABLE `t_ham_dispatchplanincha` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPATCHPLANINCHA` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatchplansup definition

CREATE TABLE `t_ham_dispatchplansup` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPATCHPLANSUP` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatchrecordchg definition

CREATE TABLE `t_ham_dispatchrecordchg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISSUBMIT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFRECORDID` bigint NOT NULL DEFAULT '0',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FDISPATCHRECORDID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FCHANGESTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANDISPTYPEID` bigint NOT NULL DEFAULT '0',
  `FPLANSTARTDATE` datetime DEFAULT NULL,
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FPLANDURATION` int NOT NULL DEFAULT '0',
  `FBDISPTYPEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FDURATION` int NOT NULL DEFAULT '0',
  `FTERMINATERSN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATEUSER` bigint NOT NULL DEFAULT '0',
  `FTERMINATETIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FEFFECTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTTIME` datetime DEFAULT NULL,
  `FORGINID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPINID` bigint NOT NULL DEFAULT '0',
  `FADMINORGINID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPINID` bigint NOT NULL DEFAULT '0',
  `FORGBACKID` bigint NOT NULL DEFAULT '0',
  `FADMINORGBACKID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPBACKID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPBACKID` bigint NOT NULL DEFAULT '0',
  `FSUBMITNOTICSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOPNOTICSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPATCHRECORDCHG` (`FERMANFILEID`,`FDISPATCHRECORDID`,`FPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatchrecordchg_a definition

CREATE TABLE `t_ham_dispatchrecordchg_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPEMPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPCHG_FAUDITORID` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispatchrecordchg_l definition

CREATE TABLE `t_ham_dispatchrecordchg_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATERSN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPATCHRECORDCHG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispback definition

CREATE TABLE `t_ham_dispback` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FISEXISTSWORKFLOW` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFRECORDID` bigint NOT NULL DEFAULT '0',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FDISPTYPEID` bigint NOT NULL DEFAULT '0',
  `FBACKSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYBACKID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONBACKID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYBACKID` bigint NOT NULL DEFAULT '0',
  `FDEPTBACKID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONBACKID` bigint NOT NULL DEFAULT '0',
  `FPOSTSTANDARDBACKID` bigint NOT NULL DEFAULT '0',
  `FBACKDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FDURATION` int NOT NULL DEFAULT '0',
  `FREACHDATE` datetime DEFAULT NULL,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FDISPBACKREASONID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPTLONGNUMBACKVID` bigint NOT NULL DEFAULT '0',
  `FSUBMITNOTICSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOPNOTICSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTTIME` datetime DEFAULT NULL,
  `FGENBYTERMRECORD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMPEMPBACKID` bigint NOT NULL DEFAULT '0',
  `FTERMINATERSN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATEUSER` bigint NOT NULL DEFAULT '0',
  `FTERMINATETIME` datetime DEFAULT NULL,
  `FORGLONGNUMINVID` bigint NOT NULL DEFAULT '0',
  `FADMINORGLONGNUMBACKVID` bigint NOT NULL DEFAULT '0',
  `FDISPATCHRECORDID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FPOSPATTERNBACK` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBBACKID` bigint NOT NULL DEFAULT '0',
  `FJOBINID` bigint NOT NULL DEFAULT '0',
  `FPOSPATTERNIN` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPBACK` (`FDISPATCHRECORDID`,`FPERSONID`,`FERMANFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispback_a definition

CREATE TABLE `t_ham_dispback_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISSUBMIT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGINID` bigint NOT NULL DEFAULT '0',
  `FADMINORGINID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPINID` bigint NOT NULL DEFAULT '0',
  `FORGBACKID` bigint NOT NULL DEFAULT '0',
  `FADMINORGBACKID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPBACKID` bigint NOT NULL DEFAULT '0',
  `FDISPEVENTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFAIRACTIONID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYPLANID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYINID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONINID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYINID` bigint NOT NULL DEFAULT '0',
  `FDEPTINID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONINID` bigint NOT NULL DEFAULT '0',
  `FPOSTSTANDARDINID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPINID` bigint NOT NULL DEFAULT '0',
  `FDEPTLONGNUMINVID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPBACK_A` (`FDEPTINID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispback_l definition

CREATE TABLE `t_ham_dispback_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATERSN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPBACK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispbackreason definition

CREATE TABLE `t_ham_dispbackreason` (
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPBACKREASON_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispbackreason_l definition

CREATE TABLE `t_ham_dispbackreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPBACKREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispreason definition

CREATE TABLE `t_ham_dispreason` (
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPREASON_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispreason_l definition

CREATE TABLE `t_ham_dispreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disprecord definition

CREATE TABLE `t_ham_disprecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FDISPATCHID` bigint NOT NULL DEFAULT '0',
  `FDISPBACKID` bigint NOT NULL DEFAULT '0',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FBFDISPRECORDID` bigint NOT NULL DEFAULT '0',
  `FDISPCHANGENOWID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPEVENTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPTYPEID` bigint NOT NULL DEFAULT '0',
  `FDISPREASONOUTID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYINID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPINID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYINID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYINID` bigint NOT NULL DEFAULT '0',
  `FDEPTINID` bigint NOT NULL DEFAULT '0',
  `FSTANDARDPOSINID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONINID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONINID` bigint NOT NULL DEFAULT '0',
  `FREACHDATE` datetime DEFAULT NULL,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FPLANDURATION` int NOT NULL DEFAULT '0',
  `FDISPREASONEND` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FENDDATE` datetime DEFAULT NULL,
  `FORGOUTID` bigint NOT NULL DEFAULT '0',
  `FADMINORGOUT` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPOUTID` bigint NOT NULL DEFAULT '0',
  `FDEPTOUTID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FISCURRENTVERSION` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMODIFY` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGINID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPINID` bigint NOT NULL DEFAULT '0',
  `FORGINID` bigint NOT NULL DEFAULT '0',
  `FDEPEMPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPRECORD_ERMANFILEID` (`FERMANFILEID`),
  KEY `IDX_HAM_DISPRECORD_DEPEMP` (`FDEPEMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disprecord_a definition

CREATE TABLE `t_ham_disprecord_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEINID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYBACKID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYBACKID` bigint NOT NULL DEFAULT '0',
  `FDEPTBACKID` bigint NOT NULL DEFAULT '0',
  `FPOSTSTANDARDBACKID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONBACKID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONBACKID` bigint NOT NULL DEFAULT '0',
  `FBACKDATE` datetime DEFAULT NULL,
  `FDISPBACKREASON` bigint NOT NULL DEFAULT '0',
  `FDURATION` int NOT NULL DEFAULT '0',
  `FORGBACKID` bigint NOT NULL DEFAULT '0',
  `FADMINORGBACKID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPBACKID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYOUTID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYOUTID` bigint NOT NULL DEFAULT '0',
  `FSTANDARDPOSOUTID` bigint NOT NULL DEFAULT '0',
  `FLEAVEDATE` datetime DEFAULT NULL,
  `FPOSITIONOUTID` bigint NOT NULL DEFAULT '0',
  `FDEPTLONGNUMOUTVID` bigint NOT NULL DEFAULT '0',
  `FDEPTLONGNUMINVID` bigint NOT NULL DEFAULT '0',
  `FDEPTLONGNUMBACKVID` bigint NOT NULL DEFAULT '0',
  `FORGLONGNUMOUTVID` bigint NOT NULL DEFAULT '0',
  `FADMINORGLONGNUMOUTVID` bigint NOT NULL DEFAULT '0',
  `FORGLONGNUMBACKVID` bigint NOT NULL DEFAULT '0',
  `FADMINORGLONGNUMBACKVID` bigint NOT NULL DEFAULT '0',
  `FORGLONGNUMINVID` bigint NOT NULL DEFAULT '0',
  `FADMINORGLONGNUMINVID` bigint NOT NULL DEFAULT '0',
  `FTERMSOURCE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTERMTASKSTATUS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FINDARKPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBINID` bigint NOT NULL DEFAULT '0',
  `FPOSPATTERNIN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FJOBOUTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPRECORD_FCOMID` (`FCOMPANYOUTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disprecord_l definition

CREATE TABLE `t_ham_disprecord_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDISPREASONEND` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPRECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disprecord_r3 definition

CREATE TABLE `t_ham_disprecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disprecordbusevent definition

CREATE TABLE `t_ham_disprecordbusevent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISBUSINESSEVENTBO` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  `FEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPRE_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disprecordevent definition

CREATE TABLE `t_ham_disprecordevent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEVENTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTEWAY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTBATCHTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_CORDE_EVENTID` (`FCANCELEDEVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disprecordhis definition

CREATE TABLE `t_ham_disprecordhis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FVID` bigint NOT NULL DEFAULT '0',
  `FPRESTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREBSED` datetime DEFAULT NULL,
  `FPREBSLED` datetime DEFAULT NULL,
  `FBUSIEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_CORDEHIS_FVID` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispreinincharge definition

CREATE TABLE `t_ham_dispreinincharge` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPREININCHARGE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispreinsup definition

CREATE TABLE `t_ham_dispreinsup` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPREINSUP` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispreoutincharge definition

CREATE TABLE `t_ham_dispreoutincharge` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPREOUTINCHARGE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_dispreoutsup definition

CREATE TABLE `t_ham_dispreoutsup` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPREOUTSUP` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disptype definition

CREATE TABLE `t_ham_disptype` (
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HAM_DISPTYPE_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_ham_disptype_l definition

CREATE TABLE `t_ham_disptype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HAM_DISPTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_documentorg definition

CREATE TABLE `t_hdm_documentorg` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_DOCUMENTORG` (`FMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_encouragetitle definition

CREATE TABLE `t_hdm_encouragetitle` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBELONGPAGE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_TITLE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_encouragetitle_l definition

CREATE TABLE `t_hdm_encouragetitle_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTITLE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_ENCOURAGETITLE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_endpartevent definition

CREATE TABLE `t_hdm_endpartevent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEAPP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEENTITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSOURCEBILLID` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLENTRY` bigint NOT NULL DEFAULT '0',
  `FEVENTCLS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTRATEGYID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_ENDPARTEVENT` (`FSOURCEBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_endpartevent_l definition

CREATE TABLE `t_hdm_endpartevent_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_ENDPARTEVENT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_exceptionrecord definition

CREATE TABLE `t_hdm_exceptionrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FTRANSFERBILLID` bigint NOT NULL DEFAULT '0',
  `FINTEGRATEPOINT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTEGRATEWAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPARAMS_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FRTPARAMS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRTPARAMS_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FERRORLOG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERRORLOG_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FRETRYNUM` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_EXCEPTIONRECORD_STATUS` (`FSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_neworgleader definition

CREATE TABLE `t_hdm_neworgleader` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_NEWORGLEADER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_newsuperior definition

CREATE TABLE `t_hdm_newsuperior` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_NEWSUPERIOR` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_oldorgleader definition

CREATE TABLE `t_hdm_oldorgleader` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_OLDORGLEADER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_oldsuperior definition

CREATE TABLE `t_hdm_oldsuperior` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_OLDSUPERIOR` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_partbillevent definition

CREATE TABLE `t_hdm_partbillevent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEAPP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEENTITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSOURCEBILLID` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLENTRY` bigint NOT NULL DEFAULT '0',
  `FEVENTCLS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTRATEGYID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_PARTBILLEVENT` (`FSOURCEBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_partbillevent_l definition

CREATE TABLE `t_hdm_partbillevent_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_PARTBILLEVENT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_parttimeapplybill definition

CREATE TABLE `t_hdm_parttimeapplybill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '  ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMULTIENTRY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISEXCEPTION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '  ',
  `FACMPEMPID` bigint NOT NULL DEFAULT '0',
  `FADEPEMPID` bigint NOT NULL DEFAULT '0',
  `FBJOBID` bigint NOT NULL DEFAULT '0',
  `FBJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FBLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FBLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FACOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAADMINORGID` bigint NOT NULL DEFAULT '0',
  `FAPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FACITYID` bigint NOT NULL DEFAULT '0',
  `FEFFECTDATE` datetime DEFAULT NULL,
  `FPARTTIMESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FPRIMARYHRBUID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FPRIMARYAFTADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPRIMARYEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FPRIMARYCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FPRIMARYDEPEMPID` bigint NOT NULL DEFAULT '0',
  `FPRIMARYEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FPRIMARYCITYID` bigint NOT NULL DEFAULT '0',
  `FPARTTIMEREASONID` bigint NOT NULL DEFAULT '0',
  `FHRBUID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FERMANFILEVID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FFILLINERID` bigint NOT NULL DEFAULT '0',
  `FFILLINDATE` datetime DEFAULT NULL,
  `FMID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_PARTTIMEAPPLYBILL` (`FBILLNO`),
  KEY `IDX_HDM_PARTTIMEAPPLYBILL_AD` (`FPRIMARYAFTADMINORGID`),
  KEY `IDX_HDM_PARTTIMEAPPLYBILL_ORG` (`FORGID`),
  KEY `IDX_HDM_PARTTIMEAPPLYBILL_EG` (`FPRIMARYEMPGROUPID`),
  KEY `IDX_HDM_PARTTIME_FMID` (`FMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_parttimeapplybill_a definition

CREATE TABLE `t_hdm_parttimeapplybill_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FAFFRECORDID` bigint NOT NULL DEFAULT '0',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPARTPERSONID` bigint NOT NULL DEFAULT '0',
  `FAPOSITIONTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '  ',
  `FASTDPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '  ',
  `FSTDPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FASUPERIORID` bigint NOT NULL DEFAULT '0',
  `FSUPERIORID` bigint NOT NULL DEFAULT '0',
  `FPRIMARYCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FISSPECIAL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAWORKROLEID` bigint NOT NULL DEFAULT '0',
  `FPARTFILEID` bigint NOT NULL DEFAULT '0',
  `FPARTENDDATE` datetime DEFAULT NULL,
  `FBJOBORGID` bigint NOT NULL DEFAULT '0',
  `FMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_PARTTIMEAPPLYBILL_A` (`FISSUBMIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_parttimebatch definition

CREATE TABLE `t_hdm_parttimebatch` (
  `FMID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFILIATIONORDID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMUSERID` bigint NOT NULL DEFAULT '0',
  `FTERMDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FMID`),
  KEY `IDX_HDM_PARTTIMEBATCH_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_parttimebatch_l definition

CREATE TABLE `t_hdm_parttimebatch_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_PARTTIMEBATCH_L` (`FMID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_parttimeendbill definition

CREATE TABLE `t_hdm_parttimeendbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '  ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMULTIENTRY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISEXCEPTION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '  ',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FBEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FBDEPEMPID` bigint NOT NULL DEFAULT '0',
  `FBADMINORGID` bigint NOT NULL DEFAULT '0',
  `FBPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FEFFECTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FLASTWORKDATE` datetime DEFAULT NULL,
  `FPARTENDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FPARTFILEID` bigint NOT NULL DEFAULT '0',
  `FBCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FISEND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_PARTTIMEENDBILL` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_parttimekeyinfo definition

CREATE TABLE `t_hdm_parttimekeyinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FOCCURDATE` datetime DEFAULT NULL,
  `FDEPEMPID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_PARTTIMEKEYINFO` (`FDEPEMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_parttimekeyinfo_l definition

CREATE TABLE `t_hdm_parttimekeyinfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_PARTTIMEKEYINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_parttimereason definition

CREATE TABLE `t_hdm_parttimereason` (
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_PARTTIMEREASON` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_parttimereason_l definition

CREATE TABLE `t_hdm_parttimereason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_PARTTIMEREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_parttimesuperior definition

CREATE TABLE `t_hdm_parttimesuperior` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_PARTTIMESUPERIOR` (`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_parttimeworkrole definition

CREATE TABLE `t_hdm_parttimeworkrole` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FWORKROLE` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FISCONPOS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_PARTTIMEWORKROLE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regagreedexp definition

CREATE TABLE `t_hdm_regagreedexp` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FERMAINFILEID` bigint NOT NULL DEFAULT '0',
  `FPROBATIONUNITTHRESHOLD` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROBATIONTHRESHOLD` int NOT NULL DEFAULT '0',
  `FDELAYREGTHRESHOLD` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGEXP_FTRIALPERIOD` (`FERMAINFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regagreedexp_r3 definition

CREATE TABLE `t_hdm_regagreedexp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regaskdetails definition

CREATE TABLE `t_hdm_regaskdetails` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRESULTID` bigint NOT NULL DEFAULT '0',
  `FBEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FASKPERSONID` bigint NOT NULL DEFAULT '0',
  `FROLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMESSAGEID` bigint NOT NULL DEFAULT '0',
  `FOPINION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCOMMENT` longtext COLLATE utf8mb4_unicode_ci,
  `FISNEWEST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FINITIATORID` bigint NOT NULL DEFAULT '0',
  `FINITIATETIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINSHTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGASKDETAILS_EMP` (`FBEMPLOYEEID`),
  KEY `IDX_HDM_REGASKDETAILS_RESULT` (`FRESULTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regaskdetails_l definition

CREATE TABLE `t_hdm_regaskdetails_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGASKDETAILS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regaskdetails_r3 definition

CREATE TABLE `t_hdm_regaskdetails_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regaskresult definition

CREATE TABLE `t_hdm_regaskresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FASKRESULT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGASKRESULT_EMP` (`FBEMPLOYEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regaskresult_l definition

CREATE TABLE `t_hdm_regaskresult_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGASKRESULT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regbasebill definition

CREATE TABLE `t_hdm_regbasebill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREGSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDIRECTREGULAR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FEFFECTDATE` datetime DEFAULT NULL,
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FBDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FREGCATEGORYID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FPROBATIONUNIT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGCOMMENTID` bigint NOT NULL DEFAULT '0',
  `FREGBILLTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYDATE` datetime DEFAULT NULL,
  `FBPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FPOSTPONEDATE` datetime DEFAULT NULL,
  `FPROBATIONUNITEX` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWORKSUM` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FISMOBILE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEYEVENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROBATION` int NOT NULL DEFAULT '0',
  `FBADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPROBATIONEX` int NOT NULL DEFAULT '0',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FAFFRECORDID` bigint NOT NULL DEFAULT '0',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  `FPREACTUALDATE` datetime DEFAULT NULL,
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPOSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FSYNCSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-2',
  `FSTANDARDPOST` bigint NOT NULL DEFAULT '0',
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITTIME` datetime DEFAULT NULL,
  `FISVIEWFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGBASEBILL_BILLNO` (`FBILLNO`),
  KEY `IDX_HDM_REGBASEBILL_ORG` (`FORGID`),
  KEY `IDX_HDM_REGBASEBILL_ERFILEMAN` (`FERMANFILEID`),
  KEY `IDX_HDM_REGBASEBILL_EMPLOYEEID` (`FBEMPLOYEEID`),
  KEY `IDX_HDM_REGBASEBILL_FMID` (`FMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regbasebill_a definition

CREATE TABLE `t_hdm_regbasebill_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FBEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FBAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FBHRBUID` bigint NOT NULL DEFAULT '0',
  `FBATCHID` bigint NOT NULL DEFAULT '0',
  `FBJOBID` bigint NOT NULL DEFAULT '0',
  `FBDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FTERMREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMUSERID` bigint NOT NULL DEFAULT '0',
  `FTERMDATE` datetime DEFAULT NULL,
  `FPROBATIONREMARK` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTPONEASKRESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTPONEPROBATION` int NOT NULL DEFAULT '0',
  `FPOSTPONEPROBATIONUNIT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTPONEEXPLAIN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTPONEASKSTARTTIME` datetime DEFAULT NULL,
  `FPOSTPONEASKENDTIME` datetime DEFAULT NULL,
  `FMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGBASEBILL_ADMINORG` (`FBAFFILIATEADMINORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regbasebill_l definition

CREATE TABLE `t_hdm_regbasebill_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FKEYEVENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGBASEBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regbatch definition

CREATE TABLE `t_hdm_regbatch` (
  `FMID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFILIATIONORDID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMUSERID` bigint NOT NULL DEFAULT '0',
  `FTERMDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FMID`),
  KEY `IDX_HDM_REGBATCHH_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regbatch_l definition

CREATE TABLE `t_hdm_regbatch_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGBATCH_L` (`FMID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regbillevent definition

CREATE TABLE `t_hdm_regbillevent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEAPP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEENTITY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSOURCEBILLID` bigint NOT NULL DEFAULT '0',
  `FSOURCEBILLENTRY` bigint NOT NULL DEFAULT '0',
  `FEVENTCLS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTRATEGYID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGBILLEVENT` (`FSOURCEBILLID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regbillevent_l definition

CREATE TABLE `t_hdm_regbillevent_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGBILLEVENT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regcategory definition

CREATE TABLE `t_hdm_regcategory` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FREGCOMMENTID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGCATEGORY_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regcategory_l definition

CREATE TABLE `t_hdm_regcategory_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGCATEGORY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regcomment definition

CREATE TABLE `t_hdm_regcomment` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGCOMMENT` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regcomment_l definition

CREATE TABLE `t_hdm_regcomment_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGCOMMENT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamdetails definition

CREATE TABLE `t_hdm_regexamdetails` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRESULTID` bigint NOT NULL DEFAULT '0',
  `FBEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FROLE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMPERSONID` bigint NOT NULL DEFAULT '0',
  `FMESSAGEID` bigint NOT NULL DEFAULT '0',
  `FOPINION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMMENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCOMMENT` longtext COLLATE utf8mb4_unicode_ci,
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FISCOMMENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISNEWEST` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSCORE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FINITIATORID` bigint NOT NULL DEFAULT '0',
  `FINITIATETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINSHTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGEXAMDETAILS_EMP` (`FBEMPLOYEEID`),
  KEY `IDX_HDM_REGEXAMDETAILS_RESULT` (`FRESULTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamdetails_l definition

CREATE TABLE `t_hdm_regexamdetails_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGEXAMDETAILS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamdetails_r3 definition

CREATE TABLE `t_hdm_regexamdetails_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamitem definition

CREATE TABLE `t_hdm_regexamitem` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGTESTTYPEID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
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
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_EXAMITEM_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamitem_l definition

CREATE TABLE `t_hdm_regexamitem_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGEXAMITEM_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamitemexc definition

CREATE TABLE `t_hdm_regexamitemexc` (
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDATAID`,`FUSEORGID`),
  KEY `IDX_HDM_REGEXAMITEMEXC_U` (`FUSEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamitemusereg definition

CREATE TABLE `t_hdm_regexamitemusereg` (
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISASSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUSEORGID`,`FDATAID`),
  KEY `IDX_HDM_REGEXAMITEMUSEREG` (`FCREATEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamresult definition

CREATE TABLE `t_hdm_regexamresult` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FEXAMRESULT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCALCULATETYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMSCORE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGEXAMRESULT_EMP` (`FBEMPLOYEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamresult_l definition

CREATE TABLE `t_hdm_regexamresult_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGEXAMRESULT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamscore definition

CREATE TABLE `t_hdm_regexamscore` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FEXAMTYPEID` bigint NOT NULL DEFAULT '0',
  `FEXAMITEMID` bigint NOT NULL DEFAULT '0',
  `FSCORE` int NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGEXAMSCORE` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamtplrel definition

CREATE TABLE `t_hdm_regexamtplrel` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FREGEXAMTYPEID` bigint NOT NULL DEFAULT '0',
  `FREGEXAMITEMID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HDM_REGEXAMTPLREL_FID` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamtype definition

CREATE TABLE `t_hdm_regexamtype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_EXAMTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamtype_l definition

CREATE TABLE `t_hdm_regexamtype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGEXAMTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamtypeexc definition

CREATE TABLE `t_hdm_regexamtypeexc` (
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDATAID`,`FUSEORGID`),
  KEY `IDX_HDM_REGEXAMTYPEEXC_U` (`FUSEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regexamtypeusereg definition

CREATE TABLE `t_hdm_regexamtypeusereg` (
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISASSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUSEORGID`,`FDATAID`),
  KEY `IDX_HDM_REGEXAMTYPEUSEREG` (`FCREATEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regkeyevent definition

CREATE TABLE `t_hdm_regkeyevent` (
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
  `FDETAILCONTENT` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTDATE` datetime DEFAULT NULL,
  `FBEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FBIZOPERATORID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGKEYEVENT_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regkeyevent_l definition

CREATE TABLE `t_hdm_regkeyevent_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGKEYEVENT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regkeyevent_r3 definition

CREATE TABLE `t_hdm_regkeyevent_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_reglarresultfix definition

CREATE TABLE `t_hdm_reglarresultfix` (
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
  `FREGAPPLYBILLID` bigint NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIXREASON` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_RESULTFIX_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_reglarresultfix_l definition

CREATE TABLE `t_hdm_reglarresultfix_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIXREASON` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGLARRESULTFIX_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regnearpredate definition

CREATE TABLE `t_hdm_regnearpredate` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FERMAINFILEID` bigint NOT NULL DEFAULT '0',
  `FEARLYWARNLEVEL` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FSTDPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  `FPREREGULARDATE` datetime DEFAULT NULL,
  `FPROBATION` int NOT NULL DEFAULT '0',
  `FPROBATIONUNIT` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYDATE` datetime DEFAULT NULL,
  `FREGSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGDATE_FERMAINFILEID` (`FERMAINFILEID`),
  KEY `IDX_HDM_REGDATE_RULE` (`FORGID`,`FAFFILIATEADMINORGID`,`FEMPGROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regnearpredate_r3 definition

CREATE TABLE `t_hdm_regnearpredate_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regprocess definition

CREATE TABLE `t_hdm_regprocess` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FISDIRECTREG` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FREGSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FASKSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXAMSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISASKREMIND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISEXAMREMIND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FASKREMINDTIME` datetime DEFAULT NULL,
  `FEXAMREMINDTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISOVERDUE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FTRIALPERIODRSTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGPROCESS_EMPLOYEE` (`FBEMPLOYEEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regprocess_l definition

CREATE TABLE `t_hdm_regprocess_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGPROCESS_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regprocess_r3 definition

CREATE TABLE `t_hdm_regprocess_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regresultrevise definition

CREATE TABLE `t_hdm_regresultrevise` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FEMPENTRELID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REVISE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regresultrevise_l definition

CREATE TABLE `t_hdm_regresultrevise_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGRESULTREVISE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regtestmodel definition

CREATE TABLE `t_hdm_regtestmodel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCALCULATETYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISDEFAULT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGMODEL_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regtestmodel_l definition

CREATE TABLE `t_hdm_regtestmodel_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGTESTMODEL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regtestmodelexc definition

CREATE TABLE `t_hdm_regtestmodelexc` (
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDATAID`,`FUSEORGID`),
  KEY `IDX_HDM_REGTESTMODELEXC_U` (`FUSEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regtestmodelusereg definition

CREATE TABLE `t_hdm_regtestmodelusereg` (
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FDATAID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISASSIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUSEORGID`,`FDATAID`),
  KEY `IDX_HDM_REGTESTMODELUSEREG` (`FCREATEORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regtrace definition

CREATE TABLE `t_hdm_regtrace` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRACEID` bigint NOT NULL DEFAULT '0',
  `FOPTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_REGTRACE_EMP` (`FBEMPLOYEEID`),
  KEY `IDX_HDM_REGTRACE_TRACE` (`FTRACEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regtrace_l definition

CREATE TABLE `t_hdm_regtrace_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGTRACE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regtrace_r3 definition

CREATE TABLE `t_hdm_regtrace_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regwarnconfig definition

CREATE TABLE `t_hdm_regwarnconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FWARNINGEX` int NOT NULL DEFAULT '0',
  `FWARNINGUNITEX` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_WARNCONF_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_regwarnconfig_l definition

CREATE TABLE `t_hdm_regwarnconfig_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_REGWARNCONFIG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secback definition

CREATE TABLE `t_hdm_secback` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFRECORDID` bigint NOT NULL DEFAULT '0',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FBACKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOUNTRYBACKID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONBACKID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYBACKID` bigint NOT NULL DEFAULT '0',
  `FDEPTBACKID` bigint NOT NULL DEFAULT '0',
  `FPOSPATTERNBACK` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONBACKID` bigint NOT NULL DEFAULT '0',
  `FJOBBACKID` bigint NOT NULL DEFAULT '0',
  `FPOSTSTANDARDBACKID` bigint NOT NULL DEFAULT '0',
  `FBACKDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FDURATION` int NOT NULL DEFAULT '0',
  `FREACHDATE` datetime DEFAULT NULL,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FSECBACKREASONID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITNOTICSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOPNOTICSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTTIME` datetime DEFAULT NULL,
  `FGENBYTERMRECORD` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMPEMPBACKID` bigint NOT NULL DEFAULT '0',
  `FTERMINATERSN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATEUSER` bigint NOT NULL DEFAULT '0',
  `FTERMINATETIME` datetime DEFAULT NULL,
  `FSECONDMENTRECORDID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECBACK` (`FSECONDMENTRECORDID`,`FPERSONID`,`FERMANFILEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secback_a definition

CREATE TABLE `t_hdm_secback_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FORGINID` bigint NOT NULL DEFAULT '0',
  `FADMINORGINID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPINID` bigint NOT NULL DEFAULT '0',
  `FORGBACKID` bigint NOT NULL DEFAULT '0',
  `FADMINORGBACKID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPBACKID` bigint NOT NULL DEFAULT '0',
  `FDATASOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCEID` bigint NOT NULL DEFAULT '0',
  `FBILLTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFAIRACTIONID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYINID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONINID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYINID` bigint NOT NULL DEFAULT '0',
  `FDEPTINID` bigint NOT NULL DEFAULT '0',
  `FPOSPATTERNIN` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONINID` bigint NOT NULL DEFAULT '0',
  `FPOSTSTANDARDINID` bigint NOT NULL DEFAULT '0',
  `FJOBINID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPINID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECBACK_A` (`FDEPTINID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secback_l definition

CREATE TABLE `t_hdm_secback_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATERSN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECBACK_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secbackincharge definition

CREATE TABLE `t_hdm_secbackincharge` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECBACKINCHARGE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secbackinchargein definition

CREATE TABLE `t_hdm_secbackinchargein` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECBACKINCHARGEIN` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secbacksuperior definition

CREATE TABLE `t_hdm_secbacksuperior` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECBACKSUPERIOR` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secbacksuperiorin definition

CREATE TABLE `t_hdm_secbacksuperiorin` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECBACKSUPERIORIN` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secdbackreason definition

CREATE TABLE `t_hdm_secdbackreason` (
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECDBACKREASON_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secdbackreason_l definition

CREATE TABLE `t_hdm_secdbackreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECDBACKREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secdincharge definition

CREATE TABLE `t_hdm_secdincharge` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECDINCHARGE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secdinsuperior definition

CREATE TABLE `t_hdm_secdinsuperior` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECDINSUPERIOR` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secdoutcharge definition

CREATE TABLE `t_hdm_secdoutcharge` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECDOUTCHARGE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secdoutsuperior definition

CREATE TABLE `t_hdm_secdoutsuperior` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECDOUTSUPERIOR` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secdplanincha definition

CREATE TABLE `t_hdm_secdplanincha` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECDPLANINCHA` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secdplaninsup definition

CREATE TABLE `t_hdm_secdplaninsup` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECDPLANINSUP` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secdreason definition

CREATE TABLE `t_hdm_secdreason` (
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECDREASON_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secdreason_l definition

CREATE TABLE `t_hdm_secdreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECDREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secinincharge definition

CREATE TABLE `t_hdm_secinincharge` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECININCHARGE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secinsup definition

CREATE TABLE `t_hdm_secinsup` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECINSUP` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secondmentapply definition

CREATE TABLE `t_hdm_secondmentapply` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBMAINORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FAFFRECORDID` bigint NOT NULL DEFAULT '0',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  `FERMANFILEIFID` bigint NOT NULL DEFAULT '0',
  `FPERSONFIELD` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FBEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FBDEPEMPID` bigint NOT NULL DEFAULT '0',
  `FBMANAGESCOPEID` bigint NOT NULL DEFAULT '0',
  `FAEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FADEPEMPID` bigint NOT NULL DEFAULT '0',
  `FAMANAGESCOPEID` bigint NOT NULL DEFAULT '0',
  `FSECDSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECDREASONID` bigint NOT NULL DEFAULT '0',
  `FSECDOUTINORDER` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITNOTICSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOPNOTICSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTTIME` datetime DEFAULT NULL,
  `FCOUNTRYOUTID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYOUTID` bigint NOT NULL DEFAULT '0',
  `FDEPTOUTID` bigint NOT NULL DEFAULT '0',
  `FPOSPATTERNOUT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONOUTID` bigint NOT NULL DEFAULT '0',
  `FSTANDARDPOSOUTID` bigint NOT NULL DEFAULT '0',
  `FJOBOUTID` bigint NOT NULL DEFAULT '0',
  `FLEAVEDATE` datetime DEFAULT NULL,
  `FOUTSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGOUTID` bigint NOT NULL DEFAULT '0',
  `FADMINORGOUTID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPOUTID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPOUT` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYINID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYINID` bigint NOT NULL DEFAULT '0',
  `FDEPTINID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPINID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONINID` bigint NOT NULL DEFAULT '0',
  `FINRADIOGROUPFIELD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONINID` bigint NOT NULL DEFAULT '0',
  `FSTANDARDPOSINID` bigint NOT NULL DEFAULT '0',
  `FJOBINID` bigint NOT NULL DEFAULT '0',
  `FREACHDATE` datetime DEFAULT NULL,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FDURATION` int NOT NULL DEFAULT '0',
  `FINSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGINID` bigint NOT NULL DEFAULT '0',
  `FADMINORGINID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPINID` bigint NOT NULL DEFAULT '0',
  `FJOBINORGID` bigint NOT NULL DEFAULT '0',
  `FTERMINATERSN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASELOCATIONOUTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECONDMENTAPPLY` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secondmentapply_a definition

CREATE TABLE `t_hdm_secondmentapply_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPLANCOUNTRYINID` bigint NOT NULL DEFAULT '0',
  `FPLANCOMPANYINID` bigint NOT NULL DEFAULT '0',
  `FPLANDEPTINID` bigint NOT NULL DEFAULT '0',
  `FPLANCMPEMPIN` bigint NOT NULL DEFAULT '0',
  `FRADIOGROUPFIELD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANPOSITIONINID` bigint NOT NULL DEFAULT '0',
  `FPLANSTANDARDPOSINID` bigint NOT NULL DEFAULT '0',
  `FPLANJOBID` bigint NOT NULL DEFAULT '0',
  `FPLANREACHDATE` datetime DEFAULT NULL,
  `FPLANSECDREASON` bigint NOT NULL DEFAULT '0',
  `FPLANSTARTDATE` datetime DEFAULT NULL,
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FPLANDURATION` int NOT NULL DEFAULT '0',
  `FPLANJOBINORGID` bigint NOT NULL DEFAULT '0',
  `FWORKROLEID` bigint NOT NULL DEFAULT '0',
  `FINDARKPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FTERMINATETIME` datetime DEFAULT NULL,
  `FTERMINATEUSER` bigint NOT NULL DEFAULT '0',
  `FDATASOURCE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDATASOURCEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECONDMENTAPPLY_A` (`FTERMINATETIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secondmentapply_l definition

CREATE TABLE `t_hdm_secondmentapply_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATERSN` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECONDMENTAPPLY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secondmentrecord definition

CREATE TABLE `t_hdm_secondmentrecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSECONDMENTID` bigint NOT NULL DEFAULT '0',
  `FSECBACKID` bigint NOT NULL DEFAULT '0',
  `FSECCHANGENOWID` bigint NOT NULL DEFAULT '0',
  `FDEPEMPID` bigint NOT NULL DEFAULT '0',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGINID` bigint NOT NULL DEFAULT '0',
  `FADMINORGINID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPINID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYINID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPINID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYINID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYINID` bigint NOT NULL DEFAULT '0',
  `FDEPTINID` bigint NOT NULL DEFAULT '0',
  `FPOSPATTERNIN` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONINID` bigint NOT NULL DEFAULT '0',
  `FSTANDARDPOSINID` bigint NOT NULL DEFAULT '0',
  `FJOBINID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONINID` bigint NOT NULL DEFAULT '0',
  `FORGOUTID` bigint NOT NULL DEFAULT '0',
  `FADMINORGOUT` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPOUTID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYOUTID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYOUTID` bigint NOT NULL DEFAULT '0',
  `FDEPTOUTID` bigint NOT NULL DEFAULT '0',
  `FPOSPATTERNOUT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSITIONOUTID` bigint NOT NULL DEFAULT '0',
  `FSTANDARDPOSOUTID` bigint NOT NULL DEFAULT '0',
  `FJOBOUTID` bigint NOT NULL DEFAULT '0',
  `FCOUNTRYBACKID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYBACKID` bigint NOT NULL DEFAULT '0',
  `FDEPTBACKID` bigint NOT NULL DEFAULT '0',
  `FPOSPATTERNBACK` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTSTANDARDBACKID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONBACKID` bigint NOT NULL DEFAULT '0',
  `FJOBBACKID` bigint NOT NULL DEFAULT '0',
  `FLEAVEDATE` datetime DEFAULT NULL,
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FREACHDATE` datetime DEFAULT NULL,
  `FSECREASONID` bigint NOT NULL DEFAULT '0',
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FPLANDURATION` int NOT NULL DEFAULT '0',
  `FSECREASONEND` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECRECORD_ERMANFILEID` (`FERMANFILEID`),
  KEY `IDX_HDM_SECRECORD_DEPEMP` (`FDEPEMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secondmentrecord_a definition

CREATE TABLE `t_hdm_secondmentrecord_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINITDATASOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITBATCH` bigint NOT NULL DEFAULT '0',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBASELOCATIONBACKID` bigint NOT NULL DEFAULT '0',
  `FBACKDATE` datetime DEFAULT NULL,
  `FSECBACKREASON` bigint NOT NULL DEFAULT '0',
  `FDURATION` int NOT NULL DEFAULT '0',
  `FORGBACKID` bigint NOT NULL DEFAULT '0',
  `FADMINORGBACKID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPBACKID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEINID` bigint NOT NULL DEFAULT '0',
  `FTERMSOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMTASKSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMPEMPOUTID` bigint NOT NULL DEFAULT '0',
  `FINDARKPOSITIONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECRECORD_FORGBACKID` (`FORGBACKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secondmentrecord_l definition

CREATE TABLE `t_hdm_secondmentrecord_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSECREASONEND` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECONDMENTRECORD_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secondmentrecord_r3 definition

CREATE TABLE `t_hdm_secondmentrecord_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secoutincharge definition

CREATE TABLE `t_hdm_secoutincharge` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECOUTINCHARGE` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secoutsup definition

CREATE TABLE `t_hdm_secoutsup` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECOUTSUP` (`FID`,`FBASEDATAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secrecordbusevent definition

CREATE TABLE `t_hdm_secrecordbusevent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISBUSINESSEVENTBO` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  `FEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECEVENT_FBOID` (`FBOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secrecordchg definition

CREATE TABLE `t_hdm_secrecordchg` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAFFRECORDID` bigint NOT NULL DEFAULT '0',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FSECRECORDID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FCHANGESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPLANSTARTDATE` datetime DEFAULT NULL,
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FPLANDURATION` int NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FDURATION` int NOT NULL DEFAULT '0',
  `FTERMINATERSN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATEUSER` bigint NOT NULL DEFAULT '0',
  `FTERMINATETIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTTIME` datetime DEFAULT NULL,
  `FORGINID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPINID` bigint NOT NULL DEFAULT '0',
  `FADMINORGINID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPINID` bigint NOT NULL DEFAULT '0',
  `FORGBACKID` bigint NOT NULL DEFAULT '0',
  `FADMINORGBACKID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPBACKID` bigint NOT NULL DEFAULT '0',
  `FCMPEMPBACKID` bigint NOT NULL DEFAULT '0',
  `FSUBMITNOTICSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTOPNOTICSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECRECORDCHG` (`FERMANFILEID`,`FSECRECORDID`,`FPERSONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secrecordchg_a definition

CREATE TABLE `t_hdm_secrecordchg_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEPEMPID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECRECORDCHG_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secrecordchg_l definition

CREATE TABLE `t_hdm_secrecordchg_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATERSN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_SECRECORDCHG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secrecordevent definition

CREATE TABLE `t_hdm_secrecordevent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEVENTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTEWAY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTBATCHTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECRECORDEVENT_EVENTID` (`FCANCELEDEVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_secrecordhis definition

CREATE TABLE `t_hdm_secrecordhis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FVID` bigint NOT NULL DEFAULT '0',
  `FPRESTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREBSED` datetime DEFAULT NULL,
  `FPREBSLED` datetime DEFAULT NULL,
  `FBUSIEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_SECRECORDHIS_FVID` (`FVID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferbatch definition

CREATE TABLE `t_hdm_transferbatch` (
  `FMID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATIONORDID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOCUMENTNO` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOCUMENTNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FMID`),
  KEY `IDX_HDM_BATCH_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferbatch_l definition

CREATE TABLE `t_hdm_transferbatch_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOCUMENTNO` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDOCUMENTNAME` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_TRANSFERBATCH_L` (`FMID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferbill definition

CREATE TABLE `t_hdm_transferbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FMID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFERSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFERINSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFEROUTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDOVERSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINTERNATIONALTRANSFER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FWORKFLOWFLAG` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFERTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFERCLASSIFY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFERREASONID` bigint NOT NULL DEFAULT '0',
  `FORIGINATOR` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSFERSTAGE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTDATE` datetime DEFAULT NULL,
  `FTERMINATIONTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATIONREASONID` bigint NOT NULL DEFAULT '0',
  `FTERMINATIONPERSONID` bigint NOT NULL DEFAULT '0',
  `FTERMINATIONTIME` datetime DEFAULT NULL,
  `FCONFIRMPERSONID` bigint NOT NULL DEFAULT '0',
  `FCONFIRMTIME` datetime DEFAULT NULL,
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FTERMINATIONDESC` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FERMANFILEIFID` bigint NOT NULL DEFAULT '0',
  `FAFFRECORDID` bigint NOT NULL DEFAULT '0',
  `FTRANSFEREFFECTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTPATTERN` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUPERIORCHANNEL` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBPOSTPATTERN` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBMAINORGID` bigint NOT NULL DEFAULT '0',
  `FTRANSCLASSIFYID` bigint NOT NULL DEFAULT '0',
  `FENTRYVALIDATERESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYERRORMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FBJOBCLASSTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAJOBCLASSTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_FBILLNO` (`FBILLNO`),
  KEY `IDX_HDM_AFFRECORDID` (`FAFFRECORDID`),
  KEY `IDX_HDM_ERMANFILEID` (`FERMANFILEIFID`),
  KEY `IDX_HDM_FMID` (`FMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferbill_a definition

CREATE TABLE `t_hdm_transferbill_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FBCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FBORGID` bigint NOT NULL DEFAULT '0',
  `FBORGLONGHISID` bigint NOT NULL DEFAULT '0',
  `FBPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FBSTPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FBBASELOCATIONID` bigint NOT NULL DEFAULT '0',
  `FAPLANCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FAPLANCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAPLANORGID` bigint NOT NULL DEFAULT '0',
  `FAPLANORGLONGHISID` bigint NOT NULL DEFAULT '0',
  `FAPLANPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FAPLANSTPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FAPLANBASELOCATIONID` bigint NOT NULL DEFAULT '0',
  `FACOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FACOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAORGID` bigint NOT NULL DEFAULT '0',
  `FAORGLONGHISID` bigint NOT NULL DEFAULT '0',
  `FAPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FASTPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FABASELOCATIONID` bigint NOT NULL DEFAULT '0',
  `FAREALITYCOUNTRYID` bigint NOT NULL DEFAULT '0',
  `FAREALITYCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAREALITYORGID` bigint NOT NULL DEFAULT '0',
  `FAREALITYORGLONGHISID` bigint NOT NULL DEFAULT '0',
  `FAREALITYPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FAREALITYSTPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FAREALITYBASELOCATIONID` bigint NOT NULL DEFAULT '0',
  `FAREALITYDARKPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FAREALITYROLERELID` bigint NOT NULL DEFAULT '0',
  `FMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_TRANSFERBILL_A` (`FAREALITYORGID`),
  KEY `IDX_HDM_TRANSFERBILL_A_FMID` (`FMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferbill_b definition

CREATE TABLE `t_hdm_transferbill_b` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FBEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FBDEPEMPID` bigint NOT NULL DEFAULT '0',
  `FBMANAGESCOPEID` bigint NOT NULL DEFAULT '0',
  `FBHRBUID` bigint NOT NULL DEFAULT '0',
  `FBEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FBAFFILIATEORGID` bigint NOT NULL DEFAULT '0',
  `FBAFFILIATEORGLONGHISID` bigint NOT NULL DEFAULT '0',
  `FAEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FADEPEMPID` bigint NOT NULL DEFAULT '0',
  `FAMANAGESCOPEID` bigint NOT NULL DEFAULT '0',
  `FAHRBUID` bigint NOT NULL DEFAULT '0',
  `FAEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FAAFFILIATEORGID` bigint NOT NULL DEFAULT '0',
  `FAAFFILIATEORGLONGHISID` bigint NOT NULL DEFAULT '0',
  `FPLANDATE` datetime DEFAULT NULL,
  `FTRANSFERDATE` datetime DEFAULT NULL,
  `FREALITYDATE` datetime DEFAULT NULL,
  `FTRANSFEROUTLASTDATE` datetime DEFAULT NULL,
  `FTRANSFERINREGISTERDATE` datetime DEFAULT NULL,
  `FTIMEZONEID` bigint NOT NULL DEFAULT '0',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FBJOBID` bigint NOT NULL DEFAULT '0',
  `FBJOBCOMMITTEID` bigint NOT NULL DEFAULT '0',
  `FAJOBID` bigint NOT NULL DEFAULT '0',
  `FAJOBCOMMITTEEID` bigint NOT NULL DEFAULT '0',
  `FISMANAGECOMMISSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCOMMISSIONFILEDATE` datetime DEFAULT NULL,
  `FCOMMISSIONFILENUM` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSECURITYKEYPOSITION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FSECURITYKEYPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FAPLANHRID` bigint NOT NULL DEFAULT '0',
  `FAHRID` bigint NOT NULL DEFAULT '0',
  `FAREALITYHRID` bigint NOT NULL DEFAULT '0',
  `FBCMPID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FWORKINGPLANID` bigint NOT NULL DEFAULT '0',
  `FAREALITYJOBID` bigint NOT NULL DEFAULT '0',
  `FAPLANJOBID` bigint NOT NULL DEFAULT '0',
  `FTRANSFERTYPEID` bigint NOT NULL DEFAULT '0',
  `FMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_TRANSFERBILL_B` (`FREALITYDATE`),
  KEY `IDX_HDM_TRANSFERBILL_B_FMID` (`FMID`),
  KEY `IDX_HDM_TRANSFER_B_FBDEPEMPID` (`FBDEPEMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferbill_d definition

CREATE TABLE `t_hdm_transferbill_d` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBJOBGRADESCMID` bigint NOT NULL DEFAULT '0',
  `FAEVALUATIONJOBID` bigint NOT NULL DEFAULT '0',
  `FBJOBLEVELSCMID` bigint NOT NULL DEFAULT '0',
  `FBJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FBJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FAJOBLEVELSCMID` bigint NOT NULL DEFAULT '0',
  `FAJOBORGID` bigint NOT NULL DEFAULT '0',
  `FBJOBORGID` bigint NOT NULL DEFAULT '0',
  `FAJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FBEVALUATIONJOBID` bigint NOT NULL DEFAULT '0',
  `FAJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FAJOBGRADESCMID` bigint NOT NULL DEFAULT '0',
  `FAJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FAJOBFAMILYID` bigint NOT NULL DEFAULT '0',
  `FAJOBCLASSID` bigint NOT NULL DEFAULT '0',
  `FAJOBSEQID` bigint NOT NULL DEFAULT '0',
  `FMID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_TRANSFERBILL_D` (`FAJOBORGID`),
  KEY `IDX_HDM_TRANSFERBILL_D_FMID` (`FMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferbill_l definition

CREATE TABLE `t_hdm_transferbill_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FTERMINATIONDESC` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FENTRYERRORMSG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBJOBCLASSTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAJOBCLASSTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_TRANSFERBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferbill_r3 definition

CREATE TABLE `t_hdm_transferbill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferclassify definition

CREATE TABLE `t_hdm_transferclassify` (
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_TRARCLASSIFY_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferclassify_l definition

CREATE TABLE `t_hdm_transferclassify_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_TRANSFERCLASSIFY_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferreason definition

CREATE TABLE `t_hdm_transferreason` (
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_TRANSFERREASON_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transferreason_l definition

CREATE TABLE `t_hdm_transferreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_TRANSFERREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transfertermreason definition

CREATE TABLE `t_hdm_transfertermreason` (
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_TRANSFERTERMREASON` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transfertermreason_l definition

CREATE TABLE `t_hdm_transfertermreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_TRANSFERTERMREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transrevokereason definition

CREATE TABLE `t_hdm_transrevokereason` (
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
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_TRANSREVOKEREASON` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_transrevokereason_l definition

CREATE TABLE `t_hdm_transrevokereason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HDM_TRANSREVOKEREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hdm_upgraderecord definition

CREATE TABLE `t_hdm_upgraderecord` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSYSUSERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HDM_UPGRADE_SYSUSER` (`FSYSUSERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_activity definition

CREATE TABLE `t_hlcm_activity` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSIGNAPPLYID` bigint NOT NULL DEFAULT '0',
  `FATYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYINSID` bigint NOT NULL DEFAULT '0',
  `FFEEDBACK` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEADLINE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FPROCESSTIME` datetime DEFAULT NULL,
  `FPROCESSSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FERMANPERORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORORGID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_SIGNAPPLY` (`FSIGNAPPLYID`,`FACTIVITYID`),
  KEY `IDX_HLCM_ACTIVITYINS` (`FACTIVITYINSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_activity_r3 definition

CREATE TABLE `t_hlcm_activity_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_busievent definition

CREATE TABLE `t_hlcm_busievent` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEENTITY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FISBUSINESSEVENTBO` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  `FEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_BUSIEVENT` (`FSOURCEENTITY`,`FBOID`,`FEVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contract definition

CREATE TABLE `t_hlcm_contract` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FOLDCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FMAINCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROTOCOLTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNWAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRESIGNCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FPRESIGNCOMPANYVID` bigint NOT NULL DEFAULT '0',
  `FSIGNCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FSIGNCOMPANYVID` bigint NOT NULL DEFAULT '0',
  `FPERSONCARDTYPEID` bigint NOT NULL DEFAULT '0',
  `FPERSONCARD` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERMADDRESS` varchar(510) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCURADDRESS` varchar(510) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONMOBILE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FPERIODTYPEID` bigint NOT NULL DEFAULT '0',
  `FPERIOD` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FSIGNSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FMANAGESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FACTUALSTARTDATE` datetime DEFAULT NULL,
  `FACTUALENDDATE` datetime DEFAULT NULL,
  `FPLANENDDATE` datetime DEFAULT NULL,
  `FSIGNEDDATE` datetime DEFAULT NULL,
  `FRENEWCOUNT` int NOT NULL DEFAULT '0',
  `FPROBATIONSTARTDATE` datetime DEFAULT NULL,
  `FPROBATIONENDDATE` datetime DEFAULT NULL,
  `FPROBATIONPERIOD` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCANCELREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROBATIONUNIT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDATASTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBOID` bigint NOT NULL DEFAULT '0',
  `FHISVERSION` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERIODUNIT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_CONTRACT_FNUMBER` (`FNUMBER`),
  KEY `IDX_HLCM_FORLISTFILTER` (`FPROTOCOLTYPE`,`FCONTRACTSTATUS`,`FINITSTATUS`,`FISCURRENTVERSION`,`FDATASTATUS`),
  KEY `IDX_HLCM_BO` (`FBOID`),
  KEY `IDX_HLCM_EXPORT` (`FENDDATE`,`FSTARTDATE`,`FEMPNUMBER`),
  KEY `IDX_HLCM_MAINCON` (`FMAINCONTRACTID`),
  KEY `IDX_HLCM_OLDCON` (`FOLDCONTRACTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contract_l definition

CREATE TABLE `t_hlcm_contract_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEREASON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_CONTRACT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contract_p definition

CREATE TABLE `t_hlcm_contract_p` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMAINCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FINITBATCH` bigint NOT NULL DEFAULT '0',
  `FINITDATASOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBSED` datetime DEFAULT NULL,
  `FBSLED` datetime DEFAULT NULL,
  `FSOURCEVID` bigint NOT NULL DEFAULT '0',
  `FFIRSTBSED` datetime DEFAULT NULL,
  `FCHANGEBSED` datetime DEFAULT NULL,
  `FISMODIFY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBRED` datetime DEFAULT NULL,
  `FBRLED` datetime DEFAULT NULL,
  `FBRFD` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSIGNEDCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FDEPARTMENTID` bigint NOT NULL DEFAULT '0',
  `FPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FCHANGEDESCRIPTION` varchar(510) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FFEEDBACKMOBILE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKCARDNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKCARDTYPEID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONID` bigint NOT NULL DEFAULT '0',
  `FNATIONID` bigint NOT NULL DEFAULT '0',
  `FERMANORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORORGID` bigint NOT NULL DEFAULT '0',
  `FERMANPERORGID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELREASONTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_MAINCONTRACTID` (`FMAINCONTRACTID`),
  KEY `IDX_HLCM_ORGID` (`FERMANORGID`,`FADMINORORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contract_r3 definition

CREATE TABLE `t_hlcm_contract_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contractreason definition

CREATE TABLE `t_hlcm_contractreason` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_CONREASON_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contractreason_l definition

CREATE TABLE `t_hlcm_contractreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_CONTRACTREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contractreason_u definition

CREATE TABLE `t_hlcm_contractreason_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HLCM_CONTRACTREASON_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contractrel definition

CREATE TABLE `t_hlcm_contractrel` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FISSYSGENERATE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FERFILEID` bigint NOT NULL DEFAULT '0',
  `FERFILEVID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSRELID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_CONTRACTREL` (`FCONTRACTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttemp definition

CREATE TABLE `t_hlcm_contracttemp` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FSIGNWAY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGIONID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FECONTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FECONTEMPLATETYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_CONTRACTTEMP_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_HLCM_CONTRACTTEMP_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_HLCM_CONTRACTTEMP_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttemp_bit definition

CREATE TABLE `t_hlcm_contracttemp_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttemp_l definition

CREATE TABLE `t_hlcm_contracttemp_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_CONTRACTTEMP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttemp_r3 definition

CREATE TABLE `t_hlcm_contracttemp_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttemp_u definition

CREATE TABLE `t_hlcm_contracttemp_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HLCM_CONTRACTTEMP_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttempexc definition

CREATE TABLE `t_hlcm_contracttempexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HLCM_CONTRACTTEMPEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttemphis definition

CREATE TABLE `t_hlcm_contracttemphis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FSIGNWAY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGIONID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FECONTEMPLATEID` bigint NOT NULL DEFAULT '0',
  `FISCURRENTVERSION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FECONTEMPLATETYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_HLCM_CONTRTEMPHIS_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttemphis_l definition

CREATE TABLE `t_hlcm_contracttemphis_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_CONTRACTTEMPHIS_L` (`FVID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttemphis_r3 definition

CREATE TABLE `t_hlcm_contracttemphis_r3` (
  `fvid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttempusereg definition

CREATE TABLE `t_hlcm_contracttempusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HLCM_CONTRACTTEMPUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttext definition

CREATE TABLE `t_hlcm_contracttext` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTEXTHISID` bigint NOT NULL DEFAULT '0',
  `FTEXTID` bigint NOT NULL DEFAULT '0',
  `FOPDATE` datetime DEFAULT NULL,
  `FOPPERSONID` bigint NOT NULL DEFAULT '0',
  `FISDONE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIGNDATE` datetime DEFAULT NULL,
  `FREMARK` varchar(510) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYBOID` bigint NOT NULL DEFAULT '0',
  `FPRESIGNDOCURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_CONTRACT` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttype definition

CREATE TABLE `t_hlcm_contracttype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_CONTRACTTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttype_l definition

CREATE TABLE `t_hlcm_contracttype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_CONTRACTTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttypecat definition

CREATE TABLE `t_hlcm_contracttypecat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_CONTYPECAT_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_contracttypecat_l definition

CREATE TABLE `t_hlcm_contracttypecat_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_CONTRACTTYPECAT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_employer definition

CREATE TABLE `t_hlcm_employer` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCORPORATEORGID` bigint NOT NULL DEFAULT '0',
  `FRELATIONTYPEID` bigint NOT NULL DEFAULT '0',
  `FLEGALREPRESENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIFIEDCODE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADDRESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACTNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTALCODE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FINDEX` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FCONTACTNUMBER_ENP` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_EMPLOYER_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_employer_l definition

CREATE TABLE `t_hlcm_employer_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADDRESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_EMPLOYER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_employerentity definition

CREATE TABLE `t_hlcm_employerentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHANGEDATE` datetime DEFAULT NULL,
  `FCHANGEPERSONID` bigint NOT NULL DEFAULT '0',
  `FCHANGETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEREASON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHISID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HLCM_EMPLOYERENTITY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_employerhis definition

CREATE TABLE `t_hlcm_employerhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCORPORATEORGID` bigint NOT NULL DEFAULT '0',
  `FRELATIONTYPEID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCHANGEREASON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCHANGECON` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FLEGALREPRESENT` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FUNIFIEDCODE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADDRESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACTNUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTALCODE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACTNUMBER_ENP` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FVID`),
  KEY `IDX_HLCM_EMPLOYERHIS_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_employerhis_l definition

CREATE TABLE `t_hlcm_employerhis_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEREASON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADDRESS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_EMPLOYERHIS_L` (`FVID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_event definition

CREATE TABLE `t_hlcm_event` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FEVENTTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEXECUTEWAY` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTBATCHTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELEDEVENTID` bigint NOT NULL DEFAULT '0',
  `FOPERATEUSERID` bigint NOT NULL DEFAULT '0',
  `FOPERATEDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_EVENT` (`FEVENTBATCHTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_eventrelhis definition

CREATE TABLE `t_hlcm_eventrelhis` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FVID` bigint NOT NULL DEFAULT '0',
  `FPRESTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREBSED` datetime DEFAULT NULL,
  `FPREBSLED` datetime DEFAULT NULL,
  `FBUSIEVENTID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_EVENTRELHIS` (`FBUSIEVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_hiredperson definition

CREATE TABLE `t_hlcm_hiredperson` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSTARTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FEMPPOSRELID` bigint NOT NULL DEFAULT '0',
  `FEMPENTRELID` bigint NOT NULL DEFAULT '0',
  `FEMPNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FERMANORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORORGID` bigint NOT NULL DEFAULT '0',
  `FERMANPERORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_STARTSTATUS` (`FSTARTSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_hiredperson_l definition

CREATE TABLE `t_hlcm_hiredperson_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_HIREDPERSON_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_hiredperson_r3 definition

CREATE TABLE `t_hlcm_hiredperson_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_prewarn definition

CREATE TABLE `t_hlcm_prewarn` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FPROTOCOLTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWARNTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTARTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERMANORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORORGID` bigint NOT NULL DEFAULT '0',
  `FERMANPERORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_CONTRACTID` (`FCONTRACTID`),
  KEY `IDX_HLCM_PRETYPE` (`FPROTOCOLTYPE`,`FWARNTYPE`,`FSTARTSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_prewarn_l definition

CREATE TABLE `t_hlcm_prewarn_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONNAME` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_PREWARN_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_prewarn_r3 definition

CREATE TABLE `t_hlcm_prewarn_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_reasontypecat definition

CREATE TABLE `t_hlcm_reasontypecat` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_REASONTYPECAT_NUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_reasontypecat_l definition

CREATE TABLE `t_hlcm_reasontypecat_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_REASONTYPECAT_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_signbill definition

CREATE TABLE `t_hlcm_signbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FEMPNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONCARDTYPEID` bigint NOT NULL DEFAULT '0',
  `FPERSONCARDID` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEMPCOMPANYHISID` bigint NOT NULL DEFAULT '0',
  `FDEPTHISID` bigint NOT NULL DEFAULT '0',
  `FPOSTIONHISID` bigint NOT NULL DEFAULT '0',
  `FSTDPOSTIONHISID` bigint NOT NULL DEFAULT '0',
  `FCURADDRESS` varchar(510) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERMANENTADDRESS` varchar(510) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIONID` bigint NOT NULL DEFAULT '0',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONID` bigint NOT NULL DEFAULT '0',
  `FPERSONMOBILE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPROTOCOLTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNWAY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTTYPEID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FSIGNDATE` datetime DEFAULT NULL,
  `FPERIOD` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FSIGNCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FSIGNCOMPANYHISID` bigint NOT NULL DEFAULT '0',
  `FPRESIGNCOMPANYID` bigint NOT NULL DEFAULT '0',
  `FPRESIGNCOMPANYHISID` bigint NOT NULL DEFAULT '0',
  `FTERMINATEID` bigint NOT NULL DEFAULT '0',
  `FTERMINATEDATE` datetime DEFAULT NULL,
  `FTERMINATEPERSONID` bigint NOT NULL DEFAULT '0',
  `FTERMINATEREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELDATE` datetime DEFAULT NULL,
  `FCANCELREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FRENNEWSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNDEADLINE` datetime DEFAULT NULL,
  `FSIGNREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEADLINE` datetime DEFAULT NULL,
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FSIGNSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTTYPEID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTLIMITTYPEID` bigint NOT NULL DEFAULT '0',
  `FACTUALSIGNDATE` datetime DEFAULT NULL,
  `FPERIODUNIT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FJOBID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_SIGNBILL_BILLNO` (`FBILLNO`),
  KEY `IDX_HLCM_SIGNBILL_EMPST` (`FEMPNUMBER`,`FPROTOCOLTYPE`,`FHANDLESTATUS`),
  KEY `IDX_HLCM_SIGNBILL_OLDCON` (`FOLDCONTRACTID`),
  KEY `IDX_HLCM_SIGNBILL_STATUS` (`FBUSINESSTYPE`,`FPROTOCOLTYPE`,`FBILLSTATUS`,`FHANDLESTATUS`,`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_signbill_l definition

CREATE TABLE `t_hlcm_signbill_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEGALENTITYNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATEREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIGNREASON` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_SIGNBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_signbill_p definition

CREATE TABLE `t_hlcm_signbill_p` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSUBMITERID` bigint NOT NULL DEFAULT '0',
  `FSUBMITDATE` datetime DEFAULT NULL,
  `FMAINCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FPROBATIONENDDATE` datetime DEFAULT NULL,
  `FPROBATIONPERIOD` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FCHECKEID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTID` bigint NOT NULL DEFAULT '0',
  `FCHECKEDATE` datetime DEFAULT NULL,
  `FFEEDBACKMOBILE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKMOBILE_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FFEEDBACKADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKCARDNUMBER_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FFEEDBACKCARDNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKCARDTYPEID` bigint NOT NULL DEFAULT '0',
  `FRENEWCOUNT` int NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYPLANID` bigint NOT NULL DEFAULT '0',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITFINISHTIME` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FPROBATIONSTARTDATE` datetime DEFAULT NULL,
  `FPROBATIONUNIT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYINSID` bigint NOT NULL DEFAULT '0',
  `FERMANORGID` bigint NOT NULL DEFAULT '0',
  `FADMINORORGID` bigint NOT NULL DEFAULT '0',
  `FERMANPERORGID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTCATEGORY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCANCELREASONTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_BARCODE` (`FBARCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_signbill_r3 definition

CREATE TABLE `t_hlcm_signbill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_signtext definition

CREATE TABLE `t_hlcm_signtext` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FTEXTHISID` bigint NOT NULL DEFAULT '0',
  `FTEXTID` bigint NOT NULL DEFAULT '0',
  `FOPDATE` datetime DEFAULT NULL,
  `FOPPERSONID` bigint NOT NULL DEFAULT '0',
  `FISDONE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSIGNDATE` datetime DEFAULT NULL,
  `FREMARK` varchar(510) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPRESIGNDOCURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_SIGNAPPLY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_tempentity definition

CREATE TABLE `t_hlcm_tempentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FCHANGEDATE` datetime DEFAULT NULL,
  `FCHANGEPERSONID` bigint NOT NULL DEFAULT '0',
  `FCHANGEREASON` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FHISID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HLCM_TEMPENTITY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_terminatereason definition

CREATE TABLE `t_hlcm_terminatereason` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HLCM_TERM_NUM` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_terminatereason_l definition

CREATE TABLE `t_hlcm_terminatereason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HLCM_TERMINATEREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hlcm_terminatereason_u definition

CREATE TABLE `t_hlcm_terminatereason_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HLCM_TERMINATEREASON_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_acceptmanagedeta_r3 definition

CREATE TABLE `t_hom_acceptmanagedeta_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_acceptmanagedetail definition

CREATE TABLE `t_hom_acceptmanagedetail` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FONBOARDID` bigint NOT NULL DEFAULT '0',
  `FCOLLECTCONFIGHISID` bigint NOT NULL DEFAULT '0',
  `FPAGEKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISPASS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECHECKSTAND` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FEDUCERTID` bigint NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FENTITYKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_ACCEPTMANAGEEDETAIL` (`FONBOARDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_acceptmanagedetail_l definition

CREATE TABLE `t_hom_acceptmanagedetail_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECHECKSTAND` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_ACCEPTMANAGEDETAIL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_activityinfo definition

CREATE TABLE `t_hom_activityinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FONBRDID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYSCHEMEHISVID` bigint NOT NULL DEFAULT '0',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FFINISHDATE` datetime DEFAULT NULL,
  `FTOTALACTIVITNUM` int NOT NULL DEFAULT '0',
  `FWAITACTIVITNUM` int NOT NULL DEFAULT '0',
  `FFINISHACTIVITNUM` int NOT NULL DEFAULT '0',
  `FEARLYWARNACTIVITNUM` int NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FFLOWWORKSCHEMESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_ACTIVITYINFO_FONBRDID` (`FONBRDID`),
  KEY `IDX_HOM_AYINFO_FAYSCHEMEID` (`FACTIVITYSCHEMEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_activityinfo_r3 definition

CREATE TABLE `t_hom_activityinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_activityinfodeta_r3 definition

CREATE TABLE `t_hom_activityinfodeta_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_activityinfodetail definition

CREATE TABLE `t_hom_activityinfodetail` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYINSID` bigint NOT NULL DEFAULT '0',
  `FLATESTDEADLINE` datetime DEFAULT NULL,
  `FONBRDLINK` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLER` bigint NOT NULL DEFAULT '0',
  `FFINISHDATE` datetime DEFAULT NULL,
  `FREMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSEQ` int NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBINDBIZBILLID` bigint NOT NULL DEFAULT '0',
  `FONBRDID` bigint NOT NULL DEFAULT '0',
  `FLASTREMINDTIME` datetime DEFAULT NULL,
  `FISREMIND` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCANDIDATEHANDLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HOM_ACTIVITYINFODETAIL_FID` (`FID`),
  KEY `IDX_HOM_ACDETAIL_FACTIVITYID` (`FACTIVITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_activityinfodetail_l definition

CREATE TABLE `t_hom_activityinfodetail_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_ACTIVITYINFODETAIL_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_blacklistadades_r3 definition

CREATE TABLE `t_hom_blacklistadades_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_breakupreason definition

CREATE TABLE `t_hom_breakupreason` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBREAKUPTYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_BREAKUPREASON_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_breakupreason_l definition

CREATE TABLE `t_hom_breakupreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_BREAKUPREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_breakupreason_r3 definition

CREATE TABLE `t_hom_breakupreason_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_breakuptype definition

CREATE TABLE `t_hom_breakuptype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYSDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_BREAKUPTYPE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_breakuptype_l definition

CREATE TABLE `t_hom_breakuptype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYSDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_BREAKUPTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_breakuptype_r3 definition

CREATE TABLE `t_hom_breakuptype_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_collect definition

CREATE TABLE `t_hom_collect` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FCREATETIME` datetime DEFAULT NULL,
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISSUBMIT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FONBOARDID` bigint NOT NULL DEFAULT '0',
  `FCOLLECTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSUBMITPRO` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOLLECTCONFIGID` bigint NOT NULL DEFAULT '0',
  `FCOLLECTCONFIGHISID` bigint NOT NULL DEFAULT '0',
  `FTEMPLATERESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDTEXT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDEADLINE` datetime DEFAULT NULL,
  `FAPPROVEMODIFIER` bigint NOT NULL DEFAULT '0',
  `FAPPROVECREATOR` bigint NOT NULL DEFAULT '0',
  `FAPPROVECREATETIME` datetime DEFAULT NULL,
  `FAPPROVEMODIFYTIME` datetime DEFAULT NULL,
  `FCOLLECTINSID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEINSID` bigint NOT NULL DEFAULT '0',
  `FACCTEPTINSID` bigint NOT NULL DEFAULT '0',
  `FACCEPTCREATOR` bigint NOT NULL DEFAULT '0',
  `FACCEPTCREATETIME` datetime DEFAULT NULL,
  `FACCEPTMODIFIER` bigint NOT NULL DEFAULT '0',
  `FACCEPTMODIFYTIME` datetime DEFAULT NULL,
  `FACCEPTSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_COLLECT` (`FONBOARDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_collectfieldsub definition

CREATE TABLE `t_hom_collectfieldsub` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSID` bigint NOT NULL DEFAULT '0',
  `FREMARK` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_HOM_COLLECTFIELDSUB` (`FENTRYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_collectgroup definition

CREATE TABLE `t_hom_collectgroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCOLLECTACTIVITYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_COLLECTGROUP` (`FCOLLECTACTIVITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_collectgroupentry definition

CREATE TABLE `t_hom_collectgroupentry` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINFOGROUPID` bigint NOT NULL DEFAULT '0',
  `FINFOGROUPSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HOM_COLLECTGROUPENTRY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_collectlog definition

CREATE TABLE `t_hom_collectlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FAPPROVEID` bigint NOT NULL DEFAULT '0',
  `FAPPROVETIME` datetime DEFAULT NULL,
  `FOPERATETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOLLECTACTIVITYID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_COLLECTLOG` (`FCOLLECTACTIVITYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_collectlog_l definition

CREATE TABLE `t_hom_collectlog_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_COLLECTLOG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_collectlogentity definition

CREATE TABLE `t_hom_collectlogentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINFOGROUPID` bigint NOT NULL DEFAULT '0',
  `FINFOGROUPNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMULITITLE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HOM_COLLECTLOGENTITY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_collectlogentity_l definition

CREATE TABLE `t_hom_collectlogentity_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINFOGROUPNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FMULITITLE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_COLLECTLOGENTITY_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_collectlogsub definition

CREATE TABLE `t_hom_collectlogsub` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINFOGROUPFIELDID` bigint NOT NULL DEFAULT '0',
  `FENTRYFIELD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FENTRYREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_HOM_COLLECTLOGENTITYSUB` (`FENTRYID`,`FSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_collectlogsub_l definition

CREATE TABLE `t_hom_collectlogsub_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYFIELD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FENTRYREMARK` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_COLLECTLOGSUB_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_config definition

CREATE TABLE `t_hom_config` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBUSINESSKEY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSVALUE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBUSINESSTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLARGEBUSINESSVALUE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLARGEBUSINESSVALUE_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_CONFIG` (`FBUSINESSKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_config_l definition

CREATE TABLE `t_hom_config_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_CONFIG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_config_r3 definition

CREATE TABLE `t_hom_config_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_configentity definition

CREATE TABLE `t_hom_configentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FENTITYKEY` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYVALUE` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HOM_CONFIGENTITY` (`FENTITYKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_guidscheme definition

CREATE TABLE `t_hom_guidscheme` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_GUIDSCHEME_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_HOM_GUIDSCHEME_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_HOM_GUIDSCHEME_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_guidscheme_bit definition

CREATE TABLE `t_hom_guidscheme_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_guidscheme_l definition

CREATE TABLE `t_hom_guidscheme_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_GUIDSCHEME_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_guidscheme_r3 definition

CREATE TABLE `t_hom_guidscheme_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_guidscheme_u definition

CREATE TABLE `t_hom_guidscheme_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_GUIDSCHEME_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_guidschemeentity definition

CREATE TABLE `t_hom_guidschemeentity` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FGUIDECONFIGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HOM_GUIDSCHEMEENTITY` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_guidschemeexc definition

CREATE TABLE `t_hom_guidschemeexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_GUIDSCHEMEEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_guidschemeusereg definition

CREATE TABLE `t_hom_guidschemeusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_GUIDSCHEMEUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfh_r3 definition

CREATE TABLE `t_hom_infocollectconfh_r3` (
  `fvid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfhis definition

CREATE TABLE `t_hom_infocollectconfhis` (
  `FVID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGIONID` bigint NOT NULL DEFAULT '0',
  `FMUSTINPUT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPMUSTINPUT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FVID`),
  KEY `IDX_CONFIGNAMEHIS` (`FNAME`),
  KEY `IDX_T_HOM_INFOCOLLECTCONFHIS_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_HOM_INFOCOLLECTCONFHIS_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfhis_bit definition

CREATE TABLE `t_hom_infocollectconfhis_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfhis_l definition

CREATE TABLE `t_hom_infocollectconfhis_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_INFOCOLLECTCONFHIS_L` (`FVID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfhis_u definition

CREATE TABLE `t_hom_infocollectconfhis_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_INFOCOLLECTCONFHIS_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfhisexc definition

CREATE TABLE `t_hom_infocollectconfhisexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_INFOCOLLECTCONFHISEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfhisusereg definition

CREATE TABLE `t_hom_infocollectconfhisusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_INFOCOLLECTCONFHISUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfi_r3 definition

CREATE TABLE `t_hom_infocollectconfi_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfig definition

CREATE TABLE `t_hom_infocollectconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREGIONID` bigint NOT NULL DEFAULT '0',
  `FMUSTINPUT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FISSYSPRESET` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FSIMPLENAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPMUSTINPUT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_NAME` (`FNAME`),
  KEY `IDX_T_HOM_INFOCOLLECTCONFIG_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_HOM_INFOCOLLECTCONFIG_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfig_bit definition

CREATE TABLE `t_hom_infocollectconfig_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfig_l definition

CREATE TABLE `t_hom_infocollectconfig_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_INFOCOLLECTCONFIG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfig_u definition

CREATE TABLE `t_hom_infocollectconfig_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_INFOCOLLECTCONFIG_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfigexc definition

CREATE TABLE `t_hom_infocollectconfigexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_INFOCOLLECTCONFIGEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infocollectconfigusereg definition

CREATE TABLE `t_hom_infocollectconfigusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_INFOCOLLECTCONFIGUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infoconfcert definition

CREATE TABLE `t_hom_infoconfcert` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FISCHECK` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTTYPEID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HOM_INFOCONFCERT` (`FCERTTYPEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infoconfcerthis definition

CREATE TABLE `t_hom_infoconfcerthis` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FISCHECK` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTTYPEID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HOM_INFOCONFCERTHIS` (`FCERTTYPEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infoconfigfield definition

CREATE TABLE `t_hom_infoconfigfield` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDMUSTINPUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFIELDAPPROVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFIELDREMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDRECHECK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFIELDCOUNT` bigint NOT NULL DEFAULT '0',
  `FFIELDNAMESHOW` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDRECHECKSTAND` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_FIELDNAME` (`FFIELDNAMESHOW`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infoconfigfield_l definition

CREATE TABLE `t_hom_infoconfigfield_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDREMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDNAMESHOW` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDRECHECKSTAND` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_INFOCONFIGFIELD_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infoconfigfieldhis definition

CREATE TABLE `t_hom_infoconfigfieldhis` (
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDMUSTINPUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFIELDAPPROVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFIELDREMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDRECHECK` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFIELDCOUNT` bigint NOT NULL DEFAULT '0',
  `FFIELDNAMESHOW` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDRECHECKSTAND` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FDETAILID`),
  KEY `IDX_HOM_INFOCONFIGFIELDHIS` (`FFIELDREMARK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infoconfigfieldhis_l definition

CREATE TABLE `t_hom_infoconfigfieldhis_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDETAILID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDREMARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDNAMESHOW` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDRECHECKSTAND` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_INFOCONFIGFIELDHIS_L` (`FDETAILID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infogroup definition

CREATE TABLE `t_hom_infogroup` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINFOGROUPNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTATUS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FMULTIPLEENTITY` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FDISPLAYTIPS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FGROUPOCR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FGROUPMUSTINPUT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FIMGKEY` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_INFOGROUP` (`FINFOGROUPNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infogroup_l definition

CREATE TABLE `t_hom_infogroup_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINFOGROUPNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FDISPLAYTIPS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_INFOGROUP_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infogroup_r3 definition

CREATE TABLE `t_hom_infogroup_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infogroupconfig definition

CREATE TABLE `t_hom_infogroupconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINFOGROUPID` bigint NOT NULL DEFAULT '0',
  `FINFOGROUPNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINFOAPPROVE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINFOMUSTINPUT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMUSTINPUT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_INFOGROUPCONFIG` (`FINFOGROUPNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infogroupconfig_l definition

CREATE TABLE `t_hom_infogroupconfig_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINFOGROUPNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_INFOGROUPCONFIG_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infogroupconfighis definition

CREATE TABLE `t_hom_infogroupconfighis` (
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FVID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FINFOGROUPID` bigint NOT NULL DEFAULT '0',
  `FINFOGROUPNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FINFOAPPROVE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINFOMUSTINPUT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMUSTINPUT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HOM_INFOGROUPCONFIGHIS` (`FINFOGROUPNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infogroupconfighis_l definition

CREATE TABLE `t_hom_infogroupconfighis_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINFOGROUPNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_INFOGROUPCONFIGHIS_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infogroupfield definition

CREATE TABLE `t_hom_infogroupfield` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FSEQ` int NOT NULL DEFAULT '0',
  `FFIELDNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FPAGEID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDTYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPROVESHOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLISTSHOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLISTSHOWFIRSTLINE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFIELDREMARK` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FFIELDOCR` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`FENTRYID`),
  KEY `IDX_HOM_INFOGROUPFIELD` (`FFIELDNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infogroupfield_l definition

CREATE TABLE `t_hom_infogroupfield_l` (
  `FPKID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTRYID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFIELDNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFIELDREMARK` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_INFOGROUPFIELD_L` (`FENTRYID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_infogroupfield_r3 definition

CREATE TABLE `t_hom_infogroupfield_r3` (
  `fentryid` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`fentryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_integratelog definition

CREATE TABLE `t_hom_integratelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FONBRDID` bigint NOT NULL DEFAULT '0',
  `FSENDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDTIME` datetime DEFAULT NULL,
  `FSENDTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDTEXT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FCONSUMESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKTEXT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFEEDBACKTEXT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FRETRYNUM` int NOT NULL DEFAULT '0',
  `FCANRETRYNUM` int NOT NULL DEFAULT '0',
  `FINTEGRATESPOT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTEGRATEMETHOD` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATETIME` datetime DEFAULT NULL,
  `FCREATOR` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FMODIFIER` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_INTEGRATELOG_ONBRD` (`FONBRDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_integratelog_r3 definition

CREATE TABLE `t_hom_integratelog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_leader definition

CREATE TABLE `t_hom_leader` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_LEADER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdbill definition

CREATE TABLE `t_hom_onbrdbill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEENO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FAADMINORGID` bigint NOT NULL DEFAULT '0',
  `FACOMPANYID` bigint NOT NULL DEFAULT '0',
  `FAJOBSCMORGID` bigint NOT NULL DEFAULT '0',
  `FAJOBSCMID` bigint NOT NULL DEFAULT '0',
  `FAJOBID` bigint NOT NULL DEFAULT '0',
  `FAJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FAJOBGRADEID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONID` bigint NOT NULL DEFAULT '0',
  `FPROBATIONTIME` int NOT NULL DEFAULT '0',
  `FPERPROBATIONTIME` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FVALIDUNTIL` datetime DEFAULT NULL,
  `FALABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FALABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FCANDIDATEID` bigint NOT NULL DEFAULT '0',
  `FENROLLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FSTARTTIME` datetime DEFAULT NULL,
  `FPROCESSSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISINVALID` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBREAKUPDATE` datetime DEFAULT NULL,
  `FBREAKUPTYPEID` bigint NOT NULL DEFAULT '0',
  `FBREAKUPREASONID` bigint NOT NULL DEFAULT '0',
  `FBREAKUPREMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISHIGHEND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISSPECIALTALENT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISFOREIGN` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISRDPERSONNEL` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FHRBUID` bigint NOT NULL DEFAULT '0',
  `FAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FROLEID` bigint NOT NULL DEFAULT '0',
  `FROLETYPEID` bigint NOT NULL DEFAULT '0',
  `FISRESPONSIBLE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FRULESID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISELIGIBLEONBOARD` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCHECKCITYID` bigint NOT NULL DEFAULT '0',
  `FCHECKHOSPITAL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKDATE` datetime DEFAULT NULL,
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FCANDIDATENUMBER` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  UNIQUE KEY `IDX_HOM_ONBRDBILL_FCANDIDATEID` (`FCANDIDATEID`),
  KEY `IDX_HOM_ONBRDBILL_FCANNUMBER` (`FCANDIDATENUMBER`),
  KEY `IDX_HOM_ONBRDBILL_FEMPLOYEENO` (`FEMPLOYEENO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdbill_a definition

CREATE TABLE `t_hom_onbrdbill_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGENDERID` bigint NOT NULL DEFAULT '0',
  `FPHONE` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPEREMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTIFICATETYPEID` bigint NOT NULL DEFAULT '0',
  `FCERTIFICATENUMBER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTIFICATENUMBER_ENP` longtext COLLATE utf8mb4_unicode_ci,
  `FPICTUREFIELD` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTERPRISEID` bigint NOT NULL DEFAULT '0',
  `FONBRDTYPEID` bigint NOT NULL DEFAULT '0',
  `FMANAGEMENTSCOPEID` bigint NOT NULL DEFAULT '0',
  `FDATASOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FRECRUITTYPEID` bigint NOT NULL DEFAULT '0',
  `FRECRUITSOURCEID` bigint NOT NULL DEFAULT '0',
  `FRESUMENO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOFFERNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREENROLLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPREENEFFECTDATE` datetime DEFAULT NULL,
  `FPREENONBRDTCITYID` bigint NOT NULL DEFAULT '0',
  `FCHECKINSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEFFECTDATE` datetime DEFAULT NULL,
  `FONBRDTCITYID` bigint NOT NULL DEFAULT '0',
  `FCHECKINTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNOCHECKINTIMES` int NOT NULL DEFAULT '0',
  `FISCHECKINEXCEPTION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FEXCEPTIONCAUSE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAFFRECORDID` bigint NOT NULL DEFAULT '0',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  `FWORKCALENDARID` bigint NOT NULL DEFAULT '0',
  `FTEACHERID` bigint NOT NULL DEFAULT '0',
  `FDARKPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FTRANSDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_ONBRDBILL_A_FRESUMENO` (`FRESUMENO`),
  KEY `IDX_HOM_ONBRDBILL_A_FPHONE` (`FPHONE`),
  KEY `IDX_HOM_ONBRDBILL_A_FBILLNO` (`FBILLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdbill_b definition

CREATE TABLE `t_hom_onbrdbill_b` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPREINSID` bigint NOT NULL DEFAULT '0',
  `FCHECKININSID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTLOCATIONID` bigint NOT NULL DEFAULT '0',
  `FISPROBATION` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAPOSITIONTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTDPOSITIONID` bigint NOT NULL DEFAULT '0',
  `FURL` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLEADERTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSYNCHSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `FLOGINCONFIG` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNATIONALITYID` bigint NOT NULL DEFAULT '0',
  `FJOBSEQID` bigint NOT NULL DEFAULT '0',
  `FJOBFAMILYID` bigint NOT NULL DEFAULT '0',
  `FJOBCLASSID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELSCMID` bigint NOT NULL DEFAULT '0',
  `FJOBGRADESCMID` bigint NOT NULL DEFAULT '0',
  `FVIEWTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FPERSONFIELDID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEENOSCHEME` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSERVICEAGESCHEME` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOLDEMPLOYEENO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUTOMATICINFO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FAGAINCHECKRESULTS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISMATCHCONTISCHEMA` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FPERSONINDEXID` bigint NOT NULL DEFAULT '0',
  `FMID` bigint NOT NULL DEFAULT '0',
  `FISREPLACENUMBER` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFIRSTEMTSTARTDATE` datetime DEFAULT NULL,
  `FEMPLOYEENOTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_ONBRDBILL_B` (`FPREINSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdbill_l definition

CREATE TABLE `t_hom_onbrdbill_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FBREAKUPREMARKS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHECKHOSPITAL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_ONBRDBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdbill_r3 definition

CREATE TABLE `t_hom_onbrdbill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdguideconfig definition

CREATE TABLE `t_hom_onbrdguideconfig` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FMAILTITLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMPICTURE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBAKIMAGERAD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGUIDECONTENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGUIDECONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FABSTRACTPICTURE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBAKIMAGEABSTRACT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABSTRACTTITLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSHOWMODIFYTIME` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUTHOR` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELECTABSTRACTPICTURE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSELECTCUSTOMPICTURE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_ONBRDGUIDECONFIG` (`FNUMBER`),
  KEY `IDX_T_HOM_ONBRDGUIDECONFIG_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_HOM_ONBRDGUIDECONFIG_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdguideconfig_bit definition

CREATE TABLE `t_hom_onbrdguideconfig_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdguideconfig_l definition

CREATE TABLE `t_hom_onbrdguideconfig_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAILTITLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FABSTRACTTITLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUTHOR` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_ONBRDGUIDECONFIG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdguideconfig_r3 definition

CREATE TABLE `t_hom_onbrdguideconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdguideconfig_u definition

CREATE TABLE `t_hom_onbrdguideconfig_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_ONBRDGUIDECONFIG_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdguideconfigexc definition

CREATE TABLE `t_hom_onbrdguideconfigexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_ONBRDGUIDECONFIGEXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdguideconfigusereg definition

CREATE TABLE `t_hom_onbrdguideconfigusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_ONBRDGUIDECONFIGUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdinvite definition

CREATE TABLE `t_hom_onbrdinvite` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FONBRDID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FREMINDNUM` int NOT NULL DEFAULT '0',
  `FSENDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDMODE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDTIME` datetime DEFAULT NULL,
  `FWELCOMELETTERTPLID` bigint NOT NULL DEFAULT '0',
  `FGUIDETPLID` bigint NOT NULL DEFAULT '0',
  `FLOGINSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLOGINTIME` datetime DEFAULT NULL,
  `FLOGINEQUIPMENT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSENDINVITEMESSAGETPLID` bigint NOT NULL DEFAULT '0',
  `FLOGINSCHEMEID` bigint NOT NULL DEFAULT '0',
  `FLOGINREMINDMESSAGETPLID` bigint NOT NULL DEFAULT '0',
  `FWELCOMELETTERSENDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVITEMESSAGESENDSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINVITEINSID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_ONBRDINVITE_FONBRDID` (`FONBRDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_onbrdinvite_r3 definition

CREATE TABLE `t_hom_onbrdinvite_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_place definition

CREATE TABLE `t_hom_place` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
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
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCITYID` bigint NOT NULL DEFAULT '0',
  `FADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSETGPSINFO` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISDEFAULTADDRESS` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FLONGITUDE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FLATITUDE` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FEFFECTRADIUS` int NOT NULL DEFAULT '0',
  `FLARGETEXTFIELD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FLARGETEXTFIELD_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_PLACE_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_place_l definition

CREATE TABLE `t_hom_place_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_PLACE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_place_r3 definition

CREATE TABLE `t_hom_place_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_remindinfo definition

CREATE TABLE `t_hom_remindinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINDUCTIONINVITEID` bigint NOT NULL DEFAULT '0',
  `FOPERATORID` bigint NOT NULL DEFAULT '0',
  `FREMINDDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_REMINDINFO_FINVITEID` (`FINDUCTIONINVITEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_remindinfo_r3 definition

CREATE TABLE `t_hom_remindinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_uploadconfig definition

CREATE TABLE `t_hom_uploadconfig` (
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
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTITYNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKIDFIELD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FATTACHMENTPANEL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPICTUREFILFIELDS` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTIFICATETYPEID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_UPLOADCONFIG_FNUMBER` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_uploadconfig_l definition

CREATE TABLE `t_hom_uploadconfig_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_UPLOADCONFIG_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_uploadconfig_r3 definition

CREATE TABLE `t_hom_uploadconfig_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_welcomeletter definition

CREATE TABLE `t_hom_welcomeletter` (
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
  `FBITINDEX` int NOT NULL DEFAULT '0',
  `FSOURCEBITINDEX` int NOT NULL DEFAULT '0',
  `FINDEX` int NOT NULL DEFAULT '0',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCTRLSTRATEGY` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATEORGID` bigint NOT NULL DEFAULT '0',
  `FMAILTITLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCUSTOMPICTURE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBAKIMAGERAD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWELCOMECONTENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWELCOMECONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  `FSOURCEDATAID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FUSEORGID` bigint NOT NULL DEFAULT '0',
  `FSELECTCUSTOMPICTURE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HOM_WELCOMELETTER_FNUMBER` (`FNUMBER`),
  KEY `IDX_T_HOM_WELCOMELETTER_CREATEORG` (`FCREATEORGID`),
  KEY `IDX_T_HOM_WELCOMELETTER_MASTER` (`FMASTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_welcomeletter_bit definition

CREATE TABLE `t_hom_welcomeletter_bit` (
  `FORGID` bigint NOT NULL,
  `FDATA` longblob NOT NULL,
  PRIMARY KEY (`FORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_welcomeletter_l definition

CREATE TABLE `t_hom_welcomeletter_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FMAILTITLE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HOM_WELCOMELETTER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_welcomeletter_r3 definition

CREATE TABLE `t_hom_welcomeletter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_welcomeletter_u definition

CREATE TABLE `t_hom_welcomeletter_u` (
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_WELCOMELETTER_U_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_welcomeletterexc definition

CREATE TABLE `t_hom_welcomeletterexc` (
  `FDataID` bigint NOT NULL,
  `FNewDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FUseOrgID` bigint NOT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_WELCOMELETTEREXC_UO` (`FUseOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_hom_welcomeletterusereg definition

CREATE TABLE `t_hom_welcomeletterusereg` (
  `FUseOrgID` bigint NOT NULL,
  `FDataID` bigint NOT NULL,
  `FCreateOrgID` bigint DEFAULT NULL,
  `FAdminOrgID` bigint DEFAULT NULL,
  `FCtrlStrategy` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FIsAssign` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAssignOrgID` bigint DEFAULT NULL,
  `FMASTERID` bigint DEFAULT NULL,
  PRIMARY KEY (`FDataID`,`FUseOrgID`),
  KEY `IDX_T_HOM_WELCOMELETTERUSEREG_D` (`FDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_admintroletter definition

CREATE TABLE `t_htm_admintroletter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FQUITAPPLYID` bigint NOT NULL DEFAULT '0',
  `FDEADLINE` datetime DEFAULT NULL,
  `FACTIVITYINSID` bigint NOT NULL DEFAULT '0',
  `FISSUANCETIMES` int NOT NULL DEFAULT '0',
  `FTRIGGERTIME` datetime DEFAULT NULL,
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILETRANSDEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILERECDEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILERECADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEREASON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENTID` bigint NOT NULL DEFAULT '0',
  `FISSUANCETYPE` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMPHISID` bigint NOT NULL DEFAULT '0',
  `FDEPHISID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` bigint NOT NULL DEFAULT '0',
  `FISEFFECTIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FFINISHDATE` datetime DEFAULT NULL,
  `FLASTOPERATE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FOPERATELOGID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_ADMTRO_FAPPID` (`FQUITAPPLYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_admintroletter_l definition

CREATE TABLE `t_htm_admintroletter_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILETRANSDEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILERECDEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILERECADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_ADMINTROLETTER_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_admintroletter_r3 definition

CREATE TABLE `t_htm_admintroletter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_admintroletterlo_r3 definition

CREATE TABLE `t_htm_admintroletterlo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_admintroletterlog definition

CREATE TABLE `t_htm_admintroletterlog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FTROLETTERID` bigint NOT NULL DEFAULT '0',
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FHANDLETIME` datetime DEFAULT NULL,
  `FISSUANCETYPE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILETRANSDEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILERECDEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILERECADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCHANGEREASON` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAGENTID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_ADMTRO_FTROID` (`FTROLETTERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_admintroletterlog_l definition

CREATE TABLE `t_htm_admintroletterlog_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILETRANSDEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILERECDEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILERECADDR` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_ADMINTROLETTERLOG_L` (`FLOCALEID`,`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_certifymanage definition

CREATE TABLE `t_htm_certifymanage` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FQUITAPPLYID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` bigint NOT NULL DEFAULT '0',
  `FISEFFECTIVE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDEADLINE` datetime DEFAULT NULL,
  `FOPERATELOGID` bigint NOT NULL DEFAULT '0',
  `FLASTOPERATE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISSUANCETIMES` int NOT NULL DEFAULT '0',
  `FCMPHISID` bigint NOT NULL DEFAULT '0',
  `FDEPHISID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYINSID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FREMINDTIME` datetime DEFAULT NULL,
  `FISREMIND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FFINISHDATE` datetime DEFAULT NULL,
  `FISNONCOMPETE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTRIGGERTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_CERTIFYMANAGE_B` (`FQUITAPPLYID`,`FACTIVITYID`),
  KEY `IDX_HTM_CERTIFYMANAGE_O` (`FACTIVITYID`),
  KEY `IDX_HTM_CERTIFYMANAGE_P` (`FPERSONID`,`FACTIVITYID`),
  KEY `IDX_HTM_CERTIFYMANAGE_I` (`FACTIVITYINSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_certifymanage_r3 definition

CREATE TABLE `t_htm_certifymanage_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_certifymanagelog definition

CREATE TABLE `t_htm_certifymanagelog` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCERTIFYHANDLEID` bigint NOT NULL DEFAULT '0',
  `FCMPHISID` bigint NOT NULL DEFAULT '0',
  `FPOSHISID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTENDDATE` datetime DEFAULT NULL,
  `FSTARTTIME` datetime DEFAULT NULL,
  `FENDTIME` datetime DEFAULT NULL,
  `FISNONCOMPETE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FCERTIFICATETYPEID` bigint NOT NULL DEFAULT '0',
  `FISSUANCETYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FENTERDATE` datetime DEFAULT NULL,
  `FHANDLETIME` datetime DEFAULT NULL,
  `FHANDLERID` bigint NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX__HTM_CERTIFYMANAGELOG` (`FCERTIFYHANDLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_certifymanagelog_r3 definition

CREATE TABLE `t_htm_certifymanagelog_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_coophandle definition

CREATE TABLE `t_htm_coophandle` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FQUITAPPLYID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FCMPHISID` bigint NOT NULL DEFAULT '0',
  `FDEPHISID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` bigint NOT NULL DEFAULT '0',
  `FCOOPSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTLESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOORDINATORID` bigint NOT NULL DEFAULT '0',
  `FHANDLESYSTEMID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYINSID` bigint NOT NULL DEFAULT '0',
  `FFEEDBACKRESULT` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDLEOPINION` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPENSATIONPLAN` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPENSATIONDETAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHANDOVEROPINIONS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSTARTDATE` datetime DEFAULT NULL,
  `FENDDATE` datetime DEFAULT NULL,
  `FDEADLINE` datetime DEFAULT NULL,
  `FFINISHDATE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FREMINDTIME` datetime DEFAULT NULL,
  `FISREMIND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISNONCOMPETE` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FWORKHANDOVERID` bigint NOT NULL DEFAULT '0',
  `FTRIGGERTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_COOPHANDLE_B` (`FQUITAPPLYID`,`FACTIVITYID`),
  KEY `IDX_HTM_COOPHANDLE_A` (`FACTIVITYID`),
  KEY `IDX_HTM_COOPHANDLE_P` (`FPERSONID`,`FACTIVITYID`),
  KEY `IDX_HTM_COOPHANDLE_I` (`FACTIVITYINSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_coophandle_l definition

CREATE TABLE `t_htm_coophandle_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCOMPENSATIONDETAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_COOPHANDLE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_coophandle_r3 definition

CREATE TABLE `t_htm_coophandle_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_delayreason definition

CREATE TABLE `t_htm_delayreason` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_DELAYREASON` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_delayreason_l definition

CREATE TABLE `t_htm_delayreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_DELAYREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_filetransletter definition

CREATE TABLE `t_htm_filetransletter` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FQUITAPPLYID` bigint NOT NULL DEFAULT '0',
  `FDEADLINE` datetime DEFAULT NULL,
  `FFILETRANSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYINSID` bigint NOT NULL DEFAULT '0',
  `FTRIGGERTIME` datetime DEFAULT NULL,
  `FFILERECADDR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFILERECDEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPOSTCODE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSPARORGNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMPHISID` bigint NOT NULL DEFAULT '0',
  `FDEPHISID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` bigint NOT NULL DEFAULT '0',
  `FFINISHDATE` datetime DEFAULT NULL,
  `FDAYSREMAINING` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_FILETRANSLETTER_QUITID` (`FQUITAPPLYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_filetransletter_l definition

CREATE TABLE `t_htm_filetransletter_l` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFILERECADDR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `FFILERECDEP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTACT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTRANSPARORGNAME` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_FILETRANSLETTER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_filetransletter_r3 definition

CREATE TABLE `t_htm_filetransletter_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_interviewanswer definition

CREATE TABLE `t_htm_interviewanswer` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWHANDLEID` bigint NOT NULL DEFAULT '0',
  `FANSWERONE` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERONEDETAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERTWO` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERTWODETAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERTHREE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERFOUR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERFIVE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERFIVEDETAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_INTERVIEWANSWER` (`FINTERVIEWHANDLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_interviewanswer_l definition

CREATE TABLE `t_htm_interviewanswer_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERONEDETAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERTWODETAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERTHREE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERFOUR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FANSWERFIVEDETAIL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_INTERVIEWANSWER_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_interviewhandle definition

CREATE TABLE `t_htm_interviewhandle` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FQUITAPPLYID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FCMPHISID` bigint NOT NULL DEFAULT '0',
  `FDEPHISID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYID` bigint NOT NULL DEFAULT '0',
  `FINTERVIEWSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYINSID` bigint NOT NULL DEFAULT '0',
  `FQUESTIONSOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FFINISHDATE` datetime DEFAULT NULL,
  `FDEADLINE` datetime DEFAULT NULL,
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FREMINDTIME` datetime DEFAULT NULL,
  `FISREMIND` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FTRIGGERTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_INTERVIEWHANDLE_B` (`FQUITAPPLYID`,`FACTIVITYID`),
  KEY `IDX_HTM_INTERVIEWHANDLE_O` (`FACTIVITYID`),
  KEY `IDX_HTM_INTERVIEWHANDLE_P` (`FPERSONID`,`FACTIVITYID`),
  KEY `IDX_HTM_INTERVIEWHANDLE_I` (`FACTIVITYINSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_interviewhandle_l definition

CREATE TABLE `t_htm_interviewhandle_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_INTERVIEWHANDLE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_interviewhandle_r3 definition

CREATE TABLE `t_htm_interviewhandle_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quitapplybill definition

CREATE TABLE `t_htm_quitapplybill` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FBILLNO` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FPERSONID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FMANAGESCOPEID` bigint NOT NULL DEFAULT '0',
  `FDEPEMPID` bigint NOT NULL DEFAULT '0',
  `FBILLSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAUDITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPPLYTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FACTIVITYPLANID` bigint NOT NULL DEFAULT '0',
  `FACTIVITYSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINTERVIEWSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCERTISSUESTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBARCODE` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINPUTDEVICETYPE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FEVENTEFFECTDATE` datetime DEFAULT NULL,
  `FISSUBMIT` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FISEXISTSWORKFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FAUDITFINISHTIME` datetime DEFAULT NULL,
  `FQUITEFFECTDATE` datetime DEFAULT NULL,
  `FQUITREASONDETAIL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATIONREASON` bigint NOT NULL DEFAULT '0',
  `FTERMINATORID` bigint NOT NULL DEFAULT '0',
  `FTERMINATIONTIME` datetime DEFAULT NULL,
  `FTERMINATIONDETAIL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWHEREABOUTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTLETIME` datetime DEFAULT NULL,
  `FSETTLECOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FISCONFIRMED` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FFILLINERID` bigint NOT NULL DEFAULT '0',
  `FFILLINDATE` datetime DEFAULT NULL,
  `FSUBMITERID` bigint NOT NULL DEFAULT '0',
  `FSUBMITDATE` datetime DEFAULT NULL,
  `FAUDITORID` bigint NOT NULL DEFAULT '0',
  `FAUDITDATE` datetime DEFAULT NULL,
  `FPERSONNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FHEADSCULPTURE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FERMANFILEID` bigint NOT NULL DEFAULT '0',
  `FPERSONREASONDETAIL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONWHEREABOUTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONNAME` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCMPEMPID` bigint NOT NULL DEFAULT '0',
  `FFILETRANSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FADMINTROSTATUS` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX__HTM_QUITAPPLYBILL_ORG` (`FORGID`),
  KEY `IDX_HTM_QUITAPPLYBILL_FBILLNO` (`FBILLNO`),
  KEY `IDX_HTM_QUITAPPLYBILL_PERSON` (`FPERSONID`),
  KEY `IDX_HTM_QUITAPPLYBILL_PNUMBER` (`FPERSONNUMBER`),
  KEY `IDX_HTM_QUITAPPLYBILL_PNAME` (`FPERSONNAME`),
  KEY `IDX_HTM_QUITAPPLYBILL_SCOPE` (`FMANAGESCOPEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quitapplybill_a definition

CREATE TABLE `t_htm_quitapplybill_a` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FCMPHISID` bigint NOT NULL DEFAULT '0',
  `FDEPHISID` bigint NOT NULL DEFAULT '0',
  `FPOSHISID` bigint NOT NULL DEFAULT '0',
  `FJOBHISID` bigint NOT NULL DEFAULT '0',
  `FNATIONALITYID` bigint NOT NULL DEFAULT '0',
  `FGENDERID` bigint NOT NULL DEFAULT '0',
  `FJOBLEVELID` bigint NOT NULL DEFAULT '0',
  `FBASELOCATIONID` bigint NOT NULL DEFAULT '0',
  `FCOMPANYLEN` decimal(19,6) NOT NULL DEFAULT '0.000000',
  `FENTERDATE` datetime DEFAULT NULL,
  `FLABORRELTYPEID` bigint NOT NULL DEFAULT '0',
  `FLABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FSUPERVISORID` bigint NOT NULL DEFAULT '0',
  `FQUITREASONID` bigint NOT NULL DEFAULT '0',
  `FQUITTYPEID` bigint NOT NULL DEFAULT '0',
  `FBPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBEMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAEMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTRACTENDDATE` datetime DEFAULT NULL,
  `FLASTWORKDATE` datetime DEFAULT NULL,
  `FQUITAPPLIERID` bigint NOT NULL DEFAULT '0',
  `FQUITAPPLYDATE` datetime DEFAULT NULL,
  `FEXPECTQUITDATE` datetime DEFAULT NULL,
  `FDELAYREASONID` bigint NOT NULL DEFAULT '0',
  `FISVIEWFLOW` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FBDEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FBDEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FBEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FBHRBUID` bigint NOT NULL DEFAULT '0',
  `FBAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FAEMPGROUPID` bigint NOT NULL DEFAULT '0',
  `FAAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  `FAHRBUID` bigint NOT NULL DEFAULT '0',
  `FADEPENDENCYID` bigint NOT NULL DEFAULT '0',
  `FADEPENDENCYTYPEID` bigint NOT NULL DEFAULT '0',
  `FAFFACTIONID` bigint NOT NULL DEFAULT '0',
  `FAFFRECORDID` bigint NOT NULL DEFAULT '0',
  `FPOSTYPEID` bigint NOT NULL DEFAULT '0',
  `FPOSSTATUSID` bigint NOT NULL DEFAULT '0',
  `FBCONTRACTENDDATE` datetime DEFAULT NULL,
  `FBAFFILIATEORGLONGHISID` bigint NOT NULL DEFAULT '0',
  `FAAFFILIATEORGLONGHISID` bigint NOT NULL DEFAULT '0',
  `FPERSONREASONID` bigint NOT NULL DEFAULT '0',
  `FALABORRELSTATUSID` bigint NOT NULL DEFAULT '0',
  `FSYNRESULT` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FID`),
  KEY `IDX__HTM_QUITAPPLYBILL_A` (`FQUITAPPLIERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quitapplybill_l definition

CREATE TABLE `t_htm_quitapplybill_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUITREASONDETAIL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWHEREABOUTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSETTLECOMMENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FTERMINATIONDETAIL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONREASONDETAIL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FPERSONWHEREABOUTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_QUITAPPLYBILL_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quitapplybill_r3 definition

CREATE TABLE `t_htm_quitapplybill_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quitfileinfo definition

CREATE TABLE `t_htm_quitfileinfo` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FEMPLOYEEID` bigint NOT NULL DEFAULT '0',
  `FQUITAPPLYID` bigint NOT NULL DEFAULT '0',
  `FCONTRACTENDDATE` datetime DEFAULT NULL,
  `FLASTWORKDATE` datetime DEFAULT NULL,
  `FWHEREABOUTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAPHONE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FAEMAIL` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUITREASONID` bigint NOT NULL DEFAULT '0',
  `FQUITTYPEID` bigint NOT NULL DEFAULT '0',
  `FQUITREASONDETAIL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FINITDATASOURCE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FINITBATCH` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_QUITFILEINFO` (`FEMPLOYEEID`,`FQUITAPPLYID`),
  KEY `IDX_HTM_QUITFILEINFO_A` (`FQUITAPPLYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quitfileinfo_l definition

CREATE TABLE `t_htm_quitfileinfo_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FWHEREABOUTS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FQUITREASONDETAIL` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_QUITFILEINFO_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quitfileinfo_r3 definition

CREATE TABLE `t_htm_quitfileinfo_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quitguide definition

CREATE TABLE `t_htm_quitguide` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FCONTENT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCONTENT_TAG` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_QUITGUIDE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quitguide_l definition

CREATE TABLE `t_htm_quitguide_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_QUITGUIDE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quitreason definition

CREATE TABLE `t_htm_quitreason` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_QUITREASON` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quitreason_l definition

CREATE TABLE `t_htm_quitreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_QUITREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quittype definition

CREATE TABLE `t_htm_quittype` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FGROUPID` bigint NOT NULL DEFAULT '0',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_QUITTYPE` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_quittype_l definition

CREATE TABLE `t_htm_quittype_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_QUITTYPE_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_termreason definition

CREATE TABLE `t_htm_termreason` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FORINUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORISTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_TERMREASON` (`FNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_termreason_l definition

CREATE TABLE `t_htm_termreason_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FORINAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_TERMREASON_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_todotaskcalendar definition

CREATE TABLE `t_htm_todotaskcalendar` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FNUMBER` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FCREATORID` bigint NOT NULL DEFAULT '0',
  `FCREATETIME` datetime DEFAULT NULL,
  `FMODIFIERID` bigint NOT NULL DEFAULT '0',
  `FMODIFYTIME` datetime DEFAULT NULL,
  `FSTATUS` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `FENABLE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `FISSYSPRESET` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `FDISABLERID` bigint NOT NULL DEFAULT '0',
  `FDISABLEDATE` datetime DEFAULT NULL,
  `FINDEX` int NOT NULL DEFAULT '0',
  `FMASTERID` bigint NOT NULL DEFAULT '0',
  `FEVENTDATE` datetime DEFAULT NULL,
  `FEVENTTYPE` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FBILLID` bigint NOT NULL DEFAULT '0',
  `FORGID` bigint NOT NULL DEFAULT '0',
  `FBAFFILIATEADMINORGID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `IDX_HTM_TODOTASKCALENDAR_ORG` (`FORGID`),
  KEY `IDX_HTM_CALENDAR_BADMINORG` (`FBAFFILIATEADMINORGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_todotaskcalendar_l definition

CREATE TABLE `t_htm_todotaskcalendar_l` (
  `FPKID` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FID` bigint NOT NULL DEFAULT '0',
  `FLOCALEID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FNAME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FDESCRIPTION` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `FSIMPLENAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_TODOTASKCALENDAR_L` (`FID`,`FLOCALEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_todotaskcalendar_r3 definition

CREATE TABLE `t_htm_todotaskcalendar_r3` (
  `FID` bigint NOT NULL DEFAULT '0',
  `FRefStatus` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_htm_workhandover definition

CREATE TABLE `t_htm_workhandover` (
  `FPKID` bigint NOT NULL DEFAULT '0',
  `FID` bigint NOT NULL DEFAULT '0',
  `FBASEDATAID` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`FPKID`),
  KEY `IDX_HTM_WORKHANDOVER` (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- crrc_hrb.t_pktemp_meta definition

CREATE TABLE `t_pktemp_meta` (
  `ftable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcreate_time` datetime NOT NULL,
  PRIMARY KEY (`ftable_name`),
  KEY `IX_T_PKTEMP_META_FCREATE_TIME` (`fcreate_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;